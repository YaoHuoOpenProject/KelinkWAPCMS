<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PageDown.aspx.cs" Inherits="KeLin.WebSite.WEB.PageDown" %><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
<title>˵��</title>
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
														<td class="column"><font face="����">������վ�Ű�˵��  </font>														</td>
													</tr>
													<tr>
														<td class="fh3" align="center">
														<table border="0" width="68%" id="table1" cellspacing="0" cellpadding="0">
															<tr>
																<td align="left">��
																
																<p><b>WEB����ʾ������
																<font color=red>
																<br />���ȼ�һ��web.config�еĲ�����KL_Open_WebֵΪ1����ǰ��ֵΪ��<%=KeLin.ClassManager.PubConstant.GetAppString("KL_Open_Web")%>
																<br />���ȼ�����web.config�еĲ�����KL_GoVersion3ֵ��Ҫ��MSIE�ȵ��������UA��ʶ����ǰ��ֵΪ��<%=KeLin.ClassManager.PubConstant.GetAppString("KL_GoVersion3")%>
																
																<br />���ȼ�������վ����--&gt;��վ������Ϣ����--&gt;��վĬ������--&gt;[20].��ҳѡ���԰�(ver=3)ʱ��ת����Ҫ���գ�
																<br />
																<br />������ϲ���û�����⣬��������¿���
																</font></b>
																</p>
																
																<p>1.������վ�Ű���ָ��ҳ���Ű�ɵ�����Ļ��С��ҳ��Ч����ƽ�崥���Ű�ָ�����崥����Ļ��ʽ�����Ű�ҳ��Ч����
														  
																</p>
																<p>
														 <br />
														2.��ȫ������WAP1.0/WAP2.0�Ű棬�����������ݹ���ģ�����UBB������
														  
																</p>
																<p>
														 <br />
													    3.���������ʱͨ�� Web.config���ò�ͬ�����UA��ʶ�����������Ӧ�İ��档</p>
																<p>&nbsp;<br />											    
													    
													    
													    		4.��ַ�еı�ʶΪ��[ver]=1ΪWAP1.0��2ΪWAP2.0��3Ϊ���ԣ�4Ϊƽ����ԣ�
													     </p>
																<p>��һ����������ҳ��ַ��<%=base.http_start %>wapindex.aspx?siteid=<%=base.SiteId %>&sid=<%=base.SID %>��
																<br /><br />����sid������ָ�����Ϣ����UBBΪ[sid]���ڵ�¼����£�sid=��ݴ�-�汾-Ƥ��-����-����-������δ��¼�����ֻ��ʾsid=-�汾-Ƥ��-����-����-����
																<br />��UBB��[sid]�൱��[sid1]-[ver]-[cs]-[lang]-[myua]-[width]
																<br /><br />ת�ɶ�̬��UBB��ַ�ǣ�
																<br />WAP1.0����:<%=base.http_start %>wapindex.aspx?siteid=<%=base.SiteId %>&sid=[sid1]-1-[cs]-[lang]-[myua]-[width]
																<br />WAP2.0����:<%=base.http_start %>wapindex.aspx?siteid=<%=base.SiteId %>&sid=[sid1]-2-[cs]-[lang]-[myua]-[width]
																<br />����ҳ������:<%=base.http_start %>wapindex.aspx?siteid=<%=base.SiteId %>&sid=[sid1]-3-[cs]-[lang]-[myua]-[width]
																<br />ƽ��ҳ������:<%=base.http_start %>wapindex.aspx?siteid=<%=base.SiteId %>&sid=[sid1]-4-[cs]-[lang]-[myua]-[width]
<br />����ϸ����ο����ֶ��ο����ĵ���
																</p>
																<p>&nbsp;<br />											    
													    
													    
													    		5.һ����Ŀ�൱��һ��ҳ�棬�൱��Ӧ�˶���Ҫ�Ű棬�����������滻��Ŀҳ�档
													     </p>
																
																<p align="center">
																<h2><font color="#FF0000">ע�⣺��ǰ�汾������&sid=xxx��ַ��UBB���ӻ�URL�����в�����Ҫ���룬ϵͳ�Զ����ر��档</font></h2>
																
																<br />
													    
													    <br />
													    
													    <input type="button" name ="go" value="��֪���ˣ�����WEB�Ű棡" onclick="window.location.href='/WEB/EditPage/Edit.aspx';" class="bt" /><p align="center">
													    
													  
��</td>
															</tr>
														</table>
													    <br />
													    
													    ��</td>
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
