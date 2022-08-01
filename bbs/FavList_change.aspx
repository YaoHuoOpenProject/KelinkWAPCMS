<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FavList_change.aspx.cs" Inherits="KeLin.WebSite.bbs.FavList_change" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("转移分类|轉移分类|Transfer part"), wmlVo));//显示头    
StringBuilder strhtml = new StringBuilder();                                                                                                                                                               
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("转移成功！|轉移成功！|Transfer modified"));
        strhtml.Append("</b><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/favlist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;favtypeid="+this.favtypeid+"&amp;page=" + this.page + "\">" + this.GetLang("返回原列表|返回原列表|Return to Original list") + "</a><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/favlist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;favtypeid=" + this.tofavtypeid + "&amp;page=1\">" + this.GetLang("返回转移列表|返回列表|Return to new list") + "</a><br/>");
    }
    else if(this.INFO=="NULL")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("请选择分类！|請選擇分类！|Please select the part!"));
        strhtml.Append("</b><br/>");

    }

    strhtml.Append(this.GetLang("原分类ID|原分类ID|Original classID") + ": " + this.favtypeid + "<br/>");

    strhtml.Append(this.GetLang("转移后分类|轉移後分类|Change ClassID") + "*:<br/>");
    //下拉选择
    strhtml.Append("<select name=\"tofavtypeid"+r+"\" value=\""+this.favtypeid+"\">");
    strhtml.Append("<option value=\"0\">0_系统分类所有</option>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        strhtml.Append("<option value=\""+classList[i].id + "\">" + classList[i].id + "_"+classList[i].subjectname+"</option>");
        
    }
    strhtml.Append("</select><br/>"); 
    
    strhtml.Append("<anchor><go href=\""+http_start+"bbs/favlist_change.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");
    strhtml.Append("<postfield name=\"id\" value=\""+id+"\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"page\" value=\""+page+"\"/>");
    strhtml.Append("<postfield name=\"favtypeid\" value=\"" + favtypeid + "\"/>");
    strhtml.Append("<postfield name=\"tofavtypeid\" value=\"$(tofavtypeid" + r + ")\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("</go>" + this.GetLang("确 定|確 定|sure? really") + "</anchor><br/><br/>");


    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/favlist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;favtypeid="+this.favtypeid+"&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("修改操作|修改操作|Modify operation") + "</div>");
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append(this.ERROR);

    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("转移成功！|轉移成功！|Transfer modified"));
        strhtml.Append("</b><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/favlist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;favtypeid="+this.favtypeid+"&amp;page=" + this.page + "\">" + this.GetLang("返回原列表|返回原列表|Return to Original list") + "</a><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/favlist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;favtypeid=" + this.tofavtypeid + "&amp;page=1\">" + this.GetLang("返回转移列表|返回列表|Return to new list") + "</a><br/>");
    }
    else if(this.INFO=="NULL")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("请选择分类！|請選擇分类！|Please select the part!"));
        strhtml.Append("</b>");

    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append(this.GetLang("原分类ID|原分类ID|Original classID") + ": " + this.favtypeid + "<br/>");
    strhtml.Append(this.GetLang("转移后分类|轉移後分类|Change ClassID") + "*:<br/>");
    //下拉选择
    strhtml.Append("<form name=\"go\" action=\""+this.http_start+"bbs/favlist_change.aspx\" method=\"post\">");
    strhtml.Append("<select name=\"tofavtypeid\" value=\"" + this.favtypeid + "\">");
    strhtml.Append("<option value=\"0\">0_系统分类所有</option>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        strhtml.Append("<option value=\"" + classList[i].id + "\">" + classList[i].id + "_" + classList[i].subjectname + "</option>");

    }
    strhtml.Append("</select><br/>");


    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"favtypeid\" value=\"" + favtypeid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("确 定|確 定|sure? really") + "\"/>");


    strhtml.Append("</form></div>");

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码  
  
    
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/favlist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;favtypeid="+this.favtypeid+"&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
 
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
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


