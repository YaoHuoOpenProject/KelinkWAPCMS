<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%


    Sub Page_Load()
        Page_Start()
        
        
        
        If Request.QueryString("Act")="En" Then
            Call ZengJiaLinJu()
        End If
        
        
        
        
        
        
        
        Call WML_Head("增加邻居","left")
        Response.Write("农场ID:<br/>")
        Response.Write("<input type=""text"" name=""NongChangID"" format=""*N"" value=""0"" /><br/>")
        Response.Write("<anchor><go href="""&Server.HTMLEncode(ChuLiDiZhi("LinJu_ZengJia.asp?Act=En",sid))&""" method=""post"">")
        Response.Write("<postfield name=""NongChangID"" value=""$(NongChangID)"" />")
        Response.Write("</go>[增加邻居]</anchor><br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("LinJu.asp",sid))&""">返回邻居</a>")
    
        Call WML_End()
        Page_End()
    End Sub
    
    
    Sub ZengJiaLinJu()
        
        Dim NongChangID
        NongChangID=CLng(Request.Form("NongChangID"))
        
        If NongChangID=CLng(FarmID) Then
            CuoWu("您不能加自己为邻居")
        End If
        
        Dim NongChangMingChen,NongChangDenJi,NongChangJinBi
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [MingChen],[DenJi],[JinBi] FROM [Farm] WHERE [ID]="&NongChangID&" AND [siteid]="&siteid,Conn,1,1
        If Rs.BOF AND Rs.EOF Then
            CuoWu("农场不存在")
            Rs.Close()
        Else
            NongChangMingChen=Rs("MingChen")
            NongChangDenJi=Rs("DenJi")
            NongChangJinBi=Rs("JinBi")
            Rs.Close()
        End If
        
        Rs.Open "SELECT [ID] FROM [Farm_LinJu] WHERE [NongChangID]="&NongChangID&" AND [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid,Conn,1,1
        
        If Not(Rs.BOF AND Rs.EOF) Then
            Rs.Close()
            CuoWu("您已经增加对方为邻居了")
        End If
        
        Dim ZGID
        ZGID=ZuiGaoID("Farm_LinJu")
        
        Conn.Execute("INSERT INTO [Farm_LinJu]([ID],[SuoShuNongChang],[NongChangID],[NongChangMingChen],[NongChangDenJi],[NongChangJinBi],[siteid])"_
            &"VALUES("&ZGID&","&FarmID&","&NongChangID&",N'"&CheckSql(NongChangMingChen)&"',"&NongChangDenJi&","&NongChangJinBi&","&siteid&")")
            
        Call GengXinZhuangTai("增加["&NongChangMingChen&"]为好友。")
        Response.Redirect(ChuLiDiZhi(DiZhiTou&"LinJu.asp",sid))
    
    End Sub



    Call Page_Load()



 %>