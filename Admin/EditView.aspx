<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditView.aspx.cs" Inherits="KeLin.WebSite.EditView" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write (WapTool.showTop("‘§¿¿", wmlVo).ToString());

if (pagepost == "yes")
{
    Response.Write(WapTool.ToWML(showhtml.ToString(), wmlVo));
}
else
{
%>
<div class ="tip">∂¡»°÷–£¨«Î…‘∫Û...</div>
  <form name ="go" action ="editView.aspx" method ="post">
  <input type="hidden" name ="showhtml" value=""/>
  <input type="hidden" name ="pagepost" value="yes"/>
  <input type="hidden" name ="siteid" value="<%=siteid %>"/>
  <input type="hidden" name ="sid" value="<%=sid %>"/>
  </form>
<script language ="javascript" >
function window.onload (){

    //alert(window.opener.form1.top.value);
    go.showhtml.value = window.opener.form1.top.value;
 go.submit ();
}
</script>
<%
}

Response.Write(WapTool.showDown(wmlVo));

%>
