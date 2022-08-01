<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MobileUA_view.aspx.cs" Inherits="KeLin.WebSite.WapStyle.MobileUA_view" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
wmlVo.timer="30";
wmlVo.strUrl = backurl;
wmlVo.sid = this.sid1 + "-" + this.ver + "-" + this.cs + "-" + this.lang + "-" + bookVo.id + "-" + this.width;
StringBuilder strhtml = new StringBuilder();
Response.Write(WapTool.showTop(this.GetLang("选定型号|选定型号|Select phone model"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    //strhtml.Append("我的当前设置:"+userVo.MailServerUserName+"<br/>自动检测:Mobile<br/>----------<br/>");
    strhtml.Append("型号:" + bookVo.Mode + "<br/>");
    strhtml.Append("品牌:" + bookVo.nameCN + "(" + bookVo.nameEN + ")<br/>");
    strhtml.Append("系列:"+bookVo.Series+"<br/>");
    strhtml.Append("系统:" + bookVo.OSystem + "<br/>");
    strhtml.Append("屏幕:" + bookVo.widthpx + "X" + bookVo.heightpx + " 像素<br/>");
    strhtml.Append("上网:" + bookVo.version + "<br/>");
    strhtml.Append("<b>30秒后自动跳转...<br/>你还可以：</b><br/>");
    strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua_view.aspx?action=OK&amp;type=1&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo.id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">按手机屏宽完成并保存</a><br/>");
    strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua_view.aspx?action=OK&amp;type=1&amp;width=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo.id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">按100%屏宽完成并保存</a><br/>");
    
    strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua_mod.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo.id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">我要挑错</a><br/>");
    strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?action=OK&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">重新选择</a><br/>");

    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("选定型号|选定型号|Select phone model") + "</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("型号:" + bookVo.Mode + "<br/>");
    strhtml.Append("品牌:" + bookVo.nameCN + "(" + bookVo.nameEN + ")<br/>");
    strhtml.Append("系列:" + bookVo.Series + "<br/>");
    strhtml.Append("系统:" + bookVo.OSystem + "<br/>");
    strhtml.Append("屏幕:" + bookVo.widthpx + "X" + bookVo.heightpx + " 像素<br/>");
    strhtml.Append("上网:" + bookVo.version + "");

    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("<b>30秒后自动跳转...<br/>你还可以：</b><br/>");
    strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua_view.aspx?action=OK&amp;type=1&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo.id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">按手机屏宽完成并保存</a><br/>");
    strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua_view.aspx?action=OK&amp;type=1&amp;width=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo.id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">按100%屏宽完成并保存</a><br/>");

    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua_mod.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo.id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">我要挑错</a><br/>");
    strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?action=OK&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">重新选择</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"tip\">提醒:要保存到我的资料中请点击以上按钮！");
    strhtml.Append("</div>");

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码  


    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");
  
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

        strhtml.Append("</div></div>");




    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }

    Response.Write(strhtml);


}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


