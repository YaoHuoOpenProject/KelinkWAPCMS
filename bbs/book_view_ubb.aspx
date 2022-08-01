<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_view_ubb.aspx.cs" Inherits="KeLin.WebSite.bbs.book_view_ubb" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
                                                                                                                                                                    
StringBuilder strhtml=new StringBuilder();                                                                                                                                                                         
Response.Write(WapTool.showTop(this.GetLang("UBB使用方法|UBB使用方法|bank list"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");
    strhtml.Append("----------<br/>");
    strhtml.Append("自定义分页：[next]<br/>");
    strhtml.Append("下拉操作的特殊贴控制开始：[go]<br/>");
    strhtml.Append("换行：[br]<br/>");
    strhtml.Append("加粗：[b]内容[/b]<br/>");
    strhtml.Append("链接地址：<br/>[url=URL地址]说明[/url]<br/>");
    strhtml.Append("图片链接：<br/>[img]图片地址][/img]<br/>");
    strhtml.Append("----------<br/>");
    strhtml.Append("UBB特殊贴可以在内容中插入：<br/>");
    strhtml.Append("登录可见内容:<br/>[login]输入内容[/login][next]<br/>");
    strhtml.Append("手机可见内容:<br/>[mobi]输入内容[/mobi][next]<br/>");
    strhtml.Append("回复可见内容:<br/>[reply]输入内容[/reply][next]<br/>");
    strhtml.Append("金币可见内容:<br/>[coin=金币数]输入内容[/coin][next]<br/>");
    strhtml.Append("经验可见内容:<br/>[grade=经验值]输入内容[/grade][next]<br/>");
    strhtml.Append("付费" + siteVo.sitemoneyname + "可见内容:<br/>[buy=" + siteVo.sitemoneyname + "数]输入内容[/buy][next]<br/>");
    strhtml.Append("付费RMB可见内容:<br/>[buyrmb=RMB数]输入内容[/buyrmb][next]<br/>");
    strhtml.Append("身份级别可见内容:<br/>[vip=身份级别ID多个用|区分]输入内容[/vip][next]<br/>");
    strhtml.Append("建议在最后录入[next]防止中间被分页切断！<br/>");
    strhtml.Append("----------<br/>");
    
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{

    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a>");
    strhtml.Append("</div></div>");

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("UBB使用方法|UBB使用方法|bank list") + "</div>");

    
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("自定义分页：[next]<br/>");
    strhtml.Append("下拉操作的特殊贴控制开始：[go]<br/>");
    strhtml.Append("换行：[br]<br/>");
    strhtml.Append("加粗：[b]内容[/b]<br/>");
    strhtml.Append("链接地址：<br/>[url=URL地址]说明[/url]<br/>");
    strhtml.Append("图片链接：<br/>[img]图片地址][/img]<br/>");
    //strhtml.Append("<hr/>");
    strhtml.Append("</div><div class=\"subtitle\">UBB特殊贴可以在内容中插入：</div><div class=\"line2\">");
    strhtml.Append("登录可见内容:<br/>[login]输入内容[/login][next]<br/>");
    strhtml.Append("手机可见内容:<br/>[mobi]输入内容[/mobi][next]<br/>");
    strhtml.Append("回复可见内容:<br/>[reply]输入内容[/reply][next]<br/>");
    strhtml.Append("金币可见内容:<br/>[coin=金币数]输入内容[/coin][next]<br/>");
    strhtml.Append("经验可见内容:<br/>[grade=经验值]输入内容[/grade][next]<br/>");
    strhtml.Append("付费" + siteVo.sitemoneyname + "可见内容:<br/>[buy=" + siteVo.sitemoneyname + "数]输入内容[/buy][next]<br/>");
    strhtml.Append("付费RMB可见内容:<br/>[buyrmb=RMB数]输入内容[/buyrmb][next]<br/>");
    strhtml.Append("身份级别可见内容:<br/>[vip=身份级别ID多个用|区分]输入内容[/vip][next]<br/>");
    strhtml.Append("建议在最后录入[next]防止中间被分页切断！<br/>");
    //strhtml.Append("----------<br/>");
    strhtml.Append("</div>");
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml.ToString()), wmlVo));
        Response.End();
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
     
    strhtml.Append("</div></div>");


    Response.Write(strhtml);



}
                                                                                                                                                                               
strhtml.Append(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


