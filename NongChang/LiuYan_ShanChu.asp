<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%


    Sub Page_Load()
        Page_Start()
        
        Call WML_Head("删除留言","center")
        
        
        
        
        
            Dim G_Farm_ShiFouZiJi
            G_Farm_ShiFouZiJi=false
            Dim G_Farm_ID,G_Farm_MingChen,G_Farm_DenJi,G_Farm_JingYan,G_Farm_JinBi,G_Farm_ZuiHouShuaXinShiJian,LiuYanID
            
            LiuYanID=CLng(Request.QueryString("LID"))
            
            If CLng(Request.QueryString("ID"))=0 Then
                G_Farm_ID=FarmID
            Else
            
                G_Farm_ID=Request.QueryString("ID")
            End If
            
            If CLng(G_Farm_ID)=CLng(FarmID) Then
                G_Farm_ShiFouZiJi=true
            End If
            
            If Not G_Farm_ShiFouZiJi Then
                CuoWu("您没有权限删除该留言")
            End If
            
            If Request.QueryString("Act")="En" Then
                ShanChuLiuYan(LiuYanID)
            End If
            
            Dim Rs
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT [MingChen],[DenJi],[JingYan],[JinBi],[ZuiHouShuaXinShiJian] FROM [Farm] WHERE [ID]='"&CheckSql(G_Farm_ID)&"' AND [siteid]="&siteid,Conn,1,1
            
            If Not(Rs.EOF OR Rs.BOF) Then
                G_Farm_MingChen=Rs("MingChen")
                G_Farm_DenJi=Rs("DenJi")
                G_Farm_JingYan=Rs("JingYan")
                G_Farm_JinBi=Rs("JinBi")
                G_Farm_ZuiHouShuaXinShiJian=Rs("ZuiHouShuaXinShiJian")
                Rs.Close()
            Else
                Rs.Close()
                CuoWu("农场不存在")
            End If
        
        
        
        
        
        
            Response.Write("真的要删除吗？<br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("LiuYan_ShanChu.asp?Act=En&ID="&G_Farm_ID&"&LID="&LiuYanID,sid))&""">[确定删除]</a><br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("LiuYan.asp?ID="&G_Farm_ID,sid))&""">[暂不删除]</a>")
            Response.Write("<br/>----------<br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("LiuYan.asp?ID="&G_Farm_ID,sid))&""">返回留言</a>")
        
        
        
        
        
        
        
        
        
        
        
        
        Call WML_End()
    
        Page_End()
    End Sub
    
    Sub ShanChuLiuYan(LiuYanID)
    
        Call GengXinZhuangTai("删除留言")
    
        Conn.Execute("DELETE FROM [Farm_LiuYan] WHERE [ID]="&LiuYanID&" AND [SuoShuNongChang]="&FarmID)
        
        Response.Redirect(ChuLiDiZhi(DiZhiTou&"LiuYan.asp?ID="&FarmID,sid))
    
    End Sub
    
    Call Page_Load()



 %>