<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RestUserID.aspx.cs" Inherits="KeLin.WebSite.admin.RestUserID" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">

    <title>���û�ԱID���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
 <script language="JavaScript" src="/NetCSS/day.js" type="text/JavaScript"></script>
<script language="javascript" type="text/javascript">
function CheckSave() {                         
            if (document.getElementById("tb_sitespace").value == "")  {
                alert("�ռ��С����Ϊ�գ�");
                document.getElementById("tb_sitespace").focus();
                return false;
            }                  
            if (checkTelNum(document.getElementById("tb_sitespace").value)==false) 
            {
                alert("�ռ��С����Ϊ�ջ��ַ�,��������ֵ��");
                document.getElementById("tb_sitespace").focus();
                return false;
            }
            if (checkTelNum(document.getElementById("tb_myspace").value)==false) 
            {
                alert("���ÿռ��С����Ϊ�ջ��ַ�,��������ֵ��");
                document.getElementById("tb_myspace").focus();
                return false;
            }
            return true;
           
        }
//�ж��Ƿ���ֵ   
function checkTelNum(content) {
    if(content == "") {       
       return false ;
    }
    content = "1" + content ;   //������"1"-"9"�κ�һ��
    if(parseInt(content) == content) {       
       return true ;
    }    
    return false ;
    }          
</script>    
</head>
<body>
    <form id="form1" action ="restUserID.aspx" method="post">
    <table cellspacing="0" cellpadding="0" width="100%" border="0">
				<tbody>
					<tr>																					
										<td valign="top" align="left">
											<table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
												<tbody>
													<tr>
														<td class="column" colspan="4"><font face="����">���û�ԱID���  </font>														</td>
													</tr>
													<tr>
														<td class="f" style="width: 22%"><font face="����">˵���� </font>														</td>
														<td colspan="3" class="fh3">
														�����л�ԱID:1000---2000������ɾ����1500-2000ʱ����ע���Ա����ԱID���2001��ʼ�����1500��ʼ��Ӧ�������������ִ�д˲������û�ԱID��1500��ʼ�����ӵ�ǰ����ԱID��ʼ��
														
														<br /><br />
													    ִ�к����Ҫ����һ��ע�ῴ�ɹ���û�С�������ɹ�������������ݿ����������ҵ��������-->��Ʊ��������ã�
														</td>
													</tr> 
														
													<tr>
														<td class="fh3" colspan="4" align="center">
														<br />
														<%if (this.INFO != "")
                {
                    Response.Write("<font color=red>"+this.INFO+"</font>");
                }
														
														%>
														<input type="hidden" name="action" value="gomod" />
														<input id="Button1" type="button" value=" ȷ �� " onclick="form1.submit();" Class="bt" style="Width:70px"/>
														&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                            <input id="Button2" type="button" value=" �� �� " onclick="javaScript:window.close();" Class="bt" style="Width:70px"/><br />
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
												
												<tr><td align="center">
												
												</td></tr>
											</table>
																				
										</td>												
						<td class="border_right" style="width: 5px; height: 30px;"></td>
					</tr>
				</tbody>
			</table>
    </form>
</body>
</html>
