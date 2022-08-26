<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addUser.aspx.cs" Inherits="KeLin.WebSite.ring.addUser" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>编辑铃声下载内容</title>
    <link href="../css/bbs_default.css" type="text/css" rel="stylesheet" />
<script language="javascript" type="text/javascript">
// <!CDATA[

function bt_return_onclick() 
{
    history.go(-1)
}
var i=1;   
function addFile()   
  {   
      var dv = document.getElementById("dvFiles");       
      var file = document.createElement("input");   
      file.type  = "file";   
      file.id = file.name = "file"+i;   
      file.size = "30";
      dv.appendChild(file);   
        
      var txt = document.createElement("input");
      txt.type = "text";
      txt.id = txt.name = "txt"+i;
      dv.appendChild(txt);
      
      var btn = document.createElement("input");   
      btn.type = "button";   
      btn.id = btn.name   =   "btn"   +   i;     
      btn.value = " 删 除 ";   
    
      btn.onclick=function()   {     
  var b=document.getElementById(btn.id);   
  dv.removeChild(b.nextSibling);   //remove   <BR>   
  dv.removeChild(b.previousSibling);   //file   
  dv.removeChild(b);   //btn   
      }       
      dv.appendChild(btn);         
      dv.appendChild(document.createElement("BR"));      
      i++;    
}
function addDiv()
{
    var dv_container = document.getElementById("_container");
    
    var dv = document.createElement("div");
    dv.id = "dv"+i;
    var file = document.createElement("input");   
      file.type  = "file";   
      file.id = file.name = "file"+i;   
      file.size = "50";
      dv.appendChild(file);   
      
      dv.appendChild(document.createElement("BR"));  
      dv.appendChild(document.createTextNode("附件文件描述："));
      
      var txt = document.createElement("input");
      txt.type = "text";
      txt.id = txt.name = "txt"+i;
      txt.size="35";
      dv.appendChild(txt);
      
      var btn = document.createElement("input");   
      btn.type = "button";   
      btn.id = btn.name = "btn"+i;     
      btn.value = "删除附件"; 
      
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


// ]]>
</script>        
</head>
<body onload="addDiv()">
    <form id="form1" runat="server" enctype="multipart/form-data">
    <table cellspacing="0" cellpadding="0" width="100%" border="0">
				<tbody>
					<tr>																					
										<td valign="top" align="left"><span class="forumName"><font face="宋体">铃声资源内容</font> </span>
											<br />
											
											
											<table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
												<tbody>
													<tr>
														<td class="column" colspan="4"><font face="宋体">编辑内容 </font>														</td>
													</tr>
													<tr>
														<td width="16%" class="f" style="width: 16%"><font face="宋体">标题： </font>														</td>
														<td colspan="3" class="fh3">
														<asp:textbox id="tb_title" runat="server" Width="369px"></asp:textbox>														</td>
													</tr> 													
													<tr>
														<td width="16%" class="f" style="width: 16%"><font face="宋体">需要金币： </font>														</td>
														<td colspan="3" class="fh3">
														<asp:textbox id="tb_money" runat="server" Width="82px">0</asp:textbox>														( 0 表示不需要)</td>
													</tr> 													
													<tr>
														<td class="f" style="width: 16%"><font face="宋体">资源分类：</font>														</td>
														<td width="35%" class="fh3"><font face="宋体">
                                                            <asp:DropDownList ID="ddl_type" runat="server">                                                            </asp:DropDownList></font></td>
													    <td class="fh3" style="width: 20%">
                                                            </td>
													    <td width="32%" class="fh3">
													    </td>
													</tr>
													<tr>
														<td class="f" style="width: 16%"><font face="宋体">是否加入系统资源： </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:DropDownList ID="ddl_systype" runat="server">
                                                            </asp:DropDownList>                                                           </td>
													</tr>
													<tr>
														<td class="f" style="width: 16%"><font face="宋体">内容描述： </font>														</td>
														<td colspan="3" class="fh3">
                                                         <ftb:freetextbox id="FreeTextBox1" runat="server" ButtonPath="../images/ftb/office2003/" Height="200px" ImageGalleryPath="ring/upload"></ftb:freetextbox></td>
													</tr>													
													<tr>
														<td class="f" style="width: 16%"><font face="宋体">附件列表：
														
														 </font></td>
														<td colspan="3" class="fh3">
														<asp:repeater id="attRepeater" Runat="server">
	                                                     <ItemTemplate>
	                                                     <table width="100%" border="0">
                                                         <tr>
                                                         <td>&nbsp;<a href ="<%#DataBinder.Eval(Container.DataItem,"book_file") %>" target="_blank" title="下载附件"><%#DataBinder.Eval(Container.DataItem, "book_name")%></a>
                                                         </td>
                                                         <td>&nbsp;</td>
                                                         </tr>  
                                                         </table>
	                                                     </ItemTemplate>
	                                                     </asp:repeater>
                                                         <div id="dvFiles"></div>  
                                                         <div id="_container">

                                                         </div>  
                                                         <input type="button"  value="增加附件"  onclick="addDiv()" />  
                                                         <font color="red"><b>(注意：可批量上传,但同时上传多个文件比较占用资源及带宽)</b></font>                                                        </td>
													</tr>												
													<tr>
														<td class="fh3" colspan="4" align="center">
														<br />
														<asp:button id="bt_ok" runat="server" Text="保 存" Width="70px" OnClick="bt_ok_Click"></asp:button>
														&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                                            <asp:Button ID="Button1" runat="server" Text=" 返 回 " OnClick="Button1_Click" /><br />
														<br />														</td>
													</tr>
												</tbody>
											</table>
																																							
										</td>												
						<td class="border_right" style="width: 5px; height: 30px;">
						</td>
					</tr>
					
												<tr><td align="center">
												页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
												</td></tr>
				</tbody>
			</table>
    </form>
</body>
</html>
