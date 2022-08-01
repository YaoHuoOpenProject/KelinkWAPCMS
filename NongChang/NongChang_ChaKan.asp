<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%

    Sub Page_Load()
        Page_Start()
    
        
            '===========获取农场数据
            Dim G_Farm_ShiFouZiJi   '是否自己的菜地
            G_Farm_ShiFouZiJi=false
            Dim G_Farm_ID,G_Farm_MingChen,G_Farm_DenJi,G_Farm_JingYan,G_Farm_JinBi,G_Farm_ZuiHouShuaXinShiJian
            
            If CLng(Request.QueryString("ID"))=0 Then
                G_Farm_ID=FarmID
            Else
            
                G_Farm_ID=Request.QueryString("ID")
            End If
            
            If CLng(G_Farm_ID)=CLng(FarmID) Then
                G_Farm_ShiFouZiJi=true
            End If
            
            Dim Rs,userid_
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT [MingChen],[DenJi],[JingYan],[JinBi],[ZuiHouShuaXinShiJian],[userid] FROM [Farm] WHERE [ID]='"&CheckSql(G_Farm_ID)&"' AND [siteid]="&siteid,Conn,1,1
            
            If Not(Rs.EOF OR Rs.BOF) Then
                G_Farm_MingChen=Rs("MingChen")
		userid_=CLng(Rs("userid"))
                G_Farm_DenJi=Rs("DenJi")
                G_Farm_JingYan=Rs("JingYan")
                G_Farm_JinBi=Rs("JinBi")
                G_Farm_ZuiHouShuaXinShiJian=Rs("ZuiHouShuaXinShiJian")
            Else
                Rs.Close()
                CuoWu("农场不存在")
            End If
            Rs.Close()
            
            Dim NiChen
            Rs.Open "SELECT [userid],[nickname] FROM [user] WHERE [userid]="&userid_,Conn,1,1
            
            If Rs.BOF AND Rs.EOF Then
                Rs.Close()
                CuoWu("用户不存在")
            Else
                NiChen=Rs("nickname")
                Rs.Close()
            End If
            
            Call WML_Head(G_Farm_MingChen,"left")
    
            Response.Write("ＩＤ:"&G_Farm_ID&"<br/>")
            Response.Write("农场:"&Server.HTMLEncode(G_Farm_MingChen)&"<br/>")
            Response.Write("等级:"&G_Farm_DenJi&"级("&G_Farm_JingYan&"经验)<br/>")
            Response.Write("状态:")
            If CDate(G_Farm_ZuiHouShuaXinShiJian)>DateAdd("n",-30,now()) Then
                Response.Write("在线")
            Else
                Response.Write("离线")
            End If
            Response.Write("<br/>")
            Response.Write("金币:"&G_Farm_JinBi&"<br/>")
            Response.Write("农场主:<a href=""/bbs/userinfo.aspx?siteid="&siteid&"&amp;touserid="&userid_&"&amp;sid="&SessionID&""">"&Server.HTMLEncode(NiChen)&"(ID:"&userid_&")</a><br/><br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp?ID="&G_Farm_ID,sid))&""">返回农场</a>")
    
    
            Call WML_End()
        Page_End()
    End Sub
    
    Call Page_Load()

 %>