<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.airplane.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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
    strhtml.Append("<a href=\"" + http_start + "airplane/book_re.aspx?lpage=" + this.CurrentPage + "&amp;id=0&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我的订单</a><br/>");
    //显示列表
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");
        if (listVo[i].istop == 1)
        {
            strhtml.Append("<b>[顶]</b>");

        }
        if (listVo[i].isgood == 1)
        {
            strhtml.Append("<b>[精]</b>");

        }
        if (this.action == "hot")
        {
            book_click = "("+listVo[i].hits.ToString()+")";
        }

        strhtml.Append("<a href=\"" + http_start + "airplane/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + CurrentPage + "" + "\">" + listVo[i].planeltd +"["+listVo[i].planeNum+"]"+ book_click + "</a><br/>");
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
        strhtml.Append("<a href=\"" + this.http_start + "airplane/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
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
    //显示列表
    string lpagetemp = "";
    if (this.CurrentPage > 1)
    {
        lpagetemp = "&amp;lpage=" + CurrentPage;
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\"><a href=\"" + http_start + "airplane/book_re.aspx?lpage=" + this.CurrentPage + "&amp;id=0&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我的订单</a></div></div>");
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (this.action == "hot")
        {
            book_click = "(" + listVo[i].hits.ToString() + ")";
        }
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        //strhtml.Append(index + ".");
        if (listVo[i].istop == 1)
        {
            strhtml.Append("<img src=\"" + this.http_start + "NetImages/ding.gif\" alt=\"顶\"/>");

        }
        if (listVo[i].isgood == 1)
        {
            strhtml.Append("<img src=\"" + this.http_start + "NetImages/jing.gif\" alt=\"精\"/>");

        }
        strhtml.Append("<a href=\"" + http_start + "airplane/view.aspx?id=" + listVo[i].id + lpagetemp + "\">" + listVo[i].planeltd + "[" + listVo[i].planeNum + "]" + book_click + "</a></div>");
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
        strhtml.Append("<a href=\"" + this.http_start + "airplane/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
        strhtml.Append("</div></div>");
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
