<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"--><!--#include file="../ASP_API/md5.asp"-->
<%



    Sub Page_Load()
        Page_Start()
        Call WML_Head("删除农场","left")
    
    
        Dim ID,Page
        ID=CLng(Request.QueryString("ID"))
        Page=CLng(Request.QueryString("page"))
        
        If Request.QueryString("Act")="En" Then
        
        
        
            Dim Rs,password,password2
            Set Rs=Server.CreateObject("ADODB.RecordSet")
            password=Request.Form("password")
            
            Rs.Open "SELECT [password] FROM [user] WHERE [userid]="&userid,Conn,1,1
            password2=Rs("password")
            Rs.Close()
            
            If Len(password2)<>16 Then
                password2=MD5(password2)
            End If
            
            If lcase(MD5(password))<>lcase(password2) Then
                CuoWu("您的密码错误")
            End If
    Rs.Open "SELECT [ID] FROM [Farm] WHERE [ID]="&ID&" AND [siteid]="&siteid,Conn,1,1
    
    Dim ShiFouCunZai
    If Rs.BOF AND Rs.EOF Then
        ShiFouCunZai=false
    Else
        ShiFouCunZai=true
    End If
    Rs.Close()
    
    If Not ShiFouCunZai Then
        Response.Write("错误")
        Response.End()
    End If

    Conn.Execute("DELETE FROM [Farm] WHERE [ID]="&ID)
    Conn.Execute("DELETE FROM [Farm_CaiDi] WHERE [SuoShuNongChang]="&ID)
    Conn.Execute("DELETE FROM [Farm_LinJu] WHERE [SuoShuNongChang]="&ID&" OR [NongChangID]="&ID)
    Conn.Execute("DELETE FROM [Farm_LiuYan] WHERE [SuoShuNongChang]="&ID&" OR [LiuYanID]="&ID)
    Conn.Execute("DELETE FROM [Farm_TouCaiJiLu] WHERE [NongChangID]="&ID&" OR [MuBiaoNongChangID]="&ID)
    Conn.Execute("DELETE FROM [Farm_WuPing] WHERE [SuoShuNongChang]="&ID)
    Conn.Execute("DELETE FROM [Farm_ZhongZhi] WHERE [SuoShuNongChang]="&ID)
    
    
    
            Response.Redirect(ChuLiDiZhi("Wap_NongChang_GuanLi.asp?page="&Page,sid))
        
        
        
        End If
    
    
    
    
        Response.Write("真的要删除吗？<br/>")
        
        Response.Write("请输入您的密码:<br/><input type='password' name='password' /><br/>")
        Response.Write("<anchor><go href="""&Server.HTMLEncode(ChuLiDiZhi("Wap_NongChang_ShanChu.asp?Act=En&ID="&ID&"&page="&Page,sid))&""" method=""post"">")
        Response.Write("<postfield name=""password"" value=""$(password)"" />")
        Response.Write("</go>[确定删除]</anchor><br/>")
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("Wap_NongChang_GuanLi.asp?page="&Page,sid))&""">[暂不删除]</a><br/><br/>")
        
        Response.Write("<a href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_GuanLi.asp",sid))&""">返回农场后台</a>")
    
    
    
    
    
    
    
    
    
    
        WML_End()
        Page_End()
    End Sub
    
    Call Page_Load()






 %>