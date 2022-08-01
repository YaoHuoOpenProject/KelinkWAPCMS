<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyFile_toWAP.aspx.cs" Inherits="KeLin.WebSite.admin.MyFile_toWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
    StringBuilder sb = new StringBuilder();
    String welcome = "<div class=\"welcome\">";
    string line1 = "<div class=\"content\">";
    string line2 = "<div class=\"content\">";
    string title = "<div class=\"subtitle\">";
    string mylink = "<div class=\"mylink\">";
    string tip = "<div class=\"tip\">";
    string div = "</div>";
    string line = "";

    if (this.ver == "1")
    {
        welcome = "";
        line1 = "";
        line2 = "";
        title = "";
        mylink = "";
        tip = "";
        line = "----------<br/>";
        div = "<br/>";
        

    }
//显示头
Response.Write(WapTool.showTop(this.GetLang("我的地盘|我的地盤|my zone"), wmlVo));

if (this.ver == "1")
{
    Response.Write("<p>");
}

Response.Write(tip + "【当前编辑模式.<a href=\"" + this.http_start + "myfile.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">页面浏览模式</a>】<br/>");
Response.Write("【<a href=\"" + this.http_start + "admin/myfile_editwap.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">编辑我的地盘</a>.<a href=\"" + this.http_start + "admin/wapindexeditwap.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返回上级管理</a>】" + div);
                                                                                                                                                                                   
//显示中间部分
if (strHtml.IndexOf("[myfile]") > -1)
{



    sb.Append(welcome + "欢迎您：" + userVo.nickname + div);

    sb.Append(line1 + "<a href=\"" + http_start + "bbs/messagelist.aspx?siteid=" + siteid + "&amp;classid=0&amp;types=0" + "\">信箱</a>:(" + messagecount + "/" + messageAll + ") <a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=0" + "\">好友</a>(" + goodfriend + ")" + div);
    sb.Append(line2 + "我的ID: " + userVo.userid + WapTool.GetOLtimePic(http_start, siteVo.lvlTimeImg, userVo.LoginTimes) + div);
    sb.Append(line1 + "用户名: " + userVo.username + " <a href=\"" + this.http_start + "waplogout.aspx?siteid=" + siteid + "" + "\">退出</a>" + div);
    sb.Append(line2 + "我的" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname,this.lang) + ":" + userVo.money + " <a href=\"" + http_start + "bbs/banklist.aspx?siteid=" + siteid + "&amp;classid=0&amp;key="+this.userid+"" + "\">明细</a>" + div);
    sb.Append(line1 + "银行存款:" + userVo.myBankMoney + " 管理" + div);
    sb.Append(line2 + "我的经验:" + userVo.expr + div);
    sb.Append(line1 + "我的等级:" + WapTool.GetLevl(siteVo.lvlNumer, userVo.expr,userVo.money,type) + div);
    sb.Append(line2 + "我的头衔:" + WapTool.GetHandle(siteVo.lvlNumer, userVo.expr,userVo.money,type) + div);
    sb.Append(line1 + "我的身份:" + userVo.idname + div);
    sb.Append(line2 + "我的勋章:" + WapTool.GetMedal(userVo.moneyname, http_start) + div);
    sb.Append(line);
    sb.Append(title + "我的设置" + div);
    sb.Append(line1 + "<a href=\"" + this.http_start + "bbs/tolvlinfo.aspx?siteid=" + this.siteid + "\">等级规则</a> <a href=\"" + this.http_start + "bbs/tomoneyinfo.aspx?siteid=" + this.siteid + "\">充值金币</a>" + div);
    //sb.Append(line2 + "电子邮箱 通讯地址" + div);
    sb.Append(line1 + "<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid="+this.userid+"\">我的空间</a> <a href=\"" + this.http_start + "bbs/modifyuserinfo.aspx?siteid=" + siteid + "" + "\">修改资料</a>" + div);
    sb.Append(line2 + "<a href=\"" + http_start + "bbs/myfav.aspx?siteid=" + siteid + "&amp;classid=0" + "\">我的收藏</a> <a href=\"" + http_start + "album/myalbum.aspx?siteid=" + siteid + "&amp;touserid=" + this.userid + "" + "\">我的相册</a>" + div);
    sb.Append(line1 + "<a href=\"" + http_start + "rizhi/myrizhi.aspx?siteid=" + siteid + "&amp;touserid=" + this.userid + "" + "\">微博日志</a> <a href=\"" + this.http_start + "bbs/userguessbook.aspx?action=search&amp;siteid="+this.siteid+"&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "\">留言管理</a>" + div);
    sb.Append(line2 + "<a href=\"" + this.http_start + "bbs/toDefine.aspx?siteid=" + this.siteid + "\">浏览定制</a> <a href=\"" + this.http_start + "bbs/tomoney.aspx?siteid=" + this.siteid + "\">金币转帐</a>" + div);
    sb.Append(line);
    sb.Append(title + "我的相关信息" + div);
    sb.Append(line2 + "<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid="+this.siteid+"&amp;classid=0&amp;key=" + this.userid + "&amp;type=pub\">我的帖子</a> <a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + userid + "&amp;" + "\">我的回复帖</a>" + div);
    sb.Append(line1 + "<a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=2" + "\">我的追求</a> <a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=4" + "\">追求我的人</a>" + div);
    sb.Append(line2 + "<a href=\"" + http_start + "yuehui/book_list.aspx?key=" + userid + "&amp;type=touserid&amp;action=search&amp;siteid=" + this.siteid + "&amp;classid=0\">我的约会</a> <a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=1" + "\">我的黑名单</a>" + div);
    sb.Append(line1 + "<a href=\"" + http_start + "clan/main.asp?siteid=" + this.siteid + "&amp;classid=0\">我的家族</a> <a href=\"" + http_start + "/fun/marry.asp?siteid=" + this.siteid + "&amp;classid=0\">婚姻家汽车</a>" + div);

    strHtml = strHtml.Replace("[myfile]", sb.ToString());

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


if(this.ver=="1")  Response.Write(line);

if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
{

    Response.Write(title + "网站管理后台" + div);
    Response.Write(line1 + "【<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + siteid + "" + "\">站长管理后台</a>】" + div);
}
if (userVo.managerlvl == "00")
{

    Response.Write(line1 + "【<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + siteid + "" + "\">超级管理员后台</a>】" + div);
}

                                                                                                                                                                 
Response.Write(line);
Response.Write(title + "我的界面设置" + div);
Response.Write(mylink + "【<a href=\"" + http_start + "wapstyle/skin.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("admin/myfile_towap.aspx?siteid=" + siteid + "&amp;classid=" + classid) + "\">选择皮肤</a>】");
Response.Write("【<a href=\"" + http_start + "wapstyle/Lang.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("admin/myfile_towap.aspx?siteid=" + siteid + "&amp;classid=" + classid) + "\">选择语言</a>】" + div);
Response.Write(mylink + "【<a href=\"" + http_start + "wapstyle/mobileua.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("admin/myfile_towap.aspx?siteid=" + siteid + "&amp;classid=" + classid) + "\">选择机型</a>】");
Response.Write("【<a href=\"" + this.http_start + "waplogout.aspx?siteid=" + siteid + "" + "\">安全退出</a>】" + div);
Response.Write(mylink + "【<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回上级</a>】");
Response.Write("【<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>】" + div);


if (this.ver == "1")
{
    Response.Write("</p>");
}                                                                                                                                                                                                                                                                                                                               
//显示尾
Response.Write(WapTool.showDown(wmlVo));                                                                                                                                                                                                                      
%>
