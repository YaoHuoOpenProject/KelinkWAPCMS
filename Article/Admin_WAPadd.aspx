<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd.aspx.cs" Inherits="KeLin.WebSite.article.admin_WAPadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("新增内容|新增內容|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.whickOK);
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "article/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.toclassid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }

    num = 1;
    //选择栏目
    Response.Write("<select name=\"toclassid" + r + "\" value=\"" + this.classid + "\">");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

    }
    Response.Write("</select><br/>"); 
    

    for (int i = 0; i < this.num; i++)
    {
        Response.Write("----- "+(i+1)+" -------<br/>");
        Response.Write(this.GetLang("标题|標題|Title") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"book_title" + r + "\" value=\"\"/><br/>");
        Response.Write(this.GetLang("作者|作者|Author") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"book_author" + r + "\" value=\"\"/><br/>");
        Response.Write(this.GetLang("来源|來源|Source") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"book_pub" + r + "\" value=\"\"/><br/>");
        Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
        Response.Write("<input type=\"text\"  name=\"book_content" + r + "\" value=\"\" /><br/>");
        
    }
    
    
    
    Response.Write("<anchor><go href=\""+http_start+"article/admin_WAPadd.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"id\" value=\""+id+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");
    Response.Write("<postfield name=\"toclassid\" value=\"$(toclassid" + r + ")\"/>");
    Response.Write("<postfield name=\"book_title\" value=\"$(book_title"+r+")\"/>");
    Response.Write("<postfield name=\"book_author\" value=\"$(book_author"+r+")\"/>");
    Response.Write("<postfield name=\"book_pub\" value=\"$(book_pub"+r+")\"/>");	
    Response.Write("<postfield name=\"book_content\" value=\"$(book_content"+r+")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("新 增|新 增|Add") + "</anchor><br/><br/>");
    Response.Write("技巧:内容后面放[next]强制不分页。支持[buyrmb=币数]内容[/buyrmb]，电脑WEB后台新增和修改，有所见即所得的内容编辑器。<br/>");

    Response.Write("<a href=\"" + this.http_start + "article/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    //Response.Write(this.GetLang("说明:WAP1.0不支持批量上传，请进入WAP2.0页面批量操作！|說明:WAP1.0不支持批量上傳，請進入WAP2.0頁面批量操作！|Description: WAP1.0 does not support batch uploading, go to page WAP2.0 batch operations!") + "<br/>");
    Response.Write("<a href=\"" + this.http_start + "article/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-"+this.width+"\">" + this.GetLang("WAP2.0界面可批量上传|WAP2.0界面可批量上传|WAP2.0 interface") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("新增操作|新增操作|Add operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.whickOK);
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "article/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.toclassid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    }

    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    //选多少个
    Response.Write("<form name=\"g1\" action=\"" + http_start + "article/admin_WAPadd.aspx\" method=\"get\">");
    Response.Write(this.GetLang("选择|選擇|Select") + " <input type=\"text\" name=\"num\" value=\"" + this.num + "\" size=\"2\"/>");   
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"go\"/>");
    Response.Write("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write(" <input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定|确定|GO") + "\"/></form>");
    Response.Write("<br/><br/>");
 
    
    //选择栏目
    Response.Write("<form name=\"gt\" action=\"" + http_start + "article/admin_WAPadd.aspx\" method=\"post\">");
    Response.Write("<select name=\"toclassid\" value=\"" + this.classid + "\">");
    Response.Write("<option value=\"" + this.classid + "\">" + this.classid + "</option>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

    }
    Response.Write("</select><br/>");

    
    
    for (int i = 0; i < this.num; i++)
    {
        Response.Write("----- " + (i + 1) + " -------<br/>");
        Response.Write(this.GetLang("标题|標題|Title") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"book_title\" value=\"\"/><br/>");
        Response.Write(this.GetLang("作者|作者|Author") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"book_author\" value=\"\"/><br/>");
        Response.Write(this.GetLang("来源|來源|Source") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"book_pub\" value=\"\"/><br/>");
        Response.Write("缩放图http://开头:<br/>");
        Response.Write("<input type=\"text\" name=\"book_img\" value=\"\"/><br/>");
        Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
        Response.Write("<textarea name=\"book_content\" rows=\"5\" style=\"width:100%\"></textarea><br/>");
        

    }



    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("新 增|新 增|Add") + "\"/></form>");
    Response.Write("</div>");

    Response.Write("<div class=\"tip\">技巧:内容后面放[next]强制不分页。支持[buyrmb=币数]内容[/buyrmb]，电脑WEB后台新增和修改，有所见即所得的内容编辑器。</div>");

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "article/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


