<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPmodify.aspx.cs" Inherits="KeLin.WebSite.video.admin_WAPmodify" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("修改内容|修改內容|content modification"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("修改成功！|修改成功！|Successfully modified"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "video/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if(this.INFO!="")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang(this.INFO));
        Response.Write("</b><br/>");

    }
   
    Response.Write("<a href=\"" + this.http_start + "video/admin_wapmodify.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id="+this.id +"&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面修改|进入WAP2.0界面修改|wap2.0 add upfile") + "</a><br/>");
   
    Response.Write("<br/><a href=\"" + this.http_start + "video/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("修改操作|修改操作|Modify operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("修改成功！|修改成功！|Successfully modified"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "video/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else
    {
        Response.Write("<b>");
        Response.Write(this.GetLang(this.INFO));
        Response.Write("</b>");

    }
    Response.Write("<a href=\""+this.http_start+"video/admin_wapmodifyadd.aspx?siteid="+this.siteid+"&classid="+this.classid+"&id="+this.id+"&sid="+this.sid+"\">续传视频</a>");
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"go\" action=\"" + this.http_start + "video/admin_WAPmodify.aspx\" method=\"post\">");
    Response.Write(this.GetLang("标题|標題|Title") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"book_title\" value=\"" + bookVo.book_title + "\"/><br/>");

    Response.Write(this.GetLang("导演|导演|导演") + " :");
    Response.Write("<input type=\"text\" name=\"book_director\" value=\"" + bookVo.book_director + "\"/><br/>");


    Response.Write(this.GetLang("主演|主演|主演") + " :");
    Response.Write("<input type=\"text\" name=\"book_author\" value=\"" + bookVo.book_author + "\"/><br/>");

    Response.Write(this.GetLang("地区|地区|地区") + " :");
    Response.Write("<input type=\"text\" name=\"book_city\" value=\"" + bookVo.book_city + "\"/><br/>");

    Response.Write(this.GetLang("年份|年份|年份") + " :");
    Response.Write("<input type=\"text\" name=\"book_year\" value=\"" + bookVo.book_year + "\"/><br/>");

    Response.Write(this.GetLang("语言|语言|语言") + " :");
    Response.Write("<input type=\"text\" name=\"book_lang\" value=\"" + bookVo.book_lang + "\"/><br/>");

    Response.Write(this.GetLang("评分|评分|评分") + " :");
    Response.Write("<input type=\"text\" name=\"book_score\" value=\"" + bookVo.book_score + "\"/><br/>");

    Response.Write(this.GetLang("标签|标签|标签") + " :");
    Response.Write("<input type=\"text\" name=\"book_lable\" value=\"" + bookVo.book_lable + "\"/><br/>");
    Response.Write("(多个用空格隔开)<br/>");
    
    Response.Write("下载一次扣:");
    Response.Write("<input type=\"text\" name=\"money\" size=\"3\" value=\"" + bookVo.money + "\"/>" + siteVo.sitemoneyname + "<br/>");

    
    Response.Write(this.GetLang("详情简介|详情简介|Introduction") + "*:<br/>");
    Response.Write("<textarea name=\"book_content\" rows=\"12\" style=\"width:100%\">" + bookVo.book_content.Replace("[br]", "\r\n") + "</textarea><br/>");
    
    Response.Write("视频地址：<br/><textarea name=\"book_file\" rows=\"3\" style=\"width:100%\">"+ bookVo.book_file +"</textarea><br/>");
    Response.Write("多个文件用|区别<br/>");

    Response.Write("缩小图:<br/><input type=\"text\" name=\"book_img\" value=\"" + bookVo.book_img + "\"/><br/>");
    Response.Write("格式:<br/><input type=\"text\" name=\"book_ext\" value=\"" + bookVo.book_ext + "\"/><br/>");
    Response.Write("大小:<br/><input type=\"text\" name=\"book_size\" value=\"" + bookVo.book_size  + "\"/><br/>");
     
     
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("修 改|修 改|Modify") + "\"/>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "video/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
 
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


