<%@ Language="VBSCRIPT" CODEPAGE="65001"%><!--#include file="../ASP_API/Conn.asp"--><!--#include file="Config.asp"-->
<%



    Sub Page_Load()
    
        YanZhengHuiYuan()
    
        Call WML_Head("我的回答","left")
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID],[HuiDaNeiRong],[ShiFouYiCaiNa],[HuiDaWenTiID] FROM [ZhiDao_HuiDa] WHERE [HuiDaZheID]="&userid&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.EOF AND Rs.EOF Then
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
                Response.Write(Server.HTMLEncode(Rs("HuiDaNeiRong"))&"-")
                If CBool(Rs("ShiFouYiCaiNa")) Then
                    Response.Write("已采纳")
                Else
                    Response.Write("未采纳")
                End If
        
                Response.Write("")
                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi.asp?type=wdh&ID="&Rs("HuiDaWenTiID")))&""">查看</a><br/>")
                Rs.MoveNext()
            Next
            
            If Rs.PageCount>1 Then
                
                
                
                If Page<Rs.PageCount Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WoDeHuiDa.asp?page="&(Page+1)))&""">[下页]</a>")
                End If
                
                If Page>1 Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WoDeHuiDa.asp?page="&(Page-1)))&""">[上页]</a>")
                End If
                
                Response.Write("<br/>")
                
                
                
                
            End If
            
        End If
        Rs.Close()
        
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WoDeZhiDao.asp"))&""">返回我的知道</a><br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("index.asp"))&""">返回知道首页</a>")
        
        
        Call WML_End()
        Conn.Close()
    
    
    
    End Sub
    Call Page_Load()








 %>