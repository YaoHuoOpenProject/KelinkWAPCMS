<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RestUserID.aspx.cs" Inherits="KeLin.WebSite.admin.RestUserID" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">

    <title>重置会员ID序号</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
 <script language="JavaScript" src="/NetCSS/day.js" type="text/JavaScript"></script>
<script language="javascript" type="text/javascript">
function CheckSave() {                         
            if (document.getElementById("tb_sitespace").value == "")  {
                alert("空间大小不能为空！");
                document.getElementById("tb_sitespace").focus();
                return false;
            }                  
            if (checkTelNum(document.getElementById("tb_sitespace").value)==false) 
            {
                alert("空间大小不能为空或字符,请输入数值！");
                document.getElementById("tb_sitespace").focus();
                return false;
            }
            if (checkTelNum(document.getElementById("tb_myspace").value)==false) 
            {
                alert("已用空间大小不能为空或字符,请输入数值！");
                document.getElementById("tb_myspace").focus();
                return false;
            }
            return true;
           
        }
//判断是否数值   
function checkTelNum(content) {
    if(content == "") {       
       return false ;
    }
    content = "1" + content ;   //可以用"1"-"9"任何一个
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
														<td class="column" colspan="4"><font face="宋体">重置会员ID序号  </font>														</td>
													</tr>
													<tr>
														<td class="f" style="width: 22%"><font face="宋体">说明： </font>														</td>
														<td colspan="3" class="fh3">
														例已有会员ID:1000---2000，当你删除了1500-2000时，再注册会员，会员ID会从2001开始不会从1500开始。应此你可以在这里执行此操作，让会员ID从1500开始。即从当前最大会员ID开始。
														
														<br /><br />
													    执行后务必要测试一下注册看成功了没有。如果不成功，你可以在数据库管理器的企业管理器中-->设计表中来配置！
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
														<input id="Button1" type="button" value=" 确 定 " onclick="form1.submit();" Class="bt" style="Width:70px"/>
														&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                                                            <input id="Button2" type="button" value=" 关 闭 " onclick="javaScript:window.close();" Class="bt" style="Width:70px"/><br />
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
