<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MobileUA_list00WAP_add.aspx.cs" Inherits="KeLin.WebSite.WapStyle.MobileUA_list00WAP_add" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("添加型号|添加型号|add phone model"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p align=\"left\">");
    if (this.INFO == "ERR")
    {
        Response.Write("<b>*项不能为空！</b><br/>");
        
    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>提交成功！</b><br/>");
    }

    if (this.INFO != "OK")
    {

        Response.Write("中文品牌*:<br/>");

        Response.Write("<select name=\"namecn" + this.r + "\" value=\"\">");
        Response.Write(this.band);
        Response.Write("<option value=\"\">留空-暂时不知道</option>");
        Response.Write("</select><br/>");
        
        Response.Write("英文品牌:<br/><input type=\"text\" name=\"nameen" + this.r + "\" value=\"" + bookVo.nameEN + "\"/><br/>");
        Response.Write("手机型号*:<br/><input type=\"text\" name=\"mode" + this.r + "\" value=\"" + bookVo.Mode + "\"/><br/>"); 
        Response.Write("所属系列:<br/>");
        Response.Write("<select name=\"series" + this.r + "\" value=\"\">");
        Response.Write(this.serial);
        Response.Write("<option value=\"\">留空-暂时不知道</option>");
        Response.Write("</select><br/>");
        
        Response.Write("操作系统:<br/>");
        Response.Write("<select name=\"osystem" + this.r + "\" value=\"\">");
        Response.Write(this.platform);
        Response.Write("<option value=\"\">留空-暂时不知道</option>");
        Response.Write("</select><br/>");

        Response.Write("手机屏幕:<br/>");
        Response.Write("<select name=\"screen" + this.r + "\" value=\"0X0\">");
        Response.Write(this.screen);
        Response.Write("<option value=\"0X0\">留空-暂时不知道</option>");
        Response.Write("</select><br/>");
        
        Response.Write("浏览器支持:<br/>");
        Response.Write("<select name=\"version" + this.r + "\" value=\"" + bookVo.version + "\">");
        Response.Write("<option value=\"不清楚\">不清楚</option>");
        Response.Write("<option value=\"WAP1.0\">WAP1.0</option>");
        Response.Write("<option value=\"WAP2.0\">WAP2.0</option>");
        Response.Write("<option value=\"WAP1.0/2.0\">WAP1.0/2.0</option>");
        Response.Write("<option value=\"电脑WEB\">电脑WEB</option>");
        Response.Write("<option value=\"全支持\">全支持</option>");
        Response.Write("</select><br/>");

        Response.Write("机型首页显示:<br/>");
        Response.Write("<select name=\"showindex" + this.r + "\" value=\"" + bookVo.showIndex + "\">");       
        Response.Write("<option value=\"0\">不显示</option>");
        Response.Write("<option value=\"1\">显示</option>");
        Response.Write("</select><br/>");

        Response.Write("当前你所选机型XXX，后面显示:<br/><input type=\"text\" name=\"remark" + this.r + "\" value=\"" + bookVo.remark + "\"/><br/>");
        Response.Write("(支持UBB内容，如论坛栏目链接，图片栏目链接)<br/>");
        Response.Write("<anchor><go href=\"" + http_start + "wapstyle/mobileua_list00wap_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"backurl\" value=\"" + backurl + "\"/>");
        Response.Write("<postfield name=\"series\" value=\"$(series" + r + ")\"/>");
        Response.Write("<postfield name=\"osystem\" value=\"$(osystem" + r + ")\"/>");
        //Response.Write("<postfield name=\"widthpx\" value=\"$(widthpx" + r + ")\"/>");
        //Response.Write("<postfield name=\"heightpx\" value=\"$(heightpx" + r + ")\"/>");
        Response.Write("<postfield name=\"version\" value=\"$(version" + r + ")\"/>");
        Response.Write("<postfield name=\"namecn\" value=\"$(namecn" + r + ")\"/>");
        Response.Write("<postfield name=\"nameen\" value=\"$(nameen" + r + ")\"/>");
        Response.Write("<postfield name=\"mode\" value=\"$(mode" + r + ")\"/>");
        Response.Write("<postfield name=\"screen\" value=\"$(screen" + r + ")\"/>");
        Response.Write("<postfield name=\"showindex\" value=\"$(showindex" + r + ")\"/>");
        Response.Write("<postfield name=\"remark\" value=\"$(remark" + r + ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("提 交|提 交|submit") + "</anchor><br/>");

    }

    Response.Write("<br/>");
    Response.Write("说明:下拉框参数请在WEB后台→系统资源→手机型号资源中管理。<br/>");
    
    Response.Write("<a href=\"" + http_start + "wapstyle/mobileua_list00wap.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">返回上级</a>");
    Response.Write(" ");

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回管理</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");

    //输出
   
    
}
else //2.0界面
{



    Response.Write("<div class=\"subtitle\">" + this.GetLang("添加型号|添加型号|add phone model") + "</div>");
    Response.Write("<div class=\"tip\">");
    if (this.INFO == "ERR")
    {
        Response.Write("<b>*项不能为空！</b><br/>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>提交成功!</b><br/>");
    }

    Response.Write("</div>");
    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"f\" action=\"" + http_start + "wapstyle/mobileua_list00wap_add.aspx\" method=\"post\">");
        Response.Write("中文品牌*:<br/>");
        Response.Write("<select name=\"namecn\">");
        Response.Write("<option value=\"" + bookVo.nameCN + "\">" + bookVo.nameCN + "</option>");
        Response.Write(this.band);
        Response.Write("<option value=\"\">留空-暂时不知道</option>");
        Response.Write("</select><br/>");
        
        Response.Write("英文品牌:<br/><input type=\"text\" name=\"nameen\" value=\"" + bookVo.nameEN + "\"/><br/>");
        Response.Write("手机型号*:<br/><input type=\"text\" name=\"mode\" value=\"" + bookVo.Mode + "\"/><br/>");
        Response.Write("所属系列:<br/>");
        Response.Write("<select name=\"series\">");
        Response.Write("<option value=\"" + bookVo.Series + "\">" + bookVo.Series + "</option>");
        Response.Write(this.serial);
        Response.Write("<option value=\"\">留空-暂时不知道</option>");
        Response.Write("</select><br/>");
        Response.Write("操作系统:<br/>");
        Response.Write("<select name=\"osystem\">");
        Response.Write("<option value=\"" + bookVo.OSystem + "\">" + bookVo.OSystem + "</option>");
        Response.Write(this.platform);
        Response.Write("<option value=\"\">留空-暂时不知道</option>");
        Response.Write("</select><br/>");
        Response.Write("屏幕宽度:<br/>");
        Response.Write("<select name=\"screen\">");
        Response.Write("<option value=\"" + bookVo.widthpx + "X" + bookVo.heightpx + "\">" + bookVo.widthpx + "X" + bookVo.heightpx  +"</option>");
        Response.Write(this.screen);
        Response.Write("<option value=\"0X0\">留空-暂时不知道</option>");
        Response.Write("</select><br/>");
        
        Response.Write("浏览器支持:<br/>");
        Response.Write("<select name=\"version\">");
        Response.Write("<option value=\"不清楚\">不清楚</option>");
        Response.Write("<option value=\"WAP1.0\">WAP1.0</option>");
        Response.Write("<option value=\"WAP2.0\">WAP2.0</option>");
        Response.Write("<option value=\"WAP1.0/2.0\">WAP1.0/2.0</option>");
        Response.Write("<option value=\"电脑WEB\">电脑WEB</option>");
        Response.Write("<option value=\"全支持\">全支持</option>");
        Response.Write("</select><br/>");

        Response.Write("机型首页显示:<br/>");
        Response.Write("<select name=\"showindex\">");
        Response.Write("<option value=\"0\">不显示</option>");
        Response.Write("<option value=\"1\">显示</option>");
        Response.Write("</select><br/>");

        Response.Write("当前你所选机型XXX，后面显示:<br/><input type=\"text\" name=\"remark\" value=\"" + bookVo.remark + "\"/><br/>");
        Response.Write("(支持UBB内容，如论坛栏目链接，图片栏目链接)<br/>");
        
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"backurl\" value=\"" + backurl + "\"/>");
 
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("提 交|提 交|submit") + "\"/>");

        Response.Write("</form></div>");

    }
    Response.Write("<div class=\"tip\">说明:下拉框参数请在WEB后台→系统资源→手机型号资源中管理。</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + http_start + "wapstyle/mobileua_list00wap.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">返回上级</a>");
    Response.Write(" ");

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回管理</a>");
 
    Response.Write("</div></div>");
    

}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


