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
            Response.Write("类型:<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShangDian.asp?RID="&RID,sid))&""">作物</a>.<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShangDian_HuaFei.asp?RID="&RID,sid))&""">化肥</a>.陷阱<br/>")
            
            Dim Rs
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT * FROM [Farm_XianJing] ORDER BY [ID]",Conn,1,1
            
            
            If Rs.EOF Then
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
                
                    Response.Write("<img src=""Images/XianJing.jpeg"" alt=""..""/><br/>")
                    Response.Write("【"&Server.HTMLEncode(Rs("XianJingMingChen"))&"】<br/>")
                    Response.Write("陷阱说明:"&Rs("XianJingJiLv")&"%的几率让对方成为奴隶。<br/>")
                    Response.Write("陷阱单价:"&Rs("XianJingDanJia")&"金币<br/>")
                    Response.Write("使用等级:"&Rs("GouMaiDenJi")&"级")
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("XianJing_GouMai.asp?ID="&Rs("ID")&"&rurl="&Server.URLEncode(ChuLiDiZhi("ShangDian_XianJing.asp?RID="&RID&"&page="&Page,sid)),sid))&""">购买</a>")
                    Response.Write("<br/>")
                
                    Rs.MoveNext()
                Next
            If Rs.PageCount>1 Then
            
            
                
                    Response.Write("第"&Page&"/"&Rs.PageCount&"页,共"&Rs.RecordCount&"条记录<br/>")
                    If Page<Rs.PageCount Then
                        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShangDian_XianJing.asp?ID="&RID&"&page="&(Page+1),sid))&""">[下页]</a>")
                    End If
                    If Page>1 Then
                        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShangDian_XianJing.asp?ID="&RID&"&page="&(Page-1),sid))&""">[上页]</a>")
                    End If
                    
                    Response.Write("<input type=""text"" name=""page"" format=""*N"" value=""2"" size=""2""/>")
                    Response.Write("<anchor><go href=""ShangDian_XianJing.asp"" method=""get"">")
                    Response.Write("<postfield name=""ID"" value="""&RID&"""/>")
                    Response.Write("<postfield name=""sid"" value="""&sid&"""/>")
                    Response.Write("<postfield name=""page"" value=""$(page)""/>")
                    Response.Write("</go>[跳页]</anchor><br/>")
            
            
            
            
            End If
            End If
            Rs.Close()
            
            Response.Write("<br/>----------<br/>")
            Response.Write("<a href="""&Server.HtmlEncode(ChuLiDiZhi("Game.asp?ID="&RID,sid))&""">返回游戏</a><br/>")
    
            Call YouXiDiBu(RID)
    
        Call WML_End()
        Page_End()
    
    End Sub
    Call Page_Load()







 %>