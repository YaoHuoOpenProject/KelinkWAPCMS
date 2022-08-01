<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="smalltypelist_mod.aspx.cs" Inherits="KeLin.WebSite.bbs.smalltypelist_mod" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();                                                                                                                                                 
Response.Write(WapTool.showTop(this.GetLang("修改分类|修改分类|modify class"), wmlVo));//显示头   

string [] arry= (bookVo.subclassName+"#").Split('#');
name = arry[0];
color = arry[1];                                                                                                                                            
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    if (this.INFO == "MODOK")
    {
        strhtml.Append("<b>" + this.GetLang("修改成功！|修改成功！|modify successfully!") + "</b><br/>");

    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>" + this.GetLang("不能为空！|不能为空！|not null!") + "</b><br/>");

    }
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");
    
    if (this.INFO != "MODOK")
    {
        strhtml.Append("分类名称或图片地址:<br/>");
        strhtml.Append("<input type=\"text\" name=\"subjectname" + r + "\" value=\"" + name + "\"/><br/>");
        strhtml.Append("昵称颜色:(<a href=\"" + this.http_start + "bbs/smalltypelist_color.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/smalltypelist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "") + "\">查看颜色代码</a>)<br/>");
        strhtml.Append("#<input type=\"text\" name=\"color"+r+"\" size=\"6\" value=\"" + color + "\"/><br/>");
        
        strhtml.Append("购买需要RMB(0为关闭购买功能):<br/>");
        strhtml.Append("<input type=\"text\" name=\"ordernum" + r + "\" value=\"" + bookVo.rank + "\" size=\"5\"/><br/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "bbs/smalltypelist_mod.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"gomod\" />");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
        strhtml.Append("<postfield name=\"id\" value=\"" + id + "\" />");
        strhtml.Append("<postfield name=\"subjectname\" value=\"$(subjectname" + r + ")\" />");
        strhtml.Append("<postfield name=\"color\" value=\"$(color" + r + ")\" />");
        strhtml.Append("<postfield name=\"ordernum\" value=\"$(ordernum" + r + ")\" />");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("</go>" + this.GetLang("修改|修改|submit") + "</anchor><br/>");
    }
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/smalltypelist.aspx?siteid=" + this.siteid + "&amp;classid=0" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"title\">" + this.GetLang("修改分类|修改分类|modify class") + "</div>");
    strhtml.Append("<div class=\"tip\">");
    if (this.INFO == "MODOK")
    {
        strhtml.Append("<b>" + this.GetLang("修改成功！|修改成功！|modify successfully!") + "</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/smalltypelist.aspx?siteid=" + this.siteid + "&amp;classid=0" + "\">返回上级</a> ");
    

    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>" + this.GetLang("不能为空！|不能为空！|not null!") + "</b><br/>");

    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    if (this.INFO != "MODOK")
    {
        strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/smalltypelist_mod.aspx\" method=\"post\">");
        strhtml.Append("分类名称或图片地址:<br/>");
        strhtml.Append("<input type=\"text\" name=\"subjectname\" value=\"" + name + "\"/><br/>");
        strhtml.Append("昵称颜色:(<a href=\"" + this.http_start + "bbs/smalltypelist_color.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/smalltypelist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "") + "\">查看颜色代码</a>)<br/>");
        strhtml.Append("#<input type=\"text\" name=\"color\" size=\"6\" value=\"" + color + "\"/><br/>");
        
        strhtml.Append("购买需要RMB(0为关闭购买功能):<br/>");
        strhtml.Append("<input type=\"text\" name=\"ordernum\" value=\"" + bookVo.rank + "\" size=\"5\"/><br/>");
        
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("修改|修改|submit") + "\"/>");
        strhtml.Append("</form>");
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
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/smalltypelist.aspx?siteid=" + this.siteid + "&amp;classid=0" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");


    //输出
    Response.Write(strhtml);



}
                                                                                                                                                                               
strhtml.Append(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


