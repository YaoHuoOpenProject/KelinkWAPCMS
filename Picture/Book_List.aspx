<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_list.aspx.cs" Inherits="KeLin.WebSite.picture.book_list" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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

    
        //显示列表
        string book_click = "";
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            index = index + kk;
            if (this.action == "hot")
            {
                book_click = "(" + listVo[i].book_click.ToString() + ")";
            }
            string tempstr = "";
            if (action == "search")
            {
                tempstr = "[" + listVo[i].classname + "]";
            }
            strhtml.Append(index + "." + tempstr + "<a href=\"" + http_start + "picture/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + CurrentPage + "" + "\">" + listVo[i].book_title + book_click + "</a><br/>");

            if (listVo[i].book_img != "" && showimg == "0")
            {
                if (listVo[i].book_img.StartsWith("/") || listVo[i].book_img.ToLower().StartsWith("http://"))
                {
                    strhtml.Append("<img src=\"" + listVo[i].book_img + "\" alt=\"load...\"/><br/>");
                }
                else
                {
                    strhtml.Append("<img src=\"" + this.http_start + "picture/" + listVo[i].book_img + "\" alt=\"load...\"/><br/>");
                }
            }
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
        strhtml.Append("<a href=\"" + this.http_start + "picture/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a><br/>");
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
    Response.Write(ERROR);  
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    string isWebHtml = this.ShowWEB_list(this.classid); //看是存在html代码
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
            if (buju == "6" && buju_width =="130")
            {
                if (vo.title.Length > 8)
                {
                    vo.title = vo.title.Substring(0, 8);
                }
            }
            vo.content = listVo[i].book_content;
            
            if (listVo[i].book_img.StartsWith("/") || listVo[i].book_img.ToLower().StartsWith("http://"))
            {
                vo.imageURL = listVo[i].book_img  ;
            }
            else
            {
                vo.imageURL =  this.http_start + "picture/" + listVo[i].book_img  ;
            }
           
            
            if (WapTool.ISAPI_Rewrite3_Open == "1")
            {
                vo.linkURL = http_start + "picture-" + listVo[i].id +".html"+ lpagetemp;
            
            }
            else
            {
                vo.linkURL = http_start + "picture/view.aspx?id=" + listVo[i].id + lpagetemp;
            }
            vo.time = listVo[i].book_date.ToString();
            pList.Add(vo);
        }
        strhtml_list.Append(Page_Layout.GetListLayout(pList, buju + "*" + buju_width + "*" + buju_height, wmlVo, "picture"));
    }
    else
    {
        //显示列表
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
            if (WapTool.ISAPI_Rewrite3_Open == "1")
            {
                strhtml_list.Append(tempstr + "<a href=\"" + http_start + "picture-" + listVo[i].id +".html"+ lpagetemp + "\">" + listVo[i].book_title + book_click + "");
            
            }
            else
            {
                strhtml_list.Append(tempstr + "<a href=\"" + http_start + "picture/view.aspx?id=" + listVo[i].id + lpagetemp + "\">" + listVo[i].book_title + book_click + "");
            }
            if (listVo[i].book_img != "" && showimg == "0")
            {
                if (listVo[i].book_img.StartsWith("/") || listVo[i].book_img.ToLower().StartsWith("http://"))
                {
                    strhtml_list.Append("<br/><img src=\"" + listVo[i].book_img + "\" alt=\"load...\"/>");
                }
                else
                {
                    strhtml_list.Append("<br/><img src=\"" + this.http_start + "picture/" + listVo[i].book_img + "\" alt=\"load...\"/>");
                }
            }
            strhtml_list.Append("</a></div>");
        }
    }

    if (listVo==null)
    {
        strhtml_list.Append("<div class=\"tip\">暂无记录！</div>");
    }
    strhtml_list.Append("<!--listE-->");
    
    //显示导航分页
    strhtml_list.Append(linkURL);

    

    //显示电脑版
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
        strhtml.Append(adVo.secondShowDown);
    }
    
    //导航按钮
    
    if (action == "search")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "picture/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a><br/>");
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
        strhtml.Append( classVo.sitedowntip);
    }
    Response.Write(ERROR);  
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
