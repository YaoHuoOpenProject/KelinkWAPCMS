<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sessionTimeOut.aspx.cs" Inherits="KeLin.WebSite.admin.sessionTimeOut" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type=text/css>
.quote{margin:5px 20px;border:1px solid #CCCCCC;padding:5px; background:#F3F3F3 }
body{boder:0px}
.HtmlCode{margin:3px 3px;border:1px solid #CCCCCC;padding:5px;background:#FDFDDF;font-size:14px;line-height : normal ;}
</style>
<title>提示</title>
</head>

<BODY bgcolor="#FFFFFF" >
<DIV  class="HtmlCode">

<p><img src="/NetImages/error.png" alt ="出错啦" align="center"/>
<%    
    if (this.StrType == "-2")
    {

        Response.Write("请联系柯林官方网购买正版软件：<a href=\"http://kelink.com\">kelink.com</a>");
    }
    else if (this.StrType == "-1")
    {

        Response.Write("抱歉，暂时不能使用此功能，原因还没有安装和开启此插件。");
    }
    else if (this.StrType == "00")
    {

       Response.Write("抱歉，你没有权限操作此页面！(超级管理员拥有)");
   }
   else if (this.StrType == "01")
   {
       Response.Write("抱歉，你没有权限操作此页面！(超级管理员，站长拥有)");
   }
    else if (this.StrType == "03")
    {
        Response.Write("抱歉，你没有权限操作此页面！(超级管理员，站长，总编辑拥有)");
    }
    else if (this.StrType == "04")
    {
        Response.Write("抱歉，你没有权限操作此页面！(超级管理员，站长，总编辑，版主拥有)");
    }
    else if (this.StrType == "05")
    {
        Response.Write("抱歉，你没有权限操作此页面！(正超级管理员，正站长拥有)");
    }
    else if (this.StrType == "06")
    {
        Response.Write("抱歉，你没有权限操作此页面！");
    }
    else if (this.StrType == "07")
    {
        Response.Write("抱歉，你权限选错了！");
    }
   else
   { %>

<b><font color="#FF0000">服务器内存回收了，Session身份信息失效，请重新登录！<br>
　</font></b></p>
<p>如果不断这样请按以下要求设置你的IE：</p>
<p>1、在IE菜单是，选【工具】→【Internet 选项】→【隐私】→【高级】→按下图选中后【确定】<br>
<br>
&nbsp;&nbsp; <img border="0" src="/NetImages/session.gif"></p>
<p>2、然后点击【安全】选项→【站点...】→【对该区域中的...】的前面钩去掉→输入你的网站地址，点击【添加】→【确定】</p>
<p>3、最后再点击【确定】，重启IE，再打开网址登录操作即可解决这个问题。</p>
<p><font color="#FF0000">如果依然不能正常登陆，请将 【常规】 选项中的 删除cookies、删除文件 都清除一遍，重启浏览器之后，再测试。</font> </p>
<p>再不行的话，那就是你的主机或虚拟空间上设置了CPU或内存限制或应用池回收时间，请与主机商联系。<br>

<%} %>
【<a href="javascript:window.history.back();">返回</a>】
</p>
</DIV>
</body>

</html>
