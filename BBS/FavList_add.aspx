<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FavList_add.aspx.cs" Inherits="KeLin.WebSite.bbs.FavList_add" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();                                                                                                                                                             
Response.Write(WapTool.showTop(this.GetLang("添加收藏|添加收藏|add favlist"), wmlVo));//显示头                                                                                                                                                                       
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
    
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");

    if (this.INFO != "ADDOK")
    {
        //下拉选择
        strhtml.Append("<select name=\"favtypeid" + r + "\" value=\"" + this.favtypeid + "\">");
        strhtml.Append("<option value=\"0\">0_系统分类所有</option>");
        for (int i = 0; (classList != null && i < classList.Count); i++)
        {

            strhtml.Append("<option value=\"" + classList[i].id + "\">" + classList[i].id + "_" + classList[i].subjectname + "</option>");

        }
        strhtml.Append("</select><br/>"); 
        strhtml.Append("说明*:<br/>");
        strhtml.Append("<input type=\"text\" name=\"title" + r + "\" value=\"" + title + "\"/><br/>");
        strhtml.Append("地址*:<br/>");
        strhtml.Append("<input type=\"text\" name=\"url" + r + "\" value=\"" + url + "\"/><br/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "bbs/favlist_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"goadd\" />");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
        strhtml.Append("<postfield name=\"title\" value=\"$(title" + r + ")\" />");
        strhtml.Append("<postfield name=\"url\" value=\"$(url" + r + ")\" />");
        strhtml.Append("<postfield name=\"favtypeid\" value=\"$(favtypeid" + r + ")\" />");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("</go>" + this.GetLang("添加|添加|submit") + "</anchor><br/>");
    }
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/favlist.aspx?siteid="+this.siteid+"&amp;classid=0&amp;favtypeid="+this.favtypeid+"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("添加收藏|添加收藏|add favlist") + "</div>");
    if (this.INFO == "ADDOK")
    {
        strhtml.Append("<b>" + this.GetLang("添加成功！|添加成功！|add successfully!") + "</b><br/>");

    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>" + this.GetLang("不能为空！|不能为空！|not null!") + "</b><br/>");

    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    if (this.INFO != "ADDOK")
    {
        strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/favlist_add.aspx\" method=\"post\">");
        //下拉选择
        strhtml.Append("<select name=\"favtypeid\" value=\"" + this.favtypeid + "\">");
        strhtml.Append("<option value=\"0\">0_系统分类所有</option>");
        for (int i = 0; (classList != null && i < classList.Count); i++)
        {

            strhtml.Append("<option value=\"" + classList[i].id + "\">" + classList[i].id + "_" + classList[i].subjectname + "</option>");

        }
        strhtml.Append("</select><br/>");
        strhtml.Append("说明：<br/>");
        strhtml.Append("<input type=\"text\" name=\"title\" value=\"" + title + "\"/><br/>");
        strhtml.Append("地址：<br/>");
        strhtml.Append("<input type=\"text\" name=\"url\" value=\"" + url + "\"/><br/>");
        
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"goadd\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("添加|添加|submit") + "\"/>");
        strhtml.Append("</form>");
    }
    strhtml.Append("</div>");

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码  
  
    
    
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/favlist.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;favtypeid=" + this.favtypeid + "" + "\">返回上级</a> ");
   
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
    //输出
    Response.Write(strhtml);

}
                                                                                                                                                                               
strhtml.Append(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


