<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="daoRu.aspx.cs" Inherits="KeLin.WebSite.WEB.Style.daoRu" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="/NetCSS/day.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="/NetCSS/day.js" type="text/JavaScript"></script>
<script language="JavaScript" src="/NetCSS/table.js" type="text/JavaScript"></script>
<script language="JavaScript" type="text/JavaScript">

    function daoru() {

        if (window.confirm("真的要导入系统默认CSS样式吗？")) {
            showDoing();
            messageForm.submit();

        }
        return;

    }
    function showDoing() {
        document.all("panel").style.visibility = "visible";
        document.all("panel").style.cursor = "wait";
    }
</script>
<title>CSS样式列表</title>
    <style type="text/css">
        .style1
        {
            width: 751px;
        }
    </style>
</head>
<body topmargin="0">	
<div id="panel" style="visibility:hidden;position:absolute;border:1px;left:150px;top:150px">
<table align='center' cellpadding="4" style="width:180px;height:100px;border:1px solid #345487;background-color:#F5F9FD;padding:6px; font-family:Arial, sans-serif, ??ì?; font-size: 12px; color: #000;">
 <tr>
	<td width="100%" align="center" nowrap="nowrap">
	<img  src="/NetImages/hourglass.gif">正在处理请求，请耐心等待......
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
              <td width="1%"><img src="/NetImages/main_title_01.gif" width="12" height="24"></td>
              <td width="98%" background="/NetImages/main_title_02.gif"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="2%"><img src="/NetImages/i08.gif" width="16" height="16"></td>
                  <td width="98%" height="24" valign="middle">页面综合排版 &gt;&gt; CSS样式管理  
                  		 &gt;&gt; 导入系统默认CSS样式</td>
                </tr>
              </table></td>
              <td width="1%"><img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="100%" colspan="4"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="TABLE6">
            <tr>
              <td height="24"><table width="100%"  border="0" background="/NetImages/dw.gif">
                    <tr>
                      <td> 
   <table id="tblManageRanks" class="tableBorder" cellspacing="1" cellpadding="3" border="0"
                                                                                height="100%" width="100%">
                                                                                <tr>
                                                                                    <td class="column" align="left">
                                                                                        操&nbsp;&nbsp;作</td>
                                                                                    
                                                                                </tr>
                                                                                <tr>
                                                                                    <td class="fh" align="center">
                                                                                        &nbsp;<input name="" type="button" value=" 确认导入所有CSS样式？ " onclick="daoru()" id="Button3" size="20"/>
                                                                                        &nbsp;<input name="" type="button" value=" 返回我的网站样式管理 " onclick="jacascript:window.location='Style_List.aspx';" id="Button1" />
                                                                                       </td>
                                                                                </tr>
                                                                            </table>
                     
<!----------------------结束------------------>
			      </td>
            </tr>
            <tr>
            <td align=center> 
<!---------------------------------->
<form name="messageForm" action="Style_List.aspx" method="post">
<input type="hidden" name="action" value="daoRu" />
<table id="Table1"   cellspacing="0" cellpadding="0" border="0"
                                                                                height="100%" width="100%">
                                                                               
                                                                                <tr>
                                                                                    <td  align="center">
<table border="0" width="100%" height="43">
  <tr>
    <td height="23" >序号：<input type="text" name="rank" size="4" 
            value="1">&nbsp;   
      风格颜色：<img src="showColor.aspx?sc=550000" /> #<input type="text" name="style_color" value="550000" size="4">&nbsp; 名称： <input type="text" name="style_name" value="中国红" size="57">&nbsp;     </td>   
  </tr>
  <tr>
    <td height="1" >
              <p><textarea rows="8" name="style" cols="100">
<link rel="SHORTCUT ICON" href="http://kelink.com/favicon.ico" />
<style type="text/css">
body   {color: #000000; background-color: #550000; margin: 0px; text-align: center;}
img    {border: none;}
a      {text-decoration: none;color: #B10000;}
a:hover {color: #FF7800;text-decoration: underline}
a:visited {color: #C300E0;text-decoration: underline}
input.ipma {background-color: #FFFFFF; color: #000000; width:335px;}
textarea.ipmb {background-color: #FFFFFF; color: #000000; width:335px; height:167px;}
form  {margin: 0px;display: inline;}
font.z {color: #FF0000;}
div   {width: 345px;padding: 5px;border: none;background-color:#FFFFFF;color: #000000; margin: auto; text-align:left;word-break:break-all;word-wrap:break-word;}
div.tab1 {width: 345px;padding: 5px;border: none;background-color:#DE0000;color: #FFFF00; margin: auto; text-align:left;font-weight: bold;}
div.tab2 {width: 345px;padding: 5px;border: none;background-color:#EAEAEA;color: #000000; margin: auto; text-align:left;}
div.tab1 a{text-decoration: none;color: #FF7800;}
</style>
              
              </textarea></p>
     
    </td>
  </tr>
  <tr>
    <td height="16" >　</td>
  </tr>
  <tr>
    <td height="23" >序号：<input type="text" name="rank" size="4" value="2">&nbsp;   
      风格颜色：<img src="showColor.aspx?sc=000000" /> #<input type="text" name="style_color" value="000000" size="4">&nbsp; 名称： <input type="text" name="style_name" value="夜鹰黑" size="57">&nbsp;     </td>   
  </tr>
  <tr>
    <td height="1" >
              <p><textarea rows="8" name="style" cols="100">
<link rel="SHORTCUT ICON" href="http://kelink.com/favicon.ico" />
<style type="text/css">
body   {color: #6F00D2; background-color: #000000; margin: 0px; text-align: center;}
img    {border: none;}
a      {text-decoration: none;color: #7FFF00;}
a:hover {color: #FF1493;text-decoration: underline}
a:visited {color: #00BFFF;text-decoration: underline}
input.ipma {background-color: #FFFFFF; color: #6F00D2; width:335px;}
textarea.ipmb {background-color: #FFFFFF; color: #6F00D2; width:335px; height:167px;}
form  {margin: 0px;display: inline;}
font.z {color: #0000E3;}
div   {width: 345px;padding: 5px;border: none;background-color:#FFFFFF;color: #6F00D2; margin: auto; text-align:left;word-break:break-all;word-wrap:break-word;}
div.tab1 {width: 345px;padding: 5px;border: none;background-color:#363636;color: #9932CC; margin: auto; text-align:left;font-weight: bold;}
div.tab2 {width: 345px;padding: 5px;border: none;background-color:#EAEAEA;color: #6F00D2; margin: auto; text-align:left;}
div.tab1 a{text-decoration: none;color: #0000FF;}
</style>
              
              </textarea></p>
     
    </td>
  </tr>
  <tr>
    <td height="16" >　</td>
  </tr>
 
  <tr>
    <td height="23" >序号：<input type="text" name="rank" size="4" value="3">&nbsp;   
      风格颜色：<img src="showColor.aspx?sc=FFFFFF" /> #<input type="text" name="style_color" value="FFFFFF" size="4">&nbsp; 名称： <input type="text" name="style_name" value="爵士蓝" size="57">&nbsp;     </td>   
  </tr>
  <tr>
    <td height="1" >
              <p><textarea rows="8" name="style" cols="100">
<link rel="SHORTCUT ICON" href="http://kelink.com/favicon.ico" />
<style type="text/css">
body   {color: #000000; background-color: #FFFFFF; margin: 0px; text-align: center;}
img    {border: none;}
a      {text-decoration: none;color: #0A63BB;}
a:hover {color: #DE0000;text-decoration: underline}
a:visited {color: #C300E0;text-decoration: underline}
input.ipma {background-color: #FFFFFF; color: #000000; width:335px;}
textarea.ipmb {background-color: #FFFFFF; color: #000000; width:335px; height:167px;}
form  {margin: 0px;display: inline;}
font.z {color: #FF0000;}
div   {width: 345px;padding: 5px;border: none;background-color:#FFFFFF;color: #000000; margin: auto; text-align:left;word-break:break-all;word-wrap:break-word;}
div.tab1 {width: 345px;padding: 5px;border: none;background-color:#0E71D4;color: #FFFFFF; margin: auto; text-align:left;font-weight: bold;}
div.tab2 {width: 345px;padding: 5px;border: none;background-color:#EAEAEA;color: #000000; margin: auto; text-align:left;}
div.tab1 a{text-decoration: none;color: #B6D1EB;}
</style>
</textarea></p>
     
    </td>
  </tr>
  <tr>
    <td height="16" >　</td>
  </tr>
    <tr>
    <td height="23" >序号：<input type="text" name="rank" size="4" value="4">&nbsp;   
      风格颜色：<img src="showColor.aspx?sc=054D05" /> #<input type="text" name="style_color" value="054D05" size="4">&nbsp; 名称： <input type="text" name="style_name" value="苹果绿" size="57">&nbsp;     </td>   
  </tr>
  <tr>
    <td height="1" >
              <p><textarea rows="8" name="style" cols="100">
<link rel="SHORTCUT ICON" href="http://kelink.com/favicon.ico" />
<style type="text/css">
body   {color: #000000; background-color: #054D05; margin: 0px; text-align: center;}
img    {border: none;}
a      {text-decoration: none;color: #007C01;}
a:hover {color: #DE0000;text-decoration: underline}
a:visited {color: #C300E0;text-decoration: underline}
input.ipma {background-color: #FFFFFF; color: #000000; width:335px;}
textarea.ipmb {background-color: #FFFFFF; color: #000000; width:335px; height:167px;}
form  {margin: 0px;display: inline;}
font.z {color: #FF0000;}
div   {width: 345px;padding: 5px;border: none;background-color:#FFFFFF;color: #000000; margin: auto; text-align:left;}
div.logo{width: 345px;padding: 5px;border: none;background-color:#FFFFFF;color: #FFFFFF; margin: auto; text-align:left;}
div.welcome{width: 345px;padding: 5px;border: none;background-color:#FF5081;color: #FFFFFF; margin: auto; text-align:left;}
div.tip{width: 345px;padding: 5px;border: none;background-color:#FF2801;color: #FFFFFF; margin: auto; text-align:left;}
div.line1{width: 345px;padding: 5px;border: none;background-color:#0CB90D;color: #FFFFFF; margin: auto; text-align:left;font-weight: bold;}
div.line2{width: 345px;padding: 5px;border: none;background-color:#EAEAEA;color: #000000; margin: auto; text-align:left;}
div.title {width: 345px;padding: 5px;border: none;background-color:#D2691E;color: #FFFFFF; margin: auto; text-align:left;}
div.subtitle {width: 345px;padding: 5px;border: none;background-color:#FFC394;color: #FFFFFF; margin: auto; text-align:left;}
div.content{width: 345px;padding: 5px;border: none;background-color:#FFFFFF;color: #000000; margin: auto; text-align:left;}
div.showpage{width: 345px;padding: 5px;border: none;background-color:#D0D0FF;color: #000000; margin: auto; text-align:left;}
div.mylink{width: 345px;padding: 5px;border: none;background-color:#C8FFBC;color: #000000; margin: auto; text-align:left;}
</style>
</textarea></p>
     
    </td>
  </tr>
  <tr>
    <td height="16" >　</td>
  </tr>
    <tr>
    <td height="23" >序号：<input type="text" name="rank" size="4" value="5">&nbsp;   
      风格颜色：<img src="showColor.aspx?sc=790075" /> #<input type="text" name="style_color" value="790075" size="4">&nbsp; 名称： <input type="text" name="style_name" value="艾美紫" size="57">&nbsp;     </td>   
  </tr>
  <tr>
    <td height="1" >
              <p><textarea rows="8" name="style" cols="100">
<link rel="SHORTCUT ICON" href="http://kelink.com/favicon.ico" />
<style type="text/css">
body   {color: #595959; background-color: #790075; margin: 0px; text-align: center;}
img    {border: none;}
a      {text-decoration: none;color: #790075;}
a:hover {color: #5700D9;text-decoration: underline}
a:visited {color: #DE0000;text-decoration: underline}
input.ipma {background-color: #FFFFFF; color: #595959; width:335px;}
textarea.ipmb {background-color: #FFFFFF; color: #595959; width:335px; height:167px;}
form  {margin: 0px;display: inline;}
font.z {color: #FF0000;}
div   {width: 345px;padding: 5px;border: none;background-color:#FFFFFF;color: #595959; margin: auto; text-align:left;word-break:break-all;word-wrap:break-word;}
div.tab1 {width: 345px;padding: 5px;border: none;background-color:#A604BE;color: #FFFFFF; margin: auto; text-align:left;font-weight: bold;}
div.tab2 {width: 345px;padding: 5px;border: none;background-color:#EAEAEA;color: #595959; margin: auto; text-align:left;}
div.tab1 a{text-decoration: none;color: #E4B4EC;}
</style>
</textarea></p>
     
    </td>
  </tr>
  <tr>
    <td height="16" >　</td>
  </tr>
    <tr>
    <td height="23" >序号：<input type="text" name="rank" size="4" value="6">&nbsp;   
      风格颜色：<img src="showColor.aspx?sc=FFFFFF" /> #<input type="text" name="style_color" value="FFFFFF" size="4">&nbsp; 名称： <input type="text" name="style_name" value="淑媛粉" size="57">&nbsp;     </td>   
  </tr>
  <tr>
    <td height="1" >
              <p><textarea rows="8" name="style" cols="100">
<link rel="SHORTCUT ICON" href="http://kelink.com/favicon.ico" />
<style type="text/css">
body   {color: #C363A0; background-color: #FFFFFF; margin: 0px; text-align: center;}
img    {border: none;}
a      {text-decoration: none;color: #720C4C;}
a:hover {color: #883E6D;text-decoration: underline}
a:visited {color: #DE0000;text-decoration: underline}
input.ipma {background-color: #FFFFFF; color: #C363A0; width:335px;}
textarea.ipmb {background-color: #FFFFFF; color: #C363A0; width:335px; height:167px;}
form  {margin: 0px;display: inline;}
font.z {color: #FF0000;}
div   {width: 345px;padding: 5px;border: none;background-color:#FFFFFF;color: #C363A0; margin: auto; text-align:left;word-break:break-all;word-wrap:break-word;}
div.tab1 {width: 345px;padding: 5px;border: none;background-color:#EF74DC;color: #FFFFFF; margin: auto; text-align:left;font-weight: bold;}
div.tab2 {width: 345px;padding: 5px;border: none;background-color:#FFDCF2;color: #C363A0; margin: auto; text-align:left;}
div.tab1 a{text-decoration: none;color: #883E6D;}
</style>
</textarea></p>
     
    </td>
  </tr>
  <tr>
    <td height="16" >　</td>
  </tr>
    <tr>
    <td height="23" >序号：<input type="text" name="rank" size="4" value="7">&nbsp;   
      风格颜色：<img src="showColor.aspx?sc=FFFFFF" /> #<input type="text" name="style_color" value="FFFFFF" size="4">&nbsp; 名称： <input type="text" name="style_name" value="炫酷黄" size="57">&nbsp;     </td>   
  </tr>
  <tr>
    <td height="1" >
              <p><textarea rows="8" name="style" cols="100">
<link rel="SHORTCUT ICON" href="http://kelink.com/favicon.ico" />
<style type="text/css">
body   {color: #595959; background-color: #FFFFFF; margin: 0px; text-align: center;}
img    {border: none;}
a      {text-decoration: none;color: #D44100;}
a:hover {color: #595959;text-decoration: underline}
a:visited {color: #C300E0;text-decoration: underline}
input.ipma {background-color: #FFFFFF; color: #595959; width:335px;}
textarea.ipmb {background-color: #FFFFFF; color: #595959; width:335px; height:167px;}
form  {margin: 0px;display: inline;}
font.z {color: #FF0000;}
div   {width: 345px;padding: 5px;border: none;background-color:#FFFFFF;color: #595959; margin: auto; text-align:left;word-break:break-all;word-wrap:break-word;}
div.a {width: 345px;padding: 5px;border: none;background-color:#FD8300;color: #FFFFFF; margin: auto; text-align:left;font-weight: bold;}
div.b {width: 345px;padding: 5px;border: none;background-color:#EAEAEA;color: #595959; margin: auto; text-align:left;}
div.a a{text-decoration: none;color: #FFE6CC;}
</style>
</textarea></p>
     
    </td>
  </tr>
  <tr>
    <td height="16" >　</td>
  </tr>
    <tr>
    <td height="23" >序号：<input type="text" name="rank" size="4" value="8">&nbsp;   
      风格颜色：<img src="showColor.aspx?sc=8B0000" /> #<input type="text" name="style_color" value="8B0000" size="4">&nbsp; 名称： <input type="text" name="style_name" value="橄榄棕" size="57">&nbsp;     </td>   
  </tr>
  <tr>
    <td height="1" >
              <p><textarea rows="8" name="style" cols="100">
<link rel="SHORTCUT ICON" href="http://kelink.com/favicon.ico" />
<style type="text/css">
body   {color: #000000; background-color: #8B0000; margin: 0px; text-align: center;}
img    {border: none;}
a      {text-decoration: none;color: #A52A2A;}
a:hover {color: #DE0000;text-decoration: underline}
a:visited {color: #FF00FF;text-decoration: underline}
input.ipma {background-color: #FFFFFF; color: #000000; width:335px;}
textarea.ipmb {background-color: #FFFFFF; color: #000000; width:335px; height:167px;}
form  {margin: 0px;display: inline;}
font.z {color: #FF0000;}
div   {width: 345px;padding: 5px;border: none;background-color:#FFFFFF;color: #000000; margin: auto; text-align:left;word-break:break-all;word-wrap:break-word;}
div.a {width: 345px;padding: 5px;border: none;background-color:#D2691E;color: #FFFFFF; margin: auto; text-align:left;font-weight: bold;}
div.b {width: 345px;padding: 5px;border: none;background-color:#EAEAEA;color: #000000; margin: auto; text-align:left;}
div.a a{text-decoration: none;color: #DEB887;}
</style>
</textarea></p>
     
    </td>
  </tr>
  <tr>
    <td height="16" >　</td>
  </tr>
</table>
                                                                                       </td>
                                                                                </tr>
                                                                            </table>
</form>
<!-----------结束------------>
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