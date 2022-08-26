<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.action.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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
    if (this.INFO == "DAORUNULL")
    {
       
        strhtml.Append("抱歉，站长还没有配置任务哦～");
        strhtml.Append("<br/>");

    }
    else if (this.INFO == "DAORUOK")
    {
        
        strhtml.Append("作务生成啦，快去完成哦～");
        strhtml.Append("<br/>");

    }
    else if (this.INFO == "TODAY_HAS")
    {

        strhtml.Append("今天的任务已经有啦，快去完成哦。如已完成，明天再来吧～");
        strhtml.Append("<br/>");

    }
    else if (this.INFO == "CONFIG_ERROR")
    {
        
        strhtml.Append("抱歉，站长还没有配置任务哦～");
        strhtml.Append("<br/>");

    }
    
    strhtml.Append("提示:完成" + WapTool.getArryString(siteVo.Version, '|', 36) + "个任务，送" + siteVo.sitemoneyname + WapTool.getArryString(siteVo.Version, '|', 37) + "个；送经验:" + WapTool.getArryString(siteVo.Version, '|', 38) + "个。<br/>");
    strhtml.Append("----------<br/>");
    
    //显示列表
    //strhtml.Append(linkTOP);
   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        
        strhtml.Append("任务"+index + ":"+ listVo[i].actionName +"("+listVo[i].num+"/"+listVo[i].numFinish+"),");
        if (listVo[i].state == 1)
        {
            strhtml.Append("已完成");
        }
        else
        {
            strhtml.Append("<a href=\"" + listVo[i].actionPath  + "\">去完成</a>");
            
        }

        strhtml.Append("<br/>");
    }
    if (listVo == null)
    {
        if (string.Format("{0:yyyy-MM-dd}", userVo.actionTime) == string.Format("{0:yyyy-MM-dd}", DateTime.Now) && userVo.actionState == "1")
        {
            strhtml.Append("恭喜您今天完成领任务啦，明天再来领任务吧～<br/>");

        }
        else
        {
            strhtml.Append("今天还没有领任务哦～<a href=\"" + this.http_start + "action/book_list.aspx?action=daorumy&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">点击此领任务</a>！<br/>");
        }
    }
    //显示导航分页
    strhtml.Append(linkURL);
    
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }

    if (this.IsCheckManagerLvl("|00|01|03|", classVo.adminusername) == true)
    {
        //显示管理按钮
        strhtml.Append("----------<br/>");
        strhtml.Append("<a href=\"" + this.http_start + "action/admin_userlistWAP.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">【任务管理后台】</a>");
        strhtml.Append("<br/>----------<br/>");
    }
    
    //导航按钮
    if (action == "search")
    {
        strhtml.Append("<a href=\"" + this.http_start + "action/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> <br/>");
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
    if (this.INFO == "DAORUNULL")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("抱歉，站长还没有配置任务哦～");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "DAORUOK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("任务生成啦，快去完成哦～");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "TODAY_HAS")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("今天的任务已经有啦，快去完成哦。如已完成，明天再来吧～");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "CONFIG_ERROR")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("抱歉，站长还没有配置任务哦～");
        strhtml.Append("</div>");

    }


    strhtml.Append("<div class=\"line\">");
    strhtml.Append("提示:完成" + WapTool.getArryString(siteVo.Version, '|', 36) + "个任务，送"+siteVo.sitemoneyname + WapTool.getArryString(siteVo.Version, '|', 37) + "个；送经验:" + WapTool.getArryString(siteVo.Version, '|', 38) + "个。<br/>");
    strhtml.Append("</div>");
    //显示列表
    //strhtml.Append(linkTOP);


    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (i % 2 == 0)
        {
            strhtml_list.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml_list.Append("<div class=\"line2\">");
        }
        
        strhtml_list.Append("任务"+index + ":" + listVo[i].actionName + "(" + listVo[i].num + "/" + listVo[i].numFinish + "),");
        if (listVo[i].state == 1)
        {
            strhtml_list.Append("已完成");
        }
        else
        {
            strhtml_list.Append("<a href=\"" + listVo[i].actionPath + "\">去完成</a><br/>");
        }

        strhtml_list.Append("</div>");
    }
    if (listVo == null)
    {
        if (string.Format("{0:yyyy-MM-dd}", userVo.actionTime) == string.Format("{0:yyyy-MM-dd}", DateTime.Now) && userVo.actionState == "1")
        {
            strhtml_list.Append("<div class=\"line\">恭喜您今天完成领任务啦，明天再来领任务吧～</div>");

        }
        else
        {
            strhtml_list.Append("<div class=\"line\">今天还没有领任务哦～<a href=\"" + this.http_start + "action/book_list.aspx?action=daorumy&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">点击此领任务</a>！</div>");

        }
    }
    else
    {
        strhtml_list.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml_list.Append("<a href=\"" + this.http_start + "action/user_WAPdel.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">删除我当前的任务</a>");
        strhtml_list.Append("</div></div>");
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

    if (this.IsCheckManagerLvl("|00|01|03|", classVo.adminusername) == true)
    {
     //显示管理按钮
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<a href=\"" + this.http_start + "action/admin_userlistWAP.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">【任务管理后台】</a>");
        strhtml.Append("</div>");
    }
    //导航按钮
   
    if (action == "search")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "action/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a>");
        strhtml.Append("</div></div>");
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
 
    strhtml.Append("</div>");
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
