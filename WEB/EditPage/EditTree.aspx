<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false" Codebehind="EditTree.aspx.cs" Inherits="KeLin.WebSite.WEB.EditPage.EditTree" %>
<html>
<head>
<title>�༭ҳ��</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="/NetCSS/treeWEB.js" type="text/javascript"></script>
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">



</head>
<body bgcolor="#DCDCDC" >



<script type="text/javascript">

d = new dTree('d');
d.add(0,-1,'<a href="javascript:gourl(\'�ҵ���ҳ\',\'0\',\'<%=base.SiteId %>\');">�ҵ���ҳ</a>-<a href="javascript:gourl(\'�ҵĵ���\',\'-1\',\'<%=base.SiteId %>\');">�ҵĵ���</a>');
//d.add('0','-1','��վ��ҳ','javascript:gourl(\'null\',\'-1\',\'<%=base.SiteId %>\');');
//d.add('0','-1','�ҵĵ���','javascript:gourl(\'null\',\'-2\',\'<%=base.SiteId %>\');');
   
<%=strJavascript %>                                  
document.write(d);


function gourl(strurl, classid, siteid) {
    window.parent.location.href = "edit.aspx?vertype=3_2&classid=" + classid + "&siteid=" + siteid + "&classname=" + strurl;
}




</script>

              
              
</body>
</html>
