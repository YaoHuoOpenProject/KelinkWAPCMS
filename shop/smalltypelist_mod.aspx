<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="smalltypelist_mod.aspx.cs" Inherits="KeLin.WebSite.shop.smalltypelist_mod" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
                                                                                                                                                                    
Response.Write(WapTool.showTop(this.GetLang("修改运费|修改运费|modify class"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p align=\"left\">");
    if (this.INFO == "MODOK")
    {
        Response.Write("<b>" + this.GetLang("修改成功！|修改成功！|modify successfully!") + "</b><br/>");

    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>" + this.GetLang("不能为空！|不能为空！|not null!") + "</b><br/>");

    }
    

    if (this.INFO != "MODOK")
    {
        Response.Write("分类名称:<br/>");
        Response.Write("<input type=\"text\" name=\"subjectname" + r + "\" value=\"" + bookVo.subclassName + "\"/><br/>");
        Response.Write("价格:<br/>");
        Response.Write("<input type=\"text\" name=\"ordernum" + r + "\" value=\"" + bookVo.rank + "\" size=\"5\"/><br/>");
        Response.Write("<anchor><go href=\"" + http_start + "shop/smalltypelist_mod.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\" />");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\" />");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\" />");
        Response.Write("<postfield name=\"subjectname\" value=\"$(subjectname" + r + ")\" />");
        Response.Write("<postfield name=\"ordernum\" value=\"$(ordernum" + r + ")\" />");
        Response.Write("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\" />");
        Response.Write("</go>" + this.GetLang("修改|修改|submit") + "</anchor><br/>");
    }
    Response.Write("----------<br/>");
    Response.Write("<a href=\"" + this.http_start + "shop/smalltypelist.aspx?siteid=" + this.siteid + "&amp;classid="+this.classid+"" + "\">返回上级</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");

    //输出
   
    
}
else //2.0界面
{



    Response.Write("<div class=\"subtitle\">" + this.GetLang("修改运费|修改运费|modify class") + "</div>");
    Response.Write("<div class=\"tip\">");
    if (this.INFO == "MODOK")
    {
        Response.Write("<b>" + this.GetLang("修改成功！|修改成功！|modify successfully!") + "</b><br/>");

    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>" + this.GetLang("不能为空！|不能为空！|not null!") + "</b><br/>");

    }
    Response.Write("</div>");
    
    Response.Write("<div class=\"content\">");
    if (this.INFO != "MODOK")
    {
        Response.Write("<form name=\"f\" action=\"" + http_start + "shop/smalltypelist_mod.aspx\" method=\"post\">");
        Response.Write("分类名称:<br/>");
        Response.Write("<input type=\"text\" name=\"subjectname\" value=\"" + bookVo.subclassName + "\"/><br/>");
        Response.Write("价格:<br/>");
        Response.Write("<input type=\"text\" name=\"ordernum\" value=\"" + bookVo.rank + "\" size=\"5\"/><br/>");
        
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\" />");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\" />");
        Response.Write("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("修改|修改|submit") + "\"/>");
        Response.Write("</form>");
    }
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "shop/smalltypelist.aspx?siteid=" + this.siteid + "&amp;classid="+this.classid+"" + "\">返回上级</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
     
    Response.Write("</div></div>");

                                                                                                                                          




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


