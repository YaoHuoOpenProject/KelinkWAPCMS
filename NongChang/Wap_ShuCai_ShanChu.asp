<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="../ASP_API/md5.asp"--><!--#include file="Config.asp"-->
<%

        Sub YanZhengMiMa()
        
        
            Dim password,password2
            password=Request.Form("password")
            
            Dim Rs
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT [password] FROM [user] WHERE [userid]="&userid,Conn,1,1
            
            password2=Rs("password")
            
            Rs.Close()
            
            If Len(password2)<>16 Then
                password2=MD5(password2)
            End If
            
            If lcase(MD5(password))<>lcase(password2) Then
                Response.Write("您的密码错误")
                Call WML_End()
                Response.End()
            End If
        
        
        End Sub


    Sub Page_Load()
        Page_Start()
        Call WML_Head("删除蔬菜","left")
    
    
    
    
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
        
        Dim Page
        Page=CLng(Request.QueryString("page"))
    
        If Request.QueryString("Act")="En" Then
        
        YanZhengMiMa()
            
    Dim ID
    ID=CLng(Request.QueryString("ID"))
    
    Dim SuoYing
    Set Rs=Server.CreateObject("ADODB.RecordSet")
    Rs.Open "SELECT [SuoYing] FROM [Farm_ShuCai] WHERE [ID]="&ID&" AND [siteid]="&siteid,Conn,1,1
    
    If Rs.EOF AND Rs.BOF Then
        Rs.Close()
        Response.Redirect(ChuLiDiZhi("Wap_ShuCai_GuanLi.asp?page="&Page,sid))
    Else
        SuoYing=CLng(Rs("SuoYing"))
        Rs.Close()

        
        If SuoYing>26 Then
            deleteAFile(Server.MapPath("Images/s"&SuoYing&".jpg"))
        End If
        Conn.Execute("DELETE FROM [Farm_ShuCai] WHERE [ID]="&ID&" AND [siteid]="&siteid)
        Response.Redirect(ChuLiDiZhi("Wap_ShuCai_GuanLi.asp?page="&Page,sid))
    End If
        
        
        
        
        Else
        
        
        
        
            Response.Write("真的要删除吗？<br/>")
            Response.Write("密码:<input type=""text"" name=""password"" /><br/><anchor><go href="""&Server.HTMLEncode(ChuLiDiZhi("Wap_ShuCai_ShanChu.asp?Act=En&page="&Page&"&ID="&CLng(Request.QueryString("ID")),sid))&""" method=""post""><postfield name=""password"" value=""$(password)"" /></go>[确定删除]</anchor><br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Wap_ShuCai_GuanLi.asp?page="&Page,sid))&""">[暂不删除]</a>")
        
        
        
        
        
        
        
        End If
    
    
        WML_End()
        Page_End()
    End Sub
    
    
    
    Call Page_Load()









 %>