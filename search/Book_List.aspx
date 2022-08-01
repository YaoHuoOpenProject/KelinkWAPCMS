<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.search.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
                                                                                                                                                                    
                                                                                                                                                                               
Response.Write(WapTool.showTop(this.GetLang("会员查询|会员查询|user list"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");

   
        strhtml.Append("会员ID:<input type=\"text\" name=\"touserid\" value=\"" + touserid + "\" size=\"5\"/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "search/book_list.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"class\" />");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
        strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid)\" />");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor><br/>");
        
    
    strhtml.Append("---------<br/>");
    strhtml.Append(linkTOP);
    //显示列表
    string YesOrNo = "";
    //string links = this.GetUrlQueryString();
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");
        if (isadmin == true)
        {
            strhtml.Append("[<a href=\"" + http_start + "search/toManager.aspx?siteid="+this.siteid+"&amp;touserid="+listVo[i].userid+"&amp;backurl="+HttpUtility.UrlEncode(backurl)+"&amp;page="+this.CurrentPage+"&amp;sid="+this.sid+"\">管理</a>]");
        }
        strhtml.Append("<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">" + listVo[i].nickname + "(" + listVo[i].userid + ")</a>");
        if (listVo[i].city != "")
        {
            strhtml.Append("来自" + listVo[i].city);
        }
        if (listVo[i].isonline == "1")
        {
            strhtml.Append("[在线]");
        }
        else
        {
            strhtml.Append("[离线]");
        }
        strhtml.Append("<br/>");
        if (listVo[i].sex == 1)
        {
            strhtml.Append("男 ");
        }
        else
        {
            strhtml.Append("女 ");
        }

        strhtml.Append("经验:" + listVo[i].expr + " 币:" + listVo[i].money + "<br/>");
        strhtml.Append(WapTool.GetHeadImgHTML(http_start, listVo[i].headimg) + "<br/>");
        
        strhtml.Append("<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("没有记录<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);


    
    
    strhtml.Append("<a href=\"" + this.http_start + "search/book_search.aspx?siteid=" + siteid + "&amp;classid="+this.classid+"&amp;backurl="+HttpUtility.UrlEncode(backurl)+"" + "\">返回搜索</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml.ToString());
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("会员查询|会员查询|user list") + "</div>");

    strhtml.Append("<div class=\"content\">");
    
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "search/book_list.aspx\" method=\"get\">");
    strhtml.Append("会员ID:<input type=\"text\" name=\"touserid\" value=\"" + touserid + "\" size=\"5\"/>");


    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");


    strhtml.Append("</form></div>");
    //strhtml.Append(linkTOP);
    //显示列表
    string YesOrNo = "";
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
        index = index + kk;
        strhtml.Append(index + ".");
        if (isadmin == true)
        {
            strhtml.Append("[<a href=\"" + http_start + "search/toManager.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;page=" + this.CurrentPage + "\">管理</a>]");
        }
        strhtml.Append("<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">" + listVo[i].nickname + "(" + listVo[i].userid + ")</a>");
        if (listVo[i].city != "")
        {
            strhtml.Append("来自" + listVo[i].city);
        }
        if (listVo[i].isonline == "1")
        {
            strhtml.Append("[在线]");
        }
        else
        {
            strhtml.Append("[离线]");
        }
        strhtml.Append("<br/>");
        if (listVo[i].sex  == 1)
        {
            strhtml.Append("男 ");
        }
        else
        {
            strhtml.Append("女 ");
        }

        strhtml.Append("经验:" + listVo[i].expr + " 币:" + listVo[i].money + "<br/>");
        strhtml.Append(WapTool.GetHeadImgHTML(http_start, listVo[i].headimg).Replace("alt", "width=\"100\" height=\"100\" alt") + "");

        strhtml.Append("</div>");
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">没有记录</div>");
    }
    strhtml.Append("<!--listE-->");
    //显示导航分页
    strhtml.Append(linkURL);

    string isWebHtml = this.ShowWEB_list(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\"><a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a></div></div>");
   
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "search/book_search.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">返回搜索</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");


    Response.Write(strhtml.ToString());


}

Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


