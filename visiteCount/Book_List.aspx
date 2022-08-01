<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.visiteCount.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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
    strhtml.Append("<select name=\"sort\" value=\"" + action + "\">");
    strhtml.Append("<option value=\"0\" onpick=\"" + http_start + "visiteCount/book_list.aspx?action=0&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">总访问量PV</option>");
    strhtml.Append("<option value=\"1\" onpick=\"" + http_start + "visiteCount/book_list.aspx?action=1&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">总访问量UV</option>");
    //strhtml.Append("<option value=\"2\" onpick=\"" + http_start + "visiteCount/book_list.aspx?action=2&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">今年访问量</option>");
    //strhtml.Append("<option value=\"3\" onpick=\"" + http_start + "visiteCount/book_list.aspx?action=3&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">今月访问量</option>");
    //strhtml.Append("<option value=\"4\" onpick=\"" + http_start + "visiteCount/book_list.aspx?action=4&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">上月访问量</option>");
    //strhtml.Append("<option value=\"5\" onpick=\"" + http_start + "visiteCount/book_list.aspx?action=5&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">今周访问量</option>");
    //strhtml.Append("<option value=\"6\" onpick=\"" + http_start + "visiteCount/book_list.aspx?action=6&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">今天访问量</option>");
    //strhtml.Append("<option value=\"7\" onpick=\"" + http_start + "visiteCount/book_list.aspx?action=7&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">昨天访问量</option>");
    strhtml.Append("<option value=\"8\" onpick=\"" + http_start + "visiteCount/book_list.aspx?action=8&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">最近注册</option>");
    
    strhtml.Append("</select><br/>");
    
    //显示列表
    strhtml.Append(linkTOP);
    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;


        strhtml.Append(index + ".<a href=\"" + http_start + "visiteCount/book_view.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].vid + "&amp;lpage=" + CurrentPage + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + listVo[i].vtitle + "</a><br/>");
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
        strhtml.Append("<a href=\"" + this.http_start + "visiteCount/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    
    if (classVo.sitedowntip != "")
    {
        strhtml.Append("<br/>" + classVo.sitedowntip);
    }
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

    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "visiteCount/book_list.aspx\" method=\"get\">");
    strhtml.Append("<select name=\"action\">");
    strhtml.Append("<option value=\"" + action + "\">" + action + "</option>");
    strhtml.Append("<option value=\"0\">0_总访问量PV</option>");
    strhtml.Append("<option value=\"1\">1_总访问量UV</option>");
    //strhtml.Append("<option value=\"2\">2_今年访问量</option>");
    //strhtml.Append("<option value=\"3\">3_今月访问量</option>");
    //strhtml.Append("<option value=\"4\">4_上月访问量</option>");
    //strhtml.Append("<option value=\"5\">5_今周访问量</option>");
    //strhtml.Append("<option value=\"6\">6_今天访问量</option>");
    //strhtml.Append("<option value=\"7\">7_昨天访问量</option>");
    strhtml.Append("<option value=\"8\">8_最近注册</option>");
    strhtml.Append("</select>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + this.siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + this.classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + this.sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"确定\"/></form></div>");
    
    //显示列表
    strhtml.Append(linkTOP);
    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
       
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append(index + ".<a href=\"" + http_start + "visiteCount/book_view.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].vid + "&amp;lpage=" + CurrentPage + "&amp;backurl="+HttpUtility.UrlEncode(this.GetUrlQueryString())+"" + "\">" + listVo[i].vtitle +"</a></div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    
    //显示导航分页
    strhtml.Append(linkURL);

    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }
    //导航按钮
   
    if (action == "search")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "visiteCount/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
        strhtml.Append("</div></div>");
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
 
    strhtml.Append("</div></div>");
    if (classVo.sitedowntip != "")
    {
        strhtml.Append(classVo.sitedowntip);
    }
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
