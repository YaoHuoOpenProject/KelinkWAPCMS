<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%


    Sub Page_Load()
        Page_Start()
    
        Call WML_Head("物品仓库","left")
        
        
        Dim ID
        ID=CLng(Request.QueryString("ID"))
        
            Response.Write("我的金币:"&JinBi&"个<br/>")
            Response.Write("我的等级:"&DenJi&"级<br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp",sid))&""">我的农场</a>.")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShangDian.asp",sid))&""">物品商店</a><br/>")
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ShuCaiID],[ShuCaiMingChen],[ShuCaiShouJia],[ShuCaiShuLiang],[SuoYing] FROM [Farm_WuPing] WHERE [SuoShuNongChang]="&FarmID&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.BOF AND Rs.EOF Then
            Response.Write("您的仓库里暂时没有任何物品。<br/>")
        
        Else
        
            Rs.PageSize=5
            Dim Page
            Page=CLng(Request.QueryString("page"))
            If Page=0 Then Page=1
            If Page>Rs.PageCount Then Page=Rs.PageCount
            Rs.AbsolutePage=Page
            
            For i=1 To Rs.PageSize
            
            
                If Rs.EOF Then Exit For
                
                
                Response.Write("<img src=""Images/s"&Rs("SuoYing")&".jpg"" alt="".."" /><br/>")
                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShuCai.asp?ID="&Rs("ShuCaiID")&"&rurl="&Server.URLEncode("CangKu.asp?ID="&ID&"&page="&Page),sid))&""">"_
                    &Server.HTMLEncode(Rs("ShuCaiMingChen"))&"</a>("&Rs("ShuCaiShuLiang")&"个/单价:"&Rs("ShuCaiShouJia")&"金币)<br/>")
                Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("ShuCai_MaiChu.asp?scid="&Rs("ShuCaiID")&"&ID="&FarmID,sid))&""">卖出["&(CLng(Rs("ShuCaiShouJia"))*CLng(Rs("ShuCaiShuLiang")))&"金币]</a><br/>")
                
                
                
            
                Rs.MoveNext()
            Next
            
            If Rs.PageCount>1 Then
            
            
                Response.Write("第"&Page&"/"&Rs.PageCount&"页,共"&Rs.RecordCount&"条记录<br/>")
                
                If Page<Rs.PageCount Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("CangKu.asp?ID="&ID&"&page="&(Page+1),sid))&""">[下页]</a>")
                
                End If
                
                If Page>1 Then
                    Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("CangKu.asp?ID="&ID&"&page="&(Page-1),sid))&""">[上页]</a>")
                
                End If
                Response.Write("<br/>")
            
            End If
        
        
        End If
        Rs.Close()
        
            
            Response.Write("----------<br/>")
            Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Game.asp",sid))&""">返回游戏</a><br/>")
        
        YouXiDiBu(ID)
        
        
        
        
        Call WML_End()
    
        Page_End()
    End Sub



    Call Page_Load()

 %>