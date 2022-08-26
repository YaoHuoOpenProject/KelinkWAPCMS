<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%

    Sub Page_Load()
        Page_Start()
        Call WML_Head("农场排名","left")
    
    
            Dim LX,PX
            LX=Request.QueryString("lx")
            PX=CLng(Request.QueryString("px"))
            
            Dim ZiDuan
            If LX="1" Then
            
                ZiDuan="DenJi"
                Response.Write("等级:")
                If PX=0 Then
                Response.Write("倒序.<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=1&px=1",sid))&""">顺序</a>")
                Else
                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=1&px=0",sid))&""">倒序</a>.顺序")
                End If
                Response.Write("<br/>")
                Response.Write("金币:")
                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=&px=0",sid))&""">倒序</a>.<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=&px=1",sid))&""">顺序</a>")
                Response.Write("<br/>")
                Response.Write("偷菜:")
                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=2&px=0",sid))&""">倒序</a>.")
                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=2&px=1",sid))&""">顺序</a>")
            Else
             If LX="2" Then
                ZiDuan="TouCaiCiShu"
                Response.Write("等级:")
                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=1&px=0",sid))&""">倒序</a>.<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=1&px=1",sid))&""">顺序</a>")
                Response.Write("<br/>")
                Response.Write("金币:")
                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=&px=0",sid))&""">倒序</a>.<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=&px=1",sid))&""">顺序</a>")
                Response.Write("<br/>")
                Response.Write("偷菜:")
                If PX=0 Then
                    Response.Write("倒序.<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=2&px=1",sid))&""">顺序</a>")
                Else
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=2&px=0",sid))&""">倒序</a>.顺序")
                End If
             Else
            
                ZiDuan="JinBi"
                Response.Write("等级:")
                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=1&px=0",sid))&""">倒序</a>.<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=1&px=1",sid))&""">顺序</a>")
                Response.Write("<br/>")
                Response.Write("金币:")
                If PX=0 Then
                Response.Write("倒序.<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=&px=1",sid))&""">顺序</a>")
                Else
                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=&px=0",sid))&""">倒序</a>.顺序")
                End If
                Response.Write("<br/>")
                Response.Write("偷菜:")
                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=2&px=0",sid))&""">倒序</a>.")
                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx=2&px=1",sid))&""">顺序</a>")
             End If
            End If
            
            Dim SQL
            SQL="SELECT [ID],[MingChen],[DenJi],[JinBi] FROM [Farm] WHERE [siteid]='"&siteid&"' ORDER BY ["&ZiDuan&"]"
            If PX=0 Then
                SQL=SQL&" DESC"
            End If
            Response.Write("<br/>")
            Dim Rs
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open SQL,Conn,1,1
            
            Rs.PageSize=10
            Dim Page
            Page=CLng(Request.QueryString("page"))
            If Page=0 Then Page=1
            If Page>Rs.PageCount Then Page=Rs.PageCount
            Rs.AbsolutePage=Page
            
            If Rs.BOF AND Rs.EOF Then
                Response.Write("暂时没有农场<br/>")
            Else
            
            
                For i=1 To Rs.PageSize
                
                    If Rs.EOF Then
                        Exit For
                    End If
                    
                    
                    Response.Write((Page-1)*10+i)
                    Response.Write(".<a href="""_
                        &Server.HTMLEncode(ChuLiDiZhi("Game.asp?ID="&Rs("ID")&"&rurl="_
                        &Server.URLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx="&LX&"&page="&Page&"&px="&PX,sid)),sid))&""">"&Server.HTMLEncode(Rs("MingChen"))&"(ID:"&Rs("ID")&"/"&Rs("DenJi")&"级/"&Rs("JinBi")&"金币)</a><br/>")
                    
                    
                    Rs.MoveNext()
                    
                Next
                
                If Rs.PageCount>1 Then
                
                    Response.Write("第"&Page&"/"&Rs.PageCount&"页,共"&Rs.RecordCount&"条记录<br/>")
                    If Page<Rs.PageCount Then
                        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx="&LX&"&page="&(Page+1)&"&px="&PX,sid))&""">[下页]</a>")
                    End If
                    
                    If Page>1 Then
                        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_PaiMing.asp?lx="&LX&"&page="&(Page-1)&"&px="&PX,sid))&""">[上页]</a>")
                    End If
                    
                    Response.Write("<br/>")
                
                End If
            
            
            End If
            
            Response.Write("----------<br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Main.asp",sid))&""">返回主界面</a>")
        
    
    
    
    
    
    
        Call WML_End()
        Page_End()
    End Sub
    
    
    Call Page_Load()

 %>