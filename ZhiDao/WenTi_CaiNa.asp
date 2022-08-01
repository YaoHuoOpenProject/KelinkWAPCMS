<%@ Language="VBSCRIPT" CODEPAGE="65001"%><!--#include file="../ASP_API/Conn.asp"--><!--#include file="Config.asp"-->
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
                Call WML_Head("错误","left")
                Response.Write("您的密码错误")
                Call WML_End()
                Response.End()
            End If
        
        
        End Sub

    Sub Page_Load()
    
    
        Dim ID,HID,rurl
        ID=CLng(Request.QueryString("ID"))
        HID=CLng(Request.QueryString("hid"))
        rurl=Request.QueryString("rurl")
        
        If Request.QueryString("Act")="En" Then
        
        YanZhengMiMa()
        Dim XuanShangFen,uid
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [XuanShangFen] FROM [ZhiDao_WenTi] WHERE [ID]="&ID&" AND [TiWenZheID]="&userid&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.EOF AND Rs.BOF Then
            CuoWu("问题不存在")
        Else
            XuanShangFen=CLng(Rs("XuanShangFen"))
        End If
        Rs.Close()
    
        Dim HuiDaZheID
        Rs.Open "SELECT [HuiDaZheID] FROM [ZhiDao_HuiDa] WHERE [ID]="&HID&" AND [ShiFouYiCaiNa]=0 AND [siteid]="&siteid&" AND [HuiDaWenTiID]="&ID,Conn,1,1
        
        If Rs.EOF AND Rs.BOF Then
            CuoWu("回答不存在")
        Else
            HuiDaZheID=CLng(Rs("HuiDaZheID"))
        End If
        Rs.Close()
        
        Conn.Execute("UPDATE [ZhiDao_HuiDa] SET [ShiFouYiCaiNa]=1 WHERE [ID]="&HID)
        Conn.Execute("UPDATE [ZhiDao_WenTi] SET [WenTiZhuangTai]=1 WHERE [ID]="&ID)
        Conn.Execute("UPDATE [user] SET [money]=[money]+"&XuanShangFen&" WHERE [userid]="&HuiDaZheID)
        
        Response.Redirect(rurl)
        
        Else
            Call WML_Head("采纳问题","left")
            
            Response.Write("请输入您的密码：<br/>")
            Response.Write("<input type=""text"" name=""password"" maxlength=""50"" /><br/>")
            Response.Write("<anchor><go href=""WenTi_CaiNa.asp?ID="&ID&"&amp;HID="&HID&"&amp;rurl="&Server.URLEncode(rurl)&"&amp;sid="&Server.URLEncode(sid)&"&amp;Act=En"" method=""post"">")
            Response.Write("<postfield name=""password"" value=""$(password)""/>")
            Response.Write("</go>[确定采纳]</anchor><br/>")
            
            Response.Write("<a href="""&Server.HTMLEncode(rurl)&""">返回问题</a>")
            
            Call WML_End()
        End If
    
    End Sub
    Call Page_Load()






 %>