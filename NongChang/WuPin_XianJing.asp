<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%




    Sub Page_Load()
    
        Page_Start()
        Call WML_Head("我的物品","left")
    
        Dim ID,CPage
        ID=Clng(Request.QueryString("ID"))
        CPage=CLng(Request.QueryString("CPage"))
        
            Response.Write("我的金币:"&JinBi&"个<br/>")
            Response.Write("我的等级:"&DenJi&"级<br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp",sid))&""">我的农场</a>.")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShangDian.asp",sid))&""">物品商店</a><br/>")
            Response.Write("类型:<a href="""&Server.HTMLEncode(ChuLiDiZhi("WuPin.asp?CPage="&CPage&"&ID="&ID,sid))&""">作物</a>.<a href="""&Server.HTMLEncode(ChuLiDiZhi("WuPin_HuaFei.asp?CPage="&CPage&"&ID="&ID,sid))&""">化肥</a>.陷阱<br/>")
    
            Dim Rs
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT * FROM [Farm_WuPing_XianJing] WHERE [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid,Conn,1,1
            
            If Rs.EOF AND Rs.BOF Then
                Response.Write("暂时还没有物品，请到<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShangDian_XianJing.asp?ID="&ID,sid))&""">商店</a>购买物品。<br/><br/>")
            Else
                Rs.PageSize=5
                Dim Page
                Page=CLng(Request.QueryString("page"))
                If Page=0 Then Page=1
                If Page>Rs.PageCount Then Page=Rs.PageCount
                Rs.AbsolutePage=Page
                
                For i=1 To Rs.PageSize
                
                    If Rs.EOF Then Exit For
                    
                    Response.Write("<img src=""Images/XianJing.jpeg"" alt=""..""/><br/>")
                    Response.Write("【"&Server.HTMLEncode(Rs("XianJingMingChen"))&"】<br/>")
                    Response.Write("陷阱说明:"&Rs("XianJingJiLv")&"%的几率让对方成为奴隶。<br/>")
                    Response.Write("物品数量:"&Rs("ShuLiang"))
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp?page="&CPage&"&Act=XianJing&ID="&ID&"&xjid="&Rs("ID"),sid))&""">选择</a><br/>")
                    
                    Rs.MoveNext()
                
                Next
            If Rs.PageCount>1 Then
            
                Response.Write("第"&Page&"/"&Rs.PageCount&"页,共"&Rs.RecordCount&"条记录<br/>")
                
                If Page<Rs.PageCount Then
                
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WuPin_XianJing.asp?CPage="&CPage&"&ID="&ID&"&page="&(Page+1),sid))&""">[下页]</a>")
                End If
                
                If Page>1 Then
                
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("WuPin_XianJing.asp?CPage="&CPage&"&ID="&ID&"&page="&(Page-1),sid))&""">[上页]</a>")
                End If
            
            
            
            
            End If
            End If
            Rs.Close()
            
            Response.Write("<br/>----------<br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp?page="&CPage,sid))&""">返回游戏</a><br/>")
        
        YouXiDiBu(ID)
        
        
        
    
        Call WML_End()
        Page_End()
    
    End Sub
    Call Page_Load()






 %>