<%@ Language="VBSCRIPT" CODEPAGE="65001"%><!--#include file="../ASP_API/Conn.asp"--><!--#include file="Config.asp"-->
<%



    Sub Page_Load()
        YanZhengHuiYuan()
        Call WML_Head("我的问题","left")
    
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID],[BiaoTi],[HuiDaShu],[WenTiZhuangTai] FROM [ZhiDao_WenTi] WHERE [TiWenZheID]="&userid&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.EOF AND Rs.BOF Then
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
            
            
                Response.Write(((Page-1)*10+i)&".<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi.asp?ID="&Rs("ID")&"&type=wd&page="&Page))&""">"&Server.HTMLEncode(Rs("BiaoTi"))&"("&Rs("HuiDaShu")&")</a>-")
                
                Select Case CLng(Rs("WenTiZhuangTai"))
                Case 0
                    Response.Write("待解决")
                Case 1
                    Response.Write("已解决")
                Case 2
                    Response.Write("已关闭")
                End Select
                Response.Write("<br/>")
            
                Rs.MoveNext()
            Next
            
            If Rs.PageCount>1 Then
            
            
            
                If Page<Rs.PageCount Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WoDeWenTi.asp?page="&(Page+1)))&""">[下页]</a>")
                End If
                
                If Page>1 Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WoDeWenTi.asp?page="&(Page-1)))&""">[上页]</a>")
                End If
            
            
                Response.Write("<br/>")
            
            End If
        End If
        Rs.Close()
    
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WoDeZhiDao.asp"))&""">返回我的知道</a><br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("index.asp"))&""">返回知道首页</a>")
    
        Call WML_End()
    End Sub
    Call Page_Load()





 %>