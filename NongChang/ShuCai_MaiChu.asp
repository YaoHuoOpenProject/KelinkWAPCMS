<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%




    Sub Page_Load()
        Page_Start()
        
    
    Dim ShuCaiID,ID
    ID=CLng(Request.QueryString("ID"))
    ShuCaiID=CLng(Request.QueryString("scid"))
    
        '=========获取物品数据
        
        Dim ShuCaiShouJia,ShuCaiShuLiang,ShuCaiMingChen
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ShuCaiShouJia],[ShuCaiShuLiang],[ShuCaiMingChen] FROM [Farm_WuPing] WHERE [SuoShuNongChang]="&FarmID&" AND [ShuCaiID]="&ShuCaiID&" AND [siteid]="&siteid,Conn,1,1
        
        If Rs.BOF AND Rs.EOF Then
        
            Rs.Close()
            
            CuoWu("没有此物品")
        
        Else
            ShuCaiShouJia=CLng(Rs("ShuCaiShouJia"))
            ShuCaiShuLiang=CLng(Rs("ShuCaiShuLiang"))
            ShuCaiMingChen=Rs("ShuCaiMingChen")
            Rs.Close()
        
        End If
        
        
        
        '==========结束
    
    
        Conn.Execute("UPDATE [Farm] SET [JinBi]=[JinBi]+"&(ShuCaiShouJia*ShuCaiShuLiang)&" WHERE [ID]="&FarmID&" AND [siteid]="&siteid)
        
        Conn.Execute("UPDATE [Farm_LinJu] SET [NongChangJinBi]="&(CLng(JinBi)+ShuCaiShouJia*ShuCaiShuLiang)&" WHERE [NongChangID]="&FarmID&" AND [siteid]="&siteid)
    
        Call FaSongXiaoXi(0,FarmID,"您卖出了["&ShuCaiMingChen&"],获得金币["&(ShuCaiShouJia*ShuCaiShuLiang)&"个]。")
        
        Conn.Execute("DELETE FROM [Farm_WuPing] WHERE [SuoShuNongChang]="&FarmID&" AND [ShuCaiID]="&ShuCaiID&" AND [siteid]="&siteid)

        Call GengXinZhuangTai("卖出了蔬菜["&ShuCaiMingChen&"]")
        Response.Redirect(ChuLiDiZhi(DiZhiTou&"CangKu.asp?ID="&ID,sid))    
        Page_End()
    End Sub
    
    
    
    
    Call Page_Load()







 %>