<%@ Language="VBSCRIPT" CODEPAGE="65001"%><!--#include file="../ASP_API/Conn.asp"--><!--#include file="Config.asp"-->
<%


    Sub Page_Load()
    
        Dim Rs,ID
        Dim BiaoTi,TiWenZheID,TiWenZheNiChen,WenTiBuChong,WenTiZhuangTai,TiWenShiJian,SuoShuFenLei,SuoShuXiaoFenLei,XuanShangFen
        ID=CLng(Request.QueryString("ID"))
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [BiaoTi],[TiWenZheID],[TiWenZheNiChen],[WenTiBuChong],[WenTiZhuangTai],[TiWenShiJian],[SuoShuFenLei],[SuoShuXiaoFenLei],[XuanShangFen] FROM [ZhiDao_WenTi] WHERE [ID]="&ID&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.EOF Then
            CuoWu("问题不存在")
        Else
            BiaoTi=Rs("BiaoTi")
            TiWenZheID=CLng(Rs("TiWenZheID"))
            TiWenZheNiChen=Rs("TiWenZheNiChen")
            WenTiBuChong=Rs("WenTiBuChong")
            WenTiZhuangTai=CLng(Rs("WenTiZhuangTai"))
            TiWenShiJian=Rs("TiWenShiJian")
            SuoShuFenLei=CLng(Rs("SuoShuFenLei"))
            SuoShuXiaoFenLei=CLng(Rs("SuoShuXiaoFenLei"))
		XuanShangFen=CLng(Rs("XuanShangFen"))
        End If
        Rs.Close()
    
    
        Call WML_Head(BiaoTi&"-查看问题","left")
    
    
        Response.Write("问题："&Server.HTMLEncode(BiaoTi)&"<a href=""/bbs/userinfo.aspx?siteid="&siteid&"&amp;touserid="&TiWenZheID&"&amp;sid="&sid&""">"&Server.HTMLEncode(TiWenZheNiChen)&"</a>(")
        Select Case WenTiZhuangTai
        Case 0
            Response.Write("待解决")
        Case 1
            Response.Write("已解决")
        Case 2
            Response.Write("已关闭")
        End Select
        Response.Write(")<br/>")
        Response.Write("补充："&Server.HTMLEncode(WenTiBuChong)&"<br/>")
	Response.Write("悬赏："&XuanShangFen&"金币<br/>")
        If WenTiZhuangTai=0 Then
            If CLng(userid)<>TiWenZheID Then
                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi_HuiDa.asp?ID="&ID&"&rurl="&HuoQuURL()))&""">我来回答</a><br/>")
            Else
                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi_XiuGai.asp?ID="&ID&"&rurl="&HuoQuURL()))&""">修改补充</a>-"_
                    &"<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi_GuanBi.asp?ID="&ID&"&rurl="&HuoQuURL()))&""">关闭问题</a><br/>")
            End If
        End If
        
        Rs.Open "SELECT [ID],[HuiDaNeiRong],[HuiDaZheID],[HuiDaZheNiChen],[ShiFouYiCaiNa] FROM [ZhiDao_HuiDa] WHERE [HuiDaWenTiID]="&ID&" AND [siteid]="&siteid&" ORDER BY [ShiFouYiCaiNa] DESC,[ID]",Conn,1,1
        
        If Rs.EOF Then
            Response.Write("暂时没有答案<br/>")
        Else
            Response.Write("共"&Rs.RecordCount&"个回答<br/>")
            
            Rs.PageSize=10
            Dim Page
            Page=CLng(Request.QueryString("page"))
            If Page=0 Then Page=1
            If Page>Rs.PageCount Then Page=Rs.PageCount
            Rs.AbsolutePage=Page
            
            For i=1 To Rs.PageSize
            
            
            
                If Rs.EOF Then Exit For
                
                If CBool(Rs("ShiFouYiCaiNa")) Then
                    Response.Write("最佳："&Server.HTMLEncode(Rs("HuiDaNeiRong"))&"-回答者:<a href="""&Server.HTMLEncode("/bbs/userinfo.aspx?siteid="&siteid&"&touserid="&Rs("HuiDaZheID")&"&sid="&sid)&""">"&Server.HTMLEncode(Rs("HuiDaZheNiChen"))&"</a><br/>其它回答：<br/>")
                Else
                    Response.Write(""&Server.HTMLEncode(Rs("HuiDaNeiRong"))&"<br/>-回答者:<a href="""&Server.HTMLEncode("/bbs/userinfo.aspx?siteid="&siteid&"&touserid="&Rs("HuiDaZheID")&"&sid="&sid)&""">"&Server.HTMLEncode(Rs("HuiDaZheNiChen"))&"</a><br/>")
                    If WenTiZhuangTai=0 AND CLng(TiWenZheID)=CLng(userid) Then
                        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi_CaiNa.asp?ID="&ID&"&hid="&Rs("ID")&"&rurl="&(HuoQuURL())))&""">采纳回答</a><br/>")
                    End If
                End If
            
                Rs.MoveNext()
            
            
            Next
            
            If Rs.PageCount>1 Then
            
            
                If Page<Rs.PageCount Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi.asp?ID="&ID&"&page="&(Page+1)))&""">[下页]</a>")
                End If
                
                If Page>1 Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi.asp?ID="&ID&"&page="&(Page-1)))&""">[上页]</a>")
                End If
                
                Response.Write("<br/>")
            
            
            End If
        End If
        Rs.Close()
        
        
        Select Case Request.QueryString("type")
        Case "fld"
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("FenLei_DaiJieJue.asp?ID="&CLng(Request.QueryString("fid"))&"&page="&CLng(Request.QueryString("page"))))&""">返回上级分类</a>")
        Case "fly"
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("FenLei_YiJieJue.asp?ID="&CLng(Request.QueryString("fid"))&"&page="&CLng(Request.QueryString("page"))))&""">返回上级分类</a>")
        Case "s"
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("so.asp?g="&Server.URLEncode(Request.QueryString("g"))&"&page="&CLng(Request.QueryString("page"))))&""">返回搜索结果</a>")
        Case "d"
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi_DaiJieJue.asp?page="&CLng(Request.QueryString("page"))))&""">返回待解决问题</a>")
        Case "j"
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi_TuiJian.asp?page="&CLng(Request.QueryString("page"))))&""">返回精彩推荐</a>")
        Case "x"
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi_XinJieJue.asp?page="&CLng(Request.QueryString("page"))))&""">返回新解决问题</a>")
        Case "xfly"
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ZhiDaoXiaoFenLei.asp?ID="&CLng(Request.QueryString("fid"))&"&page="&CLng(Request.QueryString("page"))))&""">返回上级分类</a>")
        Case "xfld"
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ZhiDaoXiaoFenLei_DaiJieJue.asp?ID="&CLng(Request.QueryString("fid"))&"&page="&CLng(Request.QueryString("page"))))&""">返回上级分类</a>")
        Case "wd"
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WoDeWenTi.asp"))&""">返回我的问题</a>")
        Case "wdh"
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WoDeHuiDa.asp"))&""">返回我的回答</a>")
        Case Else
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ZhiDaoXiaoFenLei.asp?ID="&SuoShuXiaoFenLei))&""">返回上级分类</a>")
        End Select
        
        Response.Write("<br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("index.asp"))&""">返回首页</a>")
    
        Call WML_End()
        Conn.Close()
    End Sub
    Call Page_Load()







 %>