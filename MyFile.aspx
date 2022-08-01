<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyFile.aspx.cs" Inherits="KeLin.WebSite.MyFile" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
    StringBuilder sb = new StringBuilder();
  
 //看是否有电脑版html代码
string isWebHtml = this.ShowWEB_list ("-1");
//显示头
Response.Write(WapTool.showTop(this.GetLang("我的地盘|我的地盤|my zone"), wmlVo));

if (this.ver == "1")
{
    Response.Write("<p>");
    if (strHtml.IndexOf("[myfile]") > -1)
    {
        sb.Append("欢迎您：" + WapTool.GetColorNickName(userVo.idname, userVo.nickname, lang, ver) + "<br/>");

        sb.Append("<a href=\"" + http_start + "bbs/messagelist.aspx?siteid=" + siteid + "&amp;classid=0&amp;types=0" + "\">信箱</a>:(" + messagecount + "/" + messageAll + ") <a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=0" + "\">好友</a>(" + goodfriend + ")" + "<br/>");
        sb.Append("我的ID: " + userVo.userid + WapTool.GetOLtimePic(http_start, siteVo.lvlTimeImg, userVo.LoginTimes) + "<br/>");
        sb.Append("用户名: " + userVo.username + " <a href=\"" + this.http_start + "waplogout.aspx?siteid=" + siteid + "" + "\">退出</a>" + "<br/>");

        sb.Append("我的" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + ":" + userVo.money + "" + "<br/>");
        sb.Append("<a href=\"" + http_start + "chinabank_wap/RMBtoMoney.aspx?siteid=" + siteid + "" + "\">购买" + siteVo.sitemoneyname + "</a>/<a href=\"" + this.http_start + "bbs/tomoney.aspx?siteid=" + this.siteid + "\">转帐</a>/<a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=0&amp;key=" + this.userid + "" + "\">明细</a>" + "<br/>");

        sb.Append("银行存款:" + userVo.myBankMoney + " <a href=\"" + this.http_start + "bbs/tomybankmoney.aspx?siteid=" + this.siteid + "\">管理</a>" + "<br/>");
        sb.Append("我的经验:" + userVo.expr + "<br/>");
        sb.Append("我的等级:" + WapTool.GetLevl(siteVo.lvlNumer, userVo.expr, userVo.money, type) + "<br/>");
        sb.Append("我的头衔:" + WapTool.GetHandle(siteVo.lvlNumer, userVo.expr, userVo.money, type) + "<br/>");
        sb.Append("我的身份:" + WapTool.GetMyID(userVo.idname, lang) + "<br/><a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "\">" + WapTool.showIDEndTime(userVo.siteid, userVo.userid, userVo.endTime, this.lang) + "</a>" + "<br/>");
        sb.Append("管理权限:" + WapTool.GetIDName(siteid, this.userid, userVo.managerlvl, this.lang) + "<br/>");

        sb.Append("我的勋章:" + WapTool.GetMedal(userVo.userid.ToString(), userVo.moneyname, WapTool.GetSiteDefault(siteVo.Version, 47), wmlVo) + "<br/>");


        sb.Append("<a href=\"" + http_start + "xinzhang/book_list.aspx?siteid=" + siteid + "&amp;classid=0" + "\">购买勋章</a>/<a href=\"" + http_start + "xinzhang/book_view_my.aspx?siteid=" + siteid + "&amp;classid=0" + "\">管理勋章</a>" + "<br/>");



        sb.Append("我的RMB:￥" + userVo.RMB.ToString("f2") + "<br/><a href=\"" + http_start + "chinabank_wap/selbank_wap.aspx?siteid=" + siteid + "" + "\">在线充值</a>/<a href=\"" + http_start + "chinabank_wap/banklist.aspx?siteid=" + siteid + "&amp;tositeid=" + this.siteid + "&amp;touserid=" + this.userid + "" + "\">明细</a>" + "<br/>");
    
    //sb.Append("电子邮箱 通讯地址" + "<br/>");
    sb.Append("我的设置" + "<br/>");
    sb.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + this.userid + "\">我的空间</a> <a href=\"" + this.http_start + "bbs/modifyuserinfo.aspx?siteid=" + siteid + "" + "\">修改资料</a>" + "<br/>");
    sb.Append("<a href=\"" + http_start + "bbs/myfav.aspx?siteid=" + siteid + "&amp;classid=0" + "\">我的收藏</a> <a href=\"" + http_start + "album/myalbum.aspx?siteid=" + siteid + "&amp;touserid=" + this.userid + "" + "\">我的相册</a>" + "<br/>");
    sb.Append("<a href=\"" + http_start + "rizhi/myrizhi.aspx?siteid=" + siteid + "&amp;touserid=" + this.userid + "" + "\">微博日志</a> <a href=\"" + this.http_start + "bbs/userguessbook.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "\">留言管理</a>" + "<br/>");
    sb.Append("<a href=\"" + this.http_start + "bbs/toDefine.aspx?siteid=" + this.siteid + "\">浏览定制</a> <a href=\"" + this.http_start + "bbs/shareSite.aspx?siteid=" + this.siteid + "\">推荐奖励</a>" + "<br/>");

    sb.Append("我的相关信息" + "<br/>");
    sb.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=0&amp;key=" + this.userid + "&amp;type=pub\">我的帖子(" + userVo.bbsCount + ")</a> <a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=0&amp;touserid=" + userid + "&amp;" + "\">回复帖(" + userVo.bbsReCount + ")</a>" + "<br/>");
    sb.Append("<a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=2" + "\">我的追求</a> <a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=4" + "\">追求我的人</a>" + "<br/>");
    sb.Append("<a href=\"" + http_start + "yuehui/book_list.aspx?key=" + userid + "&amp;type=touserid&amp;action=search&amp;siteid=" + this.siteid + "&amp;classid=0\">我的约会</a> <a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=1" + "\">我的黑名单</a>" + "<br/>");
    sb.Append("<a href=\"" + http_start + "clan/main.aspx?siteid=" + this.siteid + "&amp;classid=0\">我的家族</a> <a href=\"" + http_start + "fun/marry.asp?siteid=" + this.siteid + "&amp;classid=0&amp;sid="+this.sid+"\">婚姻家汽车</a>" + "<br/>");

    sb.Append("网站规则" + "<br/>");
    sb.Append("<a href=\"" + this.http_start + "bbs/tomoneyinfo.aspx?siteid=" + this.siteid + "\">" + siteVo.sitemoneyname + "获取消费规则</a><br/><a href=\"" + this.http_start + "bbs/tolvlinfo.aspx?siteid=" + this.siteid + "\">经验头衔等级规则</a><br/><a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "" + "\">购买身份级别规则</a><br/><a href=\"" + this.http_start + "bbs/toXunZhangInfo.aspx?siteid=" + this.siteid + "" + "\">自动奖励勋章规则</a><br/><a href=\"" + this.http_start + "bbs/totimeinfo.aspx?siteid=" + this.siteid + "" + "\">在线时间图标规则</a>" + "<br/>");
    
        strHtml = sb.ToString();
    }
    

    Response.Write(WapTool.ToWML(strHtml, wmlVo));
    
    bool isclassadm = WapTool.isClassAdmin(siteid, userid);
    if ("|00|01|03|".IndexOf(userVo.managerlvl) > 0 || isclassadm == true) Response.Write("网站管理后台<a href=\"" + this.http_start + "admin/loginwap.aspx?siteid=" + this.siteid + "\">&gt;&gt;</a>" + "<br/>");

    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("[<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + siteid + "" + "\">站长管理后台</a>]" + "<br/>");
    }
    if (userVo.managerlvl == "00")
    {

        Response.Write("[<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + siteid + "" + "\">超级管理员后台</a>]" + "<br/>");
    }
    if (userVo.managerlvl == "03")
    {

        Response.Write("[<a href=\"" + this.http_start + "admin/admin_waplist.aspx?siteid=" + siteid + "" + "\">总编辑管理后台</a>]" + "<br/>");
    }
    if (isclassadm == true)
    {

        Response.Write("[<a href=\"" + this.http_start + "admin/admin_waplist.aspx?siteid=" + siteid + "" + "\">栏目管理员后台</a>]" + "<br/>");
    }


    Response.Write("[<a href=\"" + this.http_start + "waplogout.aspx?siteid=" + siteid + "" + "\">安全退出</a>" + "-");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回上级</a>]");
  
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else
{

    //显示中间部分
    if (strHtml.IndexOf("[myfile]") > -1 || isWebHtml.IndexOf("[view]") > -1)
    {



        sb.Append("<div class=\"subtitle\">欢迎您：" + WapTool.GetColorNickName(userVo.idname, userVo.nickname, lang, ver) + "</div>");

        sb.Append("<div class=\"content\"><a href=\"" + http_start + "bbs/messagelist.aspx?siteid=" + siteid + "&amp;classid=0&amp;types=0" + "\">信箱</a>:(" + messagecount + "/" + messageAll + ") <a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=0" + "\">好友</a>(" + goodfriend + ")" + "<br/>");
        sb.Append("我的ID: " + userVo.userid + WapTool.GetOLtimePic(http_start, siteVo.lvlTimeImg, userVo.LoginTimes) + "<br/>");
        sb.Append("用户名: " + userVo.username + " <a href=\"" + this.http_start + "waplogout.aspx?siteid=" + siteid + "" + "\">退出</a>" + "<br/>");

        sb.Append("我的" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + ":" + userVo.money + "" + "<br/>");
        sb.Append("<a href=\"" + http_start + "chinabank_wap/RMBtoMoney.aspx?siteid=" + siteid + "" + "\">购买" + siteVo.sitemoneyname + "</a>/<a href=\"" + this.http_start + "bbs/tomoney.aspx?siteid=" + this.siteid + "\">转帐</a>/<a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=0&amp;key=" + this.userid + "" + "\">明细</a>" + "<br/>");

        sb.Append("银行存款:" + userVo.myBankMoney + " <a href=\"" + this.http_start + "bbs/tomybankmoney.aspx?siteid=" + this.siteid + "\">管理</a>" + "<br/>");
        sb.Append("我的经验:" + userVo.expr + "<br/>");
        sb.Append("我的等级:" + WapTool.GetLevl(siteVo.lvlNumer, userVo.expr, userVo.money, type) + "<br/>");
        sb.Append("我的头衔:" + WapTool.GetHandle(siteVo.lvlNumer, userVo.expr, userVo.money, type) + "<br/>");
        sb.Append("我的身份:" + WapTool.GetMyID(userVo.idname, lang) + "<br/><a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "\">" + WapTool.showIDEndTime(userVo.siteid, userVo.userid, userVo.endTime, this.lang) + "</a>" + "<br/>");
        sb.Append("管理权限:" + WapTool.GetIDName(siteid, this.userid, userVo.managerlvl, this.lang) + "<br/>");

        sb.Append("我的勋章:" + WapTool.GetMedal(userVo.userid.ToString(), userVo.moneyname, WapTool.GetSiteDefault(siteVo.Version, 47), wmlVo) + "<br/>");


        sb.Append("<a href=\"" + http_start + "xinzhang/book_list.aspx?siteid=" + siteid + "&amp;classid=0" + "\">购买勋章</a>/<a href=\"" + http_start + "xinzhang/book_view_my.aspx?siteid=" + siteid + "&amp;classid=0" + "\">管理勋章</a>" + "<br/>");


        //"<br/><a href=\"" + this.http_start + "XinZhang/XinZhangLieBiao.asp?siteid="+this.siteid+"&amp;classid=0&amp;sid="+this.sid+"\">购买勋章</a>" +
       

        sb.Append("我的RMB:￥" + userVo.RMB.ToString("f2") + "<br/><a href=\"" + http_start + "chinabank_wap/selbank_wap.aspx?siteid=" + siteid + "" + "\">在线充值</a>/<a href=\"" + http_start + "chinabank_wap/banklist.aspx?siteid=" + siteid + "&amp;tositeid=" + this.siteid + "&amp;touserid=" + this.userid + "" + "\">明细</a>" + "<br/>");

        sb.Append("</div>");
        sb.Append("<div class=\"subtitle\">我的设置" + "</div>");
        sb.Append("<div class=\"btBox\">");
        sb.Append("<div class=\"bt2\"><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + this.userid + "\">我的空间</a> <a href=\"" + this.http_start + "bbs/modifyuserinfo.aspx?siteid=" + siteid + "" + "\">修改资料</a>" + "<br/>");
        sb.Append("<a href=\"" + http_start + "bbs/myfav.aspx?siteid=" + siteid + "&amp;classid=0" + "\">我的收藏</a> <a href=\"" + http_start + "album/myalbum.aspx?siteid=" + siteid + "&amp;touserid=" + this.userid + "" + "\">我的相册</a>" + "<br/>");
        sb.Append("<a href=\"" + http_start + "rizhi/myrizhi.aspx?siteid=" + siteid + "&amp;touserid=" + this.userid + "" + "\">微博日志</a> <a href=\"" + this.http_start + "bbs/userguessbook.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "\">留言管理</a>" + "<br/>");
        sb.Append("<a href=\"" + this.http_start + "bbs/toDefine.aspx?siteid=" + this.siteid + "\">浏览定制</a> <a href=\"" + this.http_start + "bbs/shareSite.aspx?siteid=" + this.siteid + "\">推荐奖励</a>" + "<br/>");
        sb.Append("</div>");
        sb.Append("</div>");
        sb.Append("<div class=\"subtitle\">我的相关信息" + "</div>");
        sb.Append("<div class=\"btBox\">");
        sb.Append("<div class=\"bt2\"><a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=0&amp;key=" + this.userid + "&amp;type=pub\">我的帖子(" + userVo.bbsCount + ")</a> <a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=0&amp;touserid=" + userid + "&amp;" + "\">回复帖(" + userVo.bbsReCount + ")</a>" + "<br/>");
        sb.Append("<a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=2" + "\">我的追求</a> <a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=4" + "\">追求我的人</a>" + "<br/>");
        sb.Append("<a href=\"" + http_start + "yuehui/book_list.aspx?key=" + userid + "&amp;type=touserid&amp;action=search&amp;siteid=" + this.siteid + "&amp;classid=0\">我的约会</a> <a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=1" + "\">我的黑名单</a>" + "<br/>");
        sb.Append("<a href=\"" + http_start + "clan/main.aspx?siteid=" + this.siteid + "&amp;classid=0\">我的家族</a> <a href=\"" + http_start + "fun/marry.asp?siteid=" + this.siteid + "&amp;classid=0&amp;sid="+this.sid+"\">婚姻家汽车</a>" + "<br/>");
        sb.Append("</div>");
        sb.Append("</div>");
        sb.Append("<div class=\"subtitle\">网站规则" + "</div>");
        sb.Append("<div class=\"btBox\">");
        sb.Append("<div class=\"bt1\"><a href=\"" + this.http_start + "bbs/tomoneyinfo.aspx?siteid=" + this.siteid + "\">" + siteVo.sitemoneyname + "获取消费规则</a><br/><a href=\"" + this.http_start + "bbs/tolvlinfo.aspx?siteid=" + this.siteid + "\">经验头衔等级规则</a><br/><a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "" + "\">购买身份级别规则</a><br/><a href=\"" + this.http_start + "bbs/toXunZhangInfo.aspx?siteid=" + this.siteid + "" + "\">自动奖励勋章规则</a><br/><a href=\"" + this.http_start + "bbs/totimeinfo.aspx?siteid=" + this.siteid + "" + "\">在线时间图标规则</a>" + "<br/>");
        sb.Append("</div>");
        sb.Append("</div>");
        
        strHtml = strHtml.Replace("[myfile]", sb.ToString());



        isWebHtml = isWebHtml.Replace("[view]", sb.ToString());



    }
    //显示电脑效果
    if (isWebHtml != "")
    {
        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo));
        Response.End();

    }

    //解析UBB方法:
    if (strHtml.Trim() == "")
    {
        Response.Write("<b>请在WEB/WAP后台---页面综合排版---编辑我的地盘---[顶] 录入[myfile]或自己排版</b><br/>");
    }
    else
    {
        Response.Write(WapTool.ToWML(strHtml, wmlVo));
    }





    bool isclassadm = WapTool.isClassAdmin(siteid, userid);

    if ("|00|01|03|".IndexOf(userVo.managerlvl) > 0 || isclassadm == true)
    {
        Response.Write("<div class=\"subtitle\">");
        Response.Write("网站管理后台" + "");
        Response.Write("</div>");

        Response.Write("<div class=\"btBox\">");
        Response.Write("<div class=\"bt1\">");
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + siteid + "" + "\">站长管理后台</a>" + "<br/>");
    }
    if (userVo.managerlvl == "00")
    {

        Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + siteid + "" + "\">超级管理员后台</a>" + "<br/>");
    }
    if (userVo.managerlvl == "03")
    {

        Response.Write("<a href=\"" + this.http_start + "admin/admin_waplist.aspx?siteid=" + siteid + "" + "\">总编辑管理后台</a>" + "<br/>");
    }
    if (isclassadm == true)
    {

        Response.Write("<a href=\"" + this.http_start + "admin/admin_waplist.aspx?siteid=" + siteid + "" + "\">栏目管理员后台</a>" + "<br/>");
    }
    Response.Write("<a href=\"" + this.http_start + "admin/loginwap.aspx?siteid=" + this.siteid + "\"><img src=\"/NetImages/jiantou.gif\" alt=\"必看\"/> 管理后台说明</a>");
    Response.Write("</div>");
    Response.Write("</div>");
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回上级</a> ");
    Response.Write("<a href=\"" + this.http_start + "waplogout.aspx?siteid=" + siteid + "" + "\">安全退出</a> " );

    Response.Write("</div></div>");
    Response.Write(WapTool.GetVS(wmlVo));

}                                                                                                                                                                                                                                                                                                                            
//显示尾

Response.Write(WapTool.showDown(wmlVo));                                                                                                                                                                                                                      
%>
