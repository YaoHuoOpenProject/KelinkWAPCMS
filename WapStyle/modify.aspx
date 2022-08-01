<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="modify.aspx.cs" Inherits="KeLin.WebSite.WapStyle.modify" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/day.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="../NetCSS/day.js" type="text/JavaScript"></script>
<script language="JavaScript" src="../NetCSS/table.js" type="text/JavaScript"></script>
<script language="JavaScript" type="text/JavaScript">
    function add() {
        if (messageForm.rank.value == "") {
            alert("排序号不能为空！");
            messageForm.rank.focus();
            return;
        } else if (messageForm.style_color.value == "") {
            alert("风格颜色号不能为空！");
            messageForm.style_color.focus();
            return;
        } else if (messageForm.style_name.value == "") {
            alert("名称不能为空！");
            messageForm.style_name.focus();
            return;
        } else if (messageForm.style.value == "") {
            alert("样式不能为空！");
            messageForm.style.focus();
            return;
        }

        showDoing();
        messageForm.submit();
      
    }

    function showDoing() {
        document.all("panel").style.visibility = "visible";
        document.all("panel").style.cursor = "wait";
    }
</script>
<title>修改样式</title>
    <style type="text/css">
        .style1
        {
            FONT-SIZE: 12px;
            BORDER-LEFT: #d2d2d2 1px solid;
            COLOR: #333333;
            BORDER-BOTTOM: #d2d2d2 1px solid;
            FONT-FAMILY: "宋体";
            width: 88px;
        }
    </style>
    </head>
<body topmargin="0">	
<div id="panel" style="visibility:hidden;position:absolute;border:1px;left:150px;top:150px">
<table align='center' cellpadding="4" style="width:180px;height:100px;border:1px solid #345487;background-color:#F5F9FD;padding:6px; font-family:Arial, sans-serif, ??ì?; font-size: 12px; color: #000;">
 <tr>
	<td width="100%" align="center" nowrap="nowrap">
	<img  src="../NetImages/hourglass.gif">正在处理请求，请耐心等待......
	</td>
  </tr>
</table>
</div>

<table width="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>	
    <td valign="top">
      <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td colspan="4" ><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="12"><img src="../NetImages/main_title_01.gif" width="12" height="24"></td>
              <td width="100%" background="../NetImages/main_title_02.gif"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="2%"><img src="../NetImages/i08.gif" width="16" height="16"></td>
                  <td width="98%" height="24" valign="middle">页面综合排版 &gt;&gt; CSS样式管理 &gt;&gt; 修改CSS样式</td>
                </tr>
              </table></td>
              <td width="13"><img src="../NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="100%" colspan="4"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="TABLE6">
            <tr>
              <td height="24">
				<table width="100%"  border="0" background="../NetImages/dw.gif" height="534">
                    <tr>
                      <td> 
 
 
 
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="100%" align="center" valign="top" > 
      <FORM name="messageForm" action="modify.aspx" method="post">
      	<input type="hidden" name="action" value="modify" />
      	<input type="hidden" name="id" value="<%=strVo.ID %>" />
      	<input type="hidden" name="style_type" value="<%=strVo.style_type %>" />
                              <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" >
                                <TR align=center class='title'> 
                                  <TD  height=20 colSpan=2 class="TD_title3"><b> &nbsp;
                                    </b></TD>
                                </TR>
                                <TR class="tdbg" > 
                                  <TD height="26" align="right" class="style1" width="186" ><b>排序号：</b></TD>
                                  <TD class="TD3"> <div align="left">&nbsp;  
                                      <INPUT Class="input" name="rank" value="<%=strVo.rank %>" size=50>
                                    </div></TD>
                                </TR>
                                <TR class="tdbg" > 
                                  <TD height="32" align="right" class="style1" width="186"><strong>风格颜色：</strong></TD>
                                  <TD class="TD3"><div align="left">&nbsp;#<INPUT Class="input" name="style_color" value="<%=strVo.style_color %>" size=50>
                                    </div>
                                  </TD>
                                </TR>
                                <TR class="tdbg" >
                                  <TD height="32" align="right" class="style1" width="186"><strong>名称：</strong></TD>
                                  <TD class="TD3"><div align="left">&nbsp;  
                                      <INPUT Class="input" name="style_name" value="<%=strVo.style_name %>" size=50> (如果下面样式有HTML5效果，请在名称上加上"[HTML5]"，方便选皮肤时显示)
                                    </div> 
                                  </TD>
                                </TR>
                            
                                <TR class="tdbg" > 
                                  <TD height="29" align="center" class="style1" width="186"><strong>*CSS样式：<br /><br />系统定义 <br />+<br /> 自己定义</strong></TD>
                                  <TD class="TD3" width="87%"> &nbsp;
								      <textarea name="style" rows="16" style="width:100%"><%=strVo.style %></textarea>
								      <br />
								      
								      <font color="red"><b>上面的内容+以下内容：</b></font><br />
<hr />
一、当上面录入框内容中没有关键字 .btBox 时系统在最后一行自动添加以下内容：
<p>
<font  COLOR="#0000ff">&lt;</font><font  COLOR="#a31515">link</font><font >
</font><font  COLOR="#ff0000">rel</font><font  COLOR="#0000ff">=&quot;stylesheet&quot;</font><font >
</font><font  COLOR="#ff0000">href</font><font  COLOR="#0000ff">=&quot;/Template/default/default.css&quot;</font><font >
</font><font  COLOR="#ff0000">type</font><font  COLOR="#0000ff">=&quot;text/css&quot;</font><font >
</font><font  COLOR="#0000ff">/&gt;</font></p>
此文件主要是触屏按钮和导航菜单效果，【<a href="/Template/default/default.css">请点击此下载</a>】，可以用记事本打开复制代码并粘贴到上面录入框自行编辑CSS样式。
								      
								      
								      <hr />
								      二、当上面录入框内容没有关键字：author,keywords,description 时系统自动添加以下内容。请自行复制下面容放到第一行中，并将内容改成你想要的SEO效果。

<p><font  COLOR="#0000ff">
&lt;</font><font SIZE="2" COLOR="#a31515">meta</font><font SIZE="2"> </font>
<font SIZE="2" COLOR="#ff0000">name</font><font SIZE="2" COLOR="#0000ff">=&quot;keywords&quot;</font><font SIZE="2">
</font><font SIZE="2" COLOR="#ff0000">content</font><font SIZE="2" COLOR="#0000ff">=&quot;[title] [classname]&quot;</font><font SIZE="2">
</font><font SIZE="2" COLOR="#0000ff">/&gt;<br>
&lt;</font><font SIZE="2" COLOR="#a31515">meta</font><font SIZE="2"> </font>
<font SIZE="2" COLOR="#ff0000">name</font><font SIZE="2" COLOR="#0000ff">=&quot;description&quot;</font><font SIZE="2">
</font><font SIZE="2" COLOR="#ff0000">content</font><font SIZE="2" COLOR="#0000ff">=&quot;[title] [sitename] [sitename] [domain] &quot;</font><font SIZE="2">
</font><font SIZE="2" COLOR="#0000ff">/&gt;</font><br />
<font  COLOR="#0000ff">&lt;</font><font SIZE="2" COLOR="#a31515">meta</font><font SIZE="2"> </font>
<font SIZE="2" COLOR="#ff0000">name</font><font SIZE="2" COLOR="#0000ff">=&quot;author&quot;</font><font SIZE="2">
</font><font SIZE="2" COLOR="#ff0000">content</font><font SIZE="2" COLOR="#0000ff">=&quot;[sitename] [domain]&quot;</font><font SIZE="2">
</font><font SIZE="2" COLOR="#0000ff">/&gt;<br></font>
<br />[title]是动态取标题；[classname]栏目名称；[sitename]网站名称；[domain]域名; 
<br />除了此处SEO外，页面缩合排版时，栏目链接请改成短地址，如[url=/bbs/list.aspx?classid=栏目ID]论坛[/url]，其它模块一样，请举一反三。

</p>
								      <hr />
三、当上面录入框内容没有关键字：viewport 时系统自动添加以下内容：你可以将maximum-scale=1.0改成maximum-scale=2.0并复制到上面第一行支持页面缩放<br />

<p><font  COLOR="#0000ff">&lt;</font><font SIZE="2" COLOR="#a31515">meta</font><font SIZE="2"> </font>
<font SIZE="2" COLOR="#ff0000">name</font><font SIZE="2" COLOR="#0000ff">=&quot;viewport&quot;</font><font SIZE="2">
</font><font SIZE="2" COLOR="#ff0000">content</font><font SIZE="2" COLOR="#0000ff">=&quot;width=device-width; 
initial-scale=1.0; minimum-scale=1.0; maximum-scale=1.0&quot;&gt;</font></p>

	<hr />							      
四、上面录入框中的层宽width参数用[width]代替动态取当前配置宽，建议写死宽度，如320px
<br />
<hr />	
五、其它应用：
<p>*调用脚本文件.js： 
<font  COLOR="#0000ff">&lt;</font><font  COLOR="#a31515">script</font><font >
</font><font  COLOR="#ff0000">type</font><font  COLOR="#0000ff">=&quot;text/javascript&quot;</font><font >
</font><font  COLOR="#ff0000">src</font><font  COLOR="#0000ff">=&quot;js文件地址&quot;&gt;&lt;/</font><font  COLOR="#a31515">script</font><font  COLOR="#0000ff">&gt;</p>
</font>
<p>*调用样式文件.css： 
<font  COLOR="#0000ff">&lt;</font><font  COLOR="#a31515">link</font><font >
</font><font  COLOR="#ff0000">rel</font><font  COLOR="#0000ff">=&quot;stylesheet&quot;</font><font >
</font><font  COLOR="#ff0000">href</font><font  COLOR="#0000ff">=&quot;css文件地址&quot;</font><font >
</font><font  COLOR="#ff0000">type</font><font  COLOR="#0000ff">=&quot;text/css&quot;</font><font >
</font><font  COLOR="#0000ff">/&gt;</p>
</font>
*显示地址栏小图标：
<font SIZE="2" COLOR="#0000ff">
&lt;</font><font SIZE="2" COLOR="#a31515">link</font><font SIZE="2"> </font>
<font SIZE="2" COLOR="#ff0000">rel</font><font SIZE="2" COLOR="#0000ff">=&quot;SHORTCUT 
ICON&quot;</font><font SIZE="2"> </font><font SIZE="2" COLOR="#ff0000">href</font><font SIZE="2" COLOR="#0000ff">=&quot;favicon.ico地址&quot;</font><font SIZE="2">
</font><font SIZE="2" COLOR="#0000ff">/&gt;</font>
<br />
<hr />六、
<b>在【页面综合排版】可录入以下UBB调用CSS样式：</b><br />


[div=logo]显示LOGO位置[/div]<br />
[div=welcome]显示欢迎位置[/div]<br />
[div=tip]提示位置[/div]<br />
[div=title]显示标题位置[/div]<br />
[div=subtitle]显示副标题位置[/div]<br />
[div=content]显示内容位置[/div]<br />
[div=topre]显示最新回复位置[/div]<br />
[div=showpage]显示分页位置[/div]<br />
[div=line1]显示文本行一[/div]<br />
[div=line2]显示文本行二[/div]<br />
[div=mylink]显示导航位置[/div]<br />
[div=nexttitle]上一条下一条位置[/div]<br />
[div=sysad]全局顶部或底部[/div]<br /><br />
触屏按钮效果一调用,如果有五个[url=xx]xx[/url]这样的UBB链接(UBB链接不限，自动识别)：<br />
每行一个按钮：[div=bt1]五个UBB链接[/div]<br />
每行二个按钮：[div=bt2]五个UBB链接[/div]<br />
每行三个按钮：[div=bt3]五个UBB链接[/div]<br />
每行四个按钮：[div=bt4]五个UBB链接[/div]<br />
每行五个按钮：[div=bt5]五个UBB链接[/div]<br />
为了控制按钮之间的间距可以用DIV嵌套一个<br />
例：[div=btBox][div1=bt1]UBB链接[/div1][/div]<br /><br />
DIV嵌套执行顺序,最多嵌套五个：
[div=x] [div1=x] [div2=x] [div3=x]...[/div3] [/div2] [/div1] [/div]<br /><br /><br />
触屏按钮效果二调用：[div=linkbtn]UBB链接不限，自动识别[/div]<br />
触屏按钮效果三调用：[div=linetouch]UBB链接不限，自动识别[/div]<br />
<br />
</TD>
                                  
                                  
                                </TR>
                                <TR align="center" class="tdbg" > 
                                  <TD height="61" colspan="2" class="TD3">
                                      <input name="" type="button" value=" 修 改 保 存 " onclick="add()" id="Button3" size="20" class="bt"/>
                                       &nbsp;<input name="" type="button" value=" 返 回 " onclick="jacascript:window.location='Style_List.aspx';" id="Button1" class="bt" /></TD>
                                </TR>
                              	<tr>
                                  <TD height="22" colspan="2" class="TD3"  align ="center" height="1000">
                                      <iframe name="edit" id="I1" frameborder="no" width="100%" height="1000"  src='CssEdit.aspx' ">
</TD>
                                </tr>
                              </TABLE>
                </td>
            </tr>
          </table></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td class="bg"></td>
  </tr>
</table>


</body>
</html>