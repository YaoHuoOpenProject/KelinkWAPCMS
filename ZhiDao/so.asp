<%@ Language="VBSCRIPT" CODEPAGE="65001"%><!--#include file="../ASP_API/Conn.asp"--><!--#include file="Config.asp"-->
<%



    Sub Page_Load()
    
        Dim GuanJianZi
        GuanJianZi=Request.QueryString("g")
        
        If Trim(GuanJianZi)="" Then
            CuoWu("关键字不能为空")
        End If
        
        Call WML_Head(GuanJianZi&"-搜索","left")
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID],[BiaoTi],[HuiDaShu] FROM [ZhiDao_WenTi] WHERE ([BiaoTi] LIKE '%"&CheckSql(Replace(GuanJianZi," ","%"))&"%' OR [WenTiBuChong] LIKE '%"&CheckSql(Replace(GuanJianZi," ","%"))&"%') AND siteid="&siteid,Conn,1,1
        
        If Rs.EOF Then
            Response.Write("未搜索到任何结果<br/>")
            
        Else
        
            Response.Write("共找到"&Rs.RecordCount&"条结果<br/>")
        
            Rs.PageSize=10
            Dim Page
            Page=CLng(Request.QueryString("page"))
            If Page=0 Then Page=1
            If Page>Rs.PageCount Then Page=Rs.PageCount
            Rs.AbsolutePage=Page
            
            For i=1 To Rs.PageCount
            
                If Rs.EOF Then Exit For
            
            
                Response.Write(((Page-1)*10+i)&".<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi.asp?ID="&Rs("ID")&"&type=s&g="&Server.URLEncode(GuanJianZi)&"&page="&Page))&""">"&Server.HTMLEncode(Rs("BiaoTi"))&"("&Rs("HuiDaShu")&")</a><br/>")
            
            
                Rs.MoveNext()
            Next
            
            If Rs.PageCount>1 Then
            
            
            
                If Page<Rs.PageCount Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("so.asp?g="&Server.URLEncode(GuanJianZi)&"&page="&(Page+1)))&""">[下页]</a>")
                End If
                
                If Page>1 Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("so.asp?g="&Server.URLEncode(GuanJianZi)&"&page="&(Page-1)))&""">[上页]</a>")
                End If
            
                Response.Write("<br/>")
            
            
            End If
            
            
        
        End If
        Rs.Close()
        
        
        
        Response.Write("<input type=""text"" name=""g"" value="""" /><br/>")
        Response.Write("<anchor><go href=""so.asp"" method=""get"">")
        Response.Write("<postfield name=""sid"" value="""&sid&"""/>")
        Response.Write("<postfield name=""siteid"" value="""&siteid&"""/>")
        Response.Write("<postfield name=""g"" value=""$(g)"" />")
        Response.Write("</go>搜索答案</anchor> | <a href="""&Server.HTMLEncode(ChuLiDiZhi("TiWen.asp"))&""">我要提问</a><br/><br/>")
        
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("index.asp"))&""">返回知道首页</a>")
        
        
        Call WML_End()
    
    
    
    
    
    End Sub
    
    Call Page_Load()










 %>