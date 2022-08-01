<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toLvlInfo.aspx.cs" Inherits="KeLin.WebSite.bbs.toLvlInfo" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("经验头衔等级规则|经验头衔等级规则|ExpR "), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    strhtml.Append("<b>经验获取:</b><br/>");
    strhtml.Append("1.在线一分钟增加" + lvlmoney + "个。<br/>");
    
    strhtml.Append("2.站长设置规则:<br/>");
    strhtml.Append("发贴奖励数:" + WapTool.getLvLRegular(siteVo.lvlRegular,0) + "个<br/>");
    strhtml.Append("回贴奖励数:" + WapTool.getLvLRegular(siteVo.lvlRegular, 1) + "个<br/>");
    strhtml.Append("加精奖励数:" + WapTool.getLvLRegular(siteVo.lvlRegular, 2) + "个<br/>");
    strhtml.Append("置顶奖励数:" + WapTool.getLvLRegular(siteVo.lvlRegular, 3) + "个<br/>");
    strhtml.Append("推荐奖励:" + WapTool.getLvLRegular(siteVo.lvlRegular, 4) + "个<br/>");
    strhtml.Append("3.站长直接增加或兑换等<br/>");
    strhtml.Append("----------<br/>");
    if (WapTool.GetSiteDefault(siteVo.Version, 27) == "1")
    {
        strhtml.Append("<b>"+siteVo.sitemoneyname+"-头衔-等级</b><br/>");
    }
    else
    {
        strhtml.Append("<b>经验-头衔-等级</b><br/>");
    }

    try
    {
        string[] lvlstr = siteVo.lvlNumer.Split('_');

        string[] lvl0 = lvlstr[0].Split('|');
        string[] lvl1 = lvlstr[1].Split('|');
        string[] lvl2 = lvlstr[2].Split('|');

        if (WapTool.CheckStrCount(lvlstr[0], "|") == WapTool.CheckStrCount(lvlstr[1], "|") && WapTool.CheckStrCount(lvlstr[1], "|") == WapTool.CheckStrCount(lvlstr[2], "|"))
        {


            for (int i = 0; i < lvl0.Length; i++)
            {
                if (i == lvl0.Length - 1)
                {
                    strhtml.Append(string.Format("{0}:{1}:{2}<br/>", Convert.ToInt64(lvl0[i]) + 1, lvl1[i], lvl2[i]));
                }
                else
                {
                    strhtml.Append(string.Format("{0}-{1}:{2}:{3}<br/>", Convert.ToInt64(lvl0[i]) + 1, lvl0[i + 1], lvl1[i], lvl2[i]));
                }
            }
        }
        else
        {
            strhtml.Append("配置出错，参数个数不一致！<br/>");
        }
    }
    catch (Exception ex)
    {
        strhtml.Append("站长还没有配置此参数，或配置错误！");
    }
    strhtml.Append("<br/>");
    strhtml.Append("(1)<a href=\"" + this.http_start + "bbs/tomoneyinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">充值金币规则</a><br/>");
    strhtml.Append("(2)<a href=\"" + this.http_start + "bbs/totimeinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">在线时间规则</a><br/>");
    strhtml.Append("(3)经验头衔等级规则<br/>");
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
    strhtml.Append("<b>经验获取:</b><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("1.在线一分钟增加"+lvlmoney+"个。<br/>");
    strhtml.Append("2.站长设置规则:<br/>");
    strhtml.Append("发贴奖励数:" + WapTool.getLvLRegular(siteVo.lvlRegular, 0) + "个<br/>");
    strhtml.Append("回贴奖励数:" + WapTool.getLvLRegular(siteVo.lvlRegular, 1) + "个<br/>");
    strhtml.Append("加精奖励数:" + WapTool.getLvLRegular(siteVo.lvlRegular, 2) + "个<br/>");
    strhtml.Append("置顶奖励数:" + WapTool.getLvLRegular(siteVo.lvlRegular, 3) + "个<br/>");
    strhtml.Append("推荐奖励:" + WapTool.getLvLRegular(siteVo.lvlRegular, 4) + "个<br/>");
    strhtml.Append("3.站长直接增加或兑换等<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">");
    if (WapTool.GetSiteDefault(siteVo.Version, 27) == "1")
    {
        strhtml.Append("<b>" + siteVo.sitemoneyname + "-头衔-等级</b><br/>");
    }
    else
    {
        strhtml.Append("<b>经验-头衔-等级</b><br/>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    try{
    string[] lvlstr = siteVo.lvlNumer.Split('_');

    string[] lvl0 = lvlstr[0].Split('|');
    string[] lvl1 = lvlstr[1].Split('|');
    string[] lvl2 = lvlstr[2].Split('|');

    if (WapTool.CheckStrCount(lvlstr[0], "|") == WapTool.CheckStrCount(lvlstr[1], "|") && WapTool.CheckStrCount(lvlstr[1], "|") == WapTool.CheckStrCount(lvlstr[2], "|"))
    {


        for (int i = 0; i < lvl0.Length; i++)
        {
            if (i == lvl0.Length - 1)
            {
                strhtml.Append(string.Format("{0}:{1}:{2}<br/>", Convert.ToInt64(lvl0[i]) + 1, lvl1[i], lvl2[i]));
            }
            else
            {
                strhtml.Append(string.Format("{0}-{1}:{2}:{3}<br/>", Convert.ToInt64(lvl0[i]) + 1, lvl0[i + 1], lvl1[i], lvl2[i]));
            }
        }
    }
    else
    {
        strhtml.Append("配置出错，参数个数不一致！<br/>");
    }
    }
    catch (Exception ex)
    {
        strhtml.Append("站长还没有配置此参数，或配置错误:<br/>----------<br/>");
        strhtml.Append(ex.ToString());
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"mylink\">");
    strhtml.Append("(1)<a href=\"" + this.http_start + "bbs/tomoneyinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">充值金币规则</a> ");
    strhtml.Append("(2)<a href=\"" + this.http_start + "bbs/totimeinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">在线时间规则</a> ");
    strhtml.Append("(3)经验头衔等级规则<br/>");
    strhtml.Append("(4)<a href=\"" + this.http_start + "bbs/toXunZhangInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">自动奖励勋章规则</a> ");
    
    strhtml.Append("(5)<a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">用户身份级别规则</a> ");

    
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
    Response.Write(WapTool.ToWML(strhtml.ToString(),wmlVo));

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


