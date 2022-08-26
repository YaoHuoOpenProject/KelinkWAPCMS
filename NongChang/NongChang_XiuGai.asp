<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%

    Sub Page_Load()
    
        Page_Start()
        
        Call WML_Head("修改农场","left")
        
            If Request.QueryString("Act")="En" Then
                NongChang_XiuGai()
            End If
            Dim SuiJiZhi
            SuiJiZhi=SuiJiZiFu(4)
            Response.Write("农场名称:<br/>"_
                &"<input type=""text"" name=""NongChangMingChen"&SuiJiZhi&""" maxlength=""16"" value="""&Server.HTMLEncode(MingChen)&""" /><br/>"_
                &"<anchor><go href="""&Server.HTMLEncode(ChuLiDiZhi("NongChang_XiuGai.asp?Act=En",sid))&""" method=""post"">"_
                &"<postfield name=""NongChangMingChen"" value=""$(NongChangMingChen"&SuiJiZhi&")"" />"_
                &"</go>[修改]</anchor><br/>")
                
            Response.Write("----------<br/>"_
                &"<a href="""&Server.HTMLEncode(ChuLiDiZhi("Main.asp",sid))&""">返回主界面</a>")
        
        WML_End()
        
        Page_End()
    
    End Sub
    
    Sub NongChang_XiuGai()
    
        MingChen=Request.Form("NongChangMingChen")
        
        
        If MingChen="" OR MingChen=null Then
        
            CuoWu("请输入农场名称")
        
        End If
        
        If Len(MingChen)>16 Then
            CuoWu("农场名称不能大于16个字符")
        End If
        
        Dim Rs
        Set Rs=Server.CreateObject("ADODB.RecordSet")
        Rs.Open "SELECT [ID] FROM [Farm] WHERE [MingChen]='"&CheckSql(MingChen)&"'"&" AND [siteid]="&siteid,Conn,1,1
        
        Dim ShiFouCunZai
        If Rs.BOF AND Rs.EOF Then
        
            ShiFouCunZai=false
        
        Else
        
            ShiFouCunZai=true
        
        End If
        
        If ShiFouCunZai Then
            CuoWu("该农场名称已存在")
        End If
        
        Call GengXinZhuangTai("修改农场名称")
        
        Conn.Execute("UPDATE [Farm] SET [MingChen]=N'"&CheckSql(MingChen)&"' WHERE [BiaoShi]='"+sid+"'")
        
        Response.Write("农场修改成功<br/><br/>")
    
    End Sub
    
    Call Page_Load()

%>