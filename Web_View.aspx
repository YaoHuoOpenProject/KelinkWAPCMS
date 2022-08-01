<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Web_View.aspx.cs" Inherits="KeLin.WebSite.Web_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.ToWML(this.ShowWEB_view(this.classid),wmlVo));
 %>
