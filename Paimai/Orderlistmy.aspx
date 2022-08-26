<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderlistmy.aspx.cs" Inherits="KeLin.WebSite.paimai.orderlistmy" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("查看我的出价记录|查看我的出价记录|View Reply"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "DELOK")
    {
        strhtml.Append("<b>操作成功！</b><br/>");
    }
    strhtml.Append("状态：<select name=\"state" + r + "\" value=\"" + this.state + "\">");
    strhtml.Append("<option value=\"\">所有</option>");
    strhtml.Append("<option value=\"1\">结束</option>");
    strhtml.Append("<option value=\"0\">进行中</option>");
    strhtml.Append("</select>");
    strhtml.Append("中标：<select name=\"iswinner" + r + "\" value=\"" + this.iswinner + "\">");
    strhtml.Append("<option value=\"\">所有</option>");
    strhtml.Append("<option value=\"1\">是</option>");
    strhtml.Append("<option value=\"0\">否</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("关键字：<input type=\"text\" name=\"key" + r + "\" value=\"" + key + "\" size=\"5\"/>");

    strhtml.Append("<anchor><go href=\"" + http_start + "paimai/orderlistmy.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"id\" value=\"" + id + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"state\" value=\"$(state" + r + ")\" />");
    strhtml.Append("<postfield name=\"iswinner\" value=\"$(iswinner" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor> ");
    //strhtml.Append("<a href=\""+http_start+"paimai/orderlistmy.aspx?id="+id+"&amp;classid="+classid+"&amp;siteid="+siteid+"&amp;lpage="+lpage+"&amp;rnd="+r+"&amp;sid="+sid+"\">刷新</a> ");

    strhtml.Append("<br/>");
 
    //显示列表

    kk = kk + ((CurrentPage - 1) * pageSize) -1 ;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        strhtml.Append("<b>" + (total - kk) + ".</b>");

        if (listVo[i].iswinner == 1)
        {
            strhtml.Append("[中标" + string.Format("{0:MM-dd HH:mm}", listVo[i].wintime) + "]");
        }
        strhtml.Append("[拍卖品ID:"+listVo[i].productid+"]");
        strhtml.Append("我出价:" + listVo[i].productmoney + "(" + string.Format("{0:MM-dd HH:mm}", listVo[i].orderdate) + ")<br/>备注:" + listVo[i].remark + "<br/>");
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
        strhtml.Append("<a href=\"" + this.http_start + "paimai/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回上级</a> ");

    }
    strhtml.Append("<a href=\"" + this.http_start + "paimai/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+lpage+"" + "\">返回列表</a> ");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    if (this.INFO == "DELOK")
    {
        strhtml.Append("<div class=\"tip\"><b>操作成功！</b></div>");
    }
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("查看我的出价记录|查看我的出价记录|View Reply") + "</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "paimai/orderlistmy.aspx\" method=\"get\">");
   
    strhtml.Append("状态：<select name=\"state\">");
    strhtml.Append("<option value=\"\">所有</option>");
    strhtml.Append("<option value=\"1\">结束</option>");
    strhtml.Append("<option value=\"0\">进行中</option>");
    strhtml.Append("</select>");
    strhtml.Append("中标：<select name=\"iswinner\">");
    strhtml.Append("<option value=\"\">所有</option>");
    strhtml.Append("<option value=\"1\">是</option>");
    strhtml.Append("<option value=\"0\">否</option>");
    strhtml.Append("</select><br/>");
   
    strhtml.Append("关键字：<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");

    strhtml.Append("</form></div>");

    //显示列表
    strhtml.Append("<!--listS-->"); 
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
        strhtml.Append("<b>" + (total - kk) + ".</b>");



        if (listVo[i].iswinner == 1)
        {
            strhtml.Append("[中标" + string.Format("{0:MM-dd HH:mm}", listVo[i].wintime) + "]");
        }

        strhtml.Append("[拍卖品ID:" + listVo[i].productid + "]");
        strhtml.Append("我出价:" + listVo[i].productmoney + "(" + string.Format("{0:MM-dd HH:mm}", listVo[i].orderdate) + ")<br/>备注:" + listVo[i].remark + "</div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    strhtml.Append("<!--listE-->"); 
    //显示导航分页
    strhtml.Append(linkURL);

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码

    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    if (id != "" && id != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "paimai/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回上级</a> ");
    }
        strhtml.Append("<a href=\"" + this.http_start + "paimai/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">返回列表</a> ");


        strhtml.Append("</div></div>");

    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml_list));
        Response.End();
    }
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
