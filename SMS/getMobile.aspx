<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" Codebehind="getMobile.aspx.cs" Inherits="KeLin.WebSite.SMS.getMobile" %><%@ Import namespace="System.Data" %><%@ Import namespace="System.Data.SqlClient" %><%@ Import namespace="System.IO" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
 Response.ContentType = "text/html; charset=utf-8";
 string siteid = Request.QueryString.Get("siteid"); //网站ID
 string checkcode = Request.QueryString.Get("checkcode");  //校验码
 string InstanceName = KeLin.ClassManager.PubConstant.GetAppString("InstanceName"); //取数据库名 
 string _ConnStr = KeLin.ClassManager.PubConstant.GetConnectionString(InstanceName);


 KeLin.ClassManager.BLL.user_BLL MainBll = new KeLin.ClassManager.BLL.user_BLL(InstanceName);
 KeLin.ClassManager.Model .user_Model siteVo  = MainBll.getSiteInfo(siteid);
 if (siteVo == null) return;

 if (checkcode =="" || WapTool.getArryString(siteVo.Version, '|', 32) != checkcode)
 {
     Response.Write(siteVo.mobile +"|||校验码错误！不能为空，请先配置好此参数！\r\n");
     Response.End();
 }      
 
 //循环读取要发送的短信出来,每次500条
 //更新ntext数据表
 string idtemp = "";
 DataSet ds = KeLin.ClassManager.ExUtility.DbHelperSQL.ExecuteDataset(_ConnStr, CommandType.Text, "select top 500 * from [sendSMS] where siteid="+siteid +" and state=0 order by id asc");
 if (ds == null || ds.Tables.Count <= 0 || ds.Tables[0].Rows.Count <= 0)
 {
     return;
 }
 foreach (DataRow row in ds.Tables[0].Rows)
 {
     idtemp = idtemp + row["id"].ToString() +",";

     Response.Write(row["sms_mobile"].ToString() + "|||" + row["sms_content"].ToString()+"\r\n");
    
 }
 //更新状态
 if (idtemp != "")
 {
     idtemp = idtemp + "0";     
     KeLin.ClassManager.ExUtility.DbHelperSQL.ExecuteQuery(_ConnStr, "update [sendSMS] set state=1 where id in (" + idtemp + ")");
 }        
                                                                                                                                                                                                                                                                                                             
                                                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                                                          

%>


