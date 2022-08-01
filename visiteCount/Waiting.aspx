<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Waiting.aspx.cs" Inherits="KeLin.Web.WEB.visiteCount.Waiting" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title>提示</title>
</head>
<body>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<table align='center'  cellpadding="4" style="width:219px;height:100px;border:1px solid #345487;background-color:#F5F9FD;padding:6px; font-family:Arial, sans-serif; font-size: 12px; color: #000">
 <tr style="cursor:wait">
	<td width="100%" align="center" nowrap="nowrap">
	<img  src="/NetImages/load.gif" align="absmiddle">&nbsp;&nbsp; 请稍后，加载中...
	</td>
  </tr>
</table>
</div>

<script language ="javascript">

        window.location.href = "<%=url %>";

</script>
</body>
</html>
