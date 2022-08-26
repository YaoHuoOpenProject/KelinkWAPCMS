<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%

    Sub Page_Load()
    
        Page_Start()
        
        If Request.QueryString("Act")="En" Then
            GouMai()
        End If
        
        Call WML_Head("购买土地","left")
        
        Response.Write("你的金币数:"&JinBi&"<br/>")
        Response.Write("购买一块土地需要"&TuDiJiaGe&"金币，确定要购买吗？<br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("CaiDi_GouMai.asp?Act=En",sid))&""">[购买]</a><br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp",sid))&""">[取消]</a><br/>")
        
        
        Call WML_End()
        Page_End()
    
    End Sub
    
    Sub GouMai()
    
        If JinBi<TuDiJiaGe Then
            CuoWu("你的金币不够")
        End If
        
        Conn.Execute("UPDATE [Farm] SET [JinBi]=[JinBi]-"&TuDiJiaGe&" WHERE [ID]="&FarmID)
        
        ZengJiaCaiDi()
        
        Call WML_Head("购买土地","left")
        Response.Write("购买成功<br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp",sid))&""">返回农场</a>")
        Call WML_End()
        
        Page_End()
        Response.End()
    
    End Sub
    Call Page_Load()

 %>