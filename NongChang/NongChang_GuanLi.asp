<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%

    Sub Page_Load()
        Page_Start()
        Call WML_Head("农场管理","left")
    
    
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [managerlvl] FROM [user] WHERE [userid]="&userid,Conn,1,1
        
        Dim ShiFouCunZai
        If Rs.BOF AND Rs.EOF Then
            CuoWu("错误")
        Else
            If Rs("managerlvl")="00" OR Rs("managerlvl")="01" Then
            
            Else
                CuoWu("错误")
            End If
        End If
        Rs.Close()
    
    
        
        
    
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Wap_NongChang_SheZhi.asp",sid))&""">[农场设置]</a><br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Wap_NongChang_GuanLi.asp",sid))&""">[农场管理]</a><br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Wap_ShuCai_GuanLi.asp",sid))&""">[蔬菜管理]</a><br/><br/>")
        Response.Write("更多管理请进入WEB后台管理，如修改蔬菜价格等。<br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Main.asp",sid))&""">返回主界面</a>")
    
    
        WML_End()
        Page_End()
    End Sub
    
    Call Page_Load()



 %>