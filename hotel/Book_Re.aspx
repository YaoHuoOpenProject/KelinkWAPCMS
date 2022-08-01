<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Re.aspx.cs" Inherits="KeLin.WebSite.hotel.Book_Re" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("查看我的订单|查看我的订单|View Reply"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    strhtml.Append("状态：<select name=\"state" + r + "\" value=\"" + this.state + "\">");
    strhtml.Append("<option value=\"\">所有</option>");
    strhtml.Append("<option value=\"1\">成功</option>");
    strhtml.Append("<option value=\"0\">进行中</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("关键字：<input type=\"text\" name=\"key" + r + "\" value=\"" + key + "\" size=\"5\"/>");

    strhtml.Append("<anchor><go href=\"" + http_start + "hotel/book_re.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"id\" value=\"" + id + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"state\" value=\"$(state" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor> ");
    //strhtml.Append("<a href=\""+http_start+"hotel/book_re.aspx?id="+id+"&amp;classid="+classid+"&amp;siteid="+siteid+"&amp;lpage="+lpage+"&amp;rnd="+r+"&amp;sid="+sid+"\">刷新</a> ");

    strhtml.Append("<br/>");
 
    //显示列表

    kk = kk + ((CurrentPage - 1) * pageSize) -1 ;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        strhtml.Append("" + (total - kk) + ".订单号:<b>" + listVo[i].id + "</b><br/>状态:");
        if (listVo[i].state == 1)
        {
            strhtml.Append("成功！");
        }
        else
        {
            strhtml.Append("进行中...");
        }
        strhtml.Append("<br/>酒店:"+listVo[i].hotelname+"["+listVo[i].hotelid+"]<br/>天数:"+listVo[i].days+"<br/>入住时间:"+string.Format("{0:yyyy-MM-dd}",listVo[i].starttime)+"<br/>离开时间:"+string.Format("{0:yyyy-MM-dd}",listVo[i].endtime)+"<br/>电话:"+listVo[i].tel+"<br/>我的说明:"+listVo[i].content+"<br/>回复:"+listVo[i].remark+"<br/>提交时间:"+string.Format("{0:MM-dd HH:mm}",listVo[i].addtime)+"<br/>----------<br/>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    if (id != "" && id != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "hotel/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回上级</a> ");

    }
    strhtml.Append("<a href=\"" + this.http_start + "hotel/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+lpage+"" + "\">返回列表</a> ");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("查看我的订单|查看我的订单|View Reply") + "</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "hotel/book_re.aspx\" method=\"get\">");
   
    strhtml.Append("状态：<select name=\"state\">");
    strhtml.Append("<option value=\"\">所有</option>");
    strhtml.Append("<option value=\"1\">成功</option>");
    strhtml.Append("<option value=\"0\">进行中</option>");
    strhtml.Append("</select> ");
   
    strhtml.Append("关键字：<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");

    strhtml.Append("</form></div>");

    //显示列表

    kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append("" + (total - kk) + ".订单号:<b>"+listVo[i].id+"</b><br/>状态:");
        if (listVo[i].state == 1)
        {
            strhtml.Append("成功！");
        }
        else
        {
            strhtml.Append("进行中...");
        }
        strhtml.Append("<br/>酒店:" + listVo[i].hotelname + "[" + listVo[i].hotelid + "]<br/>天数:" + listVo[i].days + "<br/>入住时间:" + string.Format("{0:yyyy-MM-dd}", listVo[i].starttime) + "<br/>离开时间:" + string.Format("{0:yyyy-MM-dd}",listVo[i].endtime) + "<br/>电话:" + listVo[i].tel + "<br/>我的说明:" + listVo[i].content + "<br/>回复:" + listVo[i].remark + "<br/>提交时间:" + string.Format("{0:MM-dd HH:mm}", listVo[i].addtime) + "</div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    if (id != "" && id != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "hotel/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回上级</a> ");
    }
        strhtml.Append("<a href=\"" + this.http_start + "hotel/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">返回列表</a> ");


        strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
