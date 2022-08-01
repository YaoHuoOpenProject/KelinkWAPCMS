<%@ Language="VBSCRIPT" CODEPAGE="65001"%><%
'dim siteid,classid,action,sid
classid=Request.QueryString("classid")
action=Request.QueryString("action")
siteid=Request.QueryString("siteid")
sid=Request.QueryString("sid")
session("sid")=sid
if action="webAdmin" or  action="webAdmin00" or action="wapAdmin" or  action="wapAdmin00" then
	 response.redirect "Web_Index.asp?sid="&sid '后台管理地址
end if

%><!--#include file="../ASP_API/Conn.asp"--><!--#include file="Config.asp"-->
<%



	Function HuoQuNiChen()

		Dim Rs
		Set Rs=Server.CreateObject("ADODB.RecordSet")
		Rs.Open "SELECT [nickname] FROM [user] WHERE [userid]="&userid,Conn,1,1
		HuoQuNiChen=Rs("nickname")
		Rs.Close()

	End Function

    Sub LiuLanQiPanDuan()
        
    End Sub




    Sub Page_Load()
        Call LiuLanQiPanDuan()
        Call WML_Head("知道首页","left")
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        
        'Rs.Open "SELECT * FROM [ZhiDao_FenLei] ORDER BY [ID]",Conn,1,1
        
        'For i=1 To Rs.RecordCount
        
        
        
        '    Response.Write("INSERT INTO [ZhiDao_FenLei]([ID],[FenLeiMingChen],[siteid])"_
        '        &"VALUES($ID$,'"&Rs("FenLeiMingChen")&"',$siteid$)"&Chr(13)&Chr(10)&"GO"&Chr(13)&Chr(10))
        
        
        '    Rs.MoveNext()
        'Next
        'Rs.Close()
        
        'Rs.Open "SELECT * FROM [ZhiDao_XiaoFenLei] ORDER BY [ID]",Conn,1,1
        
        'For i=1 To Rs.RecordCount
        
        '    Response.Write("INSERT INTO [ZhiDao_XiaoFenLei]([ID],[FenLeiMingChen],[SuoShuFenLei],[WenTiShu],[siteid])"_
        '        &"VALUES($ID$,'"&Rs("FenLeiMingChen")&"',$SuoShuFenLei"&Rs("SuoShuFenLei")&"$,0,$siteid$)"&Chr(13)&Chr(10)&"GO"&Chr(13)&Chr(10))
        '    Rs.MoveNext()
        'Next
        'Rs.Close()
        
        If userid="" Then
            Response.Write("<a href="""&Server.HtmlEncode(ChuLiDiZhi(http_start&"waplogin.aspx"))&""">登录</a>")
        Else
            Response.Write(Server.HTMLEncode(HuoQuNiChen())&"("&userid&")<a href="""&Server.HTMLEncode(ChuLiDiZhi("WoDeZhiDao.asp"))&""">我的知道</a>")
        End If
        Response.Write("<br/>")
        
        Response.Write("<input type=""text"" name=""g"" value="""" /><br/>")
        Response.Write("<anchor><go href=""so.asp"" method=""get"">")
        Response.Write("<postfield name=""sid"" value="""&sid&"""/>")
        Response.Write("<postfield name=""siteid"" value="""&siteid&"""/>")
        Response.Write("<postfield name=""g"" value=""$(g)"" />")
        Response.Write("</go>搜索答案</anchor> | <a href="""&Server.HTMLEncode(ChuLiDiZhi("TiWen.asp"))&""">我要提问</a><br/><br/>")
        
        
        Response.Write("【精彩推荐】<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi_TuiJian.asp"))&""">&gt;</a><br/>")
        
        Rs.Open "SELECT [ID],[BiaoTi] FROM [ZhiDao_WenTi] WHERE [ShiFouTuiJian]='1' AND [siteid]="&siteid&" ORDER BY [ID] DESC",Conn,1,1
        
        For i=1 To 5
        
            If Rs.EOF Then Exit For
        
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi.asp?ID="&Rs("ID")))&""">"&Server.HTMLEncode(Rs("BiaoTi"))&"</a><br/>")
            
            Rs.MoveNext()
        
        Next
        Rs.Close()
        
        Response.Write("【新解决问题】<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi_XinJieJue.asp"))&""">&gt;</a><br/>")
        
        Rs.Open "SELECT [ID],[BiaoTi] FROM [ZhiDao_WenTi] WHERE [WenTiZhuangTai]='1' AND [siteid]="&siteid&" ORDER BY [ID] DESC",Conn,1,1
        
        For i=1 To 5
        
            If Rs.EOF Then Exit For
        
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi.asp?ID="&Rs("ID")))&""">"&Server.HTMLEncode(Rs("BiaoTi"))&"</a><br/>")
            
            Rs.MoveNext()
        
        Next
        Rs.Close()
        
        Response.Write("【待解决问题】<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi_DaiJieJue.asp"))&""">&gt;</a><br/>")
        
        Rs.Open "SELECT [ID],[BiaoTi] FROM [ZhiDao_WenTi] WHERE [WenTiZhuangTai]='0' AND [siteid]="&siteid&" ORDER BY [ID] DESC",Conn,1,1
        For i=1 To 5
        
            If Rs.EOF Then Exit For
        
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WenTi.asp?ID="&Rs("ID")))&""">"&Server.HTMLEncode(Rs("BiaoTi"))&"</a><br/>")
            
            Rs.MoveNext()
        
        Next
        Rs.Close()
        
        Rs.Open "SELECT [ID],[FenLeiMingChen] FROM [ZhiDao_FenLei] WHERE [siteid]="&siteid&" ORDER BY [ID]",Conn,1,1
        
        If Rs.EOF Then
            Response.Write("暂时没有分类，请通知站长在WEB后台管理导入默认分类<br/>")
        End If
        
        For i=1 To Rs.RecordCount
        
        
            Response.Write("【<a href="""&Server.HTMLEncode(ChuLiDiZhi("ZhiDaoFenLei.asp?ID="&Rs("ID")))&""">"&Server.HTMLEncode(Rs("FenLeiMingChen"))&"</a>】")
            
            Dim Rs1
            Set Rs1=Server.CreateObject("ADODB.RecordSet")
            Rs1.Open "SELECT [ID],[FenLeiMingChen] FROM [ZhiDao_XiaoFenLei] WHERE [siteid]="&siteid&" AND [SuoShuFenLei]="&Rs("ID")&" ORDER BY [ID]",Conn,1,1
            
            For i1=1 To 5
            
                If Rs1.EOF Then Exit For
                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ZhiDaoXiaoFenLei.asp?ID="&Rs1("ID")))&""">"&Server.HTMLEncode(Rs1("FenLeiMingChen"))&"</a> ")
            
            
                Rs1.MoveNext()
            Next
            Rs1.Close()
            
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ZhiDaoFenLei.asp?ID="&Rs("ID")))&""">&gt;</a>")
            
            
            Response.Write("<br/>")
            
            
        
            Rs.MoveNext()
        
        Next
        Rs.Close()
        
        Response.Write("----------<br/><a href="""&Server.HTMLEncode(ChuLiDiZhi("/wapindex.aspx"))&""">返回首页</a>")
        
        Call WML_End()
        Conn.Close()
    End Sub
    
    
    
    
    Call Page_Load()






%>