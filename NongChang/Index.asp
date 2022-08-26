<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><%
classid=Request.QueryString("classid")
action=Request.QueryString("action")
siteid=Request.QueryString("siteid")
sid=Request.QueryString("sid")
session("sid")=sid
if action="webAdmin" or  action="webAdmin00" or action="wapAdmin" or  action="wapAdmin00" then
	 response.redirect "Web_ShuCaiGuanLi.asp?sid="&sid '后台管理地址
end if
%><!--#include file="../ASP_API/conn.asp"--><!--#include file="../ASP_API/userconfig.asp"-->
<%

Response.ContentType="text/vnd.wap.wml"

'LiuLanQiPanDuan()

    Function HuiYuan_HuoQuID()
    
        Dim ID,JinBi,XianZhiJinBi
        
        XianZhiJinBi=HuoQuDenJiSheZhi() '限制等级
        
        '------获取会员ID的等级的代码   需要更改以下代码，注意当前页包含了sid参数
        
        ID=userid        '示例ID为1
        JinBi=money     '示例等级为4
	
        
        '------结束                     更改的代码结束
        
        If CLng(JinBi)<CLng(XianZhiJinBi) Then
            Call ShowTipInfo("你的金币不足"&XianZhiJinBi)
        End If
        
        HuiYuan_HuoQuID=ID
    End Function
    '===================接口配置结束==============
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
        
        Function SuiJiZiFu(n)
            dim thechr 
            thechr = "" 
            for i=1 to n 
            dim zNum,zNum2 
            Randomize 
            zNum = CLng(25*Rnd) 
            zNum2 = CLng(10*Rnd) 
            if zNum2 mod 2 = 0 then 
                zNum = zNum + 97 
            else 
                zNum = zNum + 65 
            end if 
            thechr = thechr & chr(zNum) 
            next 
            SuiJiZiFu = thechr 

        End Function
        Function ChuLiDiZhi(DiZhi,BiaoShi)
        
            If InStr(DiZhi,"?")>0 Then
                ChuLiDiZhi=DiZhi+"&sid="+BiaoShi
            Else
                ChuLiDiZhi=DiZhi+"?sid="+BiaoShi
            End If
        
        End Function
        Function ZuiGaoID(BiaoMingChen)
        
            Dim Rs
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            Rs.Open "SELECT [ID] FROM ["+BiaoMingChen+"] ORDER BY [ID] DESC",Conn,1,1
            If Rs.EOF AND Rs.BOF Then
                ZuiGaoID=1
            Else
                ZuiGaoID=CLng(Rs("ID"))+1
            End If
            Rs.Close()
        
        End Function
    Function HuoQuDenJiSheZhi()
    
        Dim DenJi
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [DenJiXianZhi] FROM [Farm_SheZhi] WHERE [siteid]="&CLng(Request.QueryString("siteid")),Conn,1,1
        
        If Rs.BOF AND Rs.EOF Then
            DenJi=0
        Else
            DenJi=CLng(Rs("DenJiXianZhi"))
        End If
        HuoQuDenJiSheZhi=DenJi
    
    End Function
    
    Sub LiuLanQiPanDuan()
        Dim agent,str
        agent=request.ServerVariables("HTTP_USER_AGENT")
        
        if instr(agent,"Mozilla")=0 then
            Exit Sub
        end if
        str=agent
        str=replace(str,"Opera","")
        str=replace(str,"SmartPhone","")
        str=replace(str,"CE","")
        str=replace(str,"UC","")
        str=replace(str,"Symbian","")
        str=replace(str,"NetFront","")
        if Len(agent)=Len(str) then
            response.redirect http_start&"Web_ShuCaiGuanLi.asp" '后台管理地址
        end if
    End Sub
    
    '主函数
    Sub Page_Load()
        
        Dim Act
        Act=Request.QueryString("Act")
        
            JinRuYouXi(HuiYuan_HuoQuID())
    End Sub
    
    Sub JinRuYouXi(ID)
    
        
        Dim Rs,ShiFouCunZai
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID] FROM [Farm] WHERE [userid]="&ID,Conn,1,1
        If Rs.EOF AND Rs.BOF Then
            Rs.Clone()
            ZhuCeJinRu(ID)
        Else
            Rs.Close()
            JinRu(ID)
        End If
    
    End Sub
    
    Function ShengChengKeYongBiaoShi()
    
        Dim BiaoShi
        BiaoShi=Replace(Replace(Replace(Now(),"-",""),":","")," ","")&"."&SuiJiZiFu(50)
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID] FROM [Farm] WHERE [BiaoShi]='"&BiaoShi&"'",Conn,1,1
        
        Dim ShiFouCunZai
        If Rs.EOF Then
            ShiFouCunZai=false
        Else
            ShiFouCunZai=true
        End If
        Rs.Close()
        
        If ShiFouCunZai Then
            ShengChengKeYongBiaoShi=ShengChengKeYongBiaoShi()
        Else
            ShengChengKeYongBiaoShi=BiaoShi
        End If
    
    End Function
    
    '如果用户已注册
    Sub JinRu(ID)
    
    
        Dim Rs,ShiFouCunZai,BiaoShi
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID] FROM [Farm] WHERE [userid]="&ID,Conn,1,1
        If Rs.EOF AND Rs.BOF Then
            ShiFouCunZai=false
        Else
            ShiFouCunZai=true
        End If
        
        Rs.Close()
        
        
        If ShiFouCunZai Then
            
            BiaoShi=ShengChengKeYongBiaoShi()
            
            Conn.Execute("UPDATE [Farm] SET [BiaoShi]=N'"&BiaoShi&"',[sid]='"&sid&"' WHERE [userid]="&ID)
            
            Response.Redirect(ChuLiDiZhi(http_start&"nongchang/Main.asp",BiaoShi))
            
        Else
            CuoWu("农场数据不存在")
        End If
    
    
    
    End Sub
    
    '如果用户未注册
    Sub ZhuCeJinRu(ID)
    
    
    
        Dim BiaoShi,userid,siteid,MingChen,DenJi,JingYan,JinBi,ChuangJianShiJian
        BiaoShi=ShengChengKeYongBiaoShi()
        userid=ID
        siteid=CLng(Request.QueryString("siteid"))

        If siteid=0 Then
		CuoWu("参数错误，siteid值不能为0，请重新从网站进入。")
	End If
	Dim Rs
	Set Rs=Server.CreateObject("ADODB.RecordSet")
	Rs.Open "SELECT [nickname] FROM [user] WHERE [userid]="&userid,Conn,1,1
        MingChen=Rs("nickname")&"农场"
	Rs.Close()
        DenJi=1
        JingYan=0
        JinBi=200
        ChuangJianShiJian=now()
    
        Dim ZGID
        ZGID=ZuiGaoID("Farm")
    
        Conn.Execute("INSERT INTO [Farm]([ID],[userid],[siteid],[MingChen],[DenJi],[JingYan],[JinBi],[ChuangJianShiJian],[BiaoShi],[sid])"_
            &"VALUES('"&ZGID&"','"&userid&"','"&siteid&"',N'"&Left(MingChen,16)&"','"&DenJi&"','"&JingYan&"','"&JinBi&"','"&ChuangJianShiJian&"',N'"&BiaoShi&"',N'"&Request.QueryString("sid")&"')")
        For i=1 To 4
    
            Conn.Execute("INSERT INTO [Farm_CaiDi]([ID],[TuDiWeiZhi],[ShiFouKongDi],[ShiFouWeiFanDi],[ShuCaiID],[ShuCaiMingChen],[ShengYuShuLiang],[ShiFouCunZaiGanHan],[ShiFouCunZaiZaCao],[ShiFouCunZaiBingChong],[ZhongZhiShiJian],[ChengShuShiJian],[SuoShuNongChang],[ZhongZhiJiDu],[DangQianJiDu],[siteid])"_
                &"VALUES(N'"&ZuiGaoID("Farm_CaiDi")&"','"&i&"','1','0','0','','0','0','0','0','"&now()&"','"&now()&"','"&ZGID&"','0','0',"&siteid&")")
    
        Next
    
        Response.Redirect(ChuLiDiZhi(http_start&"nongchang/Main.asp",BiaoShi))
    
    End Sub
    
    Call Page_Load() 
 %>