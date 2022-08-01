<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageDown.aspx.cs" Inherits="KeLin.WebSite.WEB.PageDown" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title>说明</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
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
														<td class="column"><font face="宋体">电脑网站排版说明  </font>														</td>
													</tr>
													<tr>
														<td class="fh3" align="center">
														<table border="0" width="68%" id="table1" cellspacing="0" cellpadding="0">
															<tr>
																<td align="left">　
																
																<p><b>WEB版显示条件：
																<font color=red>
																<br />优先级一：web.config中的参数：KL_Open_Web值为1，当前设值为：<%=KeLin.ClassManager.PubConstant.GetAppString("KL_Open_Web")%>
																<br />优先级二：web.config中的参数：KL_GoVersion3值中要有MSIE等电脑浏览器UA标识，当前设值为：<%=KeLin.ClassManager.PubConstant.GetAppString("KL_GoVersion3")%>
																
																<br />优先级三：网站管理--&gt;网站基本信息管理--&gt;网站默认配置--&gt;[20].首页选电脑版(ver=3)时跳转至，要留空！
																<br />
																<br />如果以上参数没有问题，请继续往下看：
																</font></b>
																</p>
																
																<p>1.电脑网站排版是指将页面排版成电脑屏幕大小的页面效果，平板触摸排版指按人体触摸屏幕方式进行排版页面效果。
														  
																</p>
																<p>
														 <br />
														2.完全独立于WAP1.0/WAP2.0排版，但是所有内容共享的！包括UBB方法。
														  
																</p>
																<p>
														 <br />
													    3.浏览器访问时通过 Web.config配置不同浏览器UA标识，而进入相对应的版面。</p>
																<p>&nbsp;<br />											    
													    
													    
													    		4.地址中的标识为：[ver]=1为WAP1.0，2为WAP2.0，3为电脑，4为平板电脑！
													     </p>
																<p>例一个完整的首页地址：<%=base.http_start %>wapindex.aspx?siteid=<%=base.SiteId %>&sid=<%=base.SID %>　
																<br /><br />其中sid参数是指身份信息串，UBB为[sid]，在登录情况下：sid=身份串-版本-皮肤-语言-机型-屏宽，在未登录情况下只显示sid=-版本-皮肤-语言-机型-屏宽
																<br />在UBB中[sid]相当于[sid1]-[ver]-[cs]-[lang]-[myua]-[width]
																<br /><br />转成动态的UBB地址是：
																<br />WAP1.0链接:<%=base.http_start %>wapindex.aspx?siteid=<%=base.SiteId %>&sid=[sid1]-1-[cs]-[lang]-[myua]-[width]
																<br />WAP2.0链接:<%=base.http_start %>wapindex.aspx?siteid=<%=base.SiteId %>&sid=[sid1]-2-[cs]-[lang]-[myua]-[width]
																<br />电脑页面链接:<%=base.http_start %>wapindex.aspx?siteid=<%=base.SiteId %>&sid=[sid1]-3-[cs]-[lang]-[myua]-[width]
																<br />平板页面链接:<%=base.http_start %>wapindex.aspx?siteid=<%=base.SiteId %>&sid=[sid1]-4-[cs]-[lang]-[myua]-[width]
<br />更详细的请参考柯林二次开发文档。
																</p>
																<p>&nbsp;<br />											    
													    
													    
													    		5.一个栏目相当于一个页面，相当灵活，应此都需要排版，但可以批量替换栏目页面。
													     </p>
																
																<p align="center">
																<h2><font color="#FF0000">注意：当前版本已抛弃&sid=xxx地址，UBB链接或URL链接中不再需要加入，系统自动隐藏保存。</font></h2>
																
																<br />
													    
													    <br />
													    
													    <input type="button" name ="go" value="我知道了，进入WEB排版！" onclick="window.location.href='/WEB/EditPage/Edit.aspx';" class="bt" /><p align="center">
													    
													  
　</td>
															</tr>
														</table>
													    <br />
													    
													    　</td>
													</tr>
												</tbody>
											</table>
																						
										</td>												
						<td class="border_right" style="width: 5px; height: 30px;"></td>
					</tr>
				</tbody>
			</table>
    </form>
</body>
</html>
