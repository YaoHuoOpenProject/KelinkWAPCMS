<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%




    Sub Page_Load()
        Page_Start()
        Call WML_Head("农场管理","left")
    
    
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [managerlvl] FROM [user] WHERE [userid]="&userid,Conn,1,1
        
        Dim ShiFouCunZai
        If Rs.BOF AND Rs.EOF Then
            CuoWu("错误")
        Else
            If Rs("managerlvl")="00" OR Rs("managerlvl")="01" Then
            
            Else
                CuoWu("错误")
            End If
        End If
        Rs.Close()
        
        Rs.Open "SELECT [ID],[MingChen] FROM [Farm] WHERE [siteid]="&siteid,Conn,1,1
        
        If Rs.BOF AND Rs.EOF Then
            Response.Write("暂时还没有农场<br/>")
        Else
            
            
            
            
            Rs.PageSize=10
            Dim Page
            Page=CLng(Request.QueryString("page"))
            If Page=0 Then Page=1
            If Page>Rs.PageCount Then Page=Rs.PageCount
            Rs.AbsolutePage=Page
            
            For i=1 To Rs.PageSize
            
            
            
                If Rs.EOF Then Exit For
                
                Response.Write(((Page-1)*10+i)&"."&Server.HTMLEncode(Rs("MingChen"))&"(ID:"&Rs("ID")&")<a href="""_
                    &Server.HTMLEncode(ChuLiDiZhi("Wap_NongChang_ShanChu.asp?ID="&Rs("ID")&"&page="&Page,sid))&""">[删除]</a><br/>")
                    
                    
               Rs.MoveNext()
            
            
            
            
            
            
            
            Next
            
            
            
            If Rs.PageCount>1 Then
            
                    Response.Write("第"&Page&"/"&Rs.PageCount&"页,共"&Rs.RecordCount&"条记录<br/>")
                If Page<Rs.PageCount Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Wap_NongChang_GuanLi.asp?page="&(Page+1),sid))&""">[下页]</a>")
                End If
                
                If Page>1 Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Wap_NongChang_GuanLi.asp?page="&(Page-1),sid))&""">[上页]</a>")
                End If
            
            
            End If
            
            
            
        End If
        Rs.Close()
    
            
            Response.Write("<br/><a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_GuanLi.asp",sid))&""">返回农场后台</a>")
    
    
        WML_End()
        Page_End()
    End Sub
    
    
    Call Page_Load()







 %>