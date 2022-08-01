<%@ Language="VBSCRIPT" CODEPAGE="65001"%><!--#include file="../ASP_API/Conn.asp"--><!--#include file="Config.asp"-->
<%





    Sub Page_Load()
    
        Dim ID,FenLeiMingChen
        ID=CLng(Request.QueryString("ID"))
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID],[FenLeiMingChen] FROM [ZhiDao_FenLei] WHERE [siteid]="&siteid,Conn,1,1
        
        If Rs.EOF Then
            CuoWu("分类不存在")
        Else
            FenLeiMingChen=Rs("FenLeiMingChen")
        End If
        Rs.Close()
        
        Call WML_Head(FenLeiMingChen&"-问题分类","left")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("FenLei_DaiJieJue.asp?ID="&ID))&""">[待解决问题]</a><br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("FenLei_YiJieJue.asp?ID="&ID))&""">[已解决问题]</a><br/>")
        Response.Write("[二级分类]<br/>")
    
        Rs.Open "SELECT [ID],[FenLeiMingChen],[WenTiShu] FROM [ZhiDao_XiaoFenLei] WHERE [siteid]="&siteid&" AND [SuoShuFenLei]="&ID,Conn,1,1
        
        For i=1 To Rs.RecordCount
        
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ZhiDaoXiaoFenLei.asp?ID="&Rs("ID")))&""">"&Server.HTMLEncode(Rs("FenLeiMingChen"))&"("&Rs("WenTiShu")&")</a><br/>")
        
        
            Rs.MoveNext()
        
        Next
        
        Rs.Close()
        
        Response.Write("<br/><a href="""&Server.HTMLEncode(ChuLiDiZhi("index.asp"))&""">返回首页</a>")
        Call WML_End()
    
    
    End Sub
    Call Page_Load()








 %>