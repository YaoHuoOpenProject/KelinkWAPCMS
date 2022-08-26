<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.airplane.Book_View" %>
<%@ Import namespace="KeLin.ClassManager.Tool" %>
<% Response.Write(WapTool.showTop(bookVo.planeltd, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }
   strhtml.Append("<b>航空公司:</b>" + bookVo.planeltd + "<br/>");
   strhtml.Append("<b>航班号:</b>" + bookVo.planeNum + "<br/>");
   strhtml.Append("<b>机型:</b>" + bookVo.planeType + "<br/>");
   strhtml.Append("<b>仓位:</b>" + bookVo.seatType + "<br/>");
   strhtml.Append("<b>价格:</b>￥" + bookVo.money + "元<br/>");

   strhtml.Append("<b>起飞时间:</b>" + bookVo.startTime + "<br/><b>到达时间:</b>" + bookVo.endTime + "<br/>");
   strhtml.Append("<b>起飞城市:</b>" + bookVo.startCity + "<br/><b>目的城市:</b>" + bookVo.endCity + "<br/>");

   strhtml.Append("<b>浏览:</b>" + bookVo.hits + " ");
   strhtml.Append("[<a href=\"" + this.http_start + "airplane/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">分享</a>][<a href=\"" + this.http_start + "airplane/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">收藏</a>]<br/> ");
   strhtml.Append("[<a href=\"" + http_start + "airplane/book_view_add.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我要预订</a>][<a href=\"" + http_start + "airplane/book_re.aspx?pageback=&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我的订单</a>]<br/>");
    
    strhtml.Append("------------<br/>");
    strhtml.Append(content+"<br/>");
    strhtml.Append(linkURL);

    //显示上一页下一页
    strhtml.Append(preNextTitle);
    
   
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown + "<br/>");
    }
    
    strhtml.Append("<a href=\"" + this.http_start + "airplane/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+this.lpage+"" + "\">返回上级</a> ");
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
    strhtml.Append("<div class=\"subtitle\">" + bookVo.planeltd +" "+bookVo.planeNum+"</div>" );
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<b>航空公司:</b>" + bookVo.planeltd + "<br/>");
    strhtml.Append("<b>航班号:</b>" + bookVo.planeNum + "<br/>");
    strhtml.Append("<b>机型:</b>" + bookVo.planeType + "<br/>");
    strhtml.Append("<b>仓位:</b>" + bookVo.seatType + "<br/>");
    strhtml.Append("<b>价格:</b>￥" + bookVo.money + "元<br/>");

    strhtml.Append("<b>起飞时间:</b>" + bookVo.startTime + "<br/><b>到达时间:</b>" + bookVo.endTime + "<br/>");
    strhtml.Append("<b>起飞城市:</b>" + bookVo.startCity + "<br/><b>目的城市:</b>" + bookVo.endCity + "<br/>");


    strhtml.Append("<b>浏览:</b>" + bookVo.hits+"<br/> ");



    strhtml.Append("<b>介绍:</b>" + content + "<br/>");

    strhtml.Append("<div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "airplane/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">分享</a> <a href=\"" + this.http_start + "airplane/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">收藏</a>  ");
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"bt2\">");
    strhtml.Append("<a href=\"" + http_start + "airplane/book_view_add.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我要预订</a> <a href=\"" + http_start + "airplane/book_re.aspx?pageback=&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我的订单</a> <br/>");
    strhtml.Append("</div>");
    
    strhtml.Append("</div>");
    
    strhtml.Append(linkURL);

    //显示上一页下一页
    strhtml.Append(preNextTitle);
    
    
    
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown);
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "airplane/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    //输出错误
    strhtml.Append(ERROR);
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
