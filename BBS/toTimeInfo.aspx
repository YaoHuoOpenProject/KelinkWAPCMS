<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toTimeInfo.aspx.cs" Inherits="KeLin.WebSite.bbs.toTimeInfo" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("在线时间规则|在线时间规则|Time online "), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);

    strhtml.Append("<b>在线时间(天)规则：</b><br/>");
    
    try{
    string[] lvlstr = siteVo.lvlTimeImg.Split('_');

    string[] lvl0 = lvlstr[0].Split('|');
    string[] lvl1 = lvlstr[1].Split('|');


    if (WapTool.CheckStrCount(lvlstr[0], "|") == WapTool.CheckStrCount(lvlstr[1], "|") )
    {


        for (int i = 0; i < lvl0.Length; i++)
        {
            if (i == lvl0.Length-1)
            {
                strhtml.Append(string.Format("{0}:<img src=\""+http_start+"bbs/medal/{1}\" alt=\"{2}\"/><br/>", Convert.ToInt32(lvl0[i]) + 1, lvl1[i], lvl1[i]));
            }
            else
            {
                strhtml.Append(string.Format("{0}-{1}:<img src=\"" + http_start + "bbs/medal/{2}\" alt=\"{3}\"/><br/>", Convert.ToInt32(lvl0[i]) + 1, lvl0[i + 1], lvl1[i], lvl1[i]));
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
    strhtml.Append("(2)在线时间规则<br/>");
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
    
    strhtml.Append("<div class=\"title\">" + this.GetLang("在线时间规则|在线时间规则|Time online ") + "</div>");
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<b>在线天数与等级图标：</b>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    try{
    string[] lvlstr = siteVo.lvlTimeImg.Split('_');

    string[] lvl0 = lvlstr[0].Split('|');
    string[] lvl1 = lvlstr[1].Split('|');


    if (WapTool.CheckStrCount(lvlstr[0], "|") == WapTool.CheckStrCount(lvlstr[1], "|"))
    {


        for (int i = 0; i < lvl0.Length; i++)
        {
            if (i == lvl0.Length - 1)
            {
                strhtml.Append(string.Format("{0}：<img src=\"" + http_start + "bbs/medal/{1}\" alt=\"{2}\"/><br/>", Convert.ToInt32(lvl0[i]) + 1, lvl1[i], lvl1[i]));
            }
            else
            {
                strhtml.Append(string.Format("{0}-{1}：<img src=\"" + http_start + "bbs/medal/{2}\" alt=\"{3}\"/><br/>", Convert.ToInt32(lvl0[i]) + 1, lvl0[i + 1], lvl1[i], lvl1[i]));
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
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"mylink\">");
    strhtml.Append("(1)<a href=\"" + this.http_start + "bbs/tomoneyinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">充值金币规则</a><br/>");
    strhtml.Append("(2)在线时间规则<br/>");
    strhtml.Append("(3)<a href=\"" + this.http_start + "bbs/tolvlinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">经验头衔等级规则</a><br/>");
    //strhtml.Append("(4)<a href=\"" + this.http_start + "bbs/toXunZhangInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">自动奖励勋章规则</a><br/>");
    //strhtml.Append("(5)<a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">用户身份级别规则</a><br/>");
 
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


