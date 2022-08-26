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
            Call WML_Head("确定导入","left")
                Response.Write("您的密码错误")
                Call WML_End()
                Response.End()
            End If
        
        
        End Sub
    Sub Page_Load()
        Page_Start()
    
    
    
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
        
        If Request.QueryString("Act")="En" Then
        
            HuiFu()
        
        
            Response.Redirect(ChuLiDiZhi("Wap_ShuCai_GuanLi.asp?page="&CLng(Request.QueryString("page")),sid))
            
        Else
        
            Call WML_Head("确定导入","left")
            
            Response.Write("确定要导入吗？<br/>")
            
            
            Response.Write("密码:<input type=""text"" name=""password"" /><br/>")
            Response.Write("<anchor><go href="""&Server.HTMLEncode(ChuLiDiZhi("Wap_ShuCai_DaoRu.asp?Act=En&page="&CLng(Request.QueryString("page")),sid))&""" method=""post""><postfield name=""password"" value=""$(password)"" /></go>[确定导入]</anchor><br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Wap_ShuCai_GuanLi.asp?page="&CLng(Request.QueryString("page")),sid))&""">[暂不导入]</a><br/>")
            
            
            
            
            
            
            Call WML_End()
        
        
        
        
        End If
    
    
    
        Page_End()
    End Sub
Sub HuiFu()
	YanZhengMiMa()

        'Conn.Execute("DELETE FROM [Farm_ShuCai] WHERE [siteid]="&SiteID_)
        
        Dim NeiRong
        NeiRong=Split(ReadTxtFile(Server.MapPath("ShuCai.sql")),Chr(10)&"GO"&Chr(13))
        
        For i=0 To UBound(NeiRong)
        
            Conn.Execute(Replace(Replace(NeiRong(i),"{$siteid$}",siteid),"{$id$}",ZuiGaoID("Farm_ShuCai")))
        
        Next

End Sub
    
    Call Page_Load()





 %>