<%@ Language="VBSCRIPT" CODEPAGE="65001"%><!--#include file="../ASP_API/Conn.asp"--><!--#include file="Config.asp"-->
<%

    Sub XiuGaiBuChong(ID,rurl)
    
        Dim WenTiBuChong
        WenTiBuChong=Request.Form("WenTiBuChong")
        
        If Len(WenTiBuChong)<1 OR Len(WenTiBuChong)>4000 Then
            CuoWu("问题补充的长度必须在1-4000之间")
        End If
        
        Conn.Execute("UPDATE [ZhiDao_WenTi] SET [WenTiBuChong]='"&CheckSql(WenTiBuChong)&"' WHERE [ID]="&ID)
    
        Response.Redirect(rurl)
    
    End Sub

    Sub Page_Load()
    
        Dim ID,rurl
        ID=CLng(Request.QueryString("ID"))
        rurl=Request.QueryString("rurl")
        
        Dim BiaoTi,WenTiBuChong
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [BiaoTi],[WenTiBuChong] FROM [ZhiDao_WenTi] WHERE [ID]="&ID&" AND [TiWenZheID]="&userid,Conn,1,1
        
        If Rs.EOF Then
            CuoWu("问题不存在")
        Else
            BiaoTi=Rs("BiaoTi")
            WenTiBuChong=Rs("WenTiBuChong")
        End If
        Rs.Close()
        
        If Request.QueryString("Act")="En" Then
            Call XiuGaiBuChong(ID,rurl)
        End If
    
    
        Call WML_Head(BiaoTi&"-修改问题补充","left")
    
        Dim SuiJiZhi
        SuiJiZhi=SuiJiZiFu(4)
    
        Response.Write("标题:"&Server.HTMLEncode(BiaoTi)&"<br/>")
        Response.Write("新的补充:<br/>")
        Response.Write("<input type=""text"" name=""WenTiBuChong"&SuiJiZhi&""" value="""&Server.HTMLEncode(WenTiBuChong)&""" maxlength=""4000"" /><br/>")
        Response.Write("<anchor><go href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi_XiuGai.asp?Act=En&ID="&ID&"&rurl="&Server.URLEncode(rurl)))&""" method=""post"">")
        Response.Write("<postfield name=""WenTiBuChong"" value=""$(WenTiBuChong"&SuiJiZhi&"""/>")
        Response.Write("</go>[修改补充]</anchor><br/>")
        Response.Write("<a href="""&Server.HTMLEncode(rurl)&""">返回问题</a>")
    
    
    
        Call WML_End()
        Conn.Close()
    End Sub
    Call Page_Load()






 %>