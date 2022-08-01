<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toMoneyInfo.aspx.cs" Inherits="KeLin.WebSite.bbs.toMoneyInfo" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("充值金币规则|充值金币规则|money "), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    strhtml.Append("<b>"+siteVo.sitemoneyname+"获取或消费:</b><br/>");
    strhtml.Append("1.<a href=\"" + http_start + "chinabank_wap/RMBtoMoney.aspx?siteid=" + siteid + "&amp;backurl="+HttpUtility.UrlEncode(backurl)+"\">我要在线购买</a><br/>");
    
    strhtml.Append("2.站长设置默认规则:<br/>");
    strhtml.Append("发贴奖励数:" + WapTool.getLvLRegular(siteVo.moneyregular,0) + "个<br/>");
    strhtml.Append("回贴奖励数:" + WapTool.getLvLRegular(siteVo.moneyregular, 1) + "个<br/>");
    strhtml.Append("加精奖励数:" + WapTool.getLvLRegular(siteVo.moneyregular, 2) + "个<br/>");
    strhtml.Append("置顶奖励数:" + WapTool.getLvLRegular(siteVo.moneyregular, 3) + "个<br/>");
    strhtml.Append("推荐奖励:" + WapTool.getLvLRegular(siteVo.moneyregular, 4) + "个<br/>");
    strhtml.Append("3.站长直接增加或兑换等<br/>");
    strhtml.Append("4.论坛中赏帖、购买帖、签到帖<br/>");
    strhtml.Append("5.游戏赚币或其它<br/>");
    strhtml.Append("6.栏目设置的消费币等<br/>");
    strhtml.Append("说明:还有每个栏目属性设置参数可能不同。<br/>");
    strhtml.Append("----------<br/>");

    strhtml.Append("(1)充值金币规则<br/>");
    strhtml.Append("(2)<a href=\"" + this.http_start + "bbs/totimeinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">在线时间规则</a><br/>");
    strhtml.Append("(3)<a href=\"" + this.http_start + "bbs/tolvlinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">经验头衔等级规则</a><br/>");
    strhtml.Append("(4)<a href=\"" + this.http_start + "bbs/toXunZhangInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">自动奖励勋章规则</a><br/>");
    
    strhtml.Append("(5)<a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">用户身份级别规则</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a><br/>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   
    
    strhtml.Append("<div class=\"title\">" + this.GetLang("经验头衔等级规则|经验头衔等级规则|ExpR ") + "</div>");
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<b>" + siteVo.sitemoneyname + "获取或消费:</b>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("1.<a href=\"" + http_start + "chinabank_wap/RMBtoMoney.aspx?siteid=" + siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">我要在线购买</a><br/>");

    strhtml.Append("2.站长设置默认规则:<br/>");
    strhtml.Append("发贴奖励数:" + WapTool.getLvLRegular(siteVo.moneyregular, 0) + "个<br/>");
    strhtml.Append("回贴奖励数:" + WapTool.getLvLRegular(siteVo.moneyregular, 1) + "个<br/>");
    strhtml.Append("加精奖励数:" + WapTool.getLvLRegular(siteVo.moneyregular, 2) + "个<br/>");
    strhtml.Append("置顶奖励数:" + WapTool.getLvLRegular(siteVo.moneyregular, 3) + "个<br/>");
    strhtml.Append("推荐奖励:" + WapTool.getLvLRegular(siteVo.moneyregular, 4) + "个<br/>");
    strhtml.Append("3.站长直接增加或兑换等<br/>");
    strhtml.Append("4.论坛中赏帖、购买帖、签到帖<br/>");
    strhtml.Append("5.游戏赚币或其它<br/>");
    strhtml.Append("6.栏目设置的消费币等<br/>");
    strhtml.Append("说明:还有每个栏目属性设置参数可能不同。<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"mylink\">");
    strhtml.Append("(1)充值金币规则<br/>");
    strhtml.Append("(2)<a href=\"" + this.http_start + "bbs/totimeinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">在线时间规则</a><br/>");
    strhtml.Append("(3)<a href=\"" + this.http_start + "bbs/tolvlinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">经验头衔等级规则</a><br/>");
    strhtml.Append("(4)<a href=\"" + this.http_start + "bbs/toXunZhangInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">自动奖励勋章规则</a><br/>");
    
    strhtml.Append("(5)<a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">用户身份级别规则</a><br/>");
   
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a><br/>");
    strhtml.Append("</div></div>");
    
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }

    Response.Write(strhtml);

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


