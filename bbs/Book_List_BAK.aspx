<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List_BAK.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_List_BAK" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
//论坛专题名称
if(this.stype!=""){
    classVo.classname = this.stypename + "(" + classVo.classname+")";
    
}

Response.Write(WapTool.showTop("历史数据."+classVo.classname, wmlVo));//显示头                                                                                                                                                                       
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
    
    //显示查询某人的所有贴子
    if (this.type == "pub")
    {
        if (this.CheckManagerLvl("04", "") == true)
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/Book_List_delmy.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + this.key + "\">清空(" + this.key + ")的所有贴子</a><br/>");

        }
    }
    
    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }
    //显示固定按钮
    if ((this.action == "" || this.action == "class") && this.stype == "")
    {
        strhtml.Append("历史数据.<a href=\"" + this.http_start + "bbs/book_search_bak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">搜索</a>.<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=good&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">精华</a>.<a href=\"" + this.http_start + "bbs/showTopic_bak.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">专题</a><br/>");

    }
    
    strhtml.Append("------------<br/>");
    //显示导航分页
    strhtml.Append(linkTOP);
    //显示列表
    string isBR = "";
    if (classVo.articlenum == 1)
    {
        isBR = "<br/>";
    }
  
    //置顶列表
    for (int i = 0; (listVoTop != null && i < listVoTop.Count); i++)
    {
        if (listVoTop[i].book_top == 1)
        {
            strhtml.Append("<b>[顶]</b>");
        }
        else if (listVoTop[i].book_top == 2)
        {
            strhtml.Append("<b>[总顶]</b>");
        }
        strhtml.Append("<a href=\"" + http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + listVoTop[i].book_classid + "&amp;id=" + listVoTop[i].id + "&amp;lpage=" + CurrentPage + stypelink + "" + "\">" + listVoTop[i].book_title + "</a>" + isBR + "[" + listVoTop[i].book_author + "/<a href=\"" + this.http_start + "bbs/book_re.aspx?actoin=class&amp;siteid=" + this.siteid + "&amp;classid=" + listVoTop[i].book_classid + "&amp;id=" + listVoTop[i].id + "&amp;getTotal=" + listVoTop[i].book_re + "&amp;lpage=" + this.CurrentPage + "\">" + listVoTop[i].book_re + "</a>回/" + listVoTop[i].book_click + "阅]<br/>");
    }
    //所有列表
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index+".");
        //if (action != "" && action != "class")
        //{
         //   strhtml.Append(listVo[i].classname);
        //}
        
        //if (listVo[i].book_top == 1 && this.CurrentPage==1)
        //{
        //    strhtml.Append("<b>[顶]</b>");
        //}
        if (listVo[i].book_good == 1)
        {
            strhtml.Append("<b>[精]</b>");

        }
        if (listVo[i].islock == 1)
        {
            strhtml.Append("<b>[锁]</b>");

        }
        if (listVo[i].islock == 2)
        {
            strhtml.Append("<b>[结]</b>");

        }
        if (listVo[i].sendMoney >0)
        {
            strhtml.Append("<b>[赏]</b>");

        }
        if (listVo[i].isVote > 0)
        {
            strhtml.Append("<b>[投]</b>");

        }
        if (listVo[i].isdown == 1)
        {
            strhtml.Append("<b>[附]</b>");

        }
        if (listVo[i].isdown == 2)
        {
            strhtml.Append("<b>[沉]</b>");

        }
        strhtml.Append("<a href=\"" + http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage="+CurrentPage+stypelink+"" + "\">" + listVo[i].book_title +"</a>"+isBR+"["+listVo[i].book_author+"/<a href=\""+this.http_start+"bbs/book_re.aspx?actoin=class&amp;siteid="+this.siteid+"&amp;classid="+listVo[i].book_classid+"&amp;id="+listVo[i].id+"&amp;getTotal="+listVo[i].book_re+"&amp;lpage="+this.CurrentPage+"&amp;sid="+this.sid+"\">"+listVo[i].book_re+"</a>回/"+listVo[i].book_click+"阅]<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    strhtml.Append("------------<br/>");
    //显示导航分页
    strhtml.Append(linkURL);
    
    strhtml.Append("------------<br/>");
    
    
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }
    //导航按钮
    if (action == "search")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_search_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a><br/>");
    }
    else if (action == "good" && this.classid!="0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=good&amp;siteid=" + siteid + "&amp;classid=0" + "\">全部精华</a><br/>");
   
    }
    
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
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
    
    string isWebHtml = this.ShowWEB_list(this.classid); //看是存在html代码
    StringBuilder strhtml_list = new StringBuilder(); //[view]UBB对应代码

    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<div class=\"logo\"><img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/></div>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce );
    }
    
    //显示查询某人的所有贴子
    if (this.type == "pub")
    {
        if (this.IsUserManager(this.userid, userVo.managerlvl, ""))
        {
            strhtml.Append("<div class=\"tip\"><a href=\"" + this.http_start + "bbs/Book_List_delmy.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + this.key + "\">清空(" + this.key + ")的所有贴子</a></div>");

        }
    }
    
    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
    //显示固定按钮
    if ((this.action == "" || this.action == "class") && this.stype == "")
    {
        strhtml_list.Append("<div class=\"subtitle\">历史数据.<a href=\"" + this.http_start + "bbs/book_search_bak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">搜索</a>.<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=good&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">精华</a>.<a href=\"" + this.http_start + "bbs/showTopic_bak.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">专题</a></div>");

    }

    
    //显示导航分页
    strhtml_list.Append(linkTOP);
    //显示列表
    string isBR = "";
    if (classVo.articlenum == 1)
    {
        isBR = "<br/>";
    }

    //置顶列表
    for (int i = 0; (listVoTop != null && i < listVoTop.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml_list.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml_list.Append("<div class=\"line2\">");
        }
        if (listVoTop[i].book_top == 1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/ding.gif\" alt=\"顶\"/>");
        }
        else if (listVoTop[i].book_top == 2)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/top.gif\" alt=\"总顶\"/>");
        }
        strhtml_list.Append("<a href=\"" + http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + listVoTop[i].book_classid + "&amp;id=" + listVoTop[i].id + "&amp;lpage=" + CurrentPage + stypelink + "" + "\">" + listVoTop[i].book_title + "</a>" + isBR + "[" + listVoTop[i].book_author + "/<a href=\"" + this.http_start + "bbs/book_re.aspx?actoin=class&amp;siteid=" + this.siteid + "&amp;classid=" + listVoTop[i].book_classid + "&amp;id=" + listVoTop[i].id + "&amp;getTotal=" + listVoTop[i].book_re + "&amp;lpage=" + this.CurrentPage + "\">" + listVoTop[i].book_re + "</a>回/" + listVoTop[i].book_click + "阅]</div>");
    }
    //所有列表
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml_list.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml_list.Append("<div class=\"line2\">");
        }
        
        index = index + kk;
        strhtml_list.Append(index + ".");
        
        //if (action != "" && action != "class")
        //{
        //   strhtml.Append(listVo[i].classname);
        //}

        //if (listVo[i].book_top == 1 && this.CurrentPage == 1)
        //{
        //    strhtml.Append("<img src=\""+this.http_start+"NetImages/ding.gif\" alt=\"顶\"/>");
        //}
        if (listVo[i].book_good == 1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/jing.gif\" alt=\"精\"/>");

        }
        if (listVo[i].islock == 1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/suo.gif\" alt=\"锁\"/>");

        }
        if (listVo[i].islock == 2)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/jie.gif\" alt=\"结\"/>");

        }
        if (listVo[i].sendMoney > 0)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/shang.gif\" alt=\"赏\"/>");

        }
        if (listVo[i].isVote > 0)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/tuo.gif\" alt=\"投\"/>");

        }
        if (listVo[i].isdown ==1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/file.gif\" alt=\"附\"/>");

        }
        if (listVo[i].isdown == 2)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/d.gif\" alt=\"沉\"/>");

        }

        strhtml_list.Append("<a href=\"" + http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + CurrentPage + stypelink + "" + "\">" + listVo[i].book_title + "</a>" + isBR + "[" + listVo[i].book_author + "/<a href=\"" + this.http_start + "bbs/book_re.aspx?actoin=class&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;getTotal=" + listVo[i].book_re + "&amp;lpage=" + this.CurrentPage + "\">" + listVo[i].book_re + "</a>回/" + listVo[i].book_click + "阅]</div>");
    }
    if (listVo == null)
    {
        strhtml_list.Append("<div class=\"tip\">暂无记录！</div>");
    }
    
    
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
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_search_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a></div></div>");
    }
    else if (action == "good" && this.classid != "0")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=good&amp;siteid=" + siteid + "&amp;classid=0" + "\">全部精华</a></div></div>");

    }

    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
        strhtml.Append("</div></div>");
    }
    

    
    strhtml.Append(classVo.sitedowntip);
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
