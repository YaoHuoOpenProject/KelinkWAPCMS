<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"--><!--#include file="../ASP_API/md5.asp"-->
<%
dim IP,tonickname
IP = Request.ServerVariables("HTTP_X_FORWARDED_FOR")
if IP="" then IP = Request.ServerVariables("REMOTE_ADDR")'获取来访ip 


    Sub Page_Load()
        Page_Start()
        Call WML_Head("金币兑换","left")
	
	If CLng(ZhuanHuanBiLi) < 100 Then
		CuoWu("站长尚未配置兑换比例")
	End If
        
        Dim Rs,Money,password2
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [password],[money],[nickname] FROM [user] WHERE [userid]="&userid,Conn,1,1
        
        If Rs.BOF AND Rs.EOF Then
            CuoWu("错误")
        Else
        	  password2=Rs("password")
            Money=CLng(Rs("money"))
            tonickname=Rs("nickname")
        End If
        Rs.Close()
        
        Dim JinBi_
         JinBi_=CLng(Request.Form("JinBi"))
         password=(Request.Form("password"))
        If Request.QueryString("Act")="D1" Then
        
            If Len(password2)<>16 Then
                password2=MD5(password2)
            End If
            
            If lcase(MD5(password))<>lcase(password2) Then
               CuoWu("密码错误！")
            End If
            
            
            If JinBi_<1 Then
                CuoWu("金币数不能小于1")
            End If
            
            If money<JinBi_ Then
                CuoWu("您的网站币不够")
            End If
            
            
        'Conn.Execute("INSERT INTO [wap_banklog]([siteid],[userid],[remark],[money],[addtime])"_
        '    &"VALUES("&siteid&","&userid&",N'将网站币兑换成农场币，扣除"&JinBi_&"',"&JinBi_&",'"&now()&"')")
           
            Conn.Execute("UPDATE [user] SET [money]=[money]-"&JinBi_&" WHERE [userid]="&userid)
           
           Conn.Execute("insert into wap_bankLog select  '" & siteid & "','" & userid & "','网站币转农场币','-" & JinBi_ & "',money,'" & userid & "','" & tonickname & "','"&JinBi_&":"&CLng(JinBi_*(CDbl(ZhuanHuanBiLi)/100.00))&"','" & IP & "',getdate() ,null from [user] where userid=" & userid & " and siteid=" & siteid)
           
            Conn.Execute("UPDATE [Farm] SET [JinBi]=[JinBi]+"&CLng(JinBi_*(CDbl(ZhuanHuanBiLi)/100.00))&" WHERE [ID]="&FarmID)
        
            Response.Redirect(ChuLiDiZhi(DiZhiTou&"JinBi_DuiHuan.asp",sid))
        
        Else
        
         If Request.QueryString("Act")="D2" Then
            If Len(password2)<>16 Then
                password2=MD5(password2)
            End If
            
            If lcase(MD5(password))<>lcase(password2) Then
               CuoWu("密码错误！")
            End If
        
            If JinBi_<1 Then
                CuoWu("金币数不能小于1")
            End If
        
            If CLng(JinBi)<JinBi_ Then
                CuoWu("您的农场币不够")
            End If
            
        'Conn.Execute("INSERT INTO [wap_banklog]([siteid],[userid],[remark],[money],[addtime])"_
         '   &"VALUES("&siteid&","&userid&",N'将农场币兑换成网站币，获得"&CLng(JinBi_*(100.00/CDbl(ZhuanHuanBiLi)))&"',"&CLng(JinBi_*(100.00/CDbl(ZhuanHuanBiLi)))&",'"&now()&"')")
            
             Conn.Execute("UPDATE [user] SET [money]=[money]+"&CLng(JinBi_*(100.00/CDbl(ZhuanHuanBiLi)))&" WHERE [userid]="&userid)
           
            Conn.Execute("insert into wap_bankLog select  '" & siteid & "','" & userid & "','农场币转网站币','" & CLng(JinBi_*(100.00/CDbl(ZhuanHuanBiLi))) & "',money,'" & userid & "','" & tonickname & "','"&JinBi_&":"&CLng(JinBi_*(100.00/CDbl(ZhuanHuanBiLi)))&"','" & IP & "',getdate() ,null from [user] where userid=" & userid & " and siteid=" & siteid)
           
            Conn.Execute("UPDATE [Farm] SET [JinBi]=[JinBi]-"&JinBi_&" WHERE [ID]="&FarmID)
            
            Response.Redirect(ChuLiDiZhi(DiZhiTou&"JinBi_DuiHuan.asp",sid))
         End If
        
        End If
        
        
        Response.Write("我的网站币:"&Money&"<br/>")
        Response.Write("我的农场币:"&JinBi&"<br/>")
        Response.Write("----------<br/>")
        Response.Write("兑换比例:100网站币等于"&ZhuanHuanBiLi&"农场币<br/>")
        Response.Write("----------<br/>")
        Response.Write("我的密码:<input type=""text"" name=""password"" size=""5""/><br/>")
        Response.Write("请输入网站币:<br/>")
        Response.Write("<input type=""text"" name=""JinBi"" value=""100"" size=""4"" /><br/>")
        Response.Write("<anchor><go href="""&Server.HTMLEncode(ChuLiDiZhi("JinBi_DuiHuan.asp?Act=D1",sid))&""" method=""post"">")
        Response.Write("<postfield name=""password"" value=""$(password)"" /><postfield name=""JinBi"" value=""$(JinBi)"" />")
        Response.Write("</go>[兑换农场币]</anchor><br/><br/>")
        Response.Write("请输入农场币:<br/>")
        Response.Write("<input type=""text"" name=""JinBi2"" value=""100"" size=""4"" /><br/>")
        Response.Write("<anchor><go href="""&Server.HTMLEncode(ChuLiDiZhi("JinBi_DuiHuan.asp?Act=D2",sid))&""" method=""post"">")
        Response.Write("<postfield name=""password"" value=""$(password)"" /><postfield name=""JinBi"" value=""$(JinBi2)"" />")
        Response.Write("</go>[兑换网站币]</anchor><br/><br/>")
        Response.Write("----------<br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Main.asp",sid))&""">返回主界面</a>")
    
    
    
        WML_End()
        Page_End()
    End Sub
    
    Call Page_Load()




 %>