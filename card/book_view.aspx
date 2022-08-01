<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_view.aspx.cs" Inherits="KeLin.WebSite.card.book_view" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("移动名片|移動名片|Business card"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
 


    Response.Write("【公司全称】:"+toUserVo.ltd + "<br/>");
    Response.Write("【姓名】:" + toUserVo.realname + "<br/>");
    Response.Write("【职务/称谓】:" + toUserVo.zhiye + "<br/>");
    Response.Write("【电话】:<a  href=\"wtai://wp/mc;"+toUserVo.tel+"\">" + toUserVo.tel + "</a><br/>");
    Response.Write("【手机】:<a  href=\"wtai://wp/mc;" + toUserVo.mobile + "\">" + toUserVo.mobile + "</a><br/>");
    Response.Write("【Email】:" + toUserVo.email + "<br/>");
    Response.Write("【网址】:<a href=\"" + toUserVo.website + "\">" + toUserVo.website + "</a><br/>");
    Response.Write("【公司地址】:" +toUserVo.address + "<br/>");
    Response.Write("【邮码】:"+toUserVo.post+"<br/>");
    Response.Write("【经营范围】:" +toUserVo.sale + "<br/>");

    Response.Write("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");

    Response.Write("<br/><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + this.touserid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">详细资料</a> ");
    Response.Write("<a href=\"" + http_start + "wapindex.aspx?siteid=" + siteid + "" + "\">返回首页</a>	");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
    
 
}
else //2.0界面
{
    Response.Write("<div class=\"subtitle\">" + this.GetLang("移动名片|移動名片|Business card")+"</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("【公司全称】:" + toUserVo.ltd + "<br/>");
    Response.Write("【姓名】:" + toUserVo.realname + "<br/>");
    Response.Write("【职务/称谓】:" + toUserVo.zhiye + "<br/>");
    Response.Write("【电话】:<a  href=\"wtai://wp/mc;" + toUserVo.tel + "\">" + toUserVo.tel + "</a><br/>");
    Response.Write("【手机】:<a  href=\"wtai://wp/mc;" + toUserVo.mobile + "\">" + toUserVo.mobile + "</a><br/>");
    Response.Write("【Email】:" + toUserVo.email + "<br/>");
    Response.Write("【网址】:<a href=\"" + toUserVo.website + "\">" + toUserVo.website + "</a><br/>");
    Response.Write("【公司地址】:" + toUserVo.address + "<br/>");
    Response.Write("【邮码】:" + toUserVo.post + "<br/>");
    Response.Write("【经营范围】:" + toUserVo.sale + "");

    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt3\">");
    Response.Write("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");

    Response.Write("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + this.touserid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">详细资料</a> ");
    Response.Write("<a href=\"" + http_start + "wapindex.aspx?siteid=" + siteid + "" + "\">返回首页</a>	");

    Response.Write("</div></div>");
    

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


