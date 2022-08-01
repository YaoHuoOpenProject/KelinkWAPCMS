<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List_Rank.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_List_Rank" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
//论坛专题名称
if(this.stype =="0"){
    classVo.classname = "贴子排行";
}
else if (this.stype == "1")
{
    classVo.classname = "回贴排行";
}
else if (this.stype == "2")
{
    classVo.classname = "金币排行";
}
else if (this.stype == "3")
{
    classVo.classname = "经验排行";
}
else if (this.stype == "4")
{
    classVo.classname = "人气排行";
}
else if (this.stype == "5")
{
    classVo.classname = "推荐排行";
}

Response.Write(WapTool.showTop(classVo.classname, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    if (WapTool.getArryString(classVo.smallimg, '|', 39) != "")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/rank.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">高手排行榜</a>|");
    }
    strhtml.Append("会员排行榜<br/>按");
    if (this.stype == "0")
    {
         strhtml.Append("贴子");
    }else{
         strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=0\">贴子</a>");
    }
    
    if (this.stype == "1")
    {
         strhtml.Append(".回贴");
    }else{
         strhtml.Append(".<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=1\">回贴</a>");
    } 
        
    if (this.stype == "2")
    {
         strhtml.Append("."+siteVo.sitemoneyname);
    }else{
         strhtml.Append(".<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=2\">"+siteVo.sitemoneyname+"</a>");
    } 
        
     if (this.stype == "3")
    {
         strhtml.Append(".经验");
    }else{
         strhtml.Append(".<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=3\">经验</a>");
    } 
    if (this.stype == "4")
    {
         strhtml.Append(".人气");
    }else{
         strhtml.Append(".<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=4\">人气</a>");
    }
    if (this.stype == "5")
    {
        strhtml.Append(".推荐");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=5\">推荐</a>");
    } 
    
    
  
    strhtml.Append("<br/>------------<br/>");
    //显示导航分页
    strhtml.Append(linkTOP);
    //显示列表
   
  
   
    //所有列表
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append("TOP"+index+".");

        strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a>(ID" + listVo[i].userid + ")");
        if (this.stype == "0")
        {
            strhtml.Append("，贴子(<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=0&amp;key=" + listVo[i].userid + "&amp;type=pub\">" + listVo[i].bbsCount + "</a>)");
        }
        else if (this.stype == "1")
        {
            strhtml.Append("，回贴(<a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].bbsReCount + "</a>)");
        }
        else if (this.stype == "2")
        {
            strhtml.Append("，"+siteVo.sitemoneyname+"(" + listVo[i].money + ")");
        }
        else if (this.stype == "3")
        {
            strhtml.Append("，经验(" + listVo[i].expr + ")");
      
        }
        else if (this.stype == "4")
        {
            strhtml.Append("，空间人气(" + listVo[i].zoneCount + ")");
        }
        else if (this.stype == "5")
        {
            strhtml.Append("，已推荐" + listVo[i].TJCount + "个会员");
        }
        strhtml.Append("<br/>"); 
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    strhtml.Append("------------<br/>");
    //显示导航分页
    strhtml.Append(linkURL);
    
   
   
    //导航按钮
    
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    }
    strhtml.Append(WapTool.GetVS(wmlVo));
    
    
 
    
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    string isWebHtml = this.ShowWEB_list(this.classid); //看是存在html代码
    StringBuilder strhtml_list = new StringBuilder(); //[view]UBB对应代码
    strhtml_list.Append("<div class=\"subtitle\">");
    if (WapTool.getArryString(classVo.smallimg, '|', 39) != "")
    {
        strhtml_list.Append("<a href=\"" + this.http_start + "bbs/marksix/rank.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">高手排行榜</a>|");
    }
    strhtml_list.Append("会员排行榜");
    strhtml_list.Append("</div>");
    strhtml_list.Append("<div class=\"content\">");
    strhtml_list.Append("<div class=\"linkbtn\">");
    
    if (this.stype == "0")
    {
        strhtml_list.Append("贴子");
    }
    else
    {
        strhtml_list.Append("<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=0\">贴子</a>");
    }

    if (this.stype == "1")
    {
        strhtml_list.Append("回贴");
    }
    else
    {
        strhtml_list.Append("<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=1\">回贴</a>");
    }

    if (this.stype == "2")
    {
        strhtml_list.Append(""+siteVo.sitemoneyname);
    }
    else
    {
        strhtml_list.Append("<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=2\">" + siteVo.sitemoneyname + "</a>");
    }

    if (this.stype == "3")
    {
        strhtml_list.Append("经验");
    }
    else
    {
        strhtml_list.Append("<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=3\">经验</a>");
    }
    if (this.stype == "4")
    {
        strhtml_list.Append("人气");
    }
    else
    {
        strhtml_list.Append("<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=4\">人气</a>");
    }
    if (this.stype == "5")
    {
        strhtml_list.Append("推荐");
    }
    else
    {
        strhtml_list.Append("<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=5\">推荐</a>");
    }
    strhtml_list.Append("</div>");
    strhtml_list.Append("</div>");
    //显示导航分页
    //strhtml_list.Append(linkTOP);
    
    //所有列表
    strhtml_list.Append("<!--listS-->"); 
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
        strhtml_list.Append("TOP"+index + ".");


        strhtml_list.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a>(ID" + listVo[i].userid + ")");
        if (this.stype == "0")
        {
            strhtml_list.Append("，贴子(<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid="+this.siteid+"&amp;classid=0&amp;key="+listVo[i].userid+"&amp;type=pub&amp;sid="+this.sid+"\">" + listVo[i].bbsCount + "</a>)");
        }
        else if (this.stype == "1")
        {
            strhtml_list.Append("，回贴(<a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid="+this.siteid+"&amp;classid=0&amp;touserid="+listVo[i].userid+"&amp;sid="+this.sid+"\">" + listVo[i].bbsReCount + "</a>)");
        }
        else if (this.stype == "2")
        {
            strhtml_list.Append("，" + siteVo.sitemoneyname + "(" + listVo[i].money + ")");
        }
        else if (this.stype == "3")
        {
            strhtml_list.Append("，经验(" + listVo[i].expr + ")");

        }
        else if (this.stype == "4")
        {
            strhtml_list.Append("，空间人气(" + listVo[i].zoneCount + ")");
        }
        else if (this.stype == "5")
        {
            strhtml_list.Append("，已推荐" + listVo[i].TJCount + "个会员");
        }

        strhtml_list.Append("</div>");
  
    }
    if (listVo == null)
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

    

    
    //导航按钮
   
   

    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
        strhtml.Append("</div></div>");
    }
  
   

    
    //strhtml.Append(classVo.sitedowntip);
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
