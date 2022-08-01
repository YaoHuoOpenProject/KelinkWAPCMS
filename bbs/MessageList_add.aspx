<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MessageList_add.aspx.cs" Inherits="KeLin.WebSite.bbs.MessageList_add" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
if (this.toid != "")
{
    wmlVo.timer = "3";
    wmlVo.strUrl = "bbs/messagelist_view.aspx?id=" + this.toid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;types=" + this.types + "&amp;issystem=" + this.issystem;

}

Response.Write(WapTool.showTop(this.GetLang("发短信息|发短信息|Send message"), wmlVo));//显示头  
                                                                                                                                                                  
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    
    if (this.INFO == "OK")
    {

        strhtml.Append("<b>发送信息成功！</b>");
        if (this.toid != "")
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/messagelist_view.aspx?id=" + this.toid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;types=" + this.types + "&amp;issystem=" + this.issystem + "\">返回</a><br/>");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/messagelist.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;types=" + this.types + "&amp;issystem=" + this.issystem + "\">返回</a><br/>");
        }
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>用户ID和内容不能为空！</b><br/>");

    }
    else if (this.INFO == "REPEAT")
    {
        strhtml.Append("<b>内容跟上次发的重复！</b><br/>");

    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    else if (this.INFO == "PWERROR")
    {

        strhtml.Append("<b>密码错误，请重新录入我的密码！</b><br/>");
    }
    else if (this.INFO == "MAX1")
    {

        strhtml.Append("<b>一次只能发 " + this.KL_SendMSGCount + " 条的信息！</b><br/>");
    }
    else if (this.INFO == "MAX")
    {

        strhtml.Append("<b>今天你已超过 " + this.KL_SendMSGCount + " 条的发信限制，请明天再来！</b><br/>");
    }
    else if (this.INFO == "LOCK")
    {

        strhtml.Append("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
    }
    else if (this.INFO == "ALLERR")
    {

        strhtml.Append("<b>抱歉，只有超级管理员和站长才能一次性向全站会员发站内信息！</b><br/>");
    }
    //else if (this.INFO == "NOTEXSIT")
    //{

     //   strhtml.Append("<b>某个对方不存在！</b><br/>");
    //}
    //else if (this.INFO == "NOTFIREND")
    //{

    //    strhtml.Append("<b>对方已加你为黑名单，你无法发信给对方！</b><br/>");
    //}
    strhtml.Append("<a href=\"" + this.http_start + "bbs/messagelist.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;types=" + this.types + "&amp;issystem=" + this.issystem + "\">返回上级</a>.<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a><br/>");
    if (this.INFO != "OK")
    {
        if (this.isadmin == true)
        {
            if ("|00|01|".IndexOf(userVo.managerlvl) > 0)
            {
                strhtml.Append("<a href=\"" + http_start + "bbs/messagelist_add.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;types=" + this.types + "&amp;issystem=" + this.issystem + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;who=all" + "\">导入本站所有会员ID</a><br/>");
            }
            strhtml.Append("<a href=\"" + http_start + "bbs/messagelist_add.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;types=" + this.types + "&amp;issystem=" + this.issystem + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;who=admin" + "\">导入栏目管理员/版主ID</a><br/>");
        }

        strhtml.Append("<a href=\"" + http_start + "bbs/messagelist_add.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;types=" + this.types + "&amp;issystem=" + this.issystem + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;who=friend" + "\">导入我的好友ID</a><br/>");
        
        strhtml.Append(this.GetLang("对方会员ID|对方会员|to userID") + "*:<br/>");
        strhtml.Append("<input type=\"text\" name=\"touseridlist" + r + "\" value=\"" + this.touseridlistall + "\"/><br/>");
        strhtml.Append("(多个用户用点号.隔开)<br/>");

        strhtml.Append(this.GetLang("内容|內容|Content") + "*:<br/>");
        strhtml.Append("<input type=\"text\"  name=\"content" + r + "\" value=\"" + this.content + "\" /><br/>");
        strhtml.Append(this.GetLang("标题(可留空)|標題|Title") + ":<br/>");
        strhtml.Append("<input type=\"text\" name=\"title" + r + "\" value=\"" + this.title + "\"/><br/>");
        if (this.needpwFlag == "1")
        {
            strhtml.Append("我的密码*:<input type=\"text\" name=\"needpw\" value=\"" + needpw + "\" size=\"10\" /><br/>");

        }
        strhtml.Append("<anchor><go href=\"" + http_start + "bbs/messagelist_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"types\" value=\"" + types + "\"/>");
        strhtml.Append("<postfield name=\"issystem\" value=\"" + issystem + "\"/>");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + backurl + "\"/>");
        strhtml.Append("<postfield name=\"title\" value=\"$(title" + r + ")\"/>");
        strhtml.Append("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
        strhtml.Append("<postfield name=\"touseridlist\" value=\"$(touseridlist" + r + ")\"/>");
        strhtml.Append("<postfield name=\"needpw\" value=\"$(needpw)\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>" + this.GetLang("发 送|发 送|Send") + "</anchor><br/><br/>");
    }



    strhtml.Append("<a href=\"" + this.http_start + "bbs/messagelist.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;types=" + this.types + "&amp;issystem=" + this.issystem + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{
    strhtml.Append("<div class=\"subtitle\">"+this.GetLang("发短信息|发短信息|Send message")+"</div>");
    strhtml.Append(this.ERROR);

    strhtml.Append("<div class=\"tip\">");
    if (this.INFO == "OK")
    {

        strhtml.Append("<b>发送信息成功！</b>");
        if (this.toid != "")
        {
            strhtml.Append("<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/messagelist_view.aspx?id=" + this.toid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;types=" + this.types + "&amp;issystem=" + this.issystem + "\">返回</a><br/>");
        }
        else
        {
            strhtml.Append("<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/messagelist.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;types=" + this.types + "&amp;issystem=" + this.issystem + "\">返回</a><br/>");
        }
    }
    else if (this.INFO == "REPEAT")
    {
        strhtml.Append("<b>内容跟上次发的重复！</b><br/>");

    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>用户ID和内容不能为空！</b><br/>");

    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    else if (this.INFO == "PWERROR")
    {

        strhtml.Append("<b>密码错误，请重新录入我的密码！</b><br/>");
    }
    else if (this.INFO == "MAX1")
    {

        strhtml.Append("<b>一次只能发 " + this.KL_SendMSGCount + " 条的信息！</b><br/>");
    }
    else if (this.INFO == "MAX")
    {

        strhtml.Append("<b>今天你已超过 " + this.KL_SendMSGCount + " 条的发信限制，请明天再来！</b><br/>");
    }
    else if (this.INFO == "LOCK")
    {

        strhtml.Append("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
    }
    else if (this.INFO == "ALLERR")
    {

        strhtml.Append("<b>抱歉，只有超级管理员和站长才能一次性向全站会员发站内信息！</b><br/>");
    }
    //else if (this.INFO == "NOTEXSIT")
    //{

    //   strhtml.Append("<b>某个对方不存在！</b><br/>");
    //}
    //else if (this.INFO == "NOTFIREND")
    //{

    //    strhtml.Append("<b>对方已加你为黑名单，你无法发信给对方！</b><br/>");
    //}
    strhtml.Append("</div>");
 
    
    if (this.INFO != "OK")
    {
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<div class=\"bt1\">");
        if (this.isadmin == true)
        {
            if ("|00|01|".IndexOf(userVo.managerlvl) > 0)
            {
                strhtml.Append("<a href=\"" + http_start + "bbs/messagelist_add.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;types=" + this.types + "&amp;issystem=" + this.issystem + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;who=all" + "\">导入本站所有会员ID</a><br/>");
            }
            strhtml.Append("<a href=\"" + http_start + "bbs/messagelist_add.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;types=" + this.types + "&amp;issystem=" + this.issystem + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;who=admin" + "\">导入栏目管理员/版主ID</a><br/>");
        }

        strhtml.Append("<a href=\"" + http_start + "bbs/messagelist_add.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;types=" + this.types + "&amp;issystem=" + this.issystem + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;who=friend" + "\">导入我的好友ID</a><br/>");
        strhtml.Append("</div>");
        
        strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/messagelist_add.aspx\" method=\"post\">");
        strhtml.Append(this.GetLang("对方会员ID|对方会员|to userID") + "*:<br/>");
        strhtml.Append("<input type=\"text\" name=\"touseridlist\" value=\"" + this.touseridlistall + "\"/><br/>");
        strhtml.Append("(多个用户用点号.隔开)<br/>");

        strhtml.Append(this.GetLang("内容|內容|Content") + "*:<br/>");
        strhtml.Append("<textarea name=\"content\" rows=\"5\" style=\"width:100%\">" + this.content + "</textarea><br/>");
        strhtml.Append(this.GetLang("标题(可留空)|標題|Title") + ":<br/>");
        strhtml.Append("<input type=\"text\" name=\"title\" class=\"txt\" value=\"" + this.title + "\"/><br/>");
        if (this.needpwFlag == "1")
        {
            strhtml.Append("我的密码*:<input type=\"text\" name=\"needpw\" value=\"" + needpw + "\" size=\"10\" /><br/>");

        }
        
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"types\" value=\"" + types + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"issystem\" value=\"" + issystem + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + backurl + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("发 送|发 送|Send") + "\"/>");
        strhtml.Append("</form>");
        strhtml.Append("</div>");
    }

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
    strhtml.Append("<a href=\"" + this.http_start + "bbs/messagelist.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;types=" + this.types + "&amp;issystem=" + this.issystem + "\">返回上级</a> <a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a>");
   
    strhtml.Append("<a href=\"" + this.http_start + "bbs/messagelist.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;types=" + this.types + "&amp;issystem=" + this.issystem + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a> ");

    strhtml.Append("</div></div>");
    Response.Write(strhtml);
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


