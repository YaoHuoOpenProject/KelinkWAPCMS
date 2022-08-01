<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_list.aspx.cs" Inherits="KeLin.WebSite.album.book_list" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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
    strhtml.Append("<option value=\"0\" onpick=\"" + http_start + "album/book_list.aspx?classid=0&amp;siteid=" + this.siteid + "\">所有</option>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {
        strhtml.Append("<option value=\"" + classList[i].classid + "\" onpick=\"" + http_start + "album/book_list.aspx?classid=" + classList[i].classid + "&amp;siteid=" + this.siteid + "\">"+classList[i].classname+"</option>");
    }
    strhtml.Append("</select>");

    strhtml.Append("-<a href=\"" + this.http_start + "album/admin_WAPadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">我要上传</a><br/>");
    
    
    //显示列表
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (this.action == "hot")
        {
            book_click = "("+listVo[i].book_click.ToString()+")";
        }

        strhtml.Append(index + ".[" + listVo[i].classname.Replace("已删除或默认ID=0", "默认") + "]<a href=\"" + http_start + "album/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + CurrentPage + "" + "\">" + listVo[i].book_title + book_click + "</a><br/>");
        strhtml.Append("<img src=\"" + this.http_start + "album/" + listVo[i].book_img + "\" alt=\"load...\"/><br/>");
        strhtml.Append(listVo[i].book_author + "上传于" + string.Format("{0:MM-dd HH:mm}", listVo[i].book_date) + "<br/>");
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
        strhtml.Append("<a href=\"" + this.http_start + "album/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
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
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "album/book_list.aspx?siteid=" + this.siteid + "&amp;classid=0\">所有相片</a>");    
    strhtml.Append("<a href=\"" + this.http_start + "album/admin_WAPadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">我要上传</a>");
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
    
    strhtml.Append("<!--listS-->");
    string buju = "6";
    string buju_width = "130";
    string buju_height = "0";//默认例
    if (buju != "0")
    {
        System.Collections.Generic.List<KeLin.ClassManager.Model.Page_Layout_Model> pList = new System.Collections.Generic.List<KeLin.ClassManager.Model.Page_Layout_Model>();
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            KeLin.ClassManager.Model.Page_Layout_Model vo = new KeLin.ClassManager.Model.Page_Layout_Model();
            vo.title = listVo[i].book_title;
            if (buju == "6" && buju_width == "130")
            {
                if (vo.title.Length > 8)
                {
                    vo.title = vo.title.Substring(0, 8);
                }
            }
            vo.content = listVo[i].book_content;
            if (listVo[i].book_img.StartsWith("/") || listVo[i].book_img.ToLower().StartsWith("http://"))
            {
                vo.imageURL = listVo[i].book_img;
            }
            else
            {
                vo.imageURL = this.http_start + "album/" + listVo[i].book_img;
            }
            if (WapTool.ISAPI_Rewrite3_Open == "1")
            {
                vo.linkURL = http_start + "album-" + listVo[i].id + ".html" + lpagetemp;
           
            }
            else
            {
                vo.linkURL = http_start + "album/view.aspx?id=" + listVo[i].id + lpagetemp;
            }
            vo.time = listVo[i].book_date.ToString();
            pList.Add(vo);
        }
        strhtml.Append(Page_Layout.GetListLayout(pList, buju + "*" + buju_width + "*" + buju_height, wmlVo, "album"));
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
            if (i % 2 == 0)
            {
                strhtml.Append("<div class=\"line1\">");
            }
            else
            {
                strhtml.Append("<div class=\"line2\">");
            }

            if (WapTool.ISAPI_Rewrite3_Open == "1")
            {
                strhtml.Append(index + ".[" + listVo[i].classname.Replace("已删除或默认ID=0", "默认") + "]<a href=\"" + http_start + "album-" + listVo[i].id +".html"+ lpagetemp + "\">" + listVo[i].book_title + book_click + "</a><br/>");
           
            }
            else
            {
                strhtml.Append(index + ".[" + listVo[i].classname.Replace("已删除或默认ID=0", "默认") + "]<a href=\"" + http_start + "album/view.aspx?id=" + listVo[i].id + lpagetemp + "\">" + listVo[i].book_title + book_click + "</a><br/>");
            }
            strhtml.Append("<img src=\"" + this.http_start + "album/" + listVo[i].book_img + "\" alt=\"load...\"/><br/>");
            strhtml.Append(listVo[i].book_author + "上传于" + string.Format("{0:MM-dd HH:mm}", listVo[i].book_date) + "</div>");
        }

    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    strhtml.Append("<!--listE-->"); 
    //显示导航分页
    strhtml.Append(linkURL);

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
        strhtml.Append("<a href=\"" + this.http_start + "album/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
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
