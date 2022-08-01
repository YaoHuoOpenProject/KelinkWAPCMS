<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_list_log.aspx.cs" Inherits="KeLin.WebSite.bbs.book_list_log" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(whos+"最近动态", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    if (this.action == "friends")
    {
        strhtml.Append("好友动态");
    }
    else
    {
        strhtml.Append("<a href=\"" + http_start + "bbs/book_list_log.aspx?action=friends&amp;siteid=" + siteid + "&amp;classid=0&amp;touserid=" + this.touserid + "" + "\">好友动态</a>");

    }
    strhtml.Append(".");
    if (this.action == "my")
    {
        strhtml.Append(whos+"动态");
    }
    else
    {

        strhtml.Append("<a href=\"" + http_start + "bbs/book_list_log.aspx?action=my&amp;siteid=" + siteid + "&amp;classid=0&amp;touserid=" + this.touserid + "" + "\">"+whos+"动态</a>");

    }
    strhtml.Append("<br/>");
        //显示列表
    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        //strhtml.Append(index + ".");  
        if (action == "friends")
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].oper_userid + "\">" + listVo[i].oper_nickname + "</a>于");
        }
        else
        {
            strhtml.Append("*");
        }
        strhtml.Append(WapTool.DateToString(listVo[i].oper_time,lang,1) + "前" +listVo[i].log_info.Replace("[sid]",this.sid) + "<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无动态！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    
   
    
    //导航按钮
    strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + this.touserid + "" + "\">返回上级</a> "); 
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    Response.Write(ERROR);  
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">");
    if (this.action == "friends")
    {
        strhtml.Append("好友动态");
    }
    else
    {
        strhtml.Append("<a href=\"" + http_start + "bbs/book_list_log.aspx?action=friends&amp;siteid=" + siteid + "&amp;classid=0&amp;touserid=" + this.touserid + "" + "\">好友动态</a>");

    }
    strhtml.Append(".");
    if (this.action == "my")
    {
        strhtml.Append(whos + "动态");
    }
    else
    {

        strhtml.Append("<a href=\"" + http_start + "bbs/book_list_log.aspx?action=my&amp;siteid=" + siteid + "&amp;classid=0&amp;touserid=" + this.touserid + "" + "\">" + whos + "动态</a>");

    }
    strhtml.Append("</div>");
    //显示列表
   
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

        //strhtml.Append(index + ".");
        
        if (action == "friends")
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].oper_userid + "\">" + listVo[i].oper_nickname + "</a>于");
        }
        else
        {
            strhtml.Append("*");
        }
        strhtml.Append(WapTool.DateToString(listVo[i].oper_time, lang,1) + "前" + listVo[i].log_info.Replace("[sid]", this.sid) + "</div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无动态！</div>");
    }
    
    //显示导航分页
    strhtml.Append(linkURL);


    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + this.touserid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");

    Response.Write(ERROR);  
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
