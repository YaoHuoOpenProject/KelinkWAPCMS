<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="chat_list.aspx.cs" Inherits="KeLin.WebSite.clan.chat_list" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title=bookVo.clan_name+"聊天室";


Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    
    //显示列表
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("发表成功！|发表成功！|Successfully add"));
        strhtml.Append("</b> <br/>");
  
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("内容不能为空！|內容不能爲空！|The content can not be empty!"));
        strhtml.Append("</b><br/>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        strhtml.Append("<b>请不要发重复内容！</b><br/>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    //显示列表
    
    strhtml.Append("<input emptyok=\"true\" name=\"con" + r + "tent\" maxlength=\"300\"/><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "clan/chat_list.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>发言</anchor>.");

    strhtml.Append("<a href=\"" + http_start + "clan/chat_list.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "&amp;rnd=" + r + "" + "\">刷新</a> <br/>");
    
    
    strhtml.Append("---------<br/>");
    
    strhtml.Append("抢:");
    strhtml.Append(chatRob);
    strhtml.Append("<br/>");

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");



        if (listVo[i].type == 3)
        {
            strhtml.Append("<a href=\"" + http_start + "clan/chat_list_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + this.id + "&amp;tonickname=" + HttpUtility.UrlEncode(listVo[i].nickname) + "" + "\">" + listVo[i].nickname + "</a>对");
            strhtml.Append("<a href=\"" + http_start + "clan/chat_list_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].douserid + "&amp;tonickname=" + HttpUtility.UrlEncode(listVo[i].donickname) + "&amp;id=" + this.id + "" + "\">" + listVo[i].donickname + "</a>说:" + listVo[i].message);
        }
        else if (listVo[i].type == 5)
        {
            strhtml.Append("<a href=\"" + http_start + "clan/chat_list_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;tonickname=" + HttpUtility.UrlEncode(listVo[i].nickname) + "&amp;id=" + this.id + "" + "\">" + listVo[i].nickname + "</a>对大家说:" + listVo[i].message);
        }

            strhtml.Append("(" + string.Format("{0:MM-dd HH:mm}", listVo[i].time) + ")");
            if (isAdmin == true)
            {

                strhtml.Append("<a href=\"" + http_start + "clan/chat_list_del.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;delid=" + listVo[i].id + "" + "\">[删]</a>");
       
            }

            strhtml.Append("<br/>");

        
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    if (this.id != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">返回家族</a>-");
    }
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

    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("发表成功！|发表成功！|Successfully add"));
        
        strhtml.Append("</b> ");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("内容不能为空！|內容不能爲空！|The content can not be empty!"));
        strhtml.Append("</b><br/>");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "REPEAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>请不要发重复内容！</b>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b>");
        strhtml.Append("</div>");

    }
    
    //显示列表
    strhtml.Append("<div class=\"topre\">");
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "clan/chat_list.aspx\" method=\"post\"><input type=\"text\" name=\"content\" value=\"\"/><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" value=\"发言\"/></form> ");
    strhtml.Append("<a href=\"" + http_start + "clan/chat_list.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "&amp;rnd=" + r + "" + "\">刷新</a> <br/>");
    
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"content\">");
    strhtml.Append("抢:");
    strhtml.Append(chatRob);
    strhtml.Append("</div>");

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
        if (listVo[i].type == 3)
        {
            strhtml.Append("<a href=\"" + http_start + "clan/chat_list_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id="+this.id+"&amp;tonickname="+HttpUtility.UrlEncode(listVo[i].nickname)+"" + "\">" + listVo[i].nickname + "</a>对");
            strhtml.Append("<a href=\"" + http_start + "clan/chat_list_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].douserid + "&amp;tonickname=" + HttpUtility.UrlEncode(listVo[i].donickname) + "&amp;id=" + this.id + "" + "\">" + listVo[i].donickname + "</a>说:" + listVo[i].message);
        }
        else if (listVo[i].type == 5)
        {
            strhtml.Append("<a href=\"" + http_start + "clan/chat_list_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;tonickname=" + HttpUtility.UrlEncode(listVo[i].nickname) + "&amp;id=" + this.id + "" + "\">" + listVo[i].nickname + "</a>对大家说:" + listVo[i].message);
        }

        strhtml.Append("(" + string.Format("{0:MM-dd HH:mm}", listVo[i].time) + ")");
        if (isAdmin == true)
        {

            strhtml.Append("<a href=\"" + http_start + "clan/chat_list_del.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;delid=" + listVo[i].id + "" + "\">[删]</a>");

        }
        strhtml.Append("</div>");
        
    }
    
    
    
 
    //显示列表

    
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    if (this.id != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">返回家族</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">家族首页</a>");
   
   
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
