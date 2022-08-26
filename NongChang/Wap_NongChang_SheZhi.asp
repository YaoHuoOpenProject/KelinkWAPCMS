<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="../ASP_API/md5.asp"--><!--#include file="Config.asp"-->
<%
Dim SiteID_,ShengJiKongZhi_,YouXiBanBen_,DenJiXianZhi_,ZhuanHuanBiLi_,ShiFeiCiShu_,TuDiJiaGe_
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

Sub ChuShiHua()
    Dim Rs
    Set Rs=Server.CreateObject("ADODB.RecordSet")
    Rs.Open "SELECT [ShengJiKongZhi],[YouXiBanBen],[DenJiXianZhi],[ZhuanHuanBiLi],[ShiFeiCiShu],[TuDiJiaGe] FROM [Farm_SheZhi] WHERE [siteid]="&SiteID_,Conn,1,1
    
    If Rs.BOF AND Rs.EOF Then
        ShengJiKongZhi_=30
        DenJiXianZhi_=0
        ZhuanHuanBiLi_=0
        ShiFeiCiShu_=10
        TuDiJiaGe_=2000000
    Else
        ShengJiKongZhi_=CLng(Rs("ShengJiKongZhi"))
        DenJiXianZhi_=CLng(Rs("DenJiXianZhi"))
        ZhuanHuanBiLi_=CLng(Rs("ZhuanHuanBiLi"))
        If IsNull(Rs("ShiFeiCiShu")) Then
            ShiFeiCiShu_=10
        Else
            ShiFeiCiShu_=CLng(Rs("ShiFeiCiShu"))
        End If
        If IsNull(Rs("TuDiJiaGe")) Then
            TuDiJiaGe_=2000000
        Else
            TuDiJiaGe_=CLng(Rs("TuDiJiaGe"))
        End If
    End If
    Rs.Close()
    

End Sub

Sub BaoCun()
    YanZhengMiMa()

    ShengJiKongZhi_=CLng(Request.Form("ShengJiKongZhi"))
    DenJiXianZhi_=CLng(Request.Form("DenJiXianZhi"))
    ZhuanHuanBiLi_=CLng(Request.Form("ZhuanHuanBiLi"))
    ShiFeiCiShu_=Clng(Request.Form("ShiFeiCiShu"))
    TuDiJiaGe_=CLng(Request.Form("TuDiJiaGe"))

    
    Dim Rs,ShiFouCunZai
    Set Rs=Server.CreateObject("ADODB.RecordSet")
    Rs.Open "SELECT [ID] FROM [Farm_SheZhi] WHERE [siteid]="&SiteID_,Conn,1,1
    
    If Rs.BOF AND Rs.EOF Then
        ShiFouCunZai=false
    Else
        ShiFouCunZai=true
    End If
    Rs.Close()
    
    If ShiFouCunZai Then
        Conn.Execute("UPDATE [Farm_SheZhi] SET [ShengJiKongZhi]="&ShengJiKongZhi_&",[DenJiXianZhi]="&DenJiXianZhi_&",[ZhuanHuanBiLi]="&ZhuanHuanBiLi_&",[ShiFeiCiShu]="&ShiFeiCiShu_&",[TuDiJiaGe]="&TuDiJiaGe_&" WHERE [siteid]="&SiteID_)
    Else
        Conn.Execute("INSERT INTO [Farm_SheZhi]([ID],[ShengJiKongZhi],[DenJiXianZhi],[siteid],[ZhuanHuanBiLi],[YouXiBanBen],[ShiFeiCiShu],[TuDiJiaGe])"_
            &"VALUES("&ZuiGaoID("Farm_SheZhi")&","&ShengJiKongZhi_&","&DenJiXianZhi_&","&SiteID_&","&ZhuanHuanBiLi_&",N'',"&ShiFeiCiShu_&","&TuDiJiaGe_&")")
    End If

End Sub

    Sub Page_Load()
        Page_Start()
        Call WML_Head("农场管理","left")
    
    
    
    
        SiteID_=siteid
        
    
    
    
    
    
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
        BaoCun()
	Response.Write("设置成功<br/><br/>")
    Else
        ChuShiHua()
    End If
    
        Dim SuiJiZhi
        SuiJiZhi=SuiJiZiFu(4)
    
        
        Response.Write("升级控制:<br/>"_
            &"<input type=""text"" name=""ShengJiKongZhi"&SuiJiZhi&""" value="""&ShengJiKongZhi_&""" format=""*N""/><br/>")
        Response.Write("进入前金币必须大于:<br/>"_
            &"<input type=""text"" name=""DenJiXianZhi"&SuiJiZhi&""" value="""&DenJiXianZhi_&""" /><br/>"_
            &"100网站金币等于多少农场币(大于100开通，小于100关闭兑换):<br/>"_
            &"<input type=""text"" name=""ZhuanHuanBiLi"&SuiJiZhi&""" value="""&ZhuanHuanBiLi_&""" /><br/>"_
            &"一天最高施肥次数:<br/><input type=""text"" name=""ShiFeiCiShu"&SuiJiZhi&""" value="""&ShiFeiCiShu_&""" /><br/>"_
            &"土地价格:<br/><input type=""text"" name=""TuDiJiaGe"&SuiJiZhi&""" value="""&TuDiJiaGe_&""" /><br/>"_
	&"您的密码:<br/><input type=""text"" name=""password""/><br/>"_
            &"<anchor><go href="""&Server.HTMLEncode(ChuLiDiZhi("Wap_NongChang_SheZhi.asp?Act=En",sid))&""" method=""post"">"_
            &"<postfield name=""ShengJiKongZhi"" value=""$(ShengJiKongZhi"&SuiJiZhi&")"" />"_
            &"<postfield name=""YouXiBanBen"" value=""$(YouXiBanBen"&SuiJiZhi&")"" />"_
            &"<postfield name=""DenJiXianZhi"" value=""$(DenJiXianZhi"&SuiJiZhi&")"" />"_
            &"<postfield name=""ZhuanHuanBiLi"" value=""$(ZhuanHuanBiLi"&SuiJiZhi&")"" />"_
            &"<postfield name=""ShiFeiCiShu"" value=""$(ShiFeiCiShu"&SuiJiZhi&")"" />"_
            &"<postfield name=""TuDiJiaGe"" value=""$(TuDiJiaGe"&SuiJiZhi&")"" />"_
	&"<postfield name=""password"" value=""$(password)"" />"_
            &"</go>[更改设置]</anchor><br/>")
        Response.Write("==========<br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_GuanLi.asp",sid))&""">返回农场后台</a><br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Main.asp",sid))&""">返回主界面</a>")
    
    
        WML_End()
        Page_End()
    End Sub
    
    
    Call Page_Load()




 %>