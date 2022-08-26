<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_del.aspx.cs" Inherits="KeLin.WebSite.Games.ball.admin_del" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="删除操作";


Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
     if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("删除成功！");
        strhtml.Append("</div>");
    }



     if (this.INFO != "OK")
     {
         strhtml.Append("<b>确定删除？</b>");
          strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/admin_del.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">删除，不包含下注记录</a> <br/>");
          strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/admin_del.aspx?action=godelall&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">删除，包含下注记录</a> <br/>");
     }

     strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "" + "\">返回上级</a> ");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append(title);
    strhtml.Append("</div>");
    if (ERROR != "")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append(ERROR);
        strhtml.Append("</div>");
    }
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("删除成功！");
        strhtml.Append("</div>");
    }



    if (this.INFO != "OK")
    {
        strhtml.Append("<div class=\"subtitle\">");
        strhtml.Append("<b>确定删除？</b>");
        strhtml.Append("</div>");

        strhtml.Append("<div class=\"content\">");

        strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_del.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">删除，不包含下注记录</a> <br/>");
        strhtml.Append("<br/><a href=\"" + this.http_start + "games/ball/admin_del.aspx?action=godelall&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "\">删除，包含下注记录</a> <br/>");



        strhtml.Append("</div>");
    }
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id="+this.id+"" + "\">返回上级</a> ");

    strhtml.Append("</div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
