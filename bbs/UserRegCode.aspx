<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegCode.aspx.cs" Inherits="KeLin.WebSite.bbs.UserRegCode" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
                                                                                                                                                                    
                                                                                                                                                                               
Response.Write(WapTool.showTop(this.GetLang("注册邀请码管理|注册邀请码管理|bank list"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p align=\"left\">");
    if (this.INFO == "MAKE")
    {
        Response.Write("<b>生成邀请码" + this.doit + "个，最多5000个！</b><br/>");
    }
    else if (this.INFO == "DELOK")
    {
        Response.Write("<b>删除成功！</b><br/>");
    }
    else if (this.INFO == "NOPASS")
    {
        Response.Write("<b>密码错误！</b><br/>");
    }

    Response.Write("我的密码:<input type=\"text\" name=\"pw\" value=\""+this.pw+"\" size=\"5\"/><br/>");
    Response.Write("[<anchor><go href=\"" + http_start + "bbs/UserRegCode.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"make\" />");
    Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\" />");
    Response.Write("<postfield name=\"pw\" value=\"$(pw)\" />"); 
    Response.Write("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
    Response.Write("<postfield name=\"sid\" value=\"" + sid + "\" />");
    Response.Write("</go>生成邀请码</anchor>/");
    Response.Write("<anchor><go href=\"" + http_start + "bbs/UserRegCode.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"godel\" />");
    Response.Write("<postfield name=\"deltype\" value=\"1\" />");
    Response.Write("<postfield name=\"pw\" value=\"$(pw)\" />"); 
    Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\" />");
    Response.Write("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
    Response.Write("<postfield name=\"sid\" value=\"" + sid + "\" />");
    Response.Write("</go>删除已用</anchor>/");
    Response.Write("<anchor><go href=\"" + http_start + "bbs/UserRegCode.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"godel\" />");
    Response.Write("<postfield name=\"deltype\" value=\"0\" />");
    Response.Write("<postfield name=\"pw\" value=\"$(pw)\" />"); 
    Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\" />");
    Response.Write("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
    Response.Write("<postfield name=\"sid\" value=\"" + sid + "\" />");
    Response.Write("</go>删除有效</anchor>]<br/>");
    Response.Write("---------<br/>");
    //Response.Write("[<a href=\"" + this.http_start + "bbs/userregcode.aspx?action=make&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">生成邀请码</a>/<a href=\"" + this.http_start + "bbs/userregcode.aspx?action=godel&amp;deltype=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">删除已用</a>/<a href=\"" + this.http_start + "bbs/userregcode.aspx?action=godel&amp;deltype=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">删除有效</a>]<br/>");
      
    //Response.Write("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");
    Response.Write("<select name=\"types\" value=\""+types +"\">");    
    Response.Write("<option value=\"\">所有</option>");
    Response.Write("<option value=\"0\">0_有效</option>");
    Response.Write("<option value=\"1\">1_已用</option>");
    Response.Write("</select>");
    
        Response.Write("注册码:<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");
        Response.Write("<anchor><go href=\"" + http_start + "bbs/UserRegCode.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"class\" />");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\" />");
        Response.Write("<postfield name=\"key\" value=\"$(key)\" />");
        Response.Write("<postfield name=\"types\" value=\"$(types)\" />");
        Response.Write("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\" />");
        Response.Write("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor><br/>");
        //Response.Write("(ID=0时表示所有)<br/>");
   
    Response.Write("---------<br/>");
    Response.Write(linkTOP);
    //显示列表
    string YesOrNo = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        //Response.Write(index + ".");
        Response.Write("<a href=\"sms:?body=" + listVo[i].regcode + "\">" + listVo[i].regcode + "</a>或<input type=\"text\" name=\"code" + listVo[i].id  + "\" value=\"" + listVo[i].regcode + "\" size=\"8\"/>");
        if (listVo[i].userid == 0)
        {
            Response.Write(" 【有效】");
        }
        else
        {
            Response.Write(" 【已用<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/UserRegCode.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;key=" + HttpUtility.UrlEncode(key)) + "" + "\">" + listVo[i].userid + "</a>】");
        }
        Response.Write("<br/>");
    }
    if (listVo == null)
    {
        Response.Write("没有记录<br/>");
    }
    //显示导航分页
    Response.Write(linkURL);


    Response.Write("<b>说明:此功能在手工注册情况下，需要录入有效的邀请码才能注册。要在【<a href=\"" + this.http_start + "bbs/ModifySMS_close.aspx?siteid=" + this.siteid + "\">注册开关设置</a>】设置：4_只开手动注册+邀请码</b><br/>");
    
    Response.Write("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");

    //输出
   
    
}
else //2.0界面
{



    Response.Write("<div class=\"subtitle\">" + this.GetLang("注册邀请码管理|注册邀请码管理|bank list") + "</div>");
    if (this.INFO == "MAKE")
    {
        Response.Write("<div class=\"tip\">生成邀请码"+this.doit +"个，最多5000个！</div>");
    }
    else if (this.INFO == "DELOK")
    {
        Response.Write("<div class=\"tip\">删除成功！</div>");
    }
    else if (this.INFO == "NOPASS")
    {
        Response.Write("<b>密码错误！</b><br/>");
    }
    
    Response.Write("<div class=\"content\">");

    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/UserRegCode.aspx\" method=\"post\">");
    
    Response.Write("我的密码:<input type=\"text\" name=\"pw\" value=\"" + pw + "\" size=\"5\"/><br/>");
    
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    Response.Write("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    Response.Write("<input type=\"submit\" name=\"action\" value=\"生成邀请码\"/>");
    Response.Write("<input type=\"submit\" name=\"action\" value=\"删除已用\"/>");
    Response.Write("<input type=\"submit\" name=\"action\" value=\"删除有效\"/><br/>");
    Response.Write("</form>");
    
    //Response.Write("[<a href=\"" + this.http_start + "bbs/userregcode.aspx?action=make&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">生成邀请码</a>/<a href=\"" + this.http_start + "bbs/userregcode.aspx?action=godel&amp;deltype=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">删除已用</a>/<a href=\"" + this.http_start + "bbs/userregcode.aspx?action=godel&amp;deltype=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">删除有效</a>]<br/>");
        Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/UserRegCode.aspx\" method=\"post\">");
        Response.Write("<select name=\"types\">");
        Response.Write("<option value=\"" + types + "\">" + types + "</option>");
        Response.Write("<option value=\"\">所有</option>");
        Response.Write("<option value=\"0\">0_有效</option>");
        Response.Write("<option value=\"1\">1_已用</option>");
        Response.Write("</select>");
        Response.Write("邀请码:<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");
        
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"class\" />");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
        Response.Write("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        Response.Write(" <input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/><br/>");
        //Response.Write("(ID=0时表示所有)");
        Response.Write("</form>");
   
    Response.Write("</div>");
    Response.Write(linkTOP);
    //显示列表
    string YesOrNo = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            Response.Write("<div class=\"line1\">");
        }
        else
        {
            Response.Write("<div class=\"line2\">");
        }
        index = index + kk;
        //Response.Write(index + ".");
        Response.Write("<a href=\"sms:?body=" + listVo[i].regcode + "\">" + listVo[i].regcode + "</a>或<input type=\"text\" name=\"code" + listVo[i].id + "\" value=\"" + listVo[i].regcode + "\" size=\"8\"/>");
        
        if (listVo[i].userid == 0)
        {
            Response.Write(" 【有效】");
        }
        else
        {
            Response.Write(" 【已用<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/UserRegCode.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;key=" + HttpUtility.UrlEncode(key)) + "" + "\">" + listVo[i].userid + "</a>】");
        }
        Response.Write("</div>");
    }
    if (listVo == null)
    {
        Response.Write("<div class=\"tip\">没有记录</div>");
    }
    //显示导航分页
    Response.Write(linkURL);

    Response.Write("<div class=\"tip\">说明:此功能在手工注册情况下，需要录入有效的邀请码才能注册。要在【<a href=\"" + this.http_start + "bbs/ModifySMS_close.aspx?siteid=" + this.siteid + "\">注册开关设置</a>】设置：4_只开手动注册+邀请码</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    Response.Write("</div></div>");
    
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


