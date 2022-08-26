<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addFromWAP.aspx.cs" Inherits="KeLin.WebSite.bbs.addFromWAP" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>贴子内容</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript">
function CheckSave() {             
            if (document.getElementById("tb_source").length > 4) { 
                alert("签到送分不能超过4位！");
                document.getElementById("tb_source").focus();
                return false;
            }  
            if (document.getElementById("tb_sendmoney").length > 4)  {
                alert("悬赏分不能超过4位！");
                document.getElementById("tb_sendmoney").focus();
                return false;
            }  
            if (document.getElementById("tb_title").value == "")  {
                alert("标题不能为空！");
                document.getElementById("tb_title").focus();
                return false;
            } 
            if (document.getElementById("FreeTextBox1").value =="")  {
                alert("内容不能为空！");
                document.getElementById("FreeTextBox1").focus();
                return false;
            }                     
            return true;
        }
</script>    
</head>
<body>
    <form id="form1" runat="server">
    <table cellspacing="0" cellpadding="0" width="100%" border="0">
				<tbody>
					<tr>																					
										<td valign="top" align="left">
																						
											<table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
												<tbody>
													<tr>
														<td class="column"><font face="宋体">编辑贴子内容  </font>														</td>
													</tr>
													<tr>
														<td class="f" >
														<p align="center">
														<iframe src="/bbs/book_view_addfile.aspx?action=class&siteid=<%=base.SiteId %>&classid=<%=this.classid %>&page=&sid=<%=base.SID %>" id="iframe" width="100%" height="800px" frameborder="0"  scrolling="yes"></iframe>
</p>
														
														</p>
														</td>
													</tr> 
												</tbody>
											</table>
																						
										</td>												
						
					</tr>
				</tbody>
			</table>
    </form>
</body>
</html>