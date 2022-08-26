<%@language=vbscript codepage=936 %><!--#include file="../ASP_API/ConnGB.asp"--><!--#include file="../ASP_API/userconfigGB.asp"--><!--#include file="function.asp"-->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<%
dim startime
startime=timer()
dim classid,classname,keyword,typeid,typename,sdate
typename=trim(request("typename"))
keyword=trim(request("keyword"))
typeid=trim(request("typeid"))
sdate=request("sdate")

if sdate="" then
	 sdate=date()
end if
if isNull(typeid) then
	typeid=""
end if


'''''''''''''''''''
select case request("action")
case "del"
	call del()
case "daoru"
  call daorumyfile()	
case "daoru2"
  call daorumyfile2()	
case "daoru3"
  call daorumyfile3()	
end select
	




''''''''''''''''''''''
'导入文章到我的栏目
sub daorumyfile2()
set id1=request("checkbox")
dim rsBook,sqlBook,iscount,classid2,book_titel,content
classid2=request("classid2")

allc=id1.count

iscount=0
for i=1 to allc
				id=id1(allc-i+1)
if  id="" then
	response.write("<div align=center><br><br><font color=""red"">非法的参数!</font><br><br></div>")
  response.end
	exit sub
end if

    Content_PageCode = getHTTPPage(id,"GB2312")   
    book_title = RegExpText(Content_PageCode,"<title>","</title>",0)
'    book_title =  split(book_title,"_")(0)
    book_title=replace(book_title,"组图：","")
    book_title=replace(book_title,"(组图)","")
    book_title=replace(book_title,"(附图)","")
    book_title=replace(book_title,"(图)","")
    book_title=replace(book_title,"-搜狐新闻","")
    book_title=replace(book_title,"搜狐","")
    book_title=tohtm(book_title)
    'response.write(book_title+"--->")
    
    dim sCount,start1,start2,start
    start1="<div class=""text clear"" id=""contentText"">"
    start2="<!-- 正文 -->"
    
    sCount=instr(Content_PageCode,start1)
    if(sCount > 0) then
    	start=start1
    else
    	
    	start=start2
    end if
    
    
    
    
    content = RegExpText(Content_PageCode,start,"<script type=""text/javascript"">",0)       
    
    'response.write(content)
    'response.end
    
    
    'on error resume next
    'start=instr(content,"<p>")
    'endstr=instrRev(content,"</p>")
    'content=mid(content,start,endstr-start)
    'content=replace(content,"<p>","[br]")  
    dim arry,strtemp,strtemp2,kk
 
 
    content=RemoveHTML(content)
    content=replace(content,vbnewline,"■")
    content= iscn(content)
     
     arry=split(content,"■")
    for kk=0 to ubound(arry)
      if (trim(Cstr(arry(kk)))) <>"" and arry(kk)<>chr(13) and arry(kk)<>chr(10) then 
         strtemp= arry(kk)  & "[br]" & strtemp  
          
      end if
    next 
    

    content=tohtm(strtemp)
    
    content=replace(content,"上一页","")
    content=replace(content,"下一页","")

	  conn.execute("insert into wap_book(userid,book_classid,book_title,book_author,book_pub,book_content,book_date,sysid)values("&siteid&","&classid2&",'"&(book_title)&"','','','"&content&"','"&now()&"',0)")
    iscount=iscount+1  
      
next
	

response.write "<script>alert('成功导入："&iscount&" 条新闻至我的栏目!');window.history.back();</script>"

end sub


	closeconn()
%>
