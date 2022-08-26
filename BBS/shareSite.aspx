<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shareSite.aspx.cs" Inherits="KeLin.WebSite.bbs.shareSite" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("推荐奖励|推荐奖励|推荐奖励 "), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");

    Response.Write("宣传地址一:<br/><input type=\"text\" name=\"t\" value=\"" + this.http_start + "t.aspx?id=" + this.siteid + "_" + this.userid + "\"/><br/><br/>");
    Response.Write("宣传地址二:<br/><input type=\"text\" name=\"u\" value=\"http://" + this.userid + ".zone." + dvo.domain.Replace("wap.", "").Replace("www.", "") + "\"/><br/>");
    Response.Write("(我的个人空间域名，需要独立IP+泛域名解析支持)<br/><br/>");
    
    Response.Write("游客通过以上地址访问成功注册会员您将到以下奖赏：<br/>");
    
    Response.Write("奖励:" + WapTool.getLvLRegular(siteVo.moneyregular, 4) + "个币<br/>");
    Response.Write("奖励:" + WapTool.getLvLRegular(siteVo.lvlRegular, 4) + "个经验<br/>");
    Response.Write("【<a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=5" + "\">查看我推荐的会员</a>】<br/>");
    Response.Write("【推荐我的人："+this.whoTelMe+"】<br/>");

    if (this.IsCheckManagerLvl("|00|01|", "") == true)
    {
        Response.Write("【<a href=\"" + http_start + "bbs/tjlist.aspx?siteid=" + siteid + "&amp;classid=0" + "\">站长查询推荐人</a>】<br/>");
    }
    
    Response.Write("<br/><a href=\"" + this.http_start + "myfile.aspx?sid=" + sid + "\">返回上级</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">推荐地址</div>");
    Response.Write("<div class=\"line1\">");
    Response.Write("宣传地址一:<br/><input type=\"text\" name=\"t\" value=\"" + this.http_start + "t.aspx?id=" + this.siteid + "_" + this.userid + "\"/>");
    Response.Write("</div>");
    Response.Write("<div class=\"line2\">");
    Response.Write("宣传地址二:<br/><input type=\"text\" name=\"u\" value=\"http://" + this.userid + ".zone." + dvo.domain.Replace("wap.","").Replace("www.","") + "\"/><br/>");
    Response.Write("(我的个人空间域名，需要独立IP+泛域名解析支持)");
    Response.Write("</div>");
    Response.Write("<div class=\"subtitle\">");
    
    Response.Write("得到奖赏：<br/>");
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("游客通过以上地址访问成功注册会员您将到以下奖赏：<br/>");
    Response.Write("奖励:" + WapTool.getLvLRegular(siteVo.moneyregular, 4) + "个"+siteVo.sitemoneyname+"<br/>");
    Response.Write("奖励:" + WapTool.getLvLRegular(siteVo.lvlRegular, 4) + "个经验<br/>");
    Response.Write("【<a href=\"" + http_start + "bbs/FriendList.aspx?siteid=" + siteid + "&amp;classid=0&amp;friendtype=5" + "\">查看我推荐的会员</a>】<br/>");
    Response.Write("【推荐我的人：" + this.whoTelMe + "】<br/>");
    if (this.IsCheckManagerLvl("|00|01|", "") == true)
    {
        Response.Write("【<a href=\"" + http_start + "bbs/tjlist.aspx?siteid=" + siteid + "&amp;classid=0" + "\">站长查询推荐人</a>】<br/>");
    }
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "myfile.aspx?sid=" + sid + "\">返回上级</a>");

    Response.Write("</div></div>");
    
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


