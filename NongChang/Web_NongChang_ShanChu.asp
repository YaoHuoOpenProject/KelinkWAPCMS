<% @LANGUAGE="VBSCRIPT" CODEPAGE="936" %><!--#include file="Config_GB.asp"-->
<%




Response.ContentType="text/html"

Dim SiteID_

Sub YanZhengDenLu()



    



End Sub

Sub ShanChuNongChang(Conn,ID)
    Conn.Execute("DELETE FROM [Farm] WHERE [ID]="&ID)
    Conn.Execute("DELETE FROM [Farm_CaiDi] WHERE [SuoShuNongChang]="&ID)
    Conn.Execute("DELETE FROM [Farm_LinJu] WHERE [SuoShuNongChang]="&ID&" OR [NongChangID]="&ID)
    Conn.Execute("DELETE FROM [Farm_LiuYan] WHERE [SuoShuNongChang]="&ID&" OR [LiuYanID]="&ID)
    Conn.Execute("DELETE FROM [Farm_TouCaiJiLu] WHERE [NongChangID]="&ID&" OR [MuBiaoNongChangID]="&ID)
    Conn.Execute("DELETE FROM [Farm_WuPing] WHERE [SuoShuNongChang]="&ID)
    Conn.Execute("DELETE FROM [Farm_ZhongZhi] WHERE [SuoShuNongChang]="&ID)
End Sub

Sub Page_Load()


    YanZhengDenLu()
    
    Conn_Open()
    
    SiteID_=CLng(siteid)
    
    Dim IDS
    IDS=Split(Request.QueryString("ID"),",")
    For i=0 To UBound(IDS)
        Call ShanChuNongChang(Conn,IDS(i))
    Next

    Conn_Close()
    
    Response.Redirect("Web_NongChangGuanLi.asp")



End Sub

Call Page_Load()




 %>