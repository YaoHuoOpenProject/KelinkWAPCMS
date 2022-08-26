<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%



    Sub Page_Load()
        Page_Start()
    
    
    
        Dim ID
        ID=CLng(Request.QueryString("ID"))
        Dim LiuYanNeiRong
        LiuYanNeiRong=Request.Form("LiuYanNeiRong")
        
        
        If LiuYanNeiRong="" Then
            CuoWu("留言内容不能为空")
        
        End If
        
        If Len(LiuYanNeiRong)>200 Then
            CuoWu("留言的长度不能大于200")
        End If
    
    
    
        Dim ZGID
        ZGID=ZuiGaoID("Farm_LiuYan")
        
        
        Conn.Execute("INSERT INTO [Farm_LiuYan]([ID],[SuoShuNongChang],[LiuYanID],[LiuYanMingChen],[LiuYanNeiRong],[ShiFouYiDu],[LiuYanShiJian],[siteid])"_
            &"VALUES("&ZGID&","&ID&","&FarmID&",N'"&CheckSql(MingChen)&"',N'"&CheckSql(LiuYanNeiRong)&"',0,'"&now()&"',"&siteid&")")
        
    
        Call GengXinZhuangTai("发表留言")
        Response.Redirect(ChuLiDiZhi(DiZhiTou&"LiuYan.asp?ID="&ID,sid))
    
    
    
    
    
        Page_End()
    End Sub
    
    
    
    
    Call Page_Load()








 %>