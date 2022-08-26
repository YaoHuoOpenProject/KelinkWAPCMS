<%@ Page Language="C#"%><%@ Import namespace="System.Data" %><%@ Import namespace="System.Data.SqlClient" %><%@ Import namespace="System.IO" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
 Response.ContentType = "text/html; charset=utf-8";
 Response.Buffer = true;
 Response.Expires = -1;
 Response.ExpiresAbsolute = DateTime.Now.AddDays(-1);
 Response.Expires = 0;
 Response.CacheControl = "no-cache";

 string INFO = "";
 string QR = Request.QueryString.Get("QR"); //参数
 QR = QR + "_";
 string[] arry = QR.Split('_');
 string actionType = arry[0]; //任务ID
 string mobile = arry[1]; //手机号码
 if (WapTool.IsNumeric(actionType) == false) actionType = "0"; 
 if (WapTool.IsNumeric(mobile) == false) mobile = "0";
 

 //判段是否存在
 DataSet ds = KeLin.ClassManager.ExUtility.DbHelperSQL.ExecuteDataset(WapTool._ConnStr, CommandType.Text, "select top 1 * from [sendsms] where actionType="+actionType +" and sms_mobile='"+mobile +"' order by id desc");
 if (ds == null || ds.Tables.Count <= 0 || ds.Tables[0].Rows.Count <= 0)
 {
     INFO = "<font size=\"6\" color=\"#FF0000\">校验失败！<hr/>原因：不存在此记录！<hr/>任务ID:" + actionType + "<br/>手机号码:" + mobile + "</font> ";
 }
 else
 {
     foreach (DataRow row in ds.Tables[0].Rows)
     {
         if (row["QR_check_state"].ToString() == "1")
         {
             INFO = "<font size=\"6\" color=\"#FF0000\">校验失败！<hr/>原因：已校验！<br/>上次校验时间：" + row["QR_check_time"].ToString() + "<hr/>任务ID:" + actionType + "<br/>手机号码:" + mobile + "</font> ";
         }
         else
         {
             INFO = "<font size=\"6\" color=\"#008000\">校验成功！<hr/>任务ID:" + actionType + "<br/>手机号码:" + mobile + "</font>";
 
             KeLin.ClassManager.ExUtility.DbHelperSQL.ExecuteQuery(WapTool._ConnStr, "update [sendSMS] set QR_check_state=1,QR_check_time=getdate() where actionType=" + actionType + " and sms_mobile='" + mobile + "'");
         }
     }
 }                                                                                                                                                                                                                                                                                                                       
                                                                                                                                                                                                                                                                                                                          

%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta http-equiv="pragma" content="no-cache"> 
<meta http-equiv="Cache-Control" content="no-cache, must-revalidate"> 
<meta http-equiv="expires" content="Wed, 26 Feb 1997 08:21:57 GMT">
<title>校验结果</title>
</head>
<body bgcolor="#FFFFFF" >
<%=INFO %>
</body>
</html>

