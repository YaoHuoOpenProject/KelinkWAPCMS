<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toXunZhangInfo.aspx.cs" Inherits="KeLin.WebSite.bbs.toXunZhangInfo" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("自动奖励勋章规则|自动奖励勋章规则|Time online "), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);

  

    strhtml.Append("<b>按" + siteVo.sitemoneyname + "自动奖励勋章规则：</b><br/>");
 

    string par42_str = WapTool.GetSiteDefault(siteVo.Version, 42).Replace("|", ",");
    string par43_str = WapTool.GetSiteDefault(siteVo.Version, 43).Replace("|", ",");

    string[] par42 = par42_str.Split(',');
    string[] par43 = par43_str.Split(',');

    try
    {
        if (WapTool.CheckStrCount(par42_str, ",") == WapTool.CheckStrCount(par43_str, ","))
        {


            for (int i = 0; i < par42.Length; i++)
            {
                if (i == par42.Length - 1)
                {
                    strhtml.Append(string.Format("{0}:<img src=\"{1}\" alt=\"{2}\"/><br/>", Convert.ToInt32(par42[i]) + 1, par43[i], par43[i]));
                }
                else
                {
                    strhtml.Append(string.Format("{0}-{1}:<img src=\"{2}\" alt=\"{3}\"/><br/>", Convert.ToInt32(par42[i]) + 1, par42[i + 1], par43[i], par43[i]));
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
        strhtml.Append("配置出错，站长可能还没有配制此规则！<br/>");
    }


    strhtml.Append("----------<br/>");
    strhtml.Append("<b>按经验自动奖励勋章规则：</b><br/>");


    string par44_str = WapTool.GetSiteDefault(siteVo.Version, 44).Replace("|", ",");
    string par45_str = WapTool.GetSiteDefault(siteVo.Version, 45).Replace("|", ",");

    string[] par44 = par44_str.Split(',');
    string[] par45 = par45_str.Split(',');

    try
    {
        if (WapTool.CheckStrCount(par44_str, ",") == WapTool.CheckStrCount(par45_str, ","))
        {


            for (int i = 0; i < par44.Length; i++)
            {
                if (i == par44.Length - 1)
                {
                    strhtml.Append(string.Format("{0}:<img src=\"{1}\" alt=\"{2}\"/><br/>", Convert.ToInt32(par44[i]) + 1, par45[i], par45[i]));
                }
                else
                {
                    strhtml.Append(string.Format("{0}-{1}:<img src=\"{2}\" alt=\"{3}\"/><br/>", Convert.ToInt32(par44[i]) + 1, par44[i + 1], par45[i], par45[i]));
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
        strhtml.Append("配置出错，站长可能还没有配制此规则！<br/>");
    }

   
    strhtml.Append("----------<br/>");
    strhtml.Append("(1)<a href=\"" + this.http_start + "bbs/tomoneyinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">充值金币规则</a><br/>");
    strhtml.Append("(2)<a href=\"" + this.http_start + "bbs/totimeinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">在线时间规则</a><br/>");
    
    strhtml.Append("(3)<a href=\"" + this.http_start + "bbs/tolvlinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">经验头衔等级规则</a><br/>");
    strhtml.Append("(4)自动奖励勋章规则<br/>");
    
    strhtml.Append("(5)<a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">用户身份级别规则</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a><br/>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   
    
    strhtml.Append("<div class=\"title\">" + this.GetLang("自动奖励勋章规则|自动奖励勋章规则|Time online ") + "</div>");
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<b>按"+siteVo.sitemoneyname+"自动奖励勋章规则：</b>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");

    string par42_str = WapTool.GetSiteDefault(siteVo.Version, 42).Replace("|", ",");
    string par43_str = WapTool.GetSiteDefault(siteVo.Version, 43).Replace("|", ",");

    string[] par42 = par42_str.Split(',');
    string[] par43 = par43_str.Split(',');

    try
    {
        if (WapTool.CheckStrCount(par42_str, ",") == WapTool.CheckStrCount(par43_str, ","))
        {


            for (int i = 0; i < par42.Length; i++)
            {
                if (i == par42.Length - 1)
                {
                    strhtml.Append(string.Format("{0}:<img src=\"{1}\" alt=\"{2}\"/><br/>", Convert.ToInt32(par42[i]) + 1, par43[i], par43[i]));
                }
                else
                {
                    strhtml.Append(string.Format("{0}-{1}:<img src=\"{2}\" alt=\"{3}\"/><br/>", Convert.ToInt32(par42[i]) + 1, par42[i + 1], par43[i], par43[i]));
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
        strhtml.Append("配置出错，站长可能还没有配制此规则！<br/>");
    }

    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<b>按经验自动奖励勋章规则：</b>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");

    string par44_str = WapTool.GetSiteDefault(siteVo.Version, 44).Replace("|", ",");
    string par45_str = WapTool.GetSiteDefault(siteVo.Version, 45).Replace("|", ",");

    string[] par44 = par44_str.Split(',');
    string[] par45 = par45_str.Split(',');

    try
    {
        if (WapTool.CheckStrCount(par44_str, ",") == WapTool.CheckStrCount(par45_str, ","))
        {


            for (int i = 0; i < par44.Length; i++)
            {
                if (i == par44.Length - 1)
                {
                    strhtml.Append(string.Format("{0}:<img src=\"{1}\" alt=\"{2}\"/><br/>", Convert.ToInt32(par44[i]) + 1, par45[i], par45[i]));
                }
                else
                {
                    strhtml.Append(string.Format("{0}-{1}:<img src=\"{2}\" alt=\"{3}\"/><br/>", Convert.ToInt32(par44[i]) + 1, par44[i + 1], par45[i], par45[i]));
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
        strhtml.Append("配置出错，站长可能还没有配制此规则！<br/>");
    }

    strhtml.Append("</div>");
    strhtml.Append("<div class=\"mylink\">");
    strhtml.Append("(1)<a href=\"" + this.http_start + "bbs/tomoneyinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">充值金币规则</a><br/>");
    strhtml.Append("(2)<a href=\"" + this.http_start + "bbs/totimeinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">在线时间规则</a><br/>");
    
    strhtml.Append("(3)<a href=\"" + this.http_start + "bbs/tolvlinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">经验头衔等级规则</a><br/>");
    strhtml.Append("(4)自动奖励勋章规则<br/>");
    
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


