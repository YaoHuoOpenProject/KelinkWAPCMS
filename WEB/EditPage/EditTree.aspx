<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false" Codebehind="EditTree.aspx.cs" Inherits="KeLin.WebSite.WEB.EditPage.EditTree" %>
<html>
<head>
<title>编辑页面</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="/NetCSS/treeWEB.js" type="text/javascript"></script>
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">



</head>
<body bgcolor="#DCDCDC" >



<script type="text/javascript">

d = new dTree('d');
d.add(0,-1,'<a href="javascript:gourl(\'我的首页\',\'0\',\'<%=base.SiteId %>\');">我的首页</a>-<a href="javascript:gourl(\'我的地盘\',\'-1\',\'<%=base.SiteId %>\');">我的地盘</a>');
//d.add('0','-1','网站首页','javascript:gourl(\'null\',\'-1\',\'<%=base.SiteId %>\');');
//d.add('0','-1','我的地盘','javascript:gourl(\'null\',\'-2\',\'<%=base.SiteId %>\');');
   
<%=strJavascript %>                                  
document.write(d);


function gourl(strurl, classid, siteid) {
    window.parent.location.href = "edit.aspx?vertype=3_2&classid=" + classid + "&siteid=" + siteid + "&classname=" + strurl;
}




</script>

              
              
</body>
</html>
