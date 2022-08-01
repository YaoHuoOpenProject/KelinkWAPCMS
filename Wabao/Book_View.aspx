<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.wabao.Book_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(bookVo.book_title, wmlVo));//显示头  
                                                                                                                                                                   
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }
  
    

   
   strhtml.Append("<br/>--------<br/>");
    
   strhtml.Append("<b>"+bookVo.book_title +"</b><br/>");

 

    //strhtml.Append("------------<br/>");
    strhtml.Append(bookVo.book_content + "<br/>");
    strhtml.Append("------------<br/>");
    strhtml.Append("【礼品开放时间】" + bookVo.startTime + "-" + bookVo.endTime + " 点<br/>");
    if (bookVo.needCardID.Trim() != "")
    {
        strhtml.Append("【允许会员身份】" + WapTool.GetCardIDNameFormID_multiple(siteid, bookVo.needCardID, this.lang) + "<br/>");
    }

    if (bookVo.rand == 0)
    {
        strhtml.Append("【挖中奖几率】人人有份哦!<br/>");
    }
    else
    {
        strhtml.Append("【挖中奖几率】" + 100 / bookVo.rand + "%<br/>");
    }

    if (bookVo.needMoney > 0)
    {
        strhtml.Append("【" + siteVo.sitemoneyname + "要大于】" + bookVo.needMoney + "<br/>");
    }
    if (bookVo.needExp > 0)
    {
        strhtml.Append("【经验要大于】" + bookVo.needExp + "<br/>");
    }

    if (bookVo.subMoney > 0)
    {
        strhtml.Append("【每次扣" + siteVo.sitemoneyname + "】" + bookVo.subMoney + "<br/>");
    }
    if (bookVo.addMoney > 0)
    {
        strhtml.Append("【挖到送" + siteVo.sitemoneyname + "】" + bookVo.addMoney + "<br/>");
    }
    if (bookVo.addExp > 0)
    {
        strhtml.Append("【挖到送经验】" + bookVo.addExp + "<br/>");
    }

    int w = GetPer(bookVo.countAll.ToString(), bookVo.countHasGet.ToString());


    strhtml.Append("【还剩礼品量】<img src=\"/NetImages/jd.gif\" alt=\"...\" width=\"" + (100 - w) + "\" height=\"16\"/>" +GetSub(bookVo.countAll.ToString(), bookVo.countHasGet.ToString()) + "%<br/>");
    strhtml.Append("【<a href=\"" + this.http_start + "wabao/rank_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=0&amp;id=" + this.id + "" + "\">玩家排行榜</a>】<br/>");

    if (this.userid != "0")
    {
        strhtml.Append("【我的身份:" + WapTool.GetMyID(userVo.idname, lang) + "/" + siteVo.sitemoneyname + ":" + userVo.money + "/经验:" + userVo.expr + "】<br/>");
    }
    strhtml.Append("【<a href=\"" + this.http_start + "wabao/book_view_doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "&amp;id=" + this.id + "" + "\">手气不错，马上挖一下</a>】<br/>");
   

    strhtml.Append("------------<br/>");
    //显示上一页下一页
    strhtml.Append(preNextTitle);
    strhtml.Append("------------<br/>");
    
   
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown + "<br/>");
    }

    strhtml.Append("<a href=\"" + this.http_start + "wabao/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    //输出错误
    strhtml.Append(ERROR);
    strhtml.Append("</p>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
}else{ //2.0


    //显示广告
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop );
    }
    strhtml.Append("<!--web-->");
    strhtml.Append("<div class=\"subtitle\">" + bookVo.book_title +"</div>" );

    strhtml.Append("<div class=\"content\"><div class=\"line1\">" + bookVo.book_content + "</div>");
    strhtml.Append("");
    strhtml.Append("【礼品开放时间】" + bookVo.startTime + "-" + bookVo.endTime + " 点<br/>");
    if (bookVo.needCardID.Trim() != "")
    {
        strhtml.Append("【允许会员身份】" + WapTool.GetCardIDNameFormID_multiple(siteid, bookVo.needCardID, this.lang) + "<br/>");
    }

    if (bookVo.rand == 0)
    {
        strhtml.Append("【挖中奖几率】人人有份哦!<br/>");
    }
    else
    {
        strhtml.Append("【挖中奖几率】" + 100/bookVo.rand +"%<br/>");
    }
    
    if (bookVo.needMoney > 0)
    {
        strhtml.Append("【" + siteVo.sitemoneyname + "要大于】" + bookVo.needMoney + "<br/>");
    }
    if (bookVo.needExp > 0)
    {
        strhtml.Append("【经验要大于】" + bookVo.needExp + "<br/>");
    }
    
    if (bookVo.subMoney>0)
    {
        strhtml.Append("【每次扣" + siteVo.sitemoneyname + "】" + bookVo.subMoney + "<br/>");
    }
    if (bookVo.addMoney > 0)
    {
        strhtml.Append("【挖到送" + siteVo.sitemoneyname + "】" + bookVo.addMoney + "<br/>");
    }
    if (bookVo.addExp > 0)
    {
        strhtml.Append("【挖到送经验】" + bookVo.addExp + "<br/>");
    }

    int w = GetPer(bookVo.countAll.ToString(), bookVo.countHasGet.ToString());


    strhtml.Append("【还剩礼品量】<img src=\"/NetImages/jd.gif\" alt=\"...\" width=\"" + (100 - w) + "\" height=\"16\"/>" +GetSub(bookVo.countAll.ToString(), bookVo.countHasGet.ToString()) + "%<br/>");
    
    if (this.userid != "0")
    {
        strhtml.Append("【我的身份:" + WapTool.GetMyID(userVo.idname, lang) + "/" + siteVo.sitemoneyname + ":" + userVo.money + "/经验:" + userVo.expr + "】<br/>");
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\"><a href=\"" + this.http_start + "wabao/rank_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=0&amp;id=" + this.id + "" + "\">玩家排行榜</a></div></div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\"><a href=\"" + this.http_start + "wabao/book_view_doit.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "&amp;id=" + this.id + "" + "\">手气不错，马上挖一下</a></div></div>");

    
    strhtml.Append("</div>");
    

    //显示上一页下一页
    strhtml.Append(preNextTitle);


    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<!--web-->");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }
    
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown);
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "wabao/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div>");
    strhtml.Append("</div>");
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
