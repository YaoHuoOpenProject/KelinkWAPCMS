<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="smalltypelist.aspx.cs" Inherits="KeLin.WebSite.shop.smalltypelist" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
                                                                                                                                                                    
Response.Write(WapTool.showTop(this.GetLang("运费管理|运费管理|my fav admin"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p align=\"left\">");
    if (this.INFO == "ADDOK")
    {
        Response.Write("<b>" + this.GetLang("添加成功！|添加成功！|add successfully!") + "</b><br/>");

    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>" + this.GetLang("不能为空！|不能为空！|not null!") + "</b><br/>");

    }
    

    Response.Write("名称:(如快递,EMS，平邮)<br/>");
    Response.Write("<input type=\"text\" name=\"subjectname"+r+"\" value=\"" + subjectname + "\"/><br/>");
    Response.Write("价格(只能整数):<br/>");
    Response.Write("<input type=\"text\" name=\"ordernum"+r+"\" value=\"" + ordernum + "\" size=\"5\"/>");
    Response.Write("<anchor><go href=\"" + http_start + "shop/smalltypelist.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"goadd\" />");
    Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\" />");
    Response.Write("<postfield name=\"subjectname\" value=\"$(subjectname"+r+")\" />");
    Response.Write("<postfield name=\"ordernum\" value=\"$(ordernum" + r + ")\" />");
    Response.Write("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
    Response.Write("<postfield name=\"sid\" value=\"" + sid + "\" />");
    Response.Write("</go>" + this.GetLang("添加|添加|submit") + "</anchor><br/>");

    Response.Write("----------<br/>");
    Response.Write("名称|价格<br/>");
    for (int i = 0; (sublistVo != null && i < sublistVo.Count); i++)
    {

        Response.Write( sublistVo[i].subclassName + "|" + sublistVo[i].rank );
        Response.Write("[<a href=\"" + http_start + "shop/smalltypelist_mod.aspx?action=mod&amp;siteid=" + this.siteid + "&amp;classid="+this.classid+"&amp;id=" + sublistVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">修</a>.<a href=\"" + http_start + "shop/smalltypelist_del.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid="+this.classid+"&amp;id=" + sublistVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">删</a>]<br/>");

    }
    if (sublistVo == null)
    {
        Response.Write("没有建分类，请先添加<br/>");
    }
    Response.Write("<br/>说明:参考快递10，EMS25，平邮20");
    Response.Write("<br/>----------<br/>");

    Response.Write("<a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"" + "\">返回上级</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");

    //输出
   
    
}
else //2.0界面
{



    Response.Write("<div class=\"subtitle\">" + this.GetLang("运费管理|运费管理|my fav admin") + "</div>");
   
    if (this.INFO == "ADDOK")
    {
        Response.Write("<div class=\"tip\"><b>" + this.GetLang("添加成功！|添加成功！|add successfully!") + "</b></div>");

    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\"><b>" + this.GetLang("不能为空！|不能为空！|not null!") + "</b></div>");

    }
    
   
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "shop/smalltypelist.aspx\" method=\"post\">");
    Response.Write("名称:(如快递,EMS，平邮)<br/>");
    Response.Write("<input type=\"text\" name=\"subjectname\" value=\"" + subjectname + "\"/><br/>");
    Response.Write("价格(只能整数):<br/>");
    Response.Write("<input type=\"text\" name=\"ordernum\" value=\"" + ordernum + "\" size=\"5\"/>");
   
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"goadd\" />");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    Response.Write("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("添加|添加|submit") + "\"/>");
    Response.Write("</form>");
    
    Response.Write("<hr/>");
    Response.Write("名称|价格<br/>");
    for (int i = 0; (sublistVo != null && i < sublistVo.Count); i++)
    {

        Response.Write(sublistVo[i].subclassName + "|" + sublistVo[i].rank);
        Response.Write("[<a href=\"" + http_start + "shop/smalltypelist_mod.aspx?action=mod&amp;siteid=" + this.siteid + "&amp;classid="+this.classid+"&amp;id=" + sublistVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">修</a>.<a href=\"" + http_start + "shop/smalltypelist_del.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid="+this.classid+"&amp;id=" + sublistVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">删</a>]<br/>");

    }
    if (sublistVo == null)
    {
        Response.Write("没有建分类，请先添加<br/>");
    }
    Response.Write("<br/>说明:参考快递10，EMS25，平邮20");
    Response.Write("</div>");

    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");

    Response.Write("<a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
 
    Response.Write("</div></div>");
                                                                                                                                          




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


