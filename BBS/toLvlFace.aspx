<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toLvlFace.aspx.cs" Inherits="KeLin.WebSite.bbs.toLvlFace" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("在线时间图片设置|在线时间图片设置|Content of the guessbook"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    if (ERROR != "")
    {

        Response.Write(ERROR);
        Response.Write("<br/>");
    }
    if (INFO == "OK")
    {

        Response.Write("<b>更新成功！</b>");
        Response.Write("<br/>");
    }
    else if (INFO == "NUMERR")
    {

        Response.Write("<b>字符 | 数量不一样！</b>");
        Response.Write("<br/>");
    }



    //显示列表
    Response.Write("<b>在线时间图片设置：</b><br/>");
    Response.Write("在线天数(用\" | \"区分)：<br /><input type=\"text\" name=\"top" + r + "\" value=\"" + top + "\" size=\"25\"/><br/>");
    Response.Write("对应图片(用\" | \"区分)：<br /><input type=\"text\" name=\"down" + r + "\" value=\"" + down + "\" size=\"25\"/><br/>");
    Response.Write("<anchor><go href=\"" + http_start + "bbs/toLvlFace.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield  name=\"action\"  value=\"gomod\" />");
    Response.Write("<postfield  name=\"siteid\" value=\"" + this.siteid + "\"  />");
    Response.Write("<postfield  name=\"classid\"  value=\"" + this.classid + "\"  />");
    Response.Write("<postfield  name=\"sid\"  value=\"" + this.sid + "\"  />");
    Response.Write("<postfield name=\"top\" value=\"$(top" + r + ")\"/>");
    Response.Write("<postfield name=\"down\" value=\"$(down" + r + ")\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");

    Response.Write("【<a href=\"" + this.http_start + "bbs/totimeinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">查看效果</a>】");

    //显示导航分页

    Response.Write("<br/>------------<br/>");
    Response.Write("说明：图片放至在/bbs/medal目录下，由系统管理员配置，请复制以下配置。");
    Response.Write("<br/>------------<br/>");
    Response.Write("1.太阳月亮系列；<br/>");
    Response.Write("<input type=\"text\" format=\"*m\" name=\"s1\" value=\"0|30|60|90|120|150|180|210|240|270|300|330|360|390|220|250|280|310|340|360\" /><br/>");
    Response.Write("对应图片：(t1-t20)<br/>");
    Response.Write("<input type=\"text\" format=\"*m\" name=\"f1\" value=\"t1.gif|t2.gif|t3.gif|t4.gif|t5.gif|t6.gif|t7.gif|t8.gif|t9.gif|t10.gif|t11.gif|t12.gif|t13.gif|t14.gif|t15.gif|t16.gif|t17.gif|t18.gif|t19.gif|t20.gif\" /><br/>");
    Response.Write("2.其它图系列：由系统管理员在此写说明。<br/>");

    //导航按钮

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{
    Response.Write("<div class=\"subtitle\">" + "在线时间图片设置" + "</div>");
    if (ERROR != "")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write(ERROR);
        Response.Write("</div>");
    }
    if (INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>更新成功！</b>");
        Response.Write("</div>");
    }
    else if (INFO == "NUMERR")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>字符 | 数量不一样！</b>");
        Response.Write("</div>");
    }
    Response.Write("<div class=\"content\">");
    Response.Write("<form id=\"form1\" action=\"" + http_start + "bbs/toLvlFace.aspx\" method=\"post\">");        
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\" />");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    
    
    

    //显示列表
    Response.Write("<b>在线时间图片设置：</b><br/>");
    Response.Write("在线天数(用\" | \"区分)：<br /><input type=\"text\" name=\"top\" value=\"" + top + "\" size=\"25\"/><br/>");
    Response.Write("对应图片(用\" | \"区分)：<br /><input type=\"text\" name=\"down\" value=\"" + down + "\" size=\"25\"/><br/>");
    
    

    Response.Write("<input type=\"submit\" value=\"确定更新\" />");
    Response.Write("【<a href=\"" + this.http_start + "bbs/totimeinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">查看效果</a>】");

    Response.Write("</form>");
    
    
    //显示导航分页
    
    Response.Write("<br/>------------<br/>");    
    Response.Write("说明：图片放至在/bbs/medal目录下，由系统管理员配置，请复制以下配置。");
    Response.Write("<br/>------------<br/>");
    Response.Write("1.太阳月亮系列；<br/>");
    Response.Write("<input type=\"text\" format=\"*m\" name=\"s1\" value=\"0|30|60|90|120|150|180|210|240|270|300|330|360|390|220|250|280|310|340|360\" /><br/>");    
    Response.Write("对应图片：(t1-t20)<br/>");
    Response.Write("<input type=\"text\" format=\"*m\" name=\"f1\" value=\"t1.gif|t2.gif|t3.gif|t4.gif|t5.gif|t6.gif|t7.gif|t8.gif|t9.gif|t10.gif|t11.gif|t12.gif|t13.gif|t14.gif|t15.gif|t16.gif|t17.gif|t18.gif|t19.gif|t20.gif\" /><br/>");
    Response.Write("2.其它图系列：由系统管理员在此写说明。<br/>");
    Response.Write("</div>");
    //导航按钮
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");

    Response.Write("</div></div>");

                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
