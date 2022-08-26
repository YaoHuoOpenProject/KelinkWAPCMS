<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_list_fans.aspx.cs" Inherits="KeLin.WebSite.rizhi.book_list_fans" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("好友最近一周的微博日志", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    //显示列表
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (this.action == "hot")
        {
            book_click = "("+listVo[i].book_click.ToString()+")";
        }

        strhtml.Append(index + ".");
        if (listVo[i].book_type == 0)
        {
            strhtml.Append("[微]");
        }
        strhtml.Append("<a href=\"" + http_start + "rizhi/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + CurrentPage + "" + "\">" + listVo[i].book_title + book_click + "</a><br/>");
        if (listVo[i].book_img !="") strhtml.Append("<img src=\"" + this.http_start + "rizhi/" + listVo[i].book_img + "\" alt=\"load...\"/><br/>");
        strhtml.Append(listVo[i].book_author + "发表于" + string.Format("{0:MM-dd HH:mm}", listVo[i].book_date) + "<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }
    //导航按钮
    strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + this.touserid + "" + "\">返回上级</a> "); 
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    Response.Write(ERROR);  
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">好友最近一周的微博日志</div>");

    //显示列表
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (this.action == "hot")
        {
            book_click = "(" + listVo[i].book_click.ToString() + ")";
        }
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }

        strhtml.Append(index + ".");
        if (listVo[i].book_type == 0)
        {
            strhtml.Append("[微]");
        }
        strhtml.Append("<a href=\"" + http_start + "rizhi/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage="+CurrentPage+"" + "\">" + listVo[i].book_title + book_click + "</a><br/>");
        if (listVo[i].book_img != "") strhtml.Append("<img src=\"" + this.http_start + "rizhi/" + listVo[i].book_img + "\" alt=\"load...\"/><br/>");
        strhtml.Append(listVo[i].book_author + "发表于" + string.Format("{0:MM-dd HH:mm}", listVo[i].book_date) + "</div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    
    //显示导航分页
    strhtml.Append(linkURL);


    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + this.touserid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
   
    strhtml.Append("</div></div>");

    Response.Write(ERROR);  
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
