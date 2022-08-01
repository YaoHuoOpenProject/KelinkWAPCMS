<%@ Language="VBSCRIPT" CODEPAGE="65001"%><!--#include file="../ASP_API/Conn.asp"--><!--#include file="Config.asp"-->
<%



    Sub Page_Load()
        
        Call WML_Head("新解决问题","left")
    
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID],[BiaoTi],[HuiDaShu] FROM [ZhiDao_WenTi] WHERE [WenTiZhuangTai]='1' AND [siteid]="&siteid&" ORDER BY [ID] DESC",Conn,1,1
        
        
        If Rs.EOF Then
            Response.Write("暂时没有记录<br/>")
            
        Else
        
            Response.Write("共"&Rs.RecordCount&"条记录<br/>")
        
            Rs.PageSize=10
            Dim Page
            Page=CLng(Request.QueryString("page"))
            If Page=0 Then Page=1
            If Page>Rs.PageCount Then Page=Rs.PageCount
            Rs.AbsolutePage=Page
            
            For i=1 To 10
            
                If Rs.EOF Then Exit For
            
            
                Response.Write(((Page-1)*10+i)&".<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi.asp?ID="&Rs("ID")&"&type=x&page="&Page))&""">"&Server.HTMLEncode(Rs("BiaoTi"))&"("&Rs("HuiDaShu")&")</a><br/>")
            
            
                Rs.MoveNext()
            Next
            
            If Rs.PageCount>1 Then
            
            
            
                If Page<Rs.PageCount Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi_XinJieJue.asp?page="&(Page+1)))&""">[下页]</a>")
                End If
                
                If Page>1 Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi_XinJieJue.asp?page="&(Page-1)))&""">[上页]</a>")
                End If
            
            
                Response.Write("<br/>")
            
            End If
        
        End If
        Rs.Close()
    
    
        
            
            
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("index.asp"))&""">返回知道首页</a>")
    
        Call WML_End()
        Conn.Close()
    End Sub
    
    Call Page_Load()







 %>