<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_join_List.aspx.cs" Inherits="KeLin.WebSite.clan.user_join_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="审核加入";


Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    if (this.INFO != "")
    {
        strhtml.Append(this.INFO+"<br/>");
    }
   
    //显示列表
    strhtml.Append("<a href=\"" + this.http_start + "clan/user_join_list.aspx?action=okall&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">一键批准所有</a><br/>");
    
   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");


        strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].clan_id + "" + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a>[<a href=\"" + this.http_start + "clan/user_join_list.aspx?action=ok&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + listVo[i].userid + "\">批准</a>.<a href=\"" + this.http_start + "clan/user_join_list.aspx?action=no&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + listVo[i].userid + "\">忽略</a>]<br/>");
        strhtml.Append("验证信息:" + listVo[i].request_message);
        strhtml.Append("<br/>请求时间:" + listVo[i].request_time);
        strhtml.Append("<br/>");

        
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">返回家族</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">家族首页</a>");
   
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" + title + "</div>");
    if (this.INFO != "")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append(this.INFO + "</div>");
    }

    //显示列表
    strhtml.Append("<div class=\"subtitle\"><a href=\"" + this.http_start + "clan/user_join_list.aspx?action=okall&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">一键批准所有</a></div>");
    
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
        index = index + kk;
        strhtml.Append(index + ".");

        strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].clan_id + "" + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a>[<a href=\"" + this.http_start + "clan/user_join_list.aspx?action=ok&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + listVo[i].userid + "\">批准</a>.<a href=\"" + this.http_start + "clan/user_join_list.aspx?action=no&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + listVo[i].userid + "\">忽略</a>]<br/>");
        strhtml.Append("验证信息:" + listVo[i].request_message);
        strhtml.Append("<br/>请求时间:" + listVo[i].request_time);
        
        strhtml.Append("</div>");
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
   
    strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">返回家族</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">家族首页</a>");
   
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
