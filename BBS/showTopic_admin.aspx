<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showTopic_admin.aspx.cs" Inherits="KeLin.WebSite.bbs.showTopic_admin" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();                                                                                                                                                               
Response.Write(WapTool.showTop(this.GetLang("论坛专题管理|论坛专题管理|bbs topic admin"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    if (this.INFO == "ADDOK")
    {
        strhtml.Append("<b>" + this.GetLang("添加成功！|添加成功！|add successfully!") + "</b><br/>");

    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>" + this.GetLang("不能为空！|不能为空！|not null!") + "</b><br/>");

    }
    //strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");

    strhtml.Append("专题名称:<br/>");
    strhtml.Append("<input type=\"text\" name=\"subjectname"+r+"\" value=\"" + subjectname + "\"/><br/>");
    strhtml.Append("排序号:<br/>");
    strhtml.Append("<input type=\"text\" name=\"ordernum"+r+"\" value=\"" + ordernum + "\" size=\"5\"/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "bbs/showtopic_admin.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"goadd\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"subjectname\" value=\"$(subjectname"+r+")\" />");
    strhtml.Append("<postfield name=\"ordernum\" value=\"$(ordernum" + r + ")\" />");
    strhtml.Append("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("添加|添加|submit") + "</anchor><br/>");

    strhtml.Append("----------<br/>");
    strhtml.Append("排序号|专题ID|专题名|创建人<br/>");
    for (int i = 0; (sublistVo != null && i < sublistVo.Count); i++)
    {

        strhtml.Append(sublistVo[i].rank + "|" +sublistVo[i].id+"|" +sublistVo[i].subclassName + "|" + sublistVo[i].maker + "");
        strhtml.Append("[<a href=\"" + http_start + "bbs/showtopic_admin_mod.aspx?action=mod&amp;siteid=" + this.siteid + "&amp;classid="+this.classid+"&amp;id=" + sublistVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">修</a>.<a href=\"" + http_start + "bbs/showtopic_admin_del.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid="+this.classid+"&amp;id=" + sublistVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">删</a>]<br/>");

    }
    if (sublistVo == null)
    {
        strhtml.Append("没有建专题，请先添加<br/>");
    }
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + http_start + "bbs/showtopic_admin_del.aspx?action=delall&amp;siteid=" + this.siteid + "&amp;classid="+this.classid+"&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">清空"+classVo.classname+"专题</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("收藏夹专题管理|收藏夹专题管理|my fav admin") + "</div>");
    strhtml.Append("<div class=\"tip\">");
    if (this.INFO == "ADDOK")
    {
        strhtml.Append("<b>" + this.GetLang("添加成功！|添加成功！|add successfully!") + "</b><br/>");

    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>" + this.GetLang("不能为空！|不能为空！|not null!") + "</b><br/>");

    }
    strhtml.Append("</div>");
    //strhtml.Append("<div class=\"subtitle\">");
    //strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");
    //strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/showtopic_admin.aspx\" method=\"post\">");
    strhtml.Append("专题名称:<br/>");
    strhtml.Append("<input type=\"text\" name=\"subjectname\" value=\"" + subjectname + "\"/><br/>");
    strhtml.Append("排序号:<br/>");
    strhtml.Append("<input type=\"text\" name=\"ordernum\" value=\"" + ordernum + "\" size=\"5\"/>");
   
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"goadd\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("添加|添加|submit") + "\"/>");
    strhtml.Append("</form>");
    
    strhtml.Append("<hr/>");
    strhtml.Append("排序号|专题ID|专题名|创建人<br/>");
    for (int i = 0; (sublistVo != null && i < sublistVo.Count); i++)
    {

        strhtml.Append(sublistVo[i].rank + "|"  +sublistVo[i].id+"|" + sublistVo[i].subclassName+"|"+sublistVo[i].maker+"");
        strhtml.Append("[<a href=\"" + http_start + "bbs/showtopic_admin_mod.aspx?action=mod&amp;siteid=" + this.siteid + "&amp;classid="+this.classid+"&amp;id=" + sublistVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">修</a>.<a href=\"" + http_start + "bbs/showtopic_admin_del.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid="+this.classid+"&amp;id=" + sublistVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">删</a>]<br/>");

    }
    if (sublistVo == null)
    {
        strhtml.Append("没有建专题，请先添加<br/>");
    }
    strhtml.Append("</div>");

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + http_start + "bbs/showtopic_admin_del.aspx?action=delall&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">清空" + classVo.classname + "专题</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid=" + this.siteid + "&amp;classid="+this.classid+"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    
    strhtml.Append("</div></div>");

    Response.Write(strhtml);



}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


