<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rizhilist_mod.aspx.cs" Inherits="KeLin.WebSite.rizhi.rizhilist_mod" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("修改内容|修改內容|content modification"), wmlVo));//显示头                                                                                                                                                                       
StringBuilder strhtml = new StringBuilder();
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("修改成功！|修改成功！|Successfully modified"));
        strhtml.Append("</b><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "rizhi/rizhilist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang(this.INFO));
        strhtml.Append("</b><br/>");

    }
    
    strhtml.Append(this.GetLang("标题|標題|Title") + "*:<br/>");
    strhtml.Append("<input type=\"text\" name=\"book_title"+r+"\" value=\""+bookVo.book_title+"\"/><br/>");
    strhtml.Append(this.GetLang("内容|內容|Content") + "*:<br/>");
    strhtml.Append("<input type=\"text\"  name=\"book_content" + r + "\" value=\"" + bookVo.book_content + "\" /><br/>");

    strhtml.Append(this.GetLang("我的分类|我的分类|Class of rizhi") + "*:<br/>");
    strhtml.Append("<select name=\"smalltypeid" + r + "\" value=\"" + bookVo.smalltype + "\">");

    strhtml.Append("<option value=\"0\">0_默认</option>");
    for (int k = 0; (smallTypeList != null && k < smallTypeList.Count); k++)
    {

        strhtml.Append("<option  value=\"" + smallTypeList[k].id + "\">" + smallTypeList[k].id + "_" + smallTypeList[k].subjectname + "</option>");

    }
    strhtml.Append("</select><br/>");
    strhtml.Append(this.GetLang("系统分类|系统分类|Class") + "*:<br/>");
    strhtml.Append("<select name=\"toclassid" + r + "\" value=\""+bookVo.book_classid+"\">");
    strhtml.Append("<option value=\"0\">0_默认</option>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        strhtml.Append("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

    }
    strhtml.Append("</select><br/>");

    strhtml.Append(this.GetLang("公开|公开|公开") + "*:");
    strhtml.Append("<select name=\"ishidden" + r + "\" value=\""+bookVo.ishidden+"\">");
    strhtml.Append("<option value=\"0\">0_是</option>");
    strhtml.Append("<option value=\"1\">1_否</option>");
    strhtml.Append("</select><br/>");  
    
    strhtml.Append(this.GetLang("缩放图地址|缩放图地址|smallimg url") + ":<br/>");
    strhtml.Append("<input type=\"text\" name=\"book_img" + r + "\" value=\"" + bookVo.book_img + "\"/><br/>");
    strhtml.Append(this.GetLang("图片地址|图片地址|img url") + ":<br/>");
    strhtml.Append("<input type=\"text\" name=\"book_file" + r + "\" value=\"" + bookVo.book_file + "\"/><br/>");
    strhtml.Append("(多个地址用|隔开)<br/>");

    strhtml.Append("<anchor><go href=\""+http_start+"rizhi/rizhilist_mod.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");
    strhtml.Append("<postfield name=\"id\" value=\""+id+"\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"page\" value=\""+page+"\"/>");
    strhtml.Append("<postfield name=\"book_title\" value=\"$(book_title"+r+")\"/>");
    strhtml.Append("<postfield name=\"book_img\" value=\"$(book_img"+r+")\"/>");
    strhtml.Append("<postfield name=\"book_file\" value=\"$(book_file" + r + ")\"/>");
    strhtml.Append("<postfield name=\"book_content\" value=\"$(book_content"+r+")\"/>");
    strhtml.Append("<postfield name=\"toclassid\" value=\"$(toclassid" + r + ")\"/>");
    strhtml.Append("<postfield name=\"smalltypeid\" value=\"$(smalltypeid" + r + ")\"/>");
    strhtml.Append("<postfield name=\"ishidden\" value=\"$(ishidden" + r + ")\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("</go>" + this.GetLang("修 改|修 改|Modify") + "</anchor><br/><br/>");


    strhtml.Append("<br/><a href=\"" + this.http_start + "rizhi/rizhilist.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;smalltypeid=" + bookVo.smalltype + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
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
        strhtml.Append(this.GetLang("修改成功！|修改成功！|Successfully modified"));
        strhtml.Append("</b><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "rizhi/rizhilist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang(this.INFO));
        strhtml.Append("</b>");

    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"go\" action=\"" + this.http_start + "rizhi/rizhilist_mod.aspx\" method=\"post\">");
    strhtml.Append(this.GetLang("标题|標題|Title") + "*:<br/>");
    strhtml.Append("<input type=\"text\" name=\"book_title\" value=\"" + bookVo.book_title + "\"/><br/>");
    strhtml.Append(this.GetLang("内容|內容|Content") + "*:<br/>");
    strhtml.Append("<input type=\"text\"  name=\"book_content\" value=\"" + bookVo.book_content + "\" /><br/>");

    strhtml.Append(this.GetLang("我的分类|我的分类|Class of rizhi") + "*:<br/>");
    strhtml.Append("<select name=\"smalltypeid\">");
    strhtml.Append("<option value=\"" + bookVo.smalltype + "\">" + bookVo.smalltype + "</option>");
    strhtml.Append("<option value=\"0\">0_默认</option>");
    for (int k = 0; (smallTypeList != null && k < smallTypeList.Count); k++)
    {

        strhtml.Append("<option  value=\"" + smallTypeList[k].id + "\">" + smallTypeList[k].id + "_" + smallTypeList[k].subjectname + "</option>");

    }
    strhtml.Append("</select><br/>");
    strhtml.Append(this.GetLang("系统分类|系统分类|Class") + "*:<br/>");
    strhtml.Append("<select name=\"toclassid\">");
    strhtml.Append("<option value=\"" + bookVo.book_classid + "\">" + bookVo.book_classid + "</option>");
    strhtml.Append("<option value=\"0\">0_默认</option>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        strhtml.Append("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

    }
    strhtml.Append("</select><br/>");

    strhtml.Append(this.GetLang("公开|公开|公开") + "*:");
    strhtml.Append("<select name=\"ishidden\">");
    strhtml.Append("<option value=\"" + bookVo.ishidden + "\">" + bookVo.ishidden + "</option>");
    strhtml.Append("<option value=\"0\">0_是</option>");
    strhtml.Append("<option value=\"1\">1_否</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append(this.GetLang("缩放图地址|缩放图地址|smallimg url") + ":<br/>");
    strhtml.Append("<input type=\"text\" name=\"book_img\" value=\"" + bookVo.book_img + "\"/><br/>");
    strhtml.Append(this.GetLang("图片地址|图片地址|img url") + ":<br/>");
    strhtml.Append("<input type=\"text\" name=\"book_file\" value=\"" + bookVo.book_file + "\"/><br/>");
    strhtml.Append("(多个地址用|隔开)<br/>");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"bt\" class=\"btn\" value=\"" + this.GetLang("修 改|修 改|Modify") + "\"/>");

    strhtml.Append("</form></div>");
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "rizhi/rizhilist.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;smalltypeid=" + bookVo.smalltype + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    strhtml.Append("</div></div>");
    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml_list));
        Response.End();
    }
    
    Response.Write(strhtml);

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


