<%@ Page Language="C#" AutoEventWireup="true" Codebehind="T.aspx.cs" Inherits="KeLin.WebSite.T" %>
<%
    
    this.id = id + "_";
    string siteid = id.Split('_')[0].Trim();
    string TJ = id.Split('_')[1].Trim();
    Session["KL_FROM_USERID"] = TJ; //������Ʒ�Ƽ������Ի�ԱID
    Server.Transfer("/wapindex.aspx?siteid="+siteid+"&TJ="+TJ);


 %>
