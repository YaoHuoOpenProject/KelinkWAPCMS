<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toBbsType.aspx.cs" Inherits="KeLin.WebSite.bbs.toBbsType" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("类别和回复语设置|類別和回複語設置|Categories and back language settings"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        strhtml.Append("</b><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if(this.INFO!="")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang(this.INFO));
        strhtml.Append("</b><br/>");

    }

    strhtml.Append(classVo.classname+"_ID:"+classVo.classid + "<br/>");
    strhtml.Append("发帖类别(多个用\" | \"区分):<br/>");
    strhtml.Append("<input type=\"text\" name=\"top" + r + "\" value=\"" + this.top + "\"/><br/>");
    strhtml.Append("回复语随机显示(多个用\" | \"区分):<br/>");
    strhtml.Append("<input type=\"text\" name=\"down" + r + "\" value=\"" + this.down + "\"/><br/>");
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        strhtml.Append("<br/>------------<br/>");
        strhtml.Append("是否更新所有论坛栏目？");
        strhtml.Append("<br/><input type=\"text\"  name=\"chkall" + r + "\" size=\"3\" value=\"no\"/>如果是输入yes");
        strhtml.Append("<br/>------------<br />");
    }
    strhtml.Append("<anchor><go href=\""+http_start+"bbs/toBbsType.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");    
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"page\" value=\""+page+"\"/>");
    strhtml.Append("<postfield name=\"top\" value=\"$(top" + r + ")\"/>");  
    strhtml.Append("<postfield name=\"down\" value=\"$(down" + r + ")\"/>");
    strhtml.Append("<postfield name=\"chkall\" value=\"$(chkall" + r + ")\"/>"); 
    strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");
    strhtml.Append("<br/>------------<br/>");


    strhtml.Append("例如以下显示，可以复制上去。<br/>");
    strhtml.Append("发帖类别：<br/><input type=\"text\" name=\"s1" + r + "\" value=\"悬赏|求助|灌水|新闻|软件|游戏|汉化|主题|投票|教程|公告|其他|原创|转帖|交友|出售|求购|转让|招聘|求职\"/><br/>");

    strhtml.Append("回复语：<br/><input type=\"text\" name=\"s2" + r + "\" value=\"好帖，要顶!|看帖回帖是美德!|你牛，我顶!|这帖不错，该顶!|支持你!|反对你!\"/><br/>");
    strhtml.Append("<br/>------------<br/>");

    
    
    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("更新操作|更新操作|Update operation") + "</div>");
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if(this.INFO!="")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang(this.INFO));
        strhtml.Append("</b>");

    }
    strhtml.Append("</div>");
    
    


    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"g\" action=\"" + http_start + "bbs/toBbsType.aspx\" method=\"post\">");
    strhtml.Append(classVo.classname + "_ID:" + classVo.classid + "<br/>");
    strhtml.Append("发帖类别(多个用\" | \"区分):<br/>");
    strhtml.Append("<input type=\"text\" name=\"top\" value=\"" + this.top + "\"/><br/>");
    strhtml.Append("回复语随机显示(多个用\" | \"区分):<br/>");
    strhtml.Append("<input type=\"text\" name=\"down\" value=\"" + this.down + "\"/><br/>");
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        strhtml.Append("<hr/>");
        strhtml.Append("是否更新所有论坛栏目？");
        strhtml.Append("<br/><input type=\"text\"  name=\"chkall\" size=\"3\" value=\"no\"/>如果是输入yes");
        strhtml.Append("<hr/>");
    }
  
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" value=\"" + this.GetLang("保 存|保 存|Save") + "\"/>");
    strhtml.Append("</form></div>");

    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("例如以下显示，可以复制上去。<br/>");
    strhtml.Append("发帖类别：<br/><input type=\"text\" name=\"s1" + r + "\" value=\"悬赏|求助|灌水|新闻|软件|游戏|汉化|主题|投票|教程|公告|其他|原创|转帖|交友|出售|求购|转让|招聘|求职\"/><br/>");

    strhtml.Append("回复语：<br/><input type=\"text\" name=\"s2" + r + "\" value=\"好帖，要顶!|看帖回帖是美德!|你牛，我顶!|这帖不错，该顶!|支持你!|反对你!\"/><br/>");
    
    strhtml.Append("</div>");
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    strhtml.Append("</div></div>");
    Response.Write(strhtml);
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


