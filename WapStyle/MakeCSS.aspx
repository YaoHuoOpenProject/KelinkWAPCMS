<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MakeCSS.aspx.cs" Inherits="KeLin.WebSite.WapStyle.MakeCSS" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%


    Response.Write("<div class=\"subtitle\">导入默认CSS样式</div>");
    Response.Write("<div class=\"content\">");
    if(ERROR==""){
    Response.Write("操作成功！");
    }else{
    Response.Write(ERROR);
    }
    Response.Write("</div>");
    
    
                                                                                                                                                                           
%>




