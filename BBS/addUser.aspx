<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addUser.aspx.cs" Inherits="KeLin.WebSite.bbs.addUser" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>贴子内容</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript">
    function UpLoad(ii) {


        window.open("/admin/Upload_Photo.aspx?PhotoUrlID=" + ii + "&info=文章编辑页面&delpath=", "addpicwindow", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
    }
    function addImgOrFile(a, b) {
        //alert(b);




        a = '<%=this.http_start%>' + a;
        if (b == 'img') {

            var sExt;
            sExt = a.substr(a.lastIndexOf(".") + 1);
            sExt = sExt.toUpperCase();
            switch (sExt) {
                case "GIF":
                case "JPG":
                case "PNG":
                case "BMP":
                case "JPEG":
                    show('[img]' + a + '[/img]');
                    break;
                default:
                    show('[url=' + a + ']点击下载[/url]');
                    break;
            }


        } else if (b == "file") {
            show('[url=' + a + ']点击下载[/url]');
        } else if (b == "book_img") {

        form1.book_img.value = a;

        } 


    }

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
														<td class="column" colspan="4"><font face="宋体">编辑贴子内容  </font>														</td>
													</tr>
													<tr>
														<td width="16%" class="f" style="width: 16%"><font face="宋体">标题： </font>														</td>
														<td colspan="3" class="fh3">
														<asp:textbox id="tb_title" runat="server" Width="369px"></asp:textbox>														</td>
													</tr> 
													<tr>
														<td class="f" style="width: 16%"><font face="宋体">作者： </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:TextBox ID="tb_author" runat="server" Width="146px"></asp:TextBox>                                                            </td>
													</tr>
													<tr>
														<td class="f" style="width: 16%"><font face="宋体">签到送分： </font>														</td>
														<td  class="fh3" style="width: 34%">
                                                            <asp:TextBox ID="tb_source" runat="server" Width="73px"></asp:TextBox>
                                                            (每天一次，最多为四位)                                                            
                                                            </td>
                                                            <td width="20%" class="f">悬赏分：</td>
													    <td width="37%" class="fh3">
                                                            <asp:TextBox ID="tb_sendmoney" runat="server" Width="73px"></asp:TextBox>(最多为四位)</td>
													</tr>
													<tr>
														<td class="f" style="width: 16%"><font face="宋体">分类：</font>														</td>
														<td class="fh3" style="width: 34%"><font face="宋体">
                                                            <asp:DropDownList ID="ddl_type" runat="server"> </asp:DropDownList></font></td>
													    <td width="20%" class="f"></td>
													    <td width="37%" class="fh3"><font face="宋体">
													    <!--
													    <asp:DropDownList ID="ddl_subtype" runat="server"> </asp:DropDownList>
													    -->
													    </font>  
													    </td>
													</tr>
													<tr>
														<td class="f" style="width: 16%"><font face="宋体">是否加入系统资源： </font>														</td>
														<td colspan="3" class="fh3">
                                                            <asp:DropDownList ID="ddl_systype" runat="server">
                                                            </asp:DropDownList>                                                           </td>
													</tr>
													<tr>
														<td class="f" style="width: 16%"><font face="宋体">内容： </font>														</td>
														<td colspan="3" class="fh3">
                                                         <asp:TextBox ID="FreeTextBox1" runat="server" Height="274px" TextMode="MultiLine" Width="614px"></asp:TextBox></td>
													</tr>	
													<tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">缩放图地址： </font>
                                        </td>
                                        <td colspan="3" class="fh3">
                                            <asp:TextBox ID="book_img" runat="server" Width="369px"></asp:TextBox>&nbsp;&nbsp; <input type="button" name="back" value=" 上传图片 "  class="bt" style="width:60px;" onclick="UpLoad('book_img');" />
                                        </td>
                                    </tr>											
													<tr>
														<td class="fh3" colspan="4" align="center">
														<br />
														<asp:button id="bt_ok" runat="server" Text="保 存" onclick="bt_ok_Click" Width="70px" OnClientClick="CheckSave()" CssClass="bt"></asp:button>
														&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                                            <asp:Button ID="Button1" runat="server" Text=" 返 回 " OnClick="Button1_Click"  CssClass="bt"/><br />
														<br />														</td>
													</tr>
												</tbody>
											</table>
																						
											<table width="100%">
												<tr>
													<td style="height: 15px" align="center"><span class="txt4">
															
															 </span>
													</td>
												</tr>
												<tr>
												<td align="right">
												
												&nbsp;
												</td>
												</tr>
												<tr><td align="center">
												页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
												</td></tr>
											</table>
																				
										</td>												
						<td class="border_right" style="width: 5px; height: 30px;">
						</td>
					</tr>
				</tbody>
			</table>
    </form>
</body>
</html>
