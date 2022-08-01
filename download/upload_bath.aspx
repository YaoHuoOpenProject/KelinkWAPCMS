<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upload_bath.aspx.cs" Inherits="KeLin.WebSite.download.upload_bath" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
  <title>批量上传</title>
    <link href="../css/bbs_default.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
// <!CDATA[

function bt_return_onclick() 
{
    history.go(-1)
}
var i=1;   
function addDiv()
{
    var dv_container = document.getElementById("_container");
    
    var dv = document.createElement("div");
    dv.id = "dv"+i;
    var file = document.createElement("input");   
      file.type  = "file";   
      file.id = file.name = "file"+i;   
      file.size = "50";
      file.onpropertychange="Preview(this)";
      dv.appendChild(file);   
             
      
      var btn = document.createElement("input");   
      btn.type = "button";   
      btn.id = btn.name = "btn"+i;     
      btn.value = "删除文件"; 
      
      btn.onclick=function()   {     
  var b=document.getElementById(btn.id);   
  dv_container.removeChild(b.parentNode);
  }       
      dv.appendChild(btn);         
      dv.appendChild(document.createElement("BR"));      
      dv.appendChild(document.createElement("BR")); 
      i++;
  document.getElementById("_container").appendChild(dv);
}  

function Preview(File)
{

var picName=File.value;
var array=new Array();
array=picName.split(".");
var extendName=array[1];
extendName=extendName.toLowerCase();
if(extendName!="txt")
{
var errMessage="对不起！你选择的文件类型有误！请重新选择！";
window.alert(errMessage);
return;
}
}
// ]]>
</script>        
</head>
<body onload="addDiv()">
    <form id="form1" runat="server" enctype="multipart/form-data">
    <table cellspacing="0" cellpadding="0" width="100%" border="0">
				<tbody>
					<tr>																					
										<td valign="top" align="left"><span class="forumName"><font face="宋体">批量上传</font> </span>											
											<span class="forumThread"></span>											
											<table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
												<tbody>
													<tr>
														<td class="column" colspan="2"><font face="宋体">允许上传文件类型：txt </font>														</td>
													</tr>
													<tr>
														<td class="f3" colspan="2"><font face="宋体">注意：文件格式为“文件名.文件扩展名”,如“中国人.rar”，上传后“中国人”即为标题。 </font>														&nbsp;</td>
													</tr> 
													<tr>
														<td class="f" style="width: 22%">选择文件编码：														</td>
														<td class="fh3">
                                                            <asp:DropDownList ID="ddl_ecode" runat="server">
                                                                <asp:ListItem Value="GB2312"></asp:ListItem>
                                                                <asp:ListItem Value="Unicode"></asp:ListItem>
                                                                <asp:ListItem>UTF-8</asp:ListItem>
                                                            </asp:DropDownList>&nbsp;&nbsp;
                                                            <font color="red">先上传一个测试，如果报错或乱码，请尝试另一个编码！</font>
                                                            </td>
												    </tr>
													
													<tr>
														<td class="f3" colspan="2">
														<div id="_container">

                                                         </div> 
                                                         <br /> 
                                                         &nbsp;<input type="button"  value="增加文件"  onclick="addDiv()" /> 
														</td>
												    </tr>													
													
												</tbody>
											</table>
    </form>
</body>
</html>
