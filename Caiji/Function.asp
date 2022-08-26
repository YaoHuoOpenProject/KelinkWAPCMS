<%
Function getHTTPPage(url,code) 
    IF(IsObjInstalled("Microsoft.XMLHTTP") = False)THEN
        Response.Write "<br><br>服务器不支持Microsoft.XMLHTTP组件" 
        Err.Clear
        Response.End
    END IF
    On Error Resume Next
    Dim http 
    SET http=Server.CreateObject("Msxml2.XMLHTTP") 
    Http.open "GET",url,False 
    Http.send() 
    IF(Http.readystate<>4)THEN
        Exit Function 
    END IF 
    getHTTPPage=BytesToBSTR(Http.responseBody,code)
    SET http=NOTHING
    IF(Err.number<>0)THEN
        Response.Write "<br><br>获取文件内容出错" 
        'Response.End
        Err.Clear
    END IF  
End Function

        
Function BytesToBstr(CodeBody,CodeSet)
    Dim objStream
    SET objStream = Server.CreateObject("adod"&"b.stream")
    objStream.Type = 1
    objStream.Mode =3
    objStream.Open
    objStream.Write CodeBody
    objStream.Position = 0
    objStream.Type = 2
    objStream.Charset = CodeSet
    BytesToBstr = objStream.ReadText 
    objStream.Close
    SET objStream = NOTHING
End Function

'================================================
'作  用：检查组件是否已经安装
'返回值：True  ----已经安装
'        False ----没有安装
'================================================
Function IsObjInstalled(objName)
    On Error Resume Next
    IsObjInstalled = False
    Err = 0
    Dim testObj
    SET testObj = Server.CreateObject(objName)
    IF(0 = Err)THEN IsObjInstalled = True
    SET testObj = NOTHING
    Err = 0
End Function

Function RegExpText(strng,strStart,strEnd,n)
    Dim regEx,Match,Matches,RetStr
    SET regEx = New RegExp
    regEx.Pattern = strStart&"([\s\S]*?)"&strEnd
    regEx.IgnoreCase = True
    regEx.Global = True
    SET Matches = regEx.Execute(strng)
    For Each Match in Matches
        IF(n=1)THEN
            RetStr = RetStr & regEx.Replace(Match.Value,"$1") & "," 
        ELSE
            RetStr = RetStr & regEx.Replace(Match.Value,"$1")
        END IF 
    Next
    RegExpText = RetStr
    SET regEx=NOTHING
End Function

'----------------------------------------------------------------'
'    getStrLen
'    获取字符长度，一个中文字符长度算 2
'    参数：
'        str 需要获取长度的字符串
'    返回值：整数 (字符串的长度)
'----------------------------------------------------------------'
Function GetStrLen(str)
    If IsNull(str) Or str = "" Then
        getStrLen = 0
    Else
        Dim i, n, k, chrA
        k = 0
        n = Len(str)
        For i = 1 To n
            chrA = Mid(str, i, 1)
            If Asc(chrA) >= 0 And Asc(chrA) <= 255 Then
                k = k + 1
            Else
                k = k + 2
            End If
        Next
        getStrLen = k
    End If
End Function
'----------------------------------------------------------------'
'    getStrValue
'    截取指定长度字符串
'    参数：
'        str 需要被处理的字符串
'        i    需要保留的字符串长度(一个中文算两个字符长度)
'        str_2 用来表示省略的字符串，例如“…”
'    返回值：字符串 (按要求截取后的字符串)
'----------------------------------------------------------------'
Function getStrValue(ByVal str, ByVal i, ByVal str_2)
    If getStrLen(str) <= i Then
        getStrValue = str
    Else
        Dim j, n, k, chrA
        j = i - getStrLen(str_2)
        n = 0
        k = 0
        Do While n < j
            k = k + 1
            chrA = Mid(str, k, 1)
            If Asc(chrA) < 0 Or Asc(chrA) > 255 Then
                n = n + 2
                If n > j Then k = k - 1
            Else
                n = n + 1
            End If
        Loop
        getStrValue = Left(Trim(str), k) & str_2
    End If
End Function
Function RemoveHTML(strHTML) 
Dim objRegExp, Match, Matches 
Set objRegExp = New Regexp 

objRegExp.IgnoreCase = True 
objRegExp.Global = True 
'取闭合的<> 
objRegExp.Pattern = "<.+?>" 
'进行匹配 
Set Matches = objRegExp.Execute(strHTML) 

' 遍历匹配集合，并替换掉匹配的项目 
For Each Match in Matches 
strHtml=Replace(strHTML,Match.Value,"") 
Next 



RemoveHTML=strHTML
Set objRegExp = Nothing 
End Function

Function delHtml(strHtml)  
Dim objRegExp, strOutput
Set objRegExp = New Regexp 

objRegExp.IgnoreCase = True
objRegExp.Global = True
objRegExp.Pattern = "(<[a-zA-Z].*?>)|(<[\/][a-zA-Z].*?>)" 

strOutput = objRegExp.Replace(strHtml, "")
strOutput = Replace(strOutput, "<", "&lt;")
strOutput = Replace(strOutput, ">", "&gt;") 
delHtml = strOutput 

Set objRegExp = Nothing
End Function 

'去掉字符串头尾的连续的回车和空格
function trimVBcrlf(str)
trimVBcrlf=rtrimVBcrlf(ltrimVBcrlf(str))
end function

'去掉字符串开头的连续的回车和空格
function ltrimVBcrlf(str)
dim pos,isBlankChar
pos=1
isBlankChar=true
while isBlankChar
if mid(str,pos,1)=" " then
pos=pos+1
elseif mid(str,pos,2)=VBcrlf then
pos=pos+2
else
isBlankChar=false
end if
wend
ltrimVBcrlf=right(str,len(str)-pos+1)
end function

'去掉字符串末尾的连续的回车和空格
function rtrimVBcrlf(str)
dim pos,isBlankChar
pos=len(str)
isBlankChar=true
while isBlankChar and pos>=2
if mid(str,pos,1)=" " then
pos=pos-1
elseif mid(str,pos-1,2)=VBcrlf then
pos=pos-2
else
isBlankChar=false
end if
wend
rtrimVBcrlf=rtrim(left(str,pos))
end function 


Function iscn(str) 
Dim i ,tempstr
i = Len(str) 

If i = 0 Then 
iscn = False 
Exit Function 
End If 

Do While i > 0 

If (Asc(Mid(str, i, 1)) < 10000 And Asc(Mid(str, i, 1)) > -10000) and Asc(Mid(str, i, 1))<>vbnewline and not (Asc(Mid(str, i, 1)) <= 57 And Asc(Mid(str, i, 1)) >= 48) Then 
 
else
	tempstr= Mid(str, i, 1) & tempstr
end if

i = i - 1 
Loop 

iscn=tempstr
End Function 
%>