<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%




    Sub Page_Load()
        Page_Start()
        Call WML_Head("开心农场","left")
    
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
            
            Response.Write("【<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_ChaKan.asp?ID="&G_Farm_ID,sid))&""">"&Server.HTMLEncode(G_Farm_MingChen)+"</a>】的农场")
            Response.Write("[")
            If CDate(G_Farm_ZuiHouShuaXinShiJian)>DateAdd("n",-30,now()) Then
                Response.Write("在线")
            Else
                Response.Write("离线")
            End If
            Response.Write("]<br/>等级:"&G_Farm_DenJi&"级 金币:"&G_Farm_JinBi&"个<br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp?ID="&G_Farm_ID,sid))&""">农场</a>."_
                &"<a href="""&Server.HTMLEncode(ChuLiDiZhi("LinJu.asp?ID="&G_Farm_ID,sid))&""">邻居</a>.留言."_
                &"<a href="""_
                &Server.HTMLEncode(ChuLiDiZhi("Game.asp?Act="&Server.URLEncode(Request.QueryString("Act"))&"&ID="&G_Farm_ID,sid))&""">刷新</a><br/><br/>")
            
            '=============结束
            
            If CLng(G_Farm_ID)<>CLng(FarmID) Then
            
                Response.Write("<input type=""text"" name=""LiuYanNeiRong"" maxlength=""200"" /><br/>")
                Response.Write("<anchor><go href="""&Server.HTMLEncode(ChuLiDiZhi("LiuYan_FaBiao.asp?ID="&G_Farm_ID,sid))&""" method=""post"">")
                Response.Write("<postfield name=""LiuYanNeiRong"" value=""$(LiuYanNeiRong)"" />")
                Response.Write("</go>[发表留言]</anchor><br/><br/>")
            End If
            
            Rs.Open "SELECT [ID],[LiuYanID],[LiuYanMingChen],[LiuYanNeiRong],[LiuYanShiJian] FROM [Farm_LiuYan] WHERE [SuoShuNongChang]="&G_Farm_ID&" AND [LiuYanID]<>0 AND [siteid]="&siteid&" ORDER BY [ID] DESC",Conn,1,1
            
            If Rs.BOF AND Rs.EOF Then
            
                Response.Write("暂时还没有留言<br/>")
            Else
            
                Rs.PageSize=10
                Dim Page
                Page=CLng(Request.QueryString("page"))
                If Page=0 Then Page=1
                Rs.AbsolutePage=Page
                
                
                For i=1 To Rs.PageSize
                
                
                    If Rs.EOF Then Exit For
                    
                    
                    Response.Write((Page-1)*10+i)
                    Response.Write(".")
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp?ID="&Rs("LiuYanID"),sid))&""">"_
                        &Server.HTMLEncode(Rs("LiuYanMingChen"))&"(ID:"&Rs("LiuYanID")&")</a>:"&Server.HTMLEncode(Rs("LiuYanNeiRong"))&"<br/>发表于:["&Rs("LiuYanShiJian")&"]<br/>")
                     
                
                    If CLng(G_Farm_ID)=CLng(FarmID) Then
                        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("LiuYan_ShanChu.asp?ID="&G_Farm_ID&"&LID="&Rs("ID"),sid))&""">[删除]</a><br/>")
                    End If
                
                    Rs.MoveNext()
                Next
                
                If Rs.PageCount>1 Then
                
                
                    Response.Write("第"&Page&"/"&Rs.PageCount&"页,共"&Rs.RecordCount&"条记录<br/>")
                    If Page<Rs.PageCount Then
                        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("LiuYan.asp?ID="&G_Farm_ID&"&page="&(Page+1),sid))&""">[下页]</a>")
                    End If
                    
                    If Page>1 Then
                    
                        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("LiuYan.asp?ID="&G_Farm_ID&"&page="&(Page-1),sid))&""">[上页]</a>")
                    End If
                
                    Response.Write("<br/>")
                End If
            
            End If
            
            
            Response.Write("----------<br/>")
            
            Response.Write("<a href="""&Server.HtmlEncode(ChuLiDiZhi("Game.asp?ID="&G_Farm_ID,sid))&""">返回游戏</a><br/>")
            
            
            
            
    
            Call YouXiDiBu(G_Farm_ID)
            
            '===========菜地操作结束
        
        
        Call WML_End()
        
    End Sub
    
    
    
    
    
    
    
    Call Page_Load()









 %>