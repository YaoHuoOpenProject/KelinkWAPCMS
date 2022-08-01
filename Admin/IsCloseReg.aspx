<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IsCloseReg.aspx.cs" Inherits="KeLin.WebSite.admin.IsCloseReg" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">

<title>注册设置</title>
</head>
<body><%if (this.INFO == "OK")
  {%>
<div id="divbox" style="color:#FFFFFF;background:#FF2801; padding:20px; margin:0 auto;text-align:center;border-radius:8px 8px 8px 8px;border: 1px solid #fff; box-shadow: 3px 3px 3px 0px rgba(50,50,50, 0.35);"><b>更新成功！</b></div>
<script language ="javascript">
    function codefans() {
        var box = document.getElementById("divbox");
        box.style.display = "none";
    }
    setTimeout("codefans()", 1500);
    try { window.parent.add(); window.parent.preview1.location.reload(); } catch (err) { }
</script>
<%
  }%> 
 <form name="form1" action="IsCloseReg.aspx" method="post">
 <table width="100%"  border="0" cellpadding="0" cellspacing="0" >
  <tr>	
    <td valign="top">
      <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="12"><img src="/NetImages/main_title_01.gif" width="12" height="24"></td>
              <td width="100%" background="/NetImages/main_title_02.gif"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="2%"><img src="/NetImages/i08.gif" width="16" height="16"></td>
                <td width="98%" height="24" valign="middle">
                	显示/隐藏注册功能
                	 
                	
                  		           
 
                  		 </td>
                </tr>
              </table></td>
              <td width="13"><img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="100%"><table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#3399FF" class="TABLE6" >
            <tr>
                                    <td height="24" width="632">
                                        <table width="399" border="0" height="117">
                                            <tr>
                                                <td width="415" height="113">
                                                    <table width="353" height="100%" border="0" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td width="572" align="center" valign="top">
                                                                
                                                                <table border="0" align="center" cellpadding="0" cellspacing="0" height="158" 
                                                                    style="width: 482px">
                                                                    <tr align="center" class='title'>
                                                                        <td height="1" colspan="2" class="TD_title3" width="381">
                                                                            &nbsp;
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td height="56" align="right" class="TD1" width="100">
                                                                           请选择<strong>：</strong>
                                                                        </td>
                                                                        <td class="TD3" height="56" width="382">
                                                                           
                                                                                &nbsp;
                                                                                <input type="radio" value="1" <%if(flag=="1")
                                                                                {%>
                                                                                    checked
                                                                                <%}
                                                                                %> name="getcheck">显示注册功能
                                                                                <br />  <br />
                                                                                &nbsp;
                                                                                    <input type="radio" name="getcheck" <%if( flag=="0")
                                                                                    {
                                                                                        %>
                                                                                        checked
                                                                                        <%}%> value="0">隐藏注册功能</p>
                                                                                        
                                                                                        
                                                                        </td>
                                                                    </tr>
                                                                    <tr align="center" class="tdbg">
                                                                        <td height="41" colspan="2" class="TD3" >
                                                                            <input name="Action" type="hidden" id="Action" value="add"><input name="Submit" type="submit"
                                                                                id="Submit" value=" 保 存 " style="cursor: hand" class="input3">
                                                                            <input name="classid" type="hidden" value="<%=classid %>">
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
    </table>
    </form>
</body>
</html>