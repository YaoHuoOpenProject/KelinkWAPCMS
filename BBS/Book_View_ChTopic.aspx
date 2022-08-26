<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View_ChTopic.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_View_ChTopic" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("设为专题|设为专题|bbs Topic"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("设置成功！|设置成功！|Transfer modified"));
        strhtml.Append("</b><br/>");

    }
    else if(this.INFO=="SELECT")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("请选择专题！|請選擇专题！|Please select the part!"));
        strhtml.Append("</b><br/>");

    }

    strhtml.Append(this.GetLang("原专题ID|原专题ID|Original classID") + ": " + toclassid + "<br/>");
    strhtml.Append(this.GetLang("原专题名|原专题名|Class Name") + ": " + stypename + "<br/>");
    strhtml.Append(this.GetLang("转移后专题|轉移後专题|Change ClassID") + "*:<br/>");
    //下拉选择
    strhtml.Append("<select name=\"toclassid"+r+"\" value=\""+this.toclassid+"\">");
    strhtml.Append("<option value=\"0\">0_取消专题设置</option>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        strhtml.Append("<option value=\""+classList[i].id + "\">" + classList[i].id + "_"+classList[i].subclassName+"</option>");
        
    }
    strhtml.Append("</select><br/>"); 
    
    strhtml.Append("<anchor><go href=\""+http_start+"bbs/book_view_chtopic.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");
    strhtml.Append("<postfield name=\"id\" value=\""+id+"\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"lpage\" value=\""+lpage+"\"/>");    	
    strhtml.Append("<postfield name=\"toclassid\" value=\"$(toclassid"+r+")\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("</go>" + this.GetLang("确 定|確 定|sure? really") + "</anchor><br/><br/>");

    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_admin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回管理|返回上級|Back to admin") + "</a> ");
    
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("设置专题操作|设置专题操作|Change operation") + "</div>");
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append(this.ERROR);

    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("设置成功！|设置成功！|Transfer modified"));
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a> ");
    
        strhtml.Append("</b><br/>");
        
    }
    else if (this.INFO == "SELECT")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("请选择专题！|請選擇专题！|Please select the part!"));
        strhtml.Append("</b><br/>");

    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append(this.GetLang("原专题ID|原专题ID|Original classID") + ": " + toclassid + "<br/>");
    strhtml.Append(this.GetLang("原专题名|原专题名|Class Name") + ": " + stypename + "<br/>");
    strhtml.Append(this.GetLang("转移后专题|轉移後专题|Change ClassID") + "*:<br/>");
    //下拉选择
    strhtml.Append("<form name=\"go\" action=\"book_view_chtopic.aspx\" method=\"post\">");
    strhtml.Append("<select name=\"toclassid\" value=\"" + this.toclassid + "\">");
    strhtml.Append("<option value=\"0\">0_取消专题设置</option>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        strhtml.Append("<option value=\"" + classList[i].id + "\">" + classList[i].id + "_" + classList[i].subclassName + "</option>");

    }
    strhtml.Append("</select><br/>");


    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("确 定|確 定|sure? really") + "\"/>");


    strhtml.Append("</form></div>");

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml,wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt3\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回主题|返回主题|Back to subject") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_admin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回管理|返回上級|Back to admin") + "</a> ");
    strhtml.Append("</div></div>");
    Response.Write(strhtml);
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


