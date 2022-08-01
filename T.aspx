<%@ Page Language="C#" AutoEventWireup="true" Codebehind="T.aspx.cs" Inherits="KeLin.WebSite.T" %>
<%
    
    this.id = id + "_";
    string siteid = id.Split('_')[0].Trim();
    string TJ = id.Split('_')[1].Trim();
    Session["KL_FROM_USERID"] = TJ; //用于商品推荐，来自会员ID
    Server.Transfer("/wapindex.aspx?siteid="+siteid+"&TJ="+TJ);


 %>
