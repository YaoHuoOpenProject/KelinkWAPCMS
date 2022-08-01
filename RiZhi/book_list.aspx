<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_list.aspx.cs" Inherits="KeLin.WebSite.rizhi.book_list" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/><br/>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce + "<br/>");
    }
    
    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }
    strhtml.Append("<select name=\"sort\" value=\"" + this.classid + "\">");
    strhtml.Append("<option value=\"0\" onpick=\"" + http_start + "rizhi/book_list.aspx?classid=0&amp;siteid=" + this.siteid + "\">所有</option>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {
        strhtml.Append("<option value=\"" + classList[i].classid + "\" onpick=\"" + http_start + "rizhi/book_list.aspx?classid=" + classList[i].classid + "&amp;siteid=" + this.siteid + "\">" + classList[i].classname + "</option>");
    }
    strhtml.Append("</select>");

    strhtml.Append("-发表<a href=\"" + this.http_start + "rizhi/admin_WAPaddWB.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">微博</a>/<a href=\"" + this.http_start + "rizhi/admin_WAPadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">日志</a><br/>");
    
    //显示列表
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (this.action == "hot")
        {
            book_click = "("+listVo[i].book_click.ToString()+")";
        }

        strhtml.Append(index + ".[");
        strhtml.Append(listVo[i].classname.Replace("已删除或默认ID=0", "默认")+"]");
        if (listVo[i].book_type == 0)
        {
            strhtml.Append("微.");
        }
        strhtml.Append("<a href=\"" + http_start + "rizhi/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + CurrentPage + "" + "\">" + listVo[i].book_title + book_click + "</a><br/>");
        if (listVo[i].book_img !="") strhtml.Append("<img src=\"" + this.http_start + "rizhi/" + listVo[i].book_img + "\" alt=\"load...\"/><br/>");
        strhtml.Append(listVo[i].book_author + "发表于" + string.Format("{0:MM-dd HH:mm}", listVo[i].book_date) + "<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }
    //导航按钮
    if (action == "search")
    {
        strhtml.Append("<a href=\"" + this.http_start + "rizhi/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    if (classVo.sitedowntip != "")
    {
        strhtml.Append("<br/>" + classVo.sitedowntip);
    }
    Response.Write(ERROR);  
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{



    

    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<div class=\"logo\"><img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/></div>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce);
    }

    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }


    strhtml.Append("<!--web-->"); 
    strhtml.Append("<div class=\"btBox\"><div class=\"bt3\">");
    strhtml.Append("<a href=\"" + this.http_start + "rizhi/book_list.aspx?siteid=" + this.siteid + "&amp;classid=0\">查看所有</a> ");
    
    strhtml.Append("<a href=\"" + this.http_start + "rizhi/admin_WAPaddWB.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">发表微博</a> <a href=\"" + this.http_start + "rizhi/admin_WAPadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">发表日志</a>");
    strhtml.Append("</div></div>");
    
    //显示列表
    string lpagetemp = "";
    if (this.CurrentPage > 1)
    {
        if (WapTool.ISAPI_Rewrite3_Open == "1")
        {
            lpagetemp = "?lpage=" + CurrentPage;
        }
        else
        {
            lpagetemp = "&amp;lpage=" + CurrentPage;
        }
    }
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (this.action == "hot")
        {
            book_click = "(" + listVo[i].book_click.ToString() + ")";
        }
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append("<a href=\"" + this.http_start + "rizhi/myrizhi.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + listVo[i].makerid + "&amp;backurl=" + HttpUtility.UrlEncode("rizhi/book_list.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">" + listVo[i].book_author + "</a> <span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", listVo[i].book_date) + "</span><br/>");
   
        strhtml.Append("[");
        strhtml.Append(listVo[i].classname.Replace("已删除或默认ID=0", "默认")+"]");
        if (listVo[i].book_type == 0)
        {
            strhtml.Append("微.");
        }
        if (WapTool.ISAPI_Rewrite3_Open == "1")
        {
            strhtml.Append("<a href=\"" + http_start + "rizhi-" + listVo[i].id +".html"+ lpagetemp + "\">" + listVo[i].book_title + book_click + "</a><br/>");
       
        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "rizhi/view.aspx?id=" + listVo[i].id + lpagetemp + "\">" + listVo[i].book_title + book_click + "</a><br/>");
        }
        if (listVo[i].book_img != "") strhtml.Append("<img src=\"" + this.http_start + "rizhi/" + listVo[i].book_img + "\" alt=\"load...\"/><br/>");
        strhtml.Append("</div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    
    //显示导航分页
    strhtml.Append(linkURL);

    //显示电脑版
    string isWebHtml = this.ShowWEB_list(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<!--web-->");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }

    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }
    //导航按钮
    
    if (action == "search")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "rizhi/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
        strhtml.Append("</div></div>");
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");
    if (classVo.sitedowntip != "")
    {
        strhtml.Append( classVo.sitedowntip);
    }
    Response.Write(ERROR);  
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
