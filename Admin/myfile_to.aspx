<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myfile_to.aspx.cs" Inherits="KeLin.WebSite.admin.myfile_to" %>
<html>
<head>
<title>顶部信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
 <%=myCss%>
<script>
        function gototop(classid, top) {
            window.parent.preview2.location.href = "myfile_edit.aspx"
        }
        function gotoopen2() {
            window.parent.preview2.location.href = "addClass2.aspx?classid=<%=classid %>";
        }

window.parent.title1.innerHTML = "我的地盘";
</script>
</head>
<body>
<input type="button" name="f" value=" 顶 " class="bt" onclick="gototop(0,'')"/><br />
 <%=top%>



<div class="sys"><input type="button" name="f" value=" 【返回编辑上级】 " class="bt" onclick="window.location='wapindexedit.aspx?classid=<%=classid %>';"/> <input type="button" name="f" value=" 【返回编辑首页】 " class="bt" onclick="window.location='wapindexedit.aspx';"/></div>
</body>
</html>
