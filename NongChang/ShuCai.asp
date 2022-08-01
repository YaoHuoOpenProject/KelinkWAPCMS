<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%
    Sub Page_Load()
    
        Page_Start()
        
        Call WML_Head("查看蔬菜","left")
        
        
        Dim RID,CPage
        RID=CLng(Request.QueryString("ID"))
        CPage=CLng(Request.QueryString("page"))
        Dim RURL
        RURL=Request.QueryString("rurl")
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT * FROM [Farm_ShuCai] WHERE [ID]="&RID&" AND [siteid]="&siteid,Conn,1,1
        
        Dim SC_ID,SC_ShuCaiMingChen,SC_ZhongZhiJiDu,SC_ChengShuShiJian,SC_ZaiCiChengShu,SC_YuJiChanLiang,SC_ShuCaiShouJia,SC_ShouHuoJingYan,SC_ZhongZhiDenJi,SC_ShuCaiJianJie,SC_SuoYing
        
        If Rs.BOF AND Rs.EOF Then
        
            Rs.Close()
            
            CuoWu("蔬菜不存在")
        
        
        Else
        
            SC_ID=Rs("ID")
            SC_ShuCaiMingChen=Rs("ShuCaiMingChen")
            SC_ZhongZhiJiDu=Rs("ZhongZhiJiDu")
            SC_ChengShuShiJian=Rs("ChengShuShiJian")
            SC_ZaiCiChengShu=Rs("ZaiCiChengShu")
            SC_YuJiChanLiang=Rs("YuJiChanLiang")
            SC_ShuCaiShouJia=Rs("ShuCaiShouJia")
            SC_ShouHuoJingYan=Rs("ShouHuoJingYan")
            SC_ZhongZhiDenJi=Rs("ZhongZhiDenJi")
            SC_SuoYing=CLng(Rs("SuoYing"))
            Rs.Close()
        
        End If
        
        Dim DanWei
        Select Case BanBen
        
        Case 0
            DanWei="小时"
        Case 1
            DanWei="分钟"
        Case Else
            DanWei="秒"
        End Select
        
        Response.Write("<img src=""Images/s"&SC_SuoYing&".jpg"" alt="".."" /><br/>")
        Response.Write("作物名称:"&Server.HTMLEncode(SC_ShuCaiMingChen)&"<br/>")
        Response.Write("作物类型:"&SC_ZhongZhiJiDu&"季作物<br/>")
        Response.Write("成熟时间:"&SC_ChengShuShiJian&DanWei&"<br/>")
        If CLng(SC_ZhongZhiJiDu)>1 Then
            Response.Write("再次成熟:"&SC_ZaiCiChengShu&DanWei&"<br/>")
        End If
        Response.Write("预计产量:"&SC_YuJiChanLiang&"个<br/>")
        Response.Write("作物价格:"&SC_ShuCaiShouJia&"金币<br/>")
        Response.Write("种子价格:"&(CLng(SC_ShuCaiShouJia)*5*CLng(SC_ZhongZhiJiDu))&"金币<br/>")
        Response.Write("预计收入:"&(CLng(SC_ZhongZhiJiDu)*CLng(SC_YuJiChanLiang)*CLng(SC_ShuCaiShouJia))&"金币<br/>")
        Response.Write("种植等级:"&SC_ZhongZhiDenJi&"级<br/>")
        Response.Write("收获经验:"&SC_ShouHuoJingYan&"/季<br/>")
        Response.Write("购买数量<br/>")
        Response.Write("<input type=""text"" name=""ShuLiang"" format=""*N"" value=""1"" /><br/>")
        Response.Write("<anchor><go href="""&Server.HTMLEncode(ChuLiDiZhi("ShuCai_GouMai.asp?ID="&SC_ID&"&rurl="&Server.URLEncode(RURL),sid))&""" method=""post"">")
        Response.Write("<postfield name=""ShuLiang"" value=""$(ShuLiang)"" />")
        Response.Write("</go>[购买]</anchor>.")
        Response.Write("<a href="""&Server.HTMLEncode(RURL)&""">返回</a>")
        
        Call WML_End()
        
        Page_End()
    
    End Sub
    
    Call Page_Load()
 %>