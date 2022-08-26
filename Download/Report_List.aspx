<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report_List.aspx.cs" Inherits="KeLin.WebSite.download.Report_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("报错管理|舉報管理|Report Management"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        strhtml.Append("<a href=\""+this.http_start+"download/Report_List.aspx?action=class&amp;siteid="+this.siteid+"&amp;classid=0&amp;sid="+this.sid+"\">查看所有报错</a>-<a href=\""+this.http_start+"download/Report_List_del.aspx?action=go&amp;siteid="+this.siteid+"&amp;classid=0&amp;id=0&amp;sid="+this.sid+"\">删除所有</a><br/>");
    }
   
 
    //显示列表    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + "." + listVo[i].addtime + "<br/>报错人:<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + "\">" + listVo[i].nickname + "(ID:"+listVo[i].userid+")</a><br/><a href=\""+http_start+"download/book_view.aspx?siteid="+this.siteid+"&amp;classid="+listVo[i].classid+"&amp;id="+listVo[i].bbsid+"&amp;sid="+this.sid+"\">查看(ID:"+listVo[i].bbsid+" 栏目ID:"+listVo[i].classid+")</a><br/>");
        strhtml.Append("报错类型:"+listVo[i].ReportType+"<br/>");
        strhtml.Append("其它:" + listVo[i].ReportWhy + "<br/>");
        strhtml.Append("操作:<a href=\"" + this.http_start + "download/Report_List_del.aspx?action=go&amp;id="+listVo[i].id+"&amp;siteid=" + this.siteid + "&amp;classid="+listVo[i].classid+"&amp;page="+this.CurrentPage+"\">删除此报错</a><br/>----------<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    
    strhtml.Append("<a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+lpage+"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    
    Response.Write(strhtml);

    //输出
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{
    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append(this.GetLang("报错管理|舉報管理|Report Management"));
    strhtml.Append("</div>");

    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "download/Report_List.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=0\">查看所有报错</a>-<a href=\"" + this.http_start + "download/Report_List_del.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=0&amp;id=0\">删除所有</a><br/>");
        strhtml.Append("</div></div>");
    }


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
        
        
        strhtml.Append(index + "." + listVo[i].addtime + "<br/>报错人:<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + "\">" + listVo[i].nickname + "(ID:" + listVo[i].userid + ")</a><br/><a href=\"" + http_start + "download/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + listVo[i].classid + "&amp;id=" + listVo[i].bbsid + "\">查看(ID:" + listVo[i].bbsid + " 栏目ID:" + listVo[i].classid + ")</a><br/>");
        strhtml.Append("报错类型:" + listVo[i].ReportType + "<br/>");
        strhtml.Append("其它:" + listVo[i].ReportWhy + "<br/>");
        strhtml.Append("操作:<a href=\"" + this.http_start + "download/Report_List_del.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].classid + "&amp;page=" + this.CurrentPage + "\">删除此报错</a>");
        strhtml.Append("</div>");
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");

    Response.Write(strhtml);

    
    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
