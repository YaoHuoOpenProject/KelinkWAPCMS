<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%
    Sub Page_Load()
    
    
        Page_Start()
        
        Call WML_Head("物品商店","left")
        
            Dim RID
            RID=CLng(Request.QueryString("ID"))
            Response.Write("我的金币:"&JinBi&"个<br/>")
            Response.Write("我的等级:"&DenJi&"级<br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp",sid))&""">我的农场</a>.")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("CangKu.asp",sid))&""">我的仓库</a><br/>")
            Response.Write("类型:作物.<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShangDian_HuaFei.asp?RID="&RID,sid))&""">化肥</a>.<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShangDian_XianJing.asp?RID="&RID,sid))&""">陷阱</a><br/>")
            Dim Rs
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT * FROM [Farm_ShuCai] WHERE [siteid]="&siteid&" OR [siteid]=0 ORDER BY [ZhongZhiDenJi]",Conn,1,1
            
            If Rs.BOF AND Rs.EOF Then
                Response.Write("商店暂时没有物品，请联系站长在WEB后台管理及WAP后台管理配置。<br/>")
            Else
            
            
            Rs.PageSize=5
            Dim Page
            Page=CLng(Request.QueryString("page"))
            If Page=0 Then Page=1
            If Page>Rs.PageCount Then Page=Rs.PageCount
            Rs.AbsolutePage=Page
            
                For i=1 To Rs.PageSize
                
                    If Rs.EOF Then Exit For
                    
                    'Response.Write((Page-1)*10+i)
                    Response.Write("<img src=""Images/s"&Rs("SuoYing")&".jpg"" alt=""."" /><br/>【")
                    Response.Write("<a href=""")
                    Response.Write(Server.HTMLEncode(ChuLiDiZhi("ShuCai.asp?ID="&Rs("ID")&"&rurl="&Server.URLEncode(ChuLiDiZhi("ShangDian.asp?ID="&RID&"&page="&Page,sid)),sid)))
                    Response.Write(""">"&Server.HTMLEncode(Rs("ShuCaiMingChen"))&"</a>】<br/>("&Rs("ZhongZhiJiDu")&"季作物/要求:"&Rs("ZhongZhiDenJi")&"级)"&"<br/>")
                    Response.Write("<anchor><go href=""")
                    Response.Write(Server.HTMLEncode(ChuLiDiZhi("ShuCai_GouMai.asp?ID="&Rs("ID")&"&rurl="&Server.URLEncode(ChuLiDiZhi("ShangDian.asp?ID="&RID&"&page="&Page,sid)),sid)))
                    Response.Write(""" method=""post""><postfield name=""ShuLiang"" value=""1"" /></go>购买["&(CLng(Rs("ShuCaiShouJia"))*5*CLng(Rs("ZhongZhiJiDu")))&"金币]")
                    Response.Write("</anchor><br/>")
                
                    Rs.MoveNext()
                Next
                
                If Rs.PageCount>1 Then
                
                    Response.Write("第"&Page&"/"&Rs.PageCount&"页,共"&Rs.RecordCount&"条记录<br/>")
                    If Page<Rs.PageCount Then
                        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShangDian.asp?ID="&RID&"&page="&(Page+1),sid))&""">[下页]</a>")
                    End If
                    If Page>1 Then
                        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShangDian.asp?ID="&RID&"&page="&(Page-1),sid))&""">[上页]</a>")
                    End If
                    
                    Response.Write("<input type=""text"" name=""page"" format=""*N"" value=""2"" size=""2""/>")
                    Response.Write("<anchor><go href=""ShangDian.asp"" method=""get"">")
                    Response.Write("<postfield name=""ID"" value="""&RID&"""/>")
                    Response.Write("<postfield name=""sid"" value="""&sid&"""/>")
                    Response.Write("<postfield name=""page"" value=""$(page)""/>")
                    Response.Write("</go>[跳页]</anchor><br/>")
                
                End If
            
            End If
            
            Response.Write("<br/>----------<br/>")
            
            Response.Write("<a href="""&Server.HtmlEncode(ChuLiDiZhi("Game.asp?ID="&RID,sid))&""">返回游戏</a><br/>")
            
            Call YouXiDiBu(RID)
        
        Call WML_End()
        
        Page_End()
    
    
    End Sub
    
    Call Page_Load()
 %>