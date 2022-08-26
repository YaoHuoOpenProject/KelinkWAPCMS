<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Re.aspx.cs" Inherits="KeLin.WebSite.download.Book_Re" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("查看评论|查看评论|View Reply"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("评论成功！|评论成功！|Successfully add"));
        if (siteVo.isCheck == 1)
        {
            strhtml.Append("审核后显示！");
        }


        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "download/book_view.aspx?sp="+this.sp+"&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("内容不能为空！|內容不能爲空！|The content can not be empty!"));
        strhtml.Append("</b><br/>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        strhtml.Append("<b>请不要发重复内容！</b><br/>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    //显示输入框
    strhtml.Append(this.GetLang("评分|评分|评分 ") + "*:");
    strhtml.Append("<select name=\"book_score" + r + "\" value=\"" + this.book_score + "\">");
    strhtml.Append("<option value=\"5\">★★★★★</option>");
    strhtml.Append("<option value=\"4\">★★★★</option>");
    strhtml.Append("<option value=\"3\">★★★</option>");
    strhtml.Append("<option value=\"2\">★★</option>");
    strhtml.Append("<option value=\"1\">★</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("评语*:<input type=\"text\" name=\"con" + r + "tent\" value=\"\" maxlength=\"200\"/><br/>");
    
    strhtml.Append("<anchor><go href=\"" + http_start + "download/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"id\" value=\""+id+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"lpage\" value=\""+lpage+"\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con"+r+"tent)\"/>");
    strhtml.Append("<postfield name=\"book_score\" value=\"$(book_score" + r + ")\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
    strhtml.Append("<postfield name=\"sp\" value=\"" + sp + "\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("download/book_re.aspx?sp=" + this.sp + "&action=class&siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");   
    strhtml.Append("</go>发表评论</anchor> ");

    strhtml.Append("<a href=\"" + http_start + "download/book_re.aspx?sp=" + this.sp + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "&amp;lpage=" + lpage + "&amp;rnd=" + r + "" + "\">刷新</a> ");
    if(userid=="0"){
        strhtml.Append("<a href=\"" + http_start + "waplogin.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("download/book_re.aspx?sp=" + this.sp + "&action=class&siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\">登录</a>");
    }
    strhtml.Append("<br/>");
 
    //显示列表

    kk = kk + ((CurrentPage - 1) * pageSize) -1 ;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        strhtml.Append("[" + (total - kk) + "楼]<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + "\">" + listVo[i].nickname + "</a>(" + string.Format("{0:MM-dd HH:mm}", listVo[i].redate) + ")说：<br/>" + listVo[i].content + "<br/>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("暂无评论记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("<a href=\"" + this.http_start + "download/book_view.aspx?sp=" + this.sp + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回上级</a> ");

    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("查看评论|查看评论|View Reply") + "</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("评论成功！|评论成功！|Successfully add"));
        if (siteVo.isCheck == 1)
        {
            strhtml.Append("审核后显示！");
        }


        strhtml.Append("</b> ");
        strhtml.Append("<a class=\"btn\" href=\"" + this.http_start + "download/book_view.aspx?sp=" + this.sp + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回</a><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("内容不能为空！|內容不能爲空！|The content can not be empty!"));
        strhtml.Append("</b><br/>");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<div class=\"tip\"><b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b></div>");
    }
    else if (this.INFO == "REPEAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>请不要发重复内容！</b>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b>");
        strhtml.Append("</div>");

    }
    //显示输入框
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "download/book_re.aspx\" method=\"post\">");
    strhtml.Append(this.GetLang("评分|评分|评分 ") + "*:");
    strhtml.Append("<select name=\"book_score\">");
    strhtml.Append("<option value=\"5\">★★★★★</option>");
    strhtml.Append("<option value=\"4\">★★★★</option>");
    strhtml.Append("<option value=\"3\">★★★</option>");
    strhtml.Append("<option value=\"2\">★★</option>");
    strhtml.Append("<option value=\"1\">★</option>");
    strhtml.Append("</select><br/>");
    

    strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sp\" value=\"" + sp + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("download/book_re.aspx?sp=" + this.sp + "&actoin=class&siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
    strhtml.Append("<input type=\"submit\" class=\"btn\" name=\"go\" value=\"发表评论\"/></form> ");
    //strhtml.Append("<a href=\"" + http_start + "download/book_re.aspx?sp=" + this.sp + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "&amp;lpage=" + lpage + "&amp;rnd=" + r + "" + "\">刷新</a> ");
    if (userid == "0")
    {
       // strhtml.Append("<a href=\"" + http_start + "waplogin.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("download/book_re.aspx?sp=" + this.sp + "&amp;action=class&siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\">登录</a>");
    }
    strhtml.Append("</div>");

    //显示列表

    kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    strhtml.Append("<!--listS-->"); 
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append("[" + (total - kk) + "楼] <a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + "\">" + listVo[i].nickname + "</a> ：<br/>" + listVo[i].content + "<span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", listVo[i].redate) + "</span></div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无评论记录！</div>");
    }

    strhtml.Append("<!--listE-->");
    //显示导航分页
    strhtml.Append(linkURL);

    //显示电脑版
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<div class=\"subtitle\">");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "download/book_view.aspx?sp=" + this.sp + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回上级</a> ");

    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
