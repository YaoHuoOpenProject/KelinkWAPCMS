<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View_Join.aspx.cs" Inherits="KeLin.WebSite.yuehui.Book_View_Join" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("查看参加人员|查看回複|View Reply"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("加入成功！|加入成功！|Successfully add"));
           
        
        Response.Write("</b> ");
        Response.Write("<a href=\"" + this.http_start + "yuehui/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回</a><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        Response.Write("<b>你已经加入了！</b><br/>");
    }
    
   
    

 
    //显示列表

    kk = kk + ((CurrentPage - 1) * pageSize) -1 ;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        strhtml.Append("" + (total - kk) + ".<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + "\">" + listVo[i].nickname + "(" + listVo[i].userid+ ")</a> " + string.Format("{0:MM-dd HH:mm}", listVo[i].redate) + "<br/>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("暂无参加人员记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("<a href=\"" + this.http_start + "yuehui/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id="+id+"&amp;lpage="+lpage+"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "yuehui/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+lpage+"" + "\">返回列表</a> ");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    Response.Write("<div class=\"subtitle\">" + this.GetLang("查看参加人员|查看回複|View Reply") + "</div>");
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("加入成功！|加入成功！|Successfully add"));

        Response.Write("</b> ");
        Response.Write(" <a class=\"urlbtn\" href=\"" + this.http_start + "yuehui/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回</a><br/>");
        Response.Write("</div>");
    }
 
    else if (this.INFO == "REPEAT")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>你已经加入过了！</b>");
        Response.Write("</div>");
    }





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
        strhtml.Append("" + (total - kk) + ".<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + "\">" + listVo[i].nickname + "(" + listVo[i].userid + ")</a> " + string.Format("{0:MM-dd HH:mm}", listVo[i].redate) + "</div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无参加人员记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "yuehui/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "yuehui/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">返回列表</a> ");


    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
