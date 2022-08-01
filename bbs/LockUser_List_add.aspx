<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LockUser_List_add.aspx.cs" Inherits="KeLin.WebSite.bbs.LockUser_List_add" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder();
Response.Write(WapTool.showTop(this.GetLang("加黑操作|加黑操作|To Lock"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>" + this.GetLang("添加成功！|添加成功！|Submit successfully!") + "</b> <a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;backurlid="+this.backurlid+"&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.touserid + "&amp;toclassid=" + this.toclassid + "\">" + this.GetLang("返回|返回|Back") + "</a><br/>");

    }
    else if (this.INFO == "NOTNUM")
    {
        strhtml.Append("<b>" + this.GetLang("要输入数字类型！|要输入数字类型！|Please input Number!") + "</b><br/>");
    }
    else if (this.INFO == "NOTALLOW")
    {
        strhtml.Append("<b>" + this.GetLang("你没有权限对此用户操作！|你沒有權限對此用戶操作！|You do not have permission to Lock this user!") + "</b><br/>");
    }


    strhtml.Append(this.GetLang("被锁会员ID|被锁会员ID|To Lock User ID") + "*:<br/>");
    strhtml.Append("<input type=\"text\"  name=\"touserid" + r + "\" value=\"" + this.touserid + "\" /><br/>");
    strhtml.Append(this.GetLang("栏目ID|栏目ID|Classid ID") + "*:<br/>");
    strhtml.Append("<input type=\"text\"  name=\"toclassid" + r + "\" value=\"" + this.toclassid + "\" /><br/>");
    strhtml.Append("(默认值或0为所有栏目)<br/>");
    strhtml.Append(this.GetLang("加黑天数|加黑天数|Lock Days") + "*:<br/>");    
    strhtml.Append("<input type=\"text\"  name=\"lockdate" + r + "\" value=\"" + this.lockdate + "\" /><br/>");
    strhtml.Append("(0为无期限)<br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "bbs/lockuser_list_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");
    strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<postfield name=\"backurlid\" value=\"" + backurlid + "\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\"/>");
    strhtml.Append("<postfield name=\"toclassid\" value=\"$(toclassid" + r + ")\"/>");
    strhtml.Append("<postfield name=\"lockdate\" value=\"$(lockdate" + r + ")\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>" + this.GetLang("提 交|提 交|Submit") + "</anchor><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;backurlid="+backurlid+"&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.touserid + "&amp;toclassid="+this.toclassid+"\">返回上级</a>");
    
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{
    strhtml.Append("<div class=\"subtitle\">"+this.GetLang("加黑操作|加黑操作|To Lock")+"</div>");
    strhtml.Append(this.ERROR);
    strhtml.Append("<div class=\"tip\">");
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>" + this.GetLang("添加成功！|添加成功！|Submit successfully!") + "</b> <a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;backurlid="+this.backurlid+"&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.touserid + "&amp;toclassid=" + this.toclassid + "\">" + this.GetLang("返回|返回|Back") + "</a><br/>");

    }
    else if (this.INFO == "NOTNUM")
    {
        strhtml.Append("<b>" + this.GetLang("要输入数字类型！|要输入数字类型！|Please input Number!") + "</b><br/>");
    }
    else if (this.INFO == "NOTALLOW")
    {
        strhtml.Append("<b>" + this.GetLang("你没有权限对此用户操作！|你沒有權限對此用戶操作！|You do not have permission to Lock this user!") + "</b><br/>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/lockuser_list_add.aspx\" method=\"post\">");
    strhtml.Append(this.GetLang("被锁会员ID|被锁会员ID|To Lock User ID") + "*:<br/>");
    strhtml.Append("<input type=\"text\"  name=\"touserid\" value=\"" + this.touserid + "\" /><br/>");
    strhtml.Append(this.GetLang("栏目ID|栏目ID|Classid ID") + "*:<br/>");
    strhtml.Append("<input type=\"text\"  name=\"toclassid\" value=\"" + this.toclassid + "\" /><br/>");
    strhtml.Append("(默认值或0为所有栏目)<br/>");
    strhtml.Append(this.GetLang("加黑天数|加黑天数|Lock Days") + "*:<br/>");
    strhtml.Append("<input type=\"text\"  name=\"lockdate\" value=\"" + this.lockdate + "\" /><br/>");
    strhtml.Append("(0为无期限)<br/>");    
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"backurlid\" value=\"" + backurlid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("提 交|提 交|Submit") + "\"/>");
    strhtml.Append("</form></div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;backurlid=" + backurlid + "&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.touserid + "&amp;toclassid=" + this.toclassid + "\">返回上级</a>");

    strhtml.Append("</div></div>");

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml,wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }

    Response.Write(strhtml);

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


