<%@ Page Language="C#" AutoEventWireup="true" validateRequest=false CodeBehind="Style_List01_mod.aspx.cs" Inherits="KeLin.WebSite.WapStyle.Style_List01_mod" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("修改CSS样式|修改CSS样式|modify CSS"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p align=\"left\">");

    Response.Write("点击此进入<a href=\""+this.http_start+"wapstyle/style_list01_mod.aspx?id="+this.id+"&amp;siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid1+"-2-"+this.cs+"-"+this.lang+"-"+this.myua+"-"+this.width+"\">WAP2.0编辑管理</a><br/>");
    
    Response.Write("<a href=\"" + this.http_start + "wapstyle/style_list01.aspx?siteid=" + siteid + "&amp;classid="+this.classid+"" + "\">返回上级</a>");
    Response.Write("</p>");

    //输出
   
    
}
else //2.0界面
{



    Response.Write("<div class=\"subtitle\">" + this.GetLang("修改CSS样式|修改CSS样式|modify CSS") + "</div>");
    Response.Write("<div class=\"tip\">");
    if (this.INFO == "NULL")
    {
        Response.Write("<b>所有项不能为空！</b><br/>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>修改成功！</b><br/>");
    }

    Response.Write("</div>");
    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"f\" action=\"" + http_start + "wapstyle/style_list01_mod.aspx\" method=\"post\">");
        Response.Write("排序号:<br/><input type=\"text\" name=\"rank\" value=\"" + stVo.rank + "\"/><br/>");
        Response.Write("风格颜色:<br/>#<input type=\"text\" name=\"style_color\" value=\"" + stVo.style_color + "\" size=\"6\"/><br/>");
        Response.Write("名称:<br/><input type=\"text\" name=\"style_name\" value=\"" + stVo.style_name + "\"/><br/>");
        Response.Write("(如果下面样式有HTML5效果，请在名称上加上\"[HTML5]\"，方便选皮肤时显示)<br/>");
        
        Response.Write("CSS样式:<br/><textarea name=\"style\" rows=\"12\" style=\"width:100%\">" + Server.HtmlEncode(stVo.style) + "</textarea><br/>");
        
        
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + this.id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
 
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("确定修改|确定修改|submit") + "\"/>(层宽width参数用[width]代替，可按选机型屏幕适配!)<br/><br/>");

        Response.Write("说明：CSS样式=系统定义 + 自己定义！<br/>");
        Response.Write("系统定义样式名UBB调用：<br/>");
        Response.Write("[div=logo]显示LOGO位置[/div]<br/>");
        Response.Write("[div=welcome]显示欢迎位置[/div]<br/>");
        Response.Write("[div=tip]提示位置[/div]<br/>");
        Response.Write("[div=title]显示标题位置[/div]<br/>");
        Response.Write("[div=subtitle]显示副标题位置[/div]<br/>");
        Response.Write("[div=content]显示内容位置[/div]<br/>");
        Response.Write("[div=topre]显示最新回复位置[/div]<br/>");
        Response.Write("[div=showpage]显示分页位置[/div]<br/>");
        Response.Write("[div=line1]显示文本行一[/div]<br/>");
        Response.Write("[div=line2]显示文本行二[/div]<br/>");
        Response.Write("[div=mylink]显示导航位置[/div] <br/>");
        Response.Write("[div=nexttitle]上一条下一条位置[/div] <br/>");
        Response.Write("[div=sysad]全局顶部或底部[/div] <br/>");
        Response.Write("自定义样式名UBB调用：<br/>");
        Response.Write("[div=自定义名]显示内容位置[/div] <br/>");
        Response.Write("</form></div>");

    }

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");

    Response.Write("<a href=\"" + this.http_start + "wapstyle/style_list01.aspx?siteid=" + siteid + "&amp;classid="+this.classid+"" + "\">返回上级</a>");
    Response.Write("</div></div>");
    

}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


