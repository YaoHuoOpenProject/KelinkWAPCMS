<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View_SendMoney.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_View_SendMoney" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
if (this.INFO == "OK")
{
    wmlVo.timer = "3";
    wmlVo.strUrl = "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.getid;
    
}

Response.Write(WapTool.showTop(this.GetLang("发表派币帖|发表派币帖|add subject"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {

        strhtml.Append("<b>发表主题成功！</b> ");
        if (siteVo.isCheck == 1)
        {
            strhtml.Append("<b>审核后显示！</b> ");
        }

        strhtml.Append("获得" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + ":" + getmoney + "，获得经验:" + getexpr + "<br/> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.getid + "" + "\">自动返回主题</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>标题最少"+this.titlemax +"字，内容最少"+this.contentmax +"字！</b><br/>");

    }
    else if (this.INFO == "TITLEMAX")
    {

        if (title_max != "0")
        {
            strhtml.Append("<b>标题最大" + this.title_max + "字。</b><br/>");

        }
        if (content_max != "0")
        {
            strhtml.Append("<b>内容最大" + this.content_max + "字。</b><br/>");

        }
    }  
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        strhtml.Append("<b>请不要发重复内容！</b><br/>");
    }
    else if (this.INFO == "PWERROR")
    {

        strhtml.Append("<b>密码错误，请重新录入我的密码！</b><br/>");
    }
    else if (this.INFO == "ERROR_Secret")
    {

        strhtml.Append("<b>暗号错误，如果忘记联系站长索取！</b><br/>");
    }
    else if (this.INFO == "FORMATERR")
    {

        strhtml.Append("<b>派币楼层和派币值配置错误，| 个数不一值 或 存在非数字值！</b><br/>");
    }
    else if (this.INFO == "NOMONEY")
    {

        strhtml.Append("<b>我的钱币不够啦！或总礼金不能小于1 !</b><br/>");
    }
    else if (this.INFO == "MAXMONEY")
    {

        strhtml.Append("<b>派币值总值 大于 总礼金 了!</b><br/>");
    }
    else if (this.INFO == "NOEQUALMONEY")
    {

        strhtml.Append("<b>您设置N层楼排币总值与总礼金不一致!</b><br/>");
    }
    else if (this.INFO == "MAX")
    {

        strhtml.Append("<b>今天你已超过发帖限制：" + this.KL_CheckBBSCount + " 个帖子了，请明天再来！</b><br/>");
    }
    
    else if (this.INFO == "LOCK")
    {

        strhtml.Append("<b>抱歉，您已经被加入黑名单，请注意发帖规则！</b><br/>");
    }

    if (this.INFO != "OK")
    {

        strhtml.Append(this.GetLang("标题|標題|Title") + ":<br/>");
        strhtml.Append("<input type=\"text\" name=\"book_title" + r + "\" value=\"" + book_title + "\"/><br/>");
        if (this.action == "friends")
        {
            strhtml.Append(this.GetLang("内容|內容|Content") + ":<a href=\""+http_start+"bbs/ModifyUserFriends.aspx?siteid="+siteid+"&amp;sid="+sid+"\">完善交友资料</a><br/>");
        }
        else
        {
            strhtml.Append(this.GetLang("内容|內容|Content") + ":<br/>");
        }
        strhtml.Append("<input type=\"text\"  name=\"book_content" + r + "\" value=\"" + book_content + "\" /><br/>");

        strhtml.Append("最大礼金为:" + maxs + "<br/>我当前" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + ":" + userVo.money + "<br/>");
        strhtml.Append("派币总礼金:<br/><input type=\"text\" format=\"*N\" name=\"freemoney\" value=\"" + freemoney + "\" size=\"4\"/><br/>");
        strhtml.Append("<input type=\"hidden\"  name=\"freerule1\" value=\"0" + freerule1 + "\" />");
        strhtml.Append("派币值:<br/><input type=\"text\"  name=\"freerule2\" value=\"" + freerule2 + "\"  /><br/>");
        strhtml.Append("(例:200|100|50|30|20)<br/>");
        strhtml.Append("提示:总礼金不得低于2000，派币值不得低于200。<br/>");
        
       
        if (this.needpwFlag == "1")
        {
            strhtml.Append("我的密码*:<input type=\"text\" name=\"needpw\" value=\"" + needpw + "\" size=\"10\" /><br/>");

        }
        if (this.isNeedSecret == true)
        {
            strhtml.Append("本版暗号*:<input type=\"text\" name=\"secret\" value=\"\" size=\"10\" /><br/>");

        }
        strhtml.Append("<anchor><go href=\"" + http_start + "bbs/book_view_sendmoney.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"page\" value=\"" + page + "\"/>");
        strhtml.Append("<postfield name=\"book_title\" value=\"$(book_title" + r + ")\"/>");
        strhtml.Append("<postfield name=\"book_content\" value=\"$(book_content" + r + ")\"/>");
        strhtml.Append("<postfield name=\"face\" value=\"$(face)\"/>");
        strhtml.Append("<postfield name=\"stype\" value=\"$(stype)\"/>");

        strhtml.Append("<postfield name=\"freemoney\" value=\"$(freemoney)\"/>");
        strhtml.Append("<postfield name=\"freerule1\" value=\"$(freerule1)\"/>");
        strhtml.Append("<postfield name=\"freerule2\" value=\"$(freerule2)\"/>");
       
        if (this.needpwFlag == "1")
        {
            strhtml.Append("<postfield name=\"needpw\" value=\"$(needpw)\"/>");
        }
        if (this.isNeedSecret == true)
        {
            strhtml.Append("<postfield name=\"secret\" value=\"$(secret)\"/>");
        }
      
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>" + this.GetLang("发表派币帖|发表派币帖|submit new subject") + "</anchor><br/><br/>");
    }

    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_add.aspx?action=class&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">发表普通帖</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_add.aspx?action=friends&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">发表交友帖</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_addvote.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("发表投票帖|发表投票帖|add vote") + "</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_addfile.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("发表文件帖|发表文件帖|upload file") + "</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_ubb.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/book_view_add.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">" + this.GetLang("查看UBB方法|查看UBB方法|view UBB fuction") + "</a><br/><br/>");
    
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=0\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    
    Response.Write(strhtml);
}
else //2.0界面
{
    strhtml.Append("<div class=\"subtitle\">发表派币帖</div>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {

        strhtml.Append("<b>发表主题成功！</b> ");
        if (siteVo.isCheck == 1)
        {
            strhtml.Append("<b>审核后显示！</b> ");
        }
        strhtml.Append("获得" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + ":" + getmoney + "，获得经验:" + getexpr + "<br/> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.getid + "" + "\">自动返回主题</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>标题最少" + this.titlemax + "字，内容最少" + this.contentmax + "字！</b><br/>");
    }
    else if (this.INFO == "TITLEMAX")
    {

        if (title_max != "0")
        {
            strhtml.Append("<b>标题最大" + this.title_max + "字。</b><br/>");
        }
        if (content_max != "0")
        {
            strhtml.Append("<b>内容最大" + this.content_max + "字。</b><br/>");
        }
    }  
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {
        strhtml.Append("<b>请不要发重复内容！</b><br/>");
    }
    else if (this.INFO == "PWERROR")
    {
        strhtml.Append("<b>密码错误，请重新录入我的密码！</b><br/>");
    }
    else if (this.INFO == "ERROR_Secret")
    {
        strhtml.Append("<b>暗号错误，如果忘记联系站长索取！</b><br/>");
    }
    else if (this.INFO == "MAXMONEY")
    {
        strhtml.Append("<b>派币值总值 大于 总礼金 了!</b><br/>");
    }
    else if (this.INFO == "NOEQUALMONEY")
    {
        strhtml.Append("<b>您设置N层楼排币总值与总礼金不一致!</b><br/>");
    }
    else if (this.INFO == "MAX")
    {
        strhtml.Append("<b>今天你已超过发帖限制：" + this.KL_CheckBBSCount + " 个帖子了，请明天再来！</b><br/>");
    }
    else if (this.INFO == "FORMATERR")
    {
        strhtml.Append("<b>派币楼层和派币值配置错误，| 个数不一值 或 存在非数字值！</b><br/>");
    }
    else if (this.INFO == "NOMONEY")
    {
        strhtml.Append("<b>我的钱币不够啦！或总礼金不能小于1 !</b><br/>");
    }
    else if (this.INFO == "LOCK")
    {
        strhtml.Append("<b>抱歉，您已经被加入黑名单，请注意发帖规则！</b><br/>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    if (this.INFO != "OK")
    {
        //显示表情
        strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/book_view_sendmoney.aspx\" method=\"post\">");
        strhtml.Append("<select name=\"face\" style=\"display:none;\">");
        strhtml.Append("<option value=\"\">表情</option>");
        for (int i = 0; (facelist != null && i < this.facelist.Length); i++)
        {
        }
        strhtml.Append("</select>");
        //显示类别
        strhtml.Append("<select name=\"stype\" style=\"display:none;\">");
        strhtml.Append("<option value=\"\">类别</option>");
        for (int i = 0; (stypelist != null && i < this.stypelist.Length); i++)
        {
        }
        strhtml.Append("</select>");
        strhtml.Append(this.GetLang("标题|標題|Title") + " <br/>");
        strhtml.Append("<input type=\"text\" minlength=\"5\" maxlength=\"25\" required=\"required\" name=\"book_title\" class=\"txt\" style=\"width:97%\" value=\"" + book_title + "\"/><br/>");
        if (this.action == "friends")
        {
            strhtml.Append(this.GetLang("内容|內容|Content") + ":<a href=\"" + http_start + "bbs/ModifyUserFriends.aspx?siteid=" + siteid + "" + "\">完善交友资料</a><br/>");
        }
        else
        {
            strhtml.Append(this.GetLang("内容|內容|Content") + " <br/>");
        }
        strhtml.Append("<textarea name=\"book_content\" minlength=\"15\" required=\"required\" rows=\"5\" class=\"KL_bbs_textarea\" style=\"width:97%;height:180px;\">" + book_content + "</textarea><br/>");
        //strhtml.Append("最大礼金为：" + maxs + "<br/>");
        strhtml.Append("我当前" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + "：" + userVo.money + "<br/>");
        strhtml.Append("派币总礼金 <br/><input type=\"number\" min=\"2000\" required=\"required\" format=\"*N\" style=\"width:40%\" name=\"freemoney\" value=\"" + freemoney + "\"/><br/>");
        strhtml.Append("<input type=\"hidden\" class=\"txt\" name=\"freerule1\" value=\"0" + freerule1 + "\"/>");
        strhtml.Append("每人派币值 <br/><input type=\"number\" min=\"200\" max=\"10000\" required=\"required\" class=\"txt\" style=\"width:40%\" name=\"freerule2\" value=\"" + freerule2 + "\"  /><br/>");
        //strhtml.Append("提示：总礼金不得低于2000，派币值不得低于200。<br/>");
        if (this.needpwFlag == "1")
        {
            strhtml.Append("我的密码*:<input type=\"text\" name=\"needpw\" value=\"" + needpw + "\" size=\"10\" /><br/>");
        }
        if (this.isNeedSecret == true)
        {
            strhtml.Append("本版暗号*:<input type=\"text\" name=\"secret\" value=\"\" size=\"10\" /><br/>");
        }
        //strhtml.Append("<anchor><go href=\"" + http_start + "bbs/book_view_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");        
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("发表派币帖|发表派币帖|submit new subject") + "\"/>");
        strhtml.Append("</form><br/>");  
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_add.aspx?action=class&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">发表普通帖</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_addvote.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("发表投票帖|发表投票帖|add vote") + "</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_addfile.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("发表文件帖|发表文件帖|upload file") + "</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_ubb.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;backurl="+HttpUtility.UrlEncode("bbs/book_view_add.aspx?siteid="+this.siteid+"&classid="+this.classid)+"\">" + this.GetLang("查看UBB方法|查看UBB方法|view UBB fuction") + "</a>");
    strhtml.Append("</div>");
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);
        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml.ToString()), wmlVo));
        Response.End();
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=0\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a> ");    
    strhtml.Append("</div></div>");
    Response.Write(strhtml);
}
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>