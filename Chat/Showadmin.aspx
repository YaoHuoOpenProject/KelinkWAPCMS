<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showadmin.aspx.cs" Inherits="KeLin.WebSite.chat.showadmin" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname + "管理员", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");


    if (this.INFO == "LOCKOK")
    {
        strhtml.Append("<b>禁言成功！</b><br/>");

    }
    else if (this.INFO == "NORIGHT")
    {

        strhtml.Append("<b>此会员ID你无权操作，或会员ID有误！</b><br/>");
    }
    else if (this.INFO == "UNLOCKOK")
    {

        strhtml.Append("<b>解除禁言成功！</b><br/>");
    }
    else if (this.INFO == "DELOK")
    {

        strhtml.Append("<b>清空成功！</b><br/>");
    }
    strhtml.Append("本聊天室(ID:" + this.classid + ")管理员列表<br/>");

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
     strhtml.Append((i+1)+".<a href=\""+this.http_start+"bbs/userinfo.aspx?siteid="+this.siteid+"&amp;touserid="+listVo[i].userid+"&amp;sid="+this.sid+"\">"+listVo[i].nickname+"</a><br/>");
     strhtml.Append("<u>签名:"+listVo[i].remark+"</u><br/>");   

    }
    if (listVo == null)
    {
        strhtml.Append("<b>聊管招募中...</b><br/>");
    }

    strhtml.Append("注:排名不分先后<br/>");
   
    

    strhtml.Append("------------<br/>");
    strhtml.Append("会员ID：<input type=\"text\" format=\"*N\" title=\"用户ID\" name=\"touserid\" value=\"\" size=\"6\"/><br/>");
    strhtml.Append("<anchor><go href=\""+this.http_start+"chat/showadmin.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"lock\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+this.siteid+"\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+this.classid+"\"/>");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid)\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\""+this.sid+"\"/>");
    strhtml.Append("</go>1.禁言</anchor><br/>");
   
    strhtml.Append("<anchor><go href=\"" + this.http_start + "chat/showadmin.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"unlock\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + this.siteid + "\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + this.classid + "\"/>");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid)\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + this.sid + "\"/>");
    strhtml.Append("</go>2.解禁</anchor><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "chat/showadmin.aspx?action=godel&amp;siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid+"\">3.清空所有聊天记录</a><br/>");
    strhtml.Append("------------<br/>");
    
    
    
    strhtml.Append("<a href=\"" + this.http_start + "chat/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{
    if (this.INFO == "LOCKOK")
    {
        strhtml.Append("<div class=\"tip\"><b>禁言成功！</b></div>");

    }
    else if (this.INFO == "NORIGHT")
    {

        strhtml.Append("<div class=\"tip\"><b>此会员ID你无权操作，或会员ID有误！</b></div>");
    }
    else if (this.INFO == "UNLOCKOK")
    {

        strhtml.Append("<div class=\"tip\"><b>解除禁言成功！</b></div>");
    }
    else if (this.INFO == "DELOK")
    {

        strhtml.Append("<div class=\"tip\"><b>清空成功！</b></div>");
    }
    
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("本聊天室(ID:" + this.classid + ")管理员列表<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        strhtml.Append((i + 1) + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].nickname + "</a><br/>");
        strhtml.Append("<u>签名:" + listVo[i].remark + "</u><br/>");

    }
    if (listVo == null)
    {
        strhtml.Append("<b>聊管招募中...</b><br/>");
    }

    strhtml.Append("注:排名不分先后");
    strhtml.Append("<br/><br/>");



    strhtml.Append("<form name=\"f\" action=\"" + this.http_start + "chat/showadmin.aspx\" method=\"get\">"); 
    strhtml.Append("会员ID：<input type=\"text\" format=\"*N\" class=\"txt\" title=\"用户ID\" name=\"touserid\" value=\"\" size=\"6\"/><br/>");    
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"lock\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + this.siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + this.classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + this.sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" class=\"btn\" value=\"1.禁言\"/>");
    strhtml.Append("</form><br/>");
    strhtml.Append("<form name=\"f\" action=\"" + this.http_start + "chat/showadmin.aspx\" method=\"get\">");
    strhtml.Append("会员ID：<input type=\"text\" format=\"*N\" class=\"txt\" title=\"用户ID\" name=\"touserid\" value=\"\" size=\"6\"/><br/>");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"unlock\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + this.siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + this.classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + this.sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" class=\"btn\" value=\"2.解除禁言\"/>");
    strhtml.Append("</form><br/>");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurlid=2\">3.查看禁言名单</a><br/>");
    strhtml.Append("</div></div>");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "chat/showadmin.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">4.清空所有聊天记录</a><br/>");
    strhtml.Append("</div></div>");
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">"); 
    strhtml.Append("<a href=\"" + this.http_start + "chat/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page="+this.page+"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    Response.Write(strhtml);
    
    //输出
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
