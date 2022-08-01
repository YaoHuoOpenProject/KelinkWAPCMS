<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.hotel.Book_View" %>
<%@ Import namespace="KeLin.ClassManager.Tool" %>
<% Response.Write(WapTool.showTop(bookVo.name, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }
   strhtml.Append("<b>酒店名称:</b>" + bookVo.name + "<br/>");
   strhtml.Append("<b>酒店等级:</b>" + bookVo.lvl + "<br/>");
   strhtml.Append("<b>所在城市:</b>" + bookVo.city + "<br/>");
   strhtml.Append("<b>酒店地址:</b>" + bookVo.address + "<br/>");
   strhtml.Append("<b>主推房型:</b>" + bookVo.roomtype + "<br/>");
   strhtml.Append("<b>挂牌价:</b>￥" + bookVo.showMoney + "元<br/>");
   strhtml.Append("<b>预订价:</b>￥" + bookVo.orderMoney + "元<br/>");
   strhtml.Append("<b>=其它房型及价格=</b><br/>");

   string[] arry1 = bookVo.otherroomtype.Split('|');
   string[] arry2 = bookVo.othershowmoney.Split('|');
   string[] arry3 = bookVo.otherordermoney.Split('|');

   try
   {
       for (int i = 0; i < arry1.Length; i++)
       {
           strhtml.Append("房间类型:" + arry1[i] + "<br/>挂牌价格:" + arry2[i] + "<br/>预订价格:" + arry3[i] + "<br/>----------<br/>");

       }
   }
   catch (Exception ex) { }
    
    
   strhtml.Append("<b>浏览:</b>" + bookVo.hits + " ");
   strhtml.Append("[<a href=\"" + this.http_start + "hotel/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">分享</a>][<a href=\"" + this.http_start + "hotel/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">收藏</a>]<br/> ");
   strhtml.Append("[<a href=\"" + http_start + "hotel/book_view_add.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我要预订</a>][<a href=\"" + http_start + "hotel/book_re.aspx?pageback=&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我的订单</a>]<br/>");

   strhtml.Append("=酒店基本情况=<br/>");
    strhtml.Append(content+"<br/>");
    strhtml.Append(linkURL);

    //显示上一页下一页
    strhtml.Append(preNextTitle);
    
   
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown + "<br/>");
    }
    
    strhtml.Append("<a href=\"" + this.http_start + "hotel/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+this.lpage+"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    //输出错误
    strhtml.Append(ERROR);
    strhtml.Append(WapTool.GetVS(wmlVo));
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
    strhtml.Append("<div class=\"subtitle\">" + bookVo.name +"</div>");
    strhtml.Append("<div class=\"content\">");
   
    strhtml.Append("<b>酒店等级:</b>" + bookVo.lvl + "<br/>");
    strhtml.Append("<b>所在城市:</b>" + bookVo.city + "<br/>");
    strhtml.Append("<b>酒店地址:</b>" + bookVo.address + "<br/>");
    strhtml.Append("<b>主推房型:</b>" + bookVo.roomtype + "<br/>");
    strhtml.Append("<b>挂牌价:</b>￥" + bookVo.showMoney + "元<br/>");
    strhtml.Append("<b>预订价:</b>￥" + bookVo.orderMoney + "元<br/>");
    strhtml.Append("<b>=其它房型及价格=</b><br/>");

    string[] arry1 = bookVo.otherroomtype.Split('|');
    string[] arry2 = bookVo.othershowmoney.Split('|');
    string[] arry3 = bookVo.otherordermoney.Split('|');

    try
    {
        for (int i = 0; i < arry1.Length; i++)
        {
            strhtml.Append("房间类型:" + arry1[i] + "<br/>挂牌价格:" + arry2[i] + "<br/>预订价格:" + arry3[i] + "<br/>");

        }
    }
    catch (Exception ex) { }


    //strhtml.Append("<b>浏览:</b>" + bookVo.hits + "<br/>");
    strhtml.Append("<b>=酒店基本情况=</b><br/>");

    strhtml.Append("" + content + "<br/>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "hotel/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">分享</a> <a href=\"" + this.http_start + "hotel/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">收藏</a>  ");
    strhtml.Append("</div></div>");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + http_start + "hotel/book_view_add.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我要预订</a> <a href=\"" + http_start + "hotel/book_re.aspx?pageback=&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我的订单</a> <br/>");
    strhtml.Append("</div></div>");
    
    strhtml.Append("</div>");

   
    strhtml.Append(linkURL);

    //显示上一页下一页
    strhtml.Append(preNextTitle);


    //显示电脑版
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
    strhtml.Append("<a href=\"" + this.http_start + "hotel/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
