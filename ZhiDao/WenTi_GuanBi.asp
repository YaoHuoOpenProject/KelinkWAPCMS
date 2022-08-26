<%@ Language="VBSCRIPT" CODEPAGE="65001"%><!--#include file="../ASP_API/Conn.asp"--><!--#include file="Config.asp"-->
<%




    Sub Page_Load()
        
        Call WML_Head("关闭问题","left")
        
        Dim ID,rurl
        ID=CLng(Request.QueryString("ID"))
        rurl=Request.QueryString("rurl")
        
        If Request.QueryString("Act")="En" Then
            Conn.Execute("UPDATE [ZhiDao_WenTi] SET [WenTiZhuangTai]='2' WHERE [ID]="&ID)
            Response.Redirect(rurl)
        End If
    
        Response.Write("确实要关闭问题吗？<br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi_GuanBi.asp?Act=En&ID="&ID&"&rurl="&Server.URLEncode(rurl)))&""">确定关闭</a><br/>")
        Response.Write("<a href="""&Server.HTMLEncode(rurl)&""">暂不关闭</a><br/>")
    
    
    
        Call WML_End()
        Conn.Close()
    End Sub
    Call Page_Load()







 %>