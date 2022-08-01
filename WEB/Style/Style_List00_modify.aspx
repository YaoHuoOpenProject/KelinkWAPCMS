<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="Style_List00_modify.aspx.cs" Inherits="KeLin.WebSite.WEB.Style.Style_List00_modify" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="/NetCSS/day.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="/NetCSS/day.js" type="text/JavaScript"></script>
<script language="JavaScript" src="/NetCSS/table.js" type="text/JavaScript"></script>
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
                  <td width="98%" height="24" valign="middle">系统资源 &gt;&gt; 系统CSS样式资源 &gt;&gt; 修改CSS样式</td>
                </tr>
              </table></td>
              <td width="1%"><img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="100%" colspan="4"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="TABLE6">
            <tr>
              <td height="24">
				<table width="100%"  border="0" background="/NetImages/dw.gif" height="534">
                    <tr>
                      <td> 
 
 
 
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="100%" align="center" valign="top"> 
      <FORM name="messageForm" action="Style_List00_modify.aspx" method="post">
      	<input type="hidden" name="action" value="modify" />
      	<input type="hidden" name="id" value="<%=strVo.ID %>" />
      	<input type="hidden" name="style_type" value="<%=strVo.style_type %>" />
                              <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" height="526">
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
                                      <INPUT Class="input" name="style_name" value="<%=strVo.style_name %>" size=50>
                                    </div> 
                                  </TD>
                                </TR>
                            
                                <TR class="tdbg" > 
                                  <TD height="29" align="right" class="style1" width="186"><strong>*CSS样式：<br /><br />系统定义 <br />+<br /> 自己定义</strong></TD>
                                  <TD class="TD3" width="87%"> <div align="left">&nbsp;
								      <textarea name="style" rows="16" style="width:100%"><%=strVo.style %></textarea>
                                      <br />
(层宽width参数需要用100%或固定值px，WEB版不能用[width]!)<br />
<b>系统定义样式名UBB调用：</b><br />
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
[div=sysad]全局顶部或底部[/div]
</div></TD>
                                  
                                  
                                </TR>
                                <TR align="center" class="tdbg" > 
                                  <TD height="61" colspan="2" class="TD3">
                                      <input name="" type="button" value=" 修 改 保 存 " onclick="add()" id="Button3" size="20" class="bt"/>
                                       &nbsp;<input name="" type="button" value=" 返 回 " onclick="jacascript:window.location='Style_List00.aspx';" id="Button1" class="bt"/></TD>
                                </TR>
                              	<tr>
                                  <TD height="22" colspan="2" class="TD3">
                                      <p align="center">　<iframe name="edit" id="I1" frameborder="no" width="100%" height="850"  src='CssEdit.aspx' ">
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