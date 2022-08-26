<%@ Language="VBSCRIPT" CODEPAGE="65001"%><!--#include file="../ASP_API/Conn.asp"--><!--#include file="Config.asp"-->
<%

	Function HuoQuNiChen()

		Dim Rs
		Set Rs=Server.CreateObject("ADODB.RecordSet")
		Rs.Open "SELECT [nickname] FROM [user] WHERE [userid]="&userid,Conn,1,1
		HuoQuNiChen=Rs("nickname")
		Rs.Close()

	End Function

    Sub ZengJiaWenTi(ID,SuoShuFenLei,money)
        
        Dim WenTi,WenTiBuChong,JinBi
        WenTi=Request.Form("WenTi")
        WenTiBuChong=Request.Form("WenTiBuChong")
        JinBi=CLng(Request.Form("XuanShangFen"))
        
        If Len(WenTi)<1 Or Len(WenTi)>50 Then
            CuoWu("问题标题的长度只能在1-50之间")
        End If
    
        If Len(WenTiBuChong)>4000 Then
            CuoWu("问题补充的长度必须小于4000")
        End If
        
        If JinBi<1 Then
            CuoWu("悬赏金币必须在1-5000之间")
        End If
        
        If JinBi>money Then
            CuoWu("您的金币不够")
        End If
        
        Dim ZGID
        ZGID=ZuiGaoID("ZhiDao_WenTi")
        
        Conn.Execute("UPDATE [user] SET [money]=[money]-"&JinBi&" WHERE [userid]="&CLng(userid))
        
        
        Conn.Execute("INSERT INTO [ZhiDao_WenTi]([ID],[BiaoTi],[TiWenZheID],[TiWenZheNiChen],[ShiFouTuiJian],[WenTiBuChong],[HuiDaShu],[WenTiZhuangTai],[ZhengQueDaAn],[TiWenShiJian],[XuanShangFen],[SuoShuFenLei],[SuoShuXiaoFenLei],[siteid])"_
            &"VALUES("&ZGID&",'"&CheckSql(WenTi)&"',"&userid&",'"&CheckSql(HuoQuNiChen())&"','0','"&CheckSql(WenTiBuChong)&"',0,0,0,'"&now()&"',"&JinBi&","&SuoShuFenLei&","&ID&","&siteid&")")
            
       Dim Rs,HuiDaShu
       Set Rs=Server.CreateObject("ADODB.RecordSet")
       Rs.Open "SELECT [ID] FROM [ZhiDao_WenTi] WHERE [SuoShuFenLei]="&SuoShuFenLei,Conn,1,1
       
       HuiDaShu=Rs.RecordCount
       Rs.Close()
       
       Conn.Execute("UPDATE [ZhiDao_XiaoFenLei] SET [WenTiShu]="&HuiDaShu&" WHERE [ID]="&SuoShuFenLei)
            
        Response.Redirect(ChuLiDiZhi("WenTi.asp?ID="&ZGID))
    
    
    
    
    End Sub



    Sub Page_Load()
        YanZhengHuiYuan()
        Dim Rs,ID,FenLeiMingChen,SuoShuFenLei,JinBi
        ID=CLng(Request.QueryString("ID"))
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        
        Rs.Open "SELECT [money] FROM [user] WHERE [userid]="&userid,Conn,1,1
        
        JinBi=CLng(Rs("money"))
        Rs.Close()
        Rs.Open "SELECT [FenLeiMingChen],[SuoShuFenLei] FROM [ZhiDao_XiaoFenLei] WHERE [ID]="&ID&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.BOF AND Rs.EOF Then
            CuoWu("分类不存在")
        Else
            FenLeiMingChen=Rs("FenLeiMingChen")
            SuoShuFenLei=CLng(Rs("SuoShuFenLei"))
        End If
        Rs.Close()
        
        If Request.QueryString("Act")="En" Then
            Call ZengJiaWenTi(ID,SuoShuFenLei,JinBi)
        End If
    
        Call WML_Head(FenLeiMingChen&"-我要提问","left")
    
        Response.Write("分类:"&Server.HTMLEncode(FenLeiMingChen)&"<a href="""&Server.HTMLEncode(ChuLiDiZhi("TiWen.asp"))&""">选择</a><br/>")
        
        Response.Write("问题:<br/>")
        Response.Write("<input type=""text"" name=""WenTi"" maxlength=""50"" /><br/>")
        Response.Write("悬赏金币(您当前有金币"&JinBi&"):<br/>")
        Response.Write("<input type=""text"" name=""XuanShangFen"" format=""*N"" value=""50""/><br/>")
        Response.Write("问题补充(可空):<br/>")
        Response.Write("<input type=""text"" name=""WenTiBuChong"" maxlength=""4000"" /><br/>")
        Response.Write("<anchor><go href="""&Server.HTMLEncode(ChuLiDiZhi("TiWen3.asp?Act=En&ID="&ID))&""" method=""post"">")
        Response.Write("<postfield name=""WenTi"" value=""$(WenTi)""/>")
        Response.Write("<postfield name=""WenTiBuChong"" value=""$(WenTiBuChong)""/>")
        Response.Write("<postfield name=""XuanShangFen"" value=""$(XuanShangFen)""/>")
        Response.Write("</go>[提交问题]</anchor><br/>")
        
        Response.Write("---------<br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("index.asp"))&""">返回知道首页</a>")
    
    
        Call WML_End()
        Conn.Close()
    
    End Sub
    
    Call Page_Load()











 %>