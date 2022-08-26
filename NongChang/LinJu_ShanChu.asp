<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%

    Sub Page_Load()
        Page_Start()
    
    
        Dim ID,Page
        ID=CLng(Request.QueryString("ID"))
        Page=CLng(Request.QueryString("page"))
        
        If Request.QueryString("Act")="En" Then
            Call ShanChu(ID,Page)
        End If
    
        Call WML_Head("删除邻居","left")
    
        Response.Write("真的要删除吗？<br/>")
        
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("LinJu_ShanChu.asp?ID="&ID&"&page="&Page&"&Act=En",sid))&""">[确定删除]</a><br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("LinJu.asp?ID="&FarmID&"&page="&Page,sid))&""">[暂不删除]</a><br/>")
        
        Response.Write("----------<br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("LinJu.asp?page="&Page,sid))&""">返回邻居</a>")
    
        GengXinZhuangTai("删除邻居")
    
        Call WML_End()
    
        Page_End()
    End Sub
    
    Sub ShanChu(ID,Page)
    
    
    
        Conn.Execute("DELETE FROM [Farm_LinJu] WHERE [SuoShuNongChang]="&FarmID&" AND [ID]="&ID&" AND [siteid]="&siteid)
        
        
        Response.Redirect(ChuLiDiZhi(DiZhiTou&"LinJu.asp?page="&Page,sid))
    
    
    
    
    
    
    
    End Sub
    
    
    Call Page_Load()






 %>