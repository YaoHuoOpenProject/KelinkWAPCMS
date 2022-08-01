<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toLvlXingZhang.aspx.cs" Inherits="KeLin.WebSite.bbs.toLvlXingZhang" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("自动送勋章设置|自动送勋章设置|Content of the guessbook"), wmlVo));//显示头                                                                                                                                                                       
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
    Response.Write("<b>自动送勋章设置：</b><br/>");
    Response.Write(siteVo.sitemoneyname + "(用,区分)：<br /><input type=\"text\" name=\"par42" + r + "\" value=\"" + par42 + "\" size=\"25\"/><br/>");
    Response.Write("对应图片(用,区分)：<br /><input type=\"text\" name=\"par43" + r + "\" value=\"" + par43 + "\" size=\"25\"/><br/>");
    Response.Write("----------<br/>");
    Response.Write("经验(用,区分)：<br /><input type=\"text\" name=\"par44" + r + "\" value=\"" + par44 + "\" size=\"25\"/><br/>");
    Response.Write("对应图片(用,区分)：<br /><input type=\"text\" name=\"par45" + r + "\" value=\"" + par45 + "\" size=\"25\"/><br/>");
    
    Response.Write("<anchor><go href=\"" + http_start + "bbs/toLvlXingZhang.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield  name=\"action\"  value=\"gomod\" />");
    Response.Write("<postfield  name=\"siteid\" value=\"" + this.siteid + "\"  />");
    Response.Write("<postfield  name=\"classid\"  value=\"" + this.classid + "\"  />");
    Response.Write("<postfield  name=\"sid\"  value=\"" + this.sid + "\"  />");    
    Response.Write("<postfield name=\"par42\" value=\"$(par42" + r + ")\"/>");
    Response.Write("<postfield name=\"par43\" value=\"$(par43" + r + ")\"/>");
    Response.Write("<postfield name=\"par44\" value=\"$(par44" + r + ")\"/>");
    Response.Write("<postfield name=\"par45\" value=\"$(par45" + r + ")\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");
    Response.Write("【<a href=\"" + this.http_start + "bbs/toxunzhanginfo.aspx?siteid="+this.siteid+"&amp;backurl="+HttpUtility.UrlEncode(this.GetUrlQueryString())+"&amp;sid="+this.sid+"\">查看效果</a>】");

    //显示导航分页

    Response.Write("<br/>------------<br/>");
    Response.Write("说明：图片格式为/开头，如你论坛上传图片后的地址是http://abc.com/bbs/upload/1.gif那么这里录入地址为：/bbs/upload/1.gif。");
    Response.Write("<br/>------------<br/>");
  
    //导航按钮

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{
    Response.Write("<div class=\"subtitle\">" + "自动送勋章设置" + "</div>");
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
    Response.Write("<form id=\"form1\" action=\"" + http_start + "bbs/toLvlXingZhang.aspx\" method=\"post\">");        
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\" />");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    
    
    

    //显示列表
   

    Response.Write(siteVo.sitemoneyname + "(用,区分)：<br /><input type=\"text\" name=\"par42\" value=\"" + par42 + "\" size=\"25\"/><br/>");
    Response.Write("对应图片(用,区分)：<br /><input type=\"text\" name=\"par43\" value=\"" + par43 + "\" size=\"25\"/><br/>");
    Response.Write("----------<br/>");
    Response.Write("经验(用,区分)：<br /><input type=\"text\" name=\"par44\" value=\"" + par44 + "\" size=\"25\"/><br/>");
    Response.Write("对应图片(用,区分)：<br /><input type=\"text\" name=\"par45\" value=\"" + par45 + "\" size=\"25\"/><br/>");
    

    Response.Write("<input type=\"submit\" value=\"确定更新\" />");
    Response.Write("【<a href=\"" + this.http_start + "bbs/toxunzhanginfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">查看效果</a>】");

    Response.Write("</form>");
    
    
  
    Response.Write("</div>");
    //导航按钮
    Response.Write("<div class=\"tip\">");
    Response.Write("说明：图片格式为/开头，如你论坛上传图片后的地址是http://abc.com/bbs/upload/1.gif那么这里录入地址为：/bbs/upload/1.gif。");
   
    Response.Write("</div>");
    //导航按钮
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
  
    Response.Write("</div></div>");

                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
