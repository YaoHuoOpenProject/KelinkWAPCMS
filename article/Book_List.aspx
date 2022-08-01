<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.article.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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
    string lpagetemp = "";
    if (this.CurrentPage > 1)
    {
        lpagetemp = "&amp;lpage=" + CurrentPage;
    }
    
    //显示列表
    strhtml.Append(linkTOP);
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (this.action == "hot")
        {
            book_click = "("+listVo[i].book_click.ToString()+")";
        }
        if (showAuthor == "1" && listVo[i].book_author!="")
        {
            book_click = "("+listVo[i].book_author+")" + book_click;
        }
        string tempstr = "";
        if (action == "search")
        {
            tempstr = "[" + listVo[i].classname + "]";
        }
        strhtml.Append(index + "." + tempstr + "<a href=\"" + http_start + "article/view.aspx?id=" + listVo[i].id + lpagetemp + "\">" + listVo[i].book_title + book_click + "</a><br/>");
        book_click = "";
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
        strhtml.Append("<a href=\"" + this.http_start + "article/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> <br/>");
    }
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a>-");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    }
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

    string isWebHtml = this.ShowWEB_list(this.classid ); //看是存在html代码
    StringBuilder strhtml_list = new StringBuilder(); //[view]UBB对应代码

    

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
    //strhtml.Append(linkTOP);
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
    
    strhtml_list.Append("<!--listS-->"); 
    if (buju != "0")
    {
        System.Collections.Generic.List<KeLin.ClassManager.Model.Page_Layout_Model> pList = new System.Collections.Generic.List<KeLin.ClassManager.Model.Page_Layout_Model>();
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            KeLin.ClassManager.Model.Page_Layout_Model vo = new KeLin.ClassManager.Model.Page_Layout_Model();
            vo.title = listVo[i].book_title;
            vo.content = listVo[i].book_content;
            if (listVo[i].book_img.StartsWith("/") || listVo[i].book_img.ToLower().StartsWith("http://"))
            {
                vo.imageURL = listVo[i].book_img;
            }
            else
            {
                vo.imageURL = this.http_start + "article/" + listVo[i].book_img;
            }
            if (WapTool.ISAPI_Rewrite3_Open == "1")
            {
                vo.linkURL = http_start + "article-" + listVo[i].id + ".html" + lpagetemp;
           
            }
            else
            {
                vo.linkURL = http_start + "article/view.aspx?id=" + listVo[i].id + lpagetemp;
            }

            vo.time = listVo[i].book_date.ToString(WapTool.getArryString(classVo.smallimg, '|', 23));
            pList.Add(vo);            
        }
        strhtml_list.Append(Page_Layout.GetListLayout(pList,buju+"*"+buju_width+"*"+buju_height,wmlVo,"aritcle"));
    }
    else
    {

        string book_click = "";
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            index = index + kk;
            if (this.action == "hot")
            {
                book_click = "(" + listVo[i].book_click.ToString() + ")";
            }
            if (showAuthor == "1" && listVo[i].book_author != "")
            {
                book_click = "(" + listVo[i].book_author + ")" + book_click;
            }

            if (i % 2 == 0)
            {
                strhtml_list.Append("<div class=\"line1\">");
            }
            else
            {
                strhtml_list.Append("<div class=\"line2\">");
            }
            string tempstr = "";
            if (action == "search")
            {
                tempstr = "[" + listVo[i].classname + "]";
            }
            //index + "." +
            if (WapTool.ISAPI_Rewrite3_Open == "1")
            {
                strhtml_list.Append(tempstr + "<a href=\"" + http_start + "article-" + listVo[i].id +".html"+ lpagetemp + "\">" + listVo[i].book_title + book_click + "</a></div>");
           
            }
            else
            {
                strhtml_list.Append(tempstr + "<a href=\"" + http_start + "article/view.aspx?id=" + listVo[i].id + lpagetemp + "\">" + listVo[i].book_title + book_click + "</a></div>");
            }
            book_click = "";
        }

    }
    

    if (listVo==null)
    {
        strhtml_list.Append("<div class=\"tip\">暂无记录！</div>");
    }
    strhtml_list.Append("<!--listE-->");

   
    //显示导航分页
    
        strhtml_list.Append(linkURL);
   

    if (isWebHtml == "")
    {
        strhtml.Append(strhtml_list);

    }
    else  //显示电脑html
    {
        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list.ToString()), wmlVo));
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
        strhtml.Append("<a href=\"" + this.http_start + "article/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
        strhtml.Append("</div></div>");
    }
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        if (WapTool.ISAPI_Rewrite3_Open == "1")
        {
            strhtml.Append("<a href=\"" + this.http_start + "wapindex-" + siteid + "-" + classVo.childid + ".html" + "\">返回上级</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "wapindex-" + siteid + "-0.html" + "\">返回首页</a>");
       
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
        }
        strhtml.Append("</div></div>");
    }

    
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
