<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Log_List.aspx.cs" Inherits="KeLin.WebSite.bbs.Log_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("操作日志|操作日志|Operation log"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);


    strhtml.Append("<b>日志只保留最近一个月记录。</b><br/>----------<br/>");
   
 
    //显示列表

    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + "." + listVo[i].log_info + "<br/>操作人:<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].oper_userid + "&amp;backurl=" + "\">" + listVo[i].oper_userid + "</a><br/>");
        strhtml.Append("操作时间:"+listVo[i].oper_time+"<br/>----------<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+lpage+"" + "\">返回列表</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{
    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<b>日志只保留最近一个月记录。</b>");
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

        strhtml.Append(index + "." + listVo[i].log_info + "<br/>操作人:<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].oper_userid + "&amp;backurl=" + "\">" + listVo[i].oper_userid + "</a><br/>");
        strhtml.Append("操作时间:" + listVo[i].oper_time + "<br/>");
        strhtml.Append("</div>");
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
       // strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">返回列表</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
