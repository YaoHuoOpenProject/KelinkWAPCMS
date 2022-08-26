<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%
    Sub Page_Load()
        Page_Start()
        
        Call WML_Head("在线农场","left")
        
            Dim Rs
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT [ID],[MingChen],[DenJi],[JinBi],[ZhuangTai] FROM [Farm] WHERE [ZuiHouShuaXinShiJian]>'"&DateAdd("n",-30,now())&"' AND [siteid]='"&siteid&"'",Conn,1,1
            
            Rs.PageSize=10
            Dim Page
            Page=CLng(Request.QueryString("page"))
            If Page=0 Then Page=1
            If Page>Rs.PageCount Then Page=Rs.PageCount
            Rs.AbsolutePage=Page
            
            If Rs.BOF AND Rs.EOF Then
                Response.Write("暂时没有在线农场<br/>")
            Else
            
            
                For i=1 To Rs.PageSize
                
                    If Rs.EOF Then
                        Exit For
                    End If
                    
                    
                    Response.Write((Page-1)*10+i)
                    Response.Write(".<a href="""_
                        &Server.HTMLEncode(ChuLiDiZhi("Game.asp?ID="&Rs("ID")&"&rurl="_
                        &Server.URLEncode(ChuLiDiZhi("NongChang_ZaiXian.asp?page="&Page,sid)),sid))&""">"&Server.HTMLEncode(Rs("MingChen"))&"(ID:"&Rs("ID")&"/"&Rs("DenJi")&"级/"&Rs("JinBi")&"金币)</a><br/>")
                    Response.Write("最近:"&Rs("ZhuangTai")&"<br/>")
                    
                    
                    Rs.MoveNext()
                    
                Next
                
                If Rs.PageCount>1 Then
                
                    Response.Write("第"&Page&"/"&Rs.PageCount&"页,共"&Rs.RecordCount&"条记录<br/>")
                    If Page<Rs.PageCount Then
                        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_ZaiXian.asp?page="&(Page+1),sid))&""">[下页]</a>")
                    End If
                    
                    If Page>1 Then
                        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_ZaiXian.asp?page="&(Page-1),sid))&""">[上页]</a>")
                    End If
                    
                    Response.Write("<br/>")
                
                End If
            
            
            End If
            
            Response.Write("----------<br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp",sid))&""">返回农场</a><br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Main.asp",sid))&""">返回主界面</a>")
        
        Call WML_End()
        
        Page_End()
    End Sub
    
    Call Page_Load()
 %>