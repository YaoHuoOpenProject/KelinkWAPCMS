<%Session.CodePage=65001%><!--#include file="../ASP_API/userconfig.Asp"-->
<%
        
        Response.ContentType="text/vnd.wap.wml"
        Response.Expires=-1

	Sub YanZhengHuiYuan()
		If userid="" Then
   	 		response.redirect http_start&"waplogin.aspx?siteid="&siteid&"&classid="&request("classid")
		End If
	End Sub
        Function ReportFileStatus(FileName) 
            '//功能：判断文件是否存在
            '//形参：文件名
            '//返回值：成功为1，失败为-1
            '//
            Dim fso
            Set fso=Server.CreateObject("Scripting.FileSystemObject")
            Dim msg
            msg = -1
            If (fso.FileExists(FileName)) Then
                msg = 1
            Else
                msg = -1
            End If
            ReportFileStatus = msg
        End Function
        Function ReadTxtFile(FileName) 
            Const ForReading = 1, ForWriting = 2 
            Dim objFSO
            Set objFSO=Server.CreateObject("Scripting.FileSystemObject")
            Dim f, m 
            If ReportFileStatus(FileName) = 1 then 
                Set f = objFSO.OpenTextFile(FileName, ForReading) 
                m = f.ReadAll()
                ReadTxtFile = m 
                f.Close 
            Else 
                ReadTxtFile = -1 
            End if 
        End Function
	
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
Public Function GetcutStr(str, strlen)
If str="" or isnull(str) then Exit Function
Dim l, t, c, i
l = Len(str)
t = 0
For i = 1 To l
c = Abs(Asc(Mid(str, i, 1)))
If c > 255 Then
	t = t + 2
Else
	t = t + 1
End If
If t >= strlen Then
	GetcutStr = Left(str, i) & ".."
	Exit For
Else
	GetcutStr = str
End If
Next
GetcutStr = Replace(GetcutStr, Chr(10), "")
End Function
	Function ChuLiDiZhi(DiZhi)
	
	    If InStr(DiZhi,"?")>0 Then
	        ChuLiDiZhi=DiZhi&"&sid="&sid&"&siteid="&siteid
	    Else
	        ChuLiDiZhi=DiZhi&"?sid="&sid&"&siteid="&siteid
	    End If
	
	End Function
	Function HuoQuURL()
	    HuoQuURL=Server.UrlEncode("http://"&Request.ServerVariables("HTTP_HOST")&request.ServerVariables("URL")&"?"&Request.ServerVariables("QUERY_STRING"))
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
	
        Function CheckSql(str)
            dim textstr
            textstr=LCase(str)
            textstr=replace(textstr,"'","’")
            textstr=replace(textstr,"%","％")
            textstr=replace(textstr,",","，")
            textstr=replace(textstr," ","")
            textstr=replace(textstr,"insert","ＩnＳerＴ")
            textstr=replace(textstr,"select","ＳeＬecＴ")
            textstr=replace(textstr,"update","ＵpＤatＥ")
            textstr=replace(textstr,"count","ＣoＵnt")
            textstr=replace(textstr,"delete","ＤeＬetＥ")
            textstr=replace(textstr,"where","ＷheＲe")
            textstr=replace(textstr,"execute","ＥxＥcutＥ")
            CheckSql=textstr
        End Function
	
    Sub WML_Head(BiaoTi,Align)
        
        Response.Write("<?xml version=""1.0"" encoding=""utf-8""?>"_
                    &"<!DOCTYPE wml PUBLIC ""-//WAPFORUM//DTD WML 1.1//EN"" ""http://www.wapforum.org/DTD/wml_1.1.xml"">"_
                    &"<wml>"_
                    &"<head>"_
                    &"<meta http-equiv=""Cache-Control"" content=""no-cache""/>"_
                    &"</head>"_
                    &"<card id=""main"" title="""&Server.HTMLEncode(BiaoTi)&""">"_
                    &"<p align="""&Align&""">")
    End Sub
        Sub CuoWu(CuoWuZiFuChuan)
        
            Response.Clear()
            Call WML_Head("出错了","left")
            
            Response.Write(Server.HTMLEncode(CuoWuZiFuChuan))
            
            Response.Write("<br />"_
                &"<anchor>返回上一页<prev/></anchor><br/><a href=""/wapindex.aspx?siteid="&Request.QueryString("siteid")&"&amp;sid="&Request.QueryString("sid")&""">返回首页</a>")
            
            WML_End()
            Response.End()
        
        End Sub
        
    Sub WML_End()
        
            Response.Write("</p></card></wml>")
        
    End Sub
%>