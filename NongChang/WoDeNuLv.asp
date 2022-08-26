<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%





    Sub Page_Load()
    
        Page_Start()
    
        Call WML_Head("我的奴隶","left")
        
            If Request.QueryString("Act")<>"" Then
                ChuLi()
            End If
        
            
            Response.Write("我的金币:"&JinBi&"个<br/>")
            Response.Write("我的等级:"&DenJi&"级<br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp",sid))&""">我的农场</a>.")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("CangKu.asp",sid))&""">我的仓库</a><br/>")
            
            Dim Rs
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT * FROM [Farm_NuLv] WHERE [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid,Conn,1,1
            
            If Rs.BOF AND Rs.EOF Then
                Response.Write("您暂时没有抓到任何奴隶<br/>")
            Else
                Rs.PageSize=5
                Dim Page
                Page=CLng(Request.QueryString("page"))
                If Page=0 Then Page=1
                If Page>Rs.PageCount Then Page=Rs.PageCount
                Rs.AbsolutePage=Page
                
                Response.Write("您一共抓获了"&Rs.RecordCount&"个奴隶<br/>")
                
                For i=1 To Rs.PageCount
                    If Rs.EOF Then Exit For
                    Response.Write((Page-1)*10+i)
                    Response.Write(".")
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp?ID="&Rs("NuLvID"),sid))&""">")
                    Response.Write(Server.HTMLEncode(Rs("NuLvMingChen")))
                    Response.Write("(ID:"&Rs("NuLvID")&")</a><br/>")
                    Response.Write("惩罚:")
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NuLv_ChengFa.asp?Act=0&ID="&Rs("ID"),sid))&""">扫大街</a>.")
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NuLv_ChengFa.asp?Act=1&ID="&Rs("ID"),sid))&""">守菜地</a>.")
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NuLv_ChengFa.asp?Act=2&ID="&Rs("ID"),sid))&""">关黑屋</a>")
                    Response.Write("<br/>")
                    Response.Write("安抚:")
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NuLv_AnFu.asp?Act=0&ID="&Rs("ID"),sid))&""">逛商场</a>.")
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NuLv_AnFu.asp?Act=1&ID="&Rs("ID"),sid))&""">住酒店</a>.")
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NuLv_AnFu.asp?Act=2&ID="&Rs("ID"),sid))&""">泡温泉</a>")
                    Response.Write("<br/>")
                    Rs.MoveNext()
                Next
                
                If Rs.PageCount>1 Then
                    Response.Write("第"&Page&"/"&Rs.PageCount&"页,共"&Rs.RecordCount&"条记录<br/>")
                    If Page<Rs.PageCount Then
                        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WoDeNuLv.asp?page="&(Page+1),sid))&""">[下页]</a>")
                    End If
                    If Page>1 Then
                        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WoDeNuLv.asp?page="&(Page-1),sid))&""">[上页]</a>")
                    End If
                    
                    Response.Write("<input type=""text"" name=""page"" format=""*N"" value=""2"" size=""2""/>")
                    Response.Write("<anchor><go href=""WoDeNuLv.asp"" method=""get"">")
                    Response.Write("<postfield name=""sid"" value="""&sid&"""/>")
                    Response.Write("<postfield name=""page"" value=""$(page)""/>")
                    Response.Write("</go>[跳页]</anchor><br/>")
                End If
            End If
            Rs.Close()
    
            Response.Write("<br/>")
            Response.Write("1.惩罚奴隶可以获得金币或经验<br/>")
            Response.Write("2.安抚奴隶可以让对方获得金币或经验<br/>")
            Response.Write("3.每个奴隶只能惩罚和安抚6次")
            Response.Write("<br/>----------<br/>")
            
            Response.Write("<a href="""&Server.HtmlEncode(ChuLiDiZhi("Game.asp",sid))&""">返回游戏</a><br/>")
            
            Call YouXiDiBu(0)
        
        Call WML_End()
    
        Page_End()
    
    End Sub
    
    Sub ChuLi()
    
    End Sub
    Call Page_Load()









 %>