<%@ Language="VBSCRIPT" CODEPAGE="65001"%><!--#include file="../ASP_API/Conn.asp"--><!--#include file="Config.asp"-->
<%




    Sub Page_Load()
    
        Call WML_Head("回答问题","left")
        
        If userid="" Then
            Response.Redirect("/waplogin.aspx?siteid="&Request.QueryString("siteid"))
        End If
    
    
        Dim ID,rurl,SuoShuFenLei,SuoShuXiaoFenLei
        ID=CLng(Request.QueryString("ID"))
        rurl=Request.QueryString("rurl")
        
        Dim BiaoTi
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [BiaoTi],[SuoShuFenLei],[SuoShuXiaoFenLei] FROM [ZhiDao_WenTi] WHERE [ID]="&ID&" AND [TiWenZheID]<>"&userid&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.EOF AND Rs.EOF Then
            CuoWu("问题不存在")
        Else
            BiaoTi=Rs("BiaoTi")
            SuoShuFenLei=CLng(Rs("SuoShuFenLei"))
            SuoShuXiaoFenLei=CLng(Rs("SuoShuXiaoFenLei"))
        End If
        Rs.Close()
        
        Rs.Open "SELECT [ID] FROM [ZhiDao_HuiDa] WHERE [HuiDaZheID]="&userid&" AND [HuiDaWenTiID]="&ID&" AND [siteid]="&siteid,Conn,1,1
        
        If Not Rs.EOF Then
            CuoWu("您已经回答过该问题了")
        End If
        Rs.Close()
        
        If Request.QueryString("Act")="En" Then
            Call TiJiaoHuiDa(ID,rurl,SuoShuFenLei,SuoShuXiaoFenLei)
        End If
        
        Response.Write("问题:"&Server.HTMLEncode(BiaoTi)&"<br/>")
        Response.Write("回答:<br/>")
        Response.Write("<input type=""text"" name=""HuiDaNeiRong"" maxlength=""4000"" /><br/>")
        Response.Write("<anchor><go href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi_HuiDa.asp?Act=En&ID="&ID&"&rurl="&Server.URLEncode(rurl)))&""" method=""post"">")
        Response.Write("<postfield name=""HuiDaNeiRong"" value=""$(HuiDaNeiRong)""/>")
        Response.Write("</go>[提交回答]</anchor><br/>")
        Response.Write("<a href="""&Server.HTMLEncode(rurl)&""">返回问题</a>")
    
        Call WML_End()
        
        Conn.Close()
    End Sub
	Function HuoQuNiChen()

		Dim Rs
		Set Rs=Server.CreateObject("ADODB.RecordSet")
		Rs.Open "SELECT [nickname] FROM [user] WHERE [userid]="&userid,Conn,1,1
		HuoQuNiChen=Rs("nickname")
		Rs.Close()

	End Function
    
    Sub TiJiaoHuiDa(ID,rurl,SuoShuFenLei,SuoShuXiaoFenLei)
    
        Dim HuiDaNeiRong
        HuiDaNeiRong=Request.Form("HuiDaNeiRong")
        
        If Len(HuiDaNeiRong)<1 OR Len(HuiDaNeiRong)>4000 Then
            CuoWu("回答内容的长度只能在1-4000之间")
        End If
        
        Dim ZGID
        ZGID=ZuiGaoID("ZhiDao_HuiDa")
        
        Conn.Execute("INSERT INTO [ZhiDao_HuiDa]([ID],[HuiDaNeiRong],[HuiDaShiJian],[HuiDaZheID],[HuiDaZheNiChen],[ShiFouYiCaiNa],[HuiDaWenTiID],[siteid],[SuoShuFenLei],[SuoShuXiaoFenLei])"_
            &"VALUES("&ZGID&",'"&CheckSql(HuiDaNeiRong)&"','"&now()&"',"&userid&",'"&CheckSql(HuoQuNiChen())&"',0,"&ID&","&siteid&","&SuoShuFenLei&","&SuoShuXiaoFenLei&")")
            
       Dim Rs,HuiDaShu
       Set Rs=Server.CreateObject("ADODB.RecordSet")
       Rs.Open "SELECT [ID] FROM [ZhiDao_HuiDa] WHERE [HuiDaWenTiID]="&ID&" AND [siteid]="&siteid,Conn,1,1
       
       HuiDaShu=Rs.RecordCount
       Rs.Close()
       
       Conn.Execute("UPDATE [ZhiDao_WenTi] SET [HuiDaShu]="&HuiDaShu&" WHERE [ID]="&ID&" AND [siteid]="&siteid)
            
       Response.Redirect(rurl)
    
    End Sub
    Call Page_Load()








 %>