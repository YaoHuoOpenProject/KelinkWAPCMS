﻿<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%




    Sub Page_Load()
        Page_Start()
        Call WML_Head("蔬菜管理","left")
    
    
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
    
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Wap_ShuCai_DaoRu.asp",sid))&""">[导入蔬菜数据]</a><br/>")
        Response.Write("==========<br/>")
        
        Rs.Open "SELECT [ID],[ShuCaiMingChen] FROM [Farm_ShuCai] WHERE [siteid]="&siteid&" ORDER BY [ID] DESC",Conn,1,1
        
        If Rs.BOF AND Rs.EOF Then
            Response.Write("暂时还没有蔬菜数据<br/>")
        Else
        
            Rs.PageSize=10
            Dim Page
            Page=CLng(Request.QueryString("page"))
            If Page=0 Then Page=1
            If Page>Rs.PageCount Then Page=Rs.PageCount
            Rs.AbsolutePage=Page
            
            For i=1 To Rs.PageSize
            
            
                If Rs.EOF Then Exit For
                
                
                Response.Write(((Page-1)*10+i)&"."&Server.HTMLEncode(Rs("ShuCaiMingChen"))&"<a href="""&Server.HTMLEncode(ChuLiDiZhi("Wap_ShuCai_ShanChu.asp?ID="&Rs("ID")&"&page="&Page,sid))&""">删除</a><br/>")
                
                Rs.MoveNext()
            
            
            Next
            
            
            
            If Rs.PageCount>1 Then
            
                    Response.Write("第"&Page&"/"&Rs.PageCount&"页,共"&Rs.RecordCount&"条记录<br/>")
                If Page<Rs.PageCount Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Wap_ShuCai_GuanLi.asp?page="&(Page+1),sid))&""">[下页]</a>")
                End If
                
                If Page>1 Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Wap_ShuCai_GuanLi.asp?page="&(Page-1),sid))&""">[上页]</a>")
                End If
            
            
            End If
        
        End If
    
            Response.Write("<br/><a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_GuanLi.asp",sid))&""">返回农场后台</a>")
    
    
        Call WML_End()
        Page_End()
    End Sub
    
    
    
    Call Page_Load()






 %>