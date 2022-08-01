<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LockUser_List.aspx.cs" Inherits="KeLin.WebSite.bbs.LockUser_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("黑名单列表|黑名单列表|Lock User List"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
        
    strhtml.Append("会员ID:<input type=\"text\" name=\"touserid"+r+"\" value=\"" + this.touserid + "\" size=\"5\"/>");
    strhtml.Append("栏目ID:<input type=\"text\" name=\"toclassid"+r+"\" value=\"" + this.toclassid + "\" size=\"5\"/><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "bbs/lockuser_list.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid"+r+")\" />");
    strhtml.Append("<postfield name=\"toclassid\" value=\"$(toclassid"+r+")\" />");
    strhtml.Append("<postfield name=\"id\" value=\"" + id + "\" />");
    strhtml.Append("<postfield name=\"backurlid\" value=\"" + backurlid + "\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/lockuser_list_add.aspx?action=go&amp;backurlid="+this.backurlid+"&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toclassid=" + this.toclassid + "&amp;touserid=" + this.touserid + "\">加黑</a>");
    strhtml.Append("<br/>----------<br/>");
    //显示列表

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;

        strhtml.Append(index + ".ID:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].lockuserid + "\">" + listVo[i].lockuserid + "</a>(<a href=\"" + this.http_start + "bbs/LockUser_List_del.aspx?action=go&amp;delid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurlid=" + this.backurlid + "&amp;touserid=" + this.touserid + "&amp;toclassid=" + this.toclassid + "\">解除</a>)<br/>");
        strhtml.Append("加黑天数:" + listVo[i].lockdate + "<br/>");
        strhtml.Append("开始时间:" + listVo[i].operdate + "<br/>");
        strhtml.Append("过期时间:");
        if (listVo[i].lockdate == 0)
        {
            strhtml.Append("加黑无期限！<br/>");
        }
        else
        {
            strhtml.Append(listVo[i].lockdate + "天<br/>");
        }
        strhtml.Append("限制栏目ID:" + listVo[i].classid + "<br/>");
        strhtml.Append("操作人ID:" + listVo[i].operuserid + "<br/>");
        strhtml.Append("----------<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    if (backurlid == "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id="+id+"" + "\">返回主题</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回列表</a><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_admin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + id + "" + "\">返回管理</a> ");
    }
    else if (backurlid == "1")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回版务</a> ");

    }
    else if (backurlid == "2")
    {
        strhtml.Append("<a href=\"" + this.http_start + "chat/showadmin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");

    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回列表</a><br/>");
    }


    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    Response.Write(strhtml);
    
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">"+this.GetLang("黑名单列表|黑名单列表|Lock User List")+"</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/lockuser_list.aspx\" method=\"post\">");
    strhtml.Append("会员ID:<input type=\"text\" name=\"touserid\" value=\"" + this.touserid + "\" size=\"5\"/>");
    strhtml.Append("栏目ID:<input type=\"text\" name=\"toclassid\" value=\"" + this.toclassid + "\" size=\"5\"/><br/>");
   
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"backurlid\" value=\"" + backurlid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/lockuser_list_add.aspx?action=go&amp;backurlid="+this.backurlid+"&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toclassid=" + this.toclassid + "&amp;touserid=" + this.touserid + "\">加黑</a>");
    strhtml.Append("</form></div>");
    //显示列表

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
        index = index + kk;

        strhtml.Append(index + ".ID:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].lockuserid + "\">" + listVo[i].lockuserid + "</a>(<a href=\"" + this.http_start + "bbs/LockUser_List_del.aspx?action=go&amp;delid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurlid=" + this.backurlid + "&amp;touserid=" + this.touserid + "&amp;toclassid=" + this.toclassid + "\">解除</a>)<br/>");
        strhtml.Append("加黑天数:" + listVo[i].lockdate + "<br/>");
        strhtml.Append("开始时间:" + listVo[i].operdate + "<br/>");
        strhtml.Append("过期时间:");
        if (listVo[i].lockdate == 0)
        {
            strhtml.Append("加黑无期限！<br/>");
        }
        else
        {
            strhtml.Append(listVo[i].lockdate + "天<br/>");
        }
        strhtml.Append("限制栏目ID:" + listVo[i].classid + "<br/>");
        strhtml.Append("操作人ID:" + listVo[i].operuserid + "");
        
        strhtml.Append("</div>");
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    


    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    if (backurlid == "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + id + "" + "\">返回主题</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回列表</a><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_admin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + id + "" + "\">返回管理</a> ");
    }
    else if (backurlid == "1")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回版务</a> ");

    }
    else if (backurlid == "2")
    {
        strhtml.Append("<a href=\"" + this.http_start + "chat/showadmin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");

    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回列表</a><br/>");
    }


    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");

    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml,wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }

    Response.Write(strhtml);
                                                                                                                                                                           




}
                                                                                                                                                                               
strhtml.Append(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
