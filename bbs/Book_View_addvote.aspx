<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View_addvote.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_View_addvote" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("发表主题|發表主題|add subject"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);

    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_addvote.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid1 +"-2-"+this.cs +"-"+this.lang+"-"+this.myua+ "-"+this.width+"\">" + this.GetLang("进入WAP2.0界面发表投票|进入WAP2.0界面发表投票|wap2.0 add vote") + "</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_add.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("发表普通贴|发表普通贴|add content") + "</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_addfile.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("发表文件贴|发表文件贴|upload file") + "</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_ubb.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/book_view_addvote.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">" + this.GetLang("查看UBB方法|查看UBB方法|view UBB fuction") + "</a><br/><br/>");
    
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{
    strhtml.Append("<div class=\"subtitle\">发表投票贴</div>");
    strhtml.Append(this.ERROR);
    strhtml.Append("<div class=\"tip\">");
    if (this.INFO == "OK")
    {

        strhtml.Append("<b>发表投票主题成功！</b> ");
        if (siteVo.isCheck == 1)
        {
            strhtml.Append("<b>审核后显示！</b> ");
        }
        strhtml.Append("获得" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + ":" + getmoney + "，获得经验:" + getexpr + "<br/> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.getid + "" + "\">查看主题</a><br/>");
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
    else if (this.INFO == "MAX")
    {

        strhtml.Append("<b>今天你已超过回贴限制：" + this.KL_CheckBBSCount + " 个贴子了，请明天再来！</b><br/>");
    }
    else if (this.INFO == "SENDMONEY")
    {

        strhtml.Append("<b>你当前的只有:" + userVo.money + "个，所以你悬赏值只能小于或等于" + userVo.money + "个</b><br/>");
    }
    else if (this.INFO == "NOMONEY")
    {

        strhtml.Append("<b>你当前的只有:" + userVo.money + "个，发贴需要扣掉：" + getmoney2 + "个</b><br/>");
    }
    else if (this.INFO == "LOCK")
    {

        strhtml.Append("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    if (this.INFO != "OK")
    {
        //strhtml.Append("<div class=\"title\">");
        //选多少个
        strhtml.Append("<form name=\"g1\" action=\"" + http_start + "bbs/book_view_addvote.aspx\" method=\"get\">");
        strhtml.Append(this.GetLang("选择投票项|选择投票项|Select vote") + " <input type=\"text\" name=\"num\" value=\"" + this.num + "\" size=\"2\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"go\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"page\" value=\"" + page + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append(" <input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定|确定|GO") + "\"/></form><br/>");
        //strhtml.Append("</div>");
        //显示表情
        strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/book_view_addvote.aspx\" method=\"post\">");
        strhtml.Append("<select name=\"face\">");
        strhtml.Append("<option value=\"\">表情</option>");
        for (int i = 0; (facelist != null && i < this.facelist.Length); i++)
        {
            strhtml.Append("<option value=\"" + this.facelistImg[i] + "\">" + this.facelist[i] + "</option>");
        }
        strhtml.Append("</select>");
        //显示类别
        strhtml.Append("<select name=\"stype\">");
        strhtml.Append("<option value=\"\">类别</option>");
        for (int i = 0; (stypelist != null && i < this.stypelist.Length); i++)
        {
            strhtml.Append("<option value=\"" + this.stypelist[i] + "\">" + this.stypelist[i] + "</option>");
        }
        strhtml.Append("</select><br/>");


        strhtml.Append(this.GetLang("标题|標題|Title") + "*:<br/>");
        strhtml.Append("<input type=\"text\" name=\"book_title\" class=\"txt\" value=\"" + book_title + "\"/><br/>");
        strhtml.Append(this.GetLang("内容|內容|Content") + "*:<br/>");
        strhtml.Append("<textarea name=\"book_content\" rows=\"5\" class=\"KL_bbs_textarea\" style=\"width:100%\">" + book_content + "</textarea><br/>");
        if (isadmin == true)
        {
            strhtml.Append("每日签到送币：<input type=\"text\" format=\"*N\" name=\"reshow\" value=\"" + reshow + "\" size=\"4\"/><br/>");
        }
        strhtml.Append("悬赏币:<input type=\"text\" format=\"*N\" name=\"sendmoney\" value=\"" + sendmoney + "\" size=\"4\" /><br/>");

        //查看条件
        strhtml.Append("<select name=\"viewtype\">");
        strhtml.Append("<option value=\"0\">0_特殊贴↓</option>");
        strhtml.Append("<option value=\"1\">1_登录可见</option>");
        strhtml.Append("<option value=\"2\">2_手机可见</option>");
        strhtml.Append("<option value=\"3\">3_回复可见</option>");
        strhtml.Append("<option value=\"4\">4_金钱可见需要</option>");
        strhtml.Append("<option value=\"5\">5_经验可见需要</option>");
        strhtml.Append("<option value=\"6\">6_付费" + siteVo.sitemoneyname + "可见需要</option>");
        strhtml.Append("<option value=\"7\">7_付费RMB可见需要</option>");
        strhtml.Append("</select>");
        //查看值
        strhtml.Append("需要:<input type=\"text\" format=\"*N\" name=\"viewmoney\" value=\"" + viewmoney + "\" size=\"4\" /><br/>");

        //显示投票值
        for (int i = 0; i < this.num; i++)
        {
            
            strhtml.Append(this.GetLang("投票项|投票项|Title") +(i+1)+ ":");
            strhtml.Append("<input type=\"text\" name=\"vote\" value=\"\"/><br/>");
            

        }
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
        strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("发表新贴子|发表新贴子|submit new subject") + "\"/>");
        strhtml.Append("</form>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"btBox\">");
    strhtml.Append("<div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_add.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("发表普通贴|发表普通贴|add subject") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_addfile.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("发表文件贴|发表文件贴|upload file") + "</a> ");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_ubb.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/book_view_addvote.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">" + this.GetLang("查看UBB方法|查看UBB方法|view UBB fuction") + "</a>");
    strhtml.Append("</div>");
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
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a> ");
    strhtml.Append("</div></div>");

    Response.Write(strhtml);
}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


