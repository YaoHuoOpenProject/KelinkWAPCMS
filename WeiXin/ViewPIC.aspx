<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewPIC.aspx.cs" Inherits="WeiXinWeb.WeiXin.ViewPIC" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
    <title>预览效果</title>
</head>
<script language ="javascript">
    function GetData() {

<%if(this.goview !="yes"){ %>
        for (var i = 0; i < 10; i++) {

            
            document.form1.title[i].value = window.parent.opener.document.form1.title[i].value;
            document.form1.description[i].value = window.parent.opener.document.form1.description[i].value;
            document.form1.picurl[i].value = window.parent.opener.document.form1.picurl[i].value;
            document.form1.url[i].value = window.parent.opener.document.form1.url[i].value;

        }

        document.form1.submit();
   <%} %>     
     


    }


</script>
<body onload ="GetData()">
    <form id="form1" runat="server">
    <input type="hidden" name="goview" value="yes"  /> 
    <div>
<%for (int i = 0; i < 10; i++)
{ %>

<input type="hidden" name="title" value=""  class="input" style="width:200px;" /> 
<input type="hidden" name="description" value=""  class="input" style="width:200px;" />
<input type="hidden" name="picurl" value=""  class="input" style="width:200px;" />  
<input type="hidden" name="url" value=""  class="input" style="width:200px;" /> 

<%} %>
<%=this.html  %>
    </div>
    </form>
</body>
</html>
