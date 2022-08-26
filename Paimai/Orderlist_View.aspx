<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderlist_view.aspx.cs" Inherits="KeLin.WebSite.paimai.orderlist_view" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("查看出价记录|查看出价记录|View Reply"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "DELOK")
    {
        strhtml.Append("<b>操作成功！</b><br/>");
    }
    
   
 
    //显示列表

    kk = kk + ((CurrentPage - 1) * pageSize) -1 ;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        strhtml.Append("<b>" + (total - kk) + ".</b>");


        if (listVo[i].iswinner == 1)
        {
            strhtml.Append("[中标" + string.Format("{0:MM-dd HH:mm}", listVo[i].wintime) + "]");
        }

        strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].nickname + "</a>" + "出价:" + listVo[i].productmoney + "(" + string.Format("{0:MM-dd HH:mm}", listVo[i].orderdate) + ")<br/>备注:" + listVo[i].remark + "<br/>");
        
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    
    strhtml.Append("<a href=\"" + this.http_start + "paimai/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回上级</a> ");

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
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("查看出价记录|查看出价记录|View Reply") + "</div>");


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
        strhtml.Append("<b>" + (total - kk) + ".</b>");


        if (listVo[i].iswinner == 1)
        {
            strhtml.Append("[中标" + string.Format("{0:MM-dd HH:mm}", listVo[i].wintime) + "]");
        }

        strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].nickname + "</a>" + "出价:" + listVo[i].productmoney + "(" + string.Format("{0:MM-dd HH:mm}", listVo[i].orderdate) + ")<br/>备注:" + listVo[i].remark + "</div>");
        
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    //显示电脑版
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }

    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    if (id != "" && id != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "paimai/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回上级</a> ");
    }
        strhtml.Append("<a href=\"" + this.http_start + "paimai/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">返回列表</a> ");


        strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
