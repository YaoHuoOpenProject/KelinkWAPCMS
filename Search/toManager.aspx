<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toManager.aspx.cs" Inherits="KeLin.WebSite.search.toManager" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("管理会员|管理会员|user admin"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("修改成功！|修改成功！|Successfully Update"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "search/book_list.aspx?siteid="+this.siteid+"&amp;backurl="+HttpUtility.UrlEncode(backurl) + "&amp;page="+this.page+"\">" + this.GetLang("返回|返回|Back") + "</a><br/>");
    }
    else if (this.INFO == "PWERROR")
    {

        Response.Write("<b>密码错误，请重新录入我的密码！</b><br/>");
    }
    else if(this.INFO=="NUM")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("需要输入数字！|需要输入数字！|need num"));
        Response.Write("</b><br/>");

    }
    if (this.INFO != "OK")
    {
        Response.Write("用户ID:<a href=\"" + http_start + "bbs/userinfomore.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + touserid + "\">" + touserVo.userid + "</a><br/>");
        Response.Write("用户名:" + touserVo.username + "<br/>");
        if (touserVo.userid == 1000 || touserVo.userid == 956)
        {
            Response.Write("<a href=\"" + http_start + "admin/modifyusername00.aspx?siteid=" + this.siteid + "\">修改用户名</a><br/>");
        }
        Response.Write("昵称:" + touserVo.nickname + "<br/>");
        Response.Write("RMB:￥" + touserVo.RMB.ToString("f2") + "【<a href=\"" + this.http_start + "chinabank_wap/RMBAdd.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("search/toManager.aspx?siteid=" + this.siteid + "&amp;touserid=" + touserid) + "&amp;action=search&amp;touserid=" + touserid + "\">手工增减</a>｜<a href=\"" + this.http_start + "chinabank_wap/banklist.aspx?siteid=" + this.siteid + "&amp;tositeid=" + this.siteid + "&amp;touserid=" + touserid + "&amp;backurl=" + HttpUtility.UrlEncode("search/toManager.aspx?siteid=" + this.siteid + "&amp;touserid=" + touserid) + "\">日志</a>】<br/>");
        Response.Write(siteVo.sitemoneyname + ":" + touserVo.money + "【<a href=\"" + this.http_start + "bbs/tomoney.aspx?siteid=" + this.siteid + "&amp;touserid=" + touserid + "&amp;backurl=" + HttpUtility.UrlEncode("search/toManager.aspx?siteid=" + this.siteid + "&amp;touserid=" + touserid) + "\">手工增减</a>｜<a href=\"" + this.http_start + "bbs/banklist.aspx?siteid=" + this.siteid + "&amp;key=" + touserid + "&amp;backurl=" + HttpUtility.UrlEncode("search/toManager.aspx?siteid=" + this.siteid + "&amp;touserid=" + touserid) + "\">日志</a>】<br/>");
        
        Response.Write("注册时间:" + string.Format("{0:yy-MM-dd HH:mm}", touserVo.RegTime) + "<br/>");
        Response.Write("最后登录:" + string.Format("{0:yy-MM-dd HH:mm}", touserVo.LastLoginTime) + "<br/>");

        Response.Write(this.GetLang("重置他的密码|重置他的密码|change his password") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"topassword" + r + "\" value=\"\"/><br/>");
        Response.Write("(不重置密码留空)<br/>");

        
        Response.Write(this.GetLang("重置他的银行存款|重置他的银行存款|change his bank money") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"tobankmoney" + r + "\" value=\"" + tobankmoney + "\"/><br/>");

        Response.Write(this.GetLang("重置他的经验|重置他的经验|change his expR") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"toexpR" + r + "\" value=\"" + toexpR + "\"/><br/>");



        Response.Write(this.GetLang("管理权限级别|管理权限级别|管理权限级别 ") + ":<br/>");
        Response.Write("<select name=\"tomanagerlvl" + r + "\" value=\"" + touserVo.managerlvl + "\">");
        Response.Write("<option value=\"00\">00_超级管理员</option>");
        Response.Write("<option value=\"01\">01_站长</option>");
        Response.Write("<option value=\"03\">03_总编辑</option>");
        Response.Write("<option value=\"04\">04_总版主</option>");
        Response.Write("<option value=\"02\">02_普通</option>");
        Response.Write("</select><br/>");
        Response.Write(this.GetLang("会员身份级别|会员身份级别|his ID") + ":(<a href=\"" + this.http_start + "bbs/smalltypelist.aspx?siteid=" + this.siteid + "&amp;systype=card\">管理</a>)<br/>");
        Response.Write("<select name=\"tosessiontimeout" + r + "\" value=\"" + tosessiontimeout + "\">");
        Response.Write("<option value=\"0\">0—普通会员</option>");
        for (int i = 0; (idlistVo != null && i < idlistVo.Count); i++)
        {
            Response.Write("<option value=\"" + idlistVo[i].id + "\">" + idlistVo[i].id + "—" + WapTool.GetUrlFileName(idlistVo[i].subclassName) + "</option>");
        }
        Response.Write("</select><br/>");
        Response.Write(WapTool.showIDEndTime(touserVo.siteid, touserVo.userid, touserVo.endTime, this.lang) + "<br/>");
        Response.Write(this.GetLang("更改时间|更改时间|change date") + ":<br/>");
        Response.Write("<input type=\"text\" name=\"tochangedate" + r + "\" value=\"" + tochangedate + "\"/><br/>(时间隔:2012-01-08 正站长永久无期限)<br/>");

        Response.Write(this.GetLang("锁定|锁定|Lock ") + ":");
        Response.Write("<select name=\"tolockuser" + r + "\" value=\"" + tolockuser + "\">");
        Response.Write("<option value=\"0\">否</option>");
        Response.Write("<option value=\"1\">是</option>");
        Response.Write("</select><br/>");
        Response.Write("我的密码:<input type=\"text\" name=\"needpw"+r+"\" value=\"" + needpw + "\" size=\"10\" /><br/>");
        Response.Write("<anchor><go href=\"" + http_start + "search/toManager.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"touserid\" value=\"" + (touserid) + "\"/>");
        Response.Write("<postfield name=\"backurl\" value=\"" + (backurl) + "\"/>");
        Response.Write("<postfield name=\"topassword\" value=\"$(topassword" + r + ")\"/>");
        Response.Write("<postfield name=\"tomoney\" value=\"$(tomoney" + r + ")\"/>");
        Response.Write("<postfield name=\"tobankmoney\" value=\"$(tobankmoney" + r + ")\"/>");
        Response.Write("<postfield name=\"toexpR\" value=\"$(toexpR" + r + ")\"/>");
        Response.Write("<postfield name=\"tochangedate\" value=\"$(tochangedate" + r + ")\"/>");
        Response.Write("<postfield name=\"tomanagerlvl\" value=\"$(tomanagerlvl" + r + ")\"/>");
        Response.Write("<postfield name=\"tosessiontimeout\" value=\"$(tosessiontimeout" + r + ")\"/>");
        Response.Write("<postfield name=\"needpw\" value=\"$(needpw" + r + ")\"/>");
        Response.Write("<postfield name=\"tolockuser\" value=\"$(tolockuser" + r + ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor><br/><br/>");
    }
    Response.Write("管理权限级别说明:");
    Response.Write("<br /><b>[00]超级管理员</b>：管理所有网站及所有数据。分正超级管理员(网站ID等于会员ID)和副超级管理员(网站ID不等于会员ID)，权限一样。");
    Response.Write("<br /><b>[01]站长</b>：管理自己网站内的所有数据，分正站长(网站ID等于会员ID)和副站长(网站ID不等于会员ID)，权限一样。");
    Response.Write("<br /><b>[03]总编辑</b>：管理自己网站内的所有栏目内容。不包排版，网站设置等，只管理栏目内容。");
    Response.Write("<br /><b>[04]总版主</b>：管理自己网站内的论坛栏目内容。");
    Response.Write("<br /><b>[02]普通</b>：某网站下的会员。");
    Response.Write("<br /><b>[**]栏目管理员(版主)</b>：只管理设定的栏目内容。此权限需要在修改栏目属性处添加。");
    Response.Write("<br/>更多设置请上WEB后台管理，用户管理 ， 修改用户信息<br/>");
    Response.Write("<a href=\"" + this.http_start + "search/book_list.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("更新操作|更新操作|Update operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("修改成功！|修改成功！|Successfully Update"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "search/book_list.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;page=" + this.page + "\">" + this.GetLang("返回|返回|Back") + "</a><br/>");
    }
    else if (this.INFO == "PWERROR")
    {

        Response.Write("<b>密码错误，请重新录入我的密码！</b><br/>");
    }
    else if (this.INFO == "NUM")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("需要输入数字！|需要输入数字！|need num"));
        Response.Write("</b><br/>");

    }
    Response.Write("</div>");
    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("用户ID：<a href=\"" + http_start + "bbs/userinfomore.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + touserid + "\">" + touserVo.userid + "</a><br/>");
        Response.Write("用户名：" + touserVo.username + "<br/>");
        if (touserVo.userid == 1000 || touserVo.userid == 956)
        {
            Response.Write("<a href=\"" + http_start + "admin/modifyusername00.aspx?siteid=" + this.siteid + "\">修改用户名</a><br/>");
        }
        Response.Write("昵称：" + touserVo.nickname + "<br/>");
        Response.Write("RMB：¥" + touserVo.RMB.ToString("f2") + "【<a href=\"" + this.http_start + "chinabank_wap/RMBAdd.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("search/toManager.aspx?siteid=" + this.siteid + "&amp;touserid=" + touserid) + "&amp;action=search&amp;touserid=" + touserid + "\">手工增减</a>｜<a href=\"" + this.http_start + "chinabank_wap/banklist.aspx?siteid=" + this.siteid + "&amp;tositeid="+this.siteid+"&amp;touserid=" + touserid + "&amp;backurl=" + HttpUtility.UrlEncode("search/toManager.aspx?siteid=" + this.siteid + "&amp;touserid=" + touserid) + "\">日志</a>】<br/>");
        Response.Write(siteVo.sitemoneyname + ":" + touserVo.money + "【<a href=\"" + this.http_start + "bbs/tomoney.aspx?siteid=" + this.siteid + "&amp;touserid="+touserid+"&amp;backurl=" + HttpUtility.UrlEncode("search/toManager.aspx?siteid=" + this.siteid + "&amp;touserid=" + touserid) + "\">手工增减</a>｜<a href=\"" + this.http_start + "bbs/banklist.aspx?siteid=" + this.siteid + "&amp;key="+touserid+"&amp;backurl=" + HttpUtility.UrlEncode("search/toManager.aspx?siteid=" + this.siteid + "&amp;touserid=" + touserid) + "\">日志</a>】<br/>");
        Response.Write("注册时间：" + string.Format("{0:yy-MM-dd HH:mm}", touserVo.RegTime) + "<br/>");
        Response.Write("最后登录：" + string.Format("{0:yy-MM-dd HH:mm}", touserVo.LastLoginTime) + "<br/>");

        Response.Write("<form name=\"f\" action=\"" + http_start + "search/toManager.aspx\" method=\"post\">");
        Response.Write(this.GetLang("重置密码|重置密码|change his password") + "：<br/>");
        Response.Write("<input type=\"text\" size=\"36\" name=\"topassword\" value=\"\"/><br/>");
        //Response.Write("(不重置密码留空)<br/>");
        Response.Write(this.GetLang("银行存款|银行存款|change his bank money") + "：<br/>");
        Response.Write("<input type=\"text\" size=\"36\" name=\"tobankmoney\" value=\"" + tobankmoney + "\"/><br/>");
        Response.Write(this.GetLang("重置经验|重置经验|change his expR") + "：<br/>");
        Response.Write("<input type=\"text\" size=\"36\" name=\"toexpR\" value=\"" + toexpR + "\"/><br/>");
        Response.Write(this.GetLang("管理权限|管理权限|管理权限 ") + "：<br/>");
        Response.Write("<select name=\"tomanagerlvl\">");
        Response.Write("<option value=\"" + touserVo.managerlvl + "\">" + touserVo.managerlvl + "</option>");
        Response.Write("<option value=\"00\">00_超级管理员</option>");
        Response.Write("<option value=\"01\">01_站长</option>");
        Response.Write("<option value=\"03\">03_总编辑</option>");
        Response.Write("<option value=\"04\">04_总版主</option>");
        Response.Write("<option value=\"02\">02_普通</option>");
        Response.Write("</select><br/>");
        Response.Write(this.GetLang("会员身份|会员身份|his ID") + "(<a href=\"" + this.http_start + "bbs/smalltypelist.aspx?siteid="+this.siteid +"&amp;systype=card&amp;sid="+this.sid+"\">管理</a>)：<br/>");
        Response.Write("<select name=\"tosessiontimeout\">");
        if (touserVo.SessionTimeout.ToString() != "0")
        {
            Response.Write("<option value=\"" + touserVo.SessionTimeout + "\">" + WapTool.GetUrlFileName(touserVo.idname) + "</option>");
        }
        Response.Write("<option value=\"0\">0—普通会员</option>");
        for (int i = 0; (idlistVo != null && i < idlistVo.Count); i++)
        {

            Response.Write("<option value=\"" + idlistVo[i].id + "\">" + idlistVo[i].id + "—"  +WapTool.GetUrlFileName(idlistVo[i].subclassName) + "</option>");
        }
        Response.Write("</select><br/>");
        Response.Write(WapTool.showIDEndTime(touserVo.siteid, touserVo.userid, touserVo.endTime, this.lang) + "<br/>");
        Response.Write(this.GetLang("更改时间|更改时间|change date") + "：<br/>");
        Response.Write("<input type=\"text\" size=\"36\" name=\"tochangedate\" value=\"" + tochangedate + "\"/><br/>(时间隔：2017-01-01)<br/>");
        Response.Write(this.GetLang("锁定用户|锁定用户|Lock ") + "：");
        Response.Write("<select name=\"tolockuser\">");
        if (touserVo.LockUser.ToString() == "1")
        {
            Response.Write("<option value=\"1\">是</option>");
        }
        Response.Write("<option value=\"0\">否</option>");
        Response.Write("<option value=\"1\">是</option>");
        Response.Write("</select><br/>");
        Response.Write("我的密码：<input type=\"text\" name=\"needpw\" value=\"" + needpw + "\" size=\"23\" /><br/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"touserid\" value=\"" + (touserid) + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("保 存|保 存|Save") + "\"/>");
        Response.Write("</form>");
        Response.Write("</div>");
    }
    //Response.Write("<div class=\"subtitle\">管理权限级别说明:");
    //Response.Write("<br /><b>[00]超级管理员</b>：管理所有网站及所有数据。分正超级管理员(网站ID等于会员ID)和副超级管理员(网站ID不等于会员ID)，权限一样。");
    //Response.Write("<br /><b>[01]站长</b>：管理自己网站内的所有数据，分正站长(网站ID等于会员ID)和副站长(网站ID不等于会员ID)，权限一样。");
    //Response.Write("<br /><b>[03]总编辑</b>：管理自己网站内的所有栏目内容。不包排版，网站设置等，只管理栏目内容。");
    //Response.Write("<br /><b>[04]总版主</b>：管理自己网站内的论坛栏目内容。");
    //Response.Write("<br /><b>[02]普通</b>：某网站下的会员。");
    //Response.Write("<br /><b>[**]栏目管理员(版主)</b>：只管理设定的栏目内容。此权限需要在修改栏目属性处添加。");
    //Response.Write("</div>");
    //Response.Write("<div class=\"tip\">更多设置请上WEB后台管理，用户管理 ， 修改用户信息</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "search/book_list.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a>");
    Response.Write("</div></div>");
    
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


