<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toGroupInfo.aspx.cs" Inherits="KeLin.WebSite.bbs.toGroupInfo" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("用户身份级别规则|用户身份级别规则|Time online "), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (base.IsCheckManagerLvl("|00|01", ""))
    {
        strhtml.Append("【<a href=\"" + this.http_start + "bbs/smalltypelist.aspx?siteid=" + this.siteid + "&amp;systype=card\">添加删除管理</a>】<br/>");
    }
    strhtml.Append("我当前身份级别:<b>" + WapTool.GetMyID(userVo.idname, lang) + "<br/>" + WapTool.showIDEndTime(userVo.siteid ,userVo.userid ,userVo.endTime ,this.lang )+ "</b><br/>");
    strhtml.Append("<b>身份ID.分类名_需要RMB</b><br/>");
    strhtml.Append("<b>0</b>_普通会员__￥0.00(默认)<br/>");
    for (int i = 0; (sublistVo != null && i < sublistVo.Count); i++)
    {

        strhtml.Append("<b>" + sublistVo[i].id + "</b>." + WapTool.showImg(sublistVo[i].subclassName) + "_一个月(30天)需￥" + sublistVo[i].rank + ".00 <br/>[<a href=\"" + this.http_start + "bbs/togroupbuy.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + sublistVo[i].id + "&amp;sid="+this.sid+"\">购买/续费</a>][<a href=\"" + this.http_start + "bbs/togroupview.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + sublistVo[i].id + "\">查看权限</a>]<br/>");
        

    }
    if (sublistVo == null)
    {
        strhtml.Append("没有建分类，请联系站长添加<br/>");
    }
    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("允许查看会员联系信息：<br/>");
    strhtml.Append(WapTool.GetCardIDNameFormID_multiple(wmlVo.siteid, WapTool.GetSiteDefault(siteVo.Version, 35).Replace(",", "|"), wmlVo.lang));
   
    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("(1)<a href=\"" + this.http_start + "bbs/tomoneyinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">充值金币规则</a><br/>");
    strhtml.Append("(2)<a href=\"" + this.http_start + "bbs/totimeinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">在线时间规则</a><br/>");
    strhtml.Append("(3)<a href=\"" + this.http_start + "bbs/tolvlinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">经验头衔等级规则</a><br/>");
    strhtml.Append("(4)<a href=\"" + this.http_start + "bbs/toXunZhangInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">自动奖励勋章规则</a><br/>");
    
    strhtml.Append("(5)用户身份级别规则<br/>");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a><br/>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("用户身份级别规则|用户身份级别规则|Time online ") + "</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("我当前身份级别:<b>" + WapTool.GetMyID(userVo.idname, lang) + " <span class=\"right\">" + WapTool.showIDEndTime(userVo.siteid, userVo.userid, userVo.endTime, this.lang)  +"</span></b><br/>");
    //strhtml.Append("<br/>");
  
    if (base.IsCheckManagerLvl("|00|01", ""))
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\"><a href=\"" + this.http_start + "bbs/smalltypelist.aspx?siteid=" + this.siteid + "&amp;systype=card\">添加删除管理</a></div></div>");
    }
    
    strhtml.Append("<b>身份ID.分类名_需要RMB</b><br/>");
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("<b>0</b>.普通会员_￥0.00(默认)<br/>");
    strhtml.Append("</div>");
    
    for (int i = 0; (sublistVo != null && i < sublistVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append("<b>" + sublistVo[i].id + "</b>." + WapTool.showImg(sublistVo[i].subclassName) + "_一个月(30天)需￥" + sublistVo[i].rank + ".00 <br/> <a class=\"urlbtn\" href=\"" + this.http_start + "bbs/togroupbuy.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + sublistVo[i].id + "\">购买/续费</a> <a class=\"urlbtn\" href=\"" + this.http_start + "bbs/togroupview.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + sublistVo[i].id + "\">查看权限</a> <br/>");

        strhtml.Append("</div>");
    }
    if (sublistVo == null)
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("没有建分类，请联系站长添加<br/>");
        strhtml.Append("</div>");
    }
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("允许查看会员联系信息<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append(WapTool.GetCardIDNameFormID_multiple(wmlVo.siteid, WapTool.GetSiteDefault(siteVo.Version, 35).Replace(",","|"), wmlVo.lang));
    strhtml.Append("<br/>说明:网站默认设置[35]中设置。");
    strhtml.Append("</div>");
    
    
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码 
    strhtml.Append("<div class=\"mylink\">");
    strhtml.Append("(1)<a href=\"" + this.http_start + "bbs/tomoneyinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">充值金币规则</a> ");
    strhtml.Append("(2)<a href=\"" + this.http_start + "bbs/totimeinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">在线时间规则</a> ");
    strhtml.Append("(3)<a href=\"" + this.http_start + "bbs/tolvlinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">经验头衔等级规则</a> ");
    strhtml.Append("(4)<a href=\"" + this.http_start + "bbs/toXunZhangInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">自动奖励勋章规则</a> ");
    
    strhtml.Append("(5)用户身份级别规则 ");

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


