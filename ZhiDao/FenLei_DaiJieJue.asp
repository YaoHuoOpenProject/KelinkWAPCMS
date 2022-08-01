<%@ Language="VBSCRIPT" CODEPAGE="65001"%><!--#include file="../ASP_API/Conn.asp"--><!--#include file="Config.asp"-->
<%



    Sub Page_Load()
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        
        Dim FenLeiMingChen,ID
        ID=CLng(Request.QueryString("ID"))
        
        Rs.Open "SELECT [ID],[FenLeiMingChen] FROM [ZhiDao_FenLei] WHERE [ID]="&ID&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.EOF Then
            CuoWu("分类不存在")
        Else
            FenLeiMingChen=Rs("FenLeiMingChen")
        End If
        Rs.Close()
        
        Call WML_Head(FenLeiMingChen&"-待解决问题","left")
    
        Rs.Open "SELECT [ID],[BiaoTi],[HuiDaShu],[XuanShangFen] FROM [ZhiDao_WenTi] WHERE [WenTiZhuangTai]='0' AND [SuoShuFenLei]="&ID&" AND [siteid]="&siteid&" ORDER BY [ID] DESC",Conn,1,1
        
        
        If Rs.EOF Then
            Response.Write("暂时没有记录<br/>")
            
        Else
        
            Response.Write("共"&Rs.RecordCount&"条记录<br/>")
        
            Rs.PageSize=10
            Dim Page
            Page=CLng(Request.QueryString("page"))
            If Page=0 Then Page=1
            If Page>Rs.PageCount Then Page=Rs.PageCount
            Rs.AbsolutePage=Page
            
            For i=1 To 10
            
                If Rs.EOF Then Exit For
            
            
                Response.Write(((Page-1)*10+i)&".<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi.asp?ID="&Rs("ID")&"&type=fld&fid="&ID&"&page="&Page))&""">"&Server.HTMLEncode(Rs("BiaoTi"))&"("&Rs("HuiDaShu")&")</a>悬赏:"&Rs("XuanShangFen")&"<br/>")
            
            
                Rs.MoveNext()
            Next
            
            If Rs.PageCount>1 Then
            
            
            
                If Page<Rs.PageCount Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("FenLei_DaiJieJue.asp?ID="&ID&"&page="&(Page+1)))&""">[下页]</a>")
                End If
                
                If Page>1 Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("FenLei_DaiJieJue.asp?ID="&ID&"&page="&(Page-1)))&""">[上页]</a>")
                End If
            
            
                Response.Write("<br/>")
            
            End If
        
        End If
        Rs.Close()
    
    
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("FenLei_YiJieJue.asp?ID="&ID))&""">[已解决问题]</a><br/>")
            
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ZhiDaoFenLei.asp?ID="&ID))&""">返回上级分类</a><br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("index.asp"))&""">返回知道首页</a>")
    
        Call WML_End()
        Conn.Close()
    End Sub
    
    Call Page_Load()







 %>