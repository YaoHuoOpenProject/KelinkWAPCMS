<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myfile_to.aspx.cs" Inherits="KeLin.WebSite.admin.myfile_to" %>
<html>
<head>
<title>������Ϣ</title>
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

window.parent.title1.innerHTML = "�ҵĵ���";
</script>
</head>
<body>
<input type="button" name="f" value=" �� " class="bt" onclick="gototop(0,'')"/><br />
 <%=top%>



<div class="sys"><input type="button" name="f" value=" �����ر༭�ϼ��� " class="bt" onclick="window.location='wapindexedit.aspx?classid=<%=classid %>';"/> <input type="button" name="f" value=" �����ر༭��ҳ�� " class="bt" onclick="window.location='wapindexedit.aspx';"/></div>
</body>
</html>
