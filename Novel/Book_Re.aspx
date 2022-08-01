<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Re.aspx.cs" Inherits="KeLin.WebSite.novel.Book_Re" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("发表成功！|发表成功！|Successfully add"));
        if (siteVo.isCheck == 1)
        {
            strhtml.Append("审核后显示！");
        }
        
        
        strhtml.Append("</b><br/>");
        if (id != "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回上级</a><br/>");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;ordertype=" + "\">返回上级</a><br/>");
        }
        
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
    strhtml.Append("文明社会，文明评论<br/>");
    strhtml.Append("<input emptyok=\"true\" name=\"con" + r + "tent\" maxlength=\"300\"/><br/>");
    strhtml.Append("<anchor><go href=\""+http_start+"novel/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"bookid\" value=\"" + bookid + "\"/>");
    strhtml.Append("<postfield name=\"id\" value=\""+id+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"lpage\" value=\""+lpage+"\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con"+r+"tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("novel/book_re.aspx?action=class&siteid="+siteid+"&classid="+classid+"&id="+id) + "\"/>");   
    strhtml.Append("</go>发表评论</anchor> ");

    strhtml.Append("<a href=\"" + http_start + "novel/book_re.aspx?bookid=" + bookid + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "&amp;lpage=" + lpage + "&amp;rnd=" + r + "" + "\">刷新</a> ");
    if(userid=="0"){
        strhtml.Append("<a href=\"" + http_start + "waplogin.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("novel/book_re.aspx?action=class&siteid=" + siteid + "&classid=" + classid + "&bookid=" + bookid + "&id=" + id) + "\">登录</a>");
    }
    strhtml.Append("<br/>");
 
    //显示列表

    kk = kk + ((CurrentPage - 1) * pageSize) -1 ;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        
        strhtml.Append("["+(total - kk) + "楼]<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + "\">" + listVo[i].nickname +"</a>("+string.Format("{0:MM-dd HH:mm}",listVo[i].addtime)+")说：<br/>"+listVo[i].book_content+"<br/>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("暂无回复记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    if (id != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回上级</a> ");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;ordertype=" + "\">返回上级</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "novel/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+lpage+"" + "\">返回列表</a> ");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<!--web-->");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("发表成功！|发表成功！|Successfully add"));
        if (siteVo.isCheck == 1)
        {
            strhtml.Append("审核后显示！");
        }


        strhtml.Append("</b> ");
        if (id != "0")
        {
            strhtml.Append("<a class=\"urlbtn\" href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回上级</a><br/>");
        }
        else
        {
            strhtml.Append("<a class=\"urlbtn\" href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;ordertype=" + "\">返回上级</a><br/>");
        }
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
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
        strhtml.Append("</div>");
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
    strhtml.Append("<div class=\"subtitle\">我要评论</div>");
    //显示输入框
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "novel/book_re.aspx\" method=\"post\">");

    strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");


    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"bookid\" value=\"" + bookid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    //strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("novel/book_re.aspx?actoin=class&siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" class=\"btn\" value=\"发表评论\"/></form> ");
   
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
        strhtml.Append("[" + (total - kk) + "楼] <a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + "\">" + listVo[i].nickname + "</a> <span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", listVo[i].addtime) + "</span><br/>" + listVo[i].book_content + "</div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无回复记录！</div>");
    }
    strhtml.Append("<!--listE-->");
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    if (id != "0")
    {
       
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回上级</a> ");
        
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "novel/book_listsect.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;bookid=" + bookid + "&amp;ordertype=" + "\">返回上级</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "novel/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">返回列表</a> ");
    strhtml.Append("</div></div>");

    

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
