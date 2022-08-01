<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassConfigAll.aspx.cs" Inherits="KeLin.WebSite.guessbook.ClassConfigAll" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("更多栏目属性设置|更多栏目属性设置|site setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b><br/>");
        
    }
 


    Response.Write("[0]允许游客留言:");
    Response.Write("<select name=\"par0" + r + "\" value=\"" + this.par0 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("<option value=\"" + KL_GUE_Anonymous_Open + "\">Web.confi配置：" + KL_GUE_Anonymous_Open + "</option>");
    Response.Write("</select><br/>(优先级web.config中“KL_GUE_Anonymous_Open”值)<br/>");

    Response.Write("[1]允许游客回复:");
    Response.Write("<select name=\"par1" + r + "\" value=\"" + this.par1 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("<option value=\"2\">2_只能管理员</option>");
    Response.Write("<option value=\"" + KL_GUERE_Anonymous_Open + "\">Web.confi配置：" + KL_GUERE_Anonymous_Open + "</option>");
    Response.Write("</select><br/>(优先级web.config中“KL_GUERE_Anonymous_Open”值)<br/>");

    Response.Write("[2]默认回复语(多个用\"_\"区分):<br/>");
    Response.Write("<input type=\"text\" name=\"par2" + r + "\" value=\"" + this.par2 + "\"/><br/>");

    Response.Write("[3]留言板模式:");
    Response.Write("<select name=\"par3" + r + "\" value=\"" + this.par3 + "\">");
    Response.Write("<option value=\"0\">0_留言模式一(标题+内容)</option>");
    Response.Write("</select><br/>");
    Response.Write("[4]预留功能:<br/>");
    Response.Write("<input type=\"text\" name=\"par4" + r + "\" value=\"" + this.par4 + "\"/><br/>");

    Response.Write("[5]预留功能:");
    Response.Write("<select name=\"par5" + r + "\" value=\"" + this.par5 + "\">");
    Response.Write("<option value=\"0\">0_只显返回首页</option>");
    Response.Write("<option value=\"1\">1_返回上级及返回首页</option>");
    Response.Write("</select><br/>");

    Response.Write("[6]强制悄悄话:");
    Response.Write("<select name=\"par6" + r + "\" value=\"" + this.par6 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[7]二级页显示上一页下一页，默认有加载更多:");
    Response.Write("<select name=\"par7" + r + "\" value=\"" + this.par7 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("<br/>------------<br/>");
        Response.Write("是否更新所有留言栏目？");
        Response.Write("<br/><input type=\"text\"  name=\"chkall" + r + "\" size=\"3\" value=\"no\"/>如果是输入yes");
        Response.Write("<br/>------------<br />");
    }
    Response.Write("<anchor><go href=\""+http_start+"guessbook/ClassConfigAll.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");    
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<postfield name=\"par0\" value=\"$(par0" + r + ")\"/>");
    Response.Write("<postfield name=\"par1\" value=\"$(par1" + r + ")\"/>");
    Response.Write("<postfield name=\"par2\" value=\"$(par2" + r + ")\"/>");
    Response.Write("<postfield name=\"par3\" value=\"$(par3" + r + ")\"/>");
    Response.Write("<postfield name=\"par4\" value=\"$(par4" + r + ")\"/>");
    Response.Write("<postfield name=\"par5\" value=\"$(par5" + r + ")\"/>");
    Response.Write("<postfield name=\"par6\" value=\"$(par6" + r + ")\"/>");
    Response.Write("<postfield name=\"par7\" value=\"$(par7" + r + ")\"/>");
    Response.Write("<postfield name=\"chkall\" value=\"$(chkall" + r + ")\"/>"); 
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");
    
    Response.Write("<br/>说明:其它请到【页面综合排版】→【修改栏目】中配置。");
 

    Response.Write("<br/><a href=\"" + this.http_start + "guessbook/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("更多栏目属性设置|更多栏目属性设置|site setup") + "</div>");
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b></div>");

    }

    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "guessbook/ClassConfigAll.aspx\" method=\"post\">");
    Response.Write("[0]允许游客留言:");
    Response.Write("<select name=\"par0\">");
    Response.Write("<option value=\"" + this.par0 + "\">" + this.par0 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("<option value=\"" + KL_GUE_Anonymous_Open + "\">Web.confi配置：" + KL_GUE_Anonymous_Open + "</option>");
    Response.Write("</select><br/>(优先级web.config中“KL_GUE_Anonymous_Open”值)<br/>");

    Response.Write("[1]允许游客回复:");
    Response.Write("<select name=\"par1\">");
    Response.Write("<option value=\"" + this.par1 + "\">" + this.par1 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("<option value=\"2\">2_只能管理员</option>");
    Response.Write("<option value=\"" + KL_GUERE_Anonymous_Open + "\">Web.confi配置：" + KL_GUERE_Anonymous_Open + "</option>");
    Response.Write("</select><br/>(优先级web.config中“KL_GUERE_Anonymous_Open”值)<br/>");

    Response.Write("[2]默认回复语(多个用\"_\"区分):<br/>");
    Response.Write("<input type=\"text\" name=\"par2\" value=\"" + this.par2 + "\"/><br/>");

    Response.Write("[3]留言板模式:");
    Response.Write("<select name=\"par3\">");
    Response.Write("<option value=\"" + this.par3 + "\">" + this.par3 + "</option>");
    Response.Write("<option value=\"0\">0_留言模式一(标题+内容)</option>");
    Response.Write("</select><br/>");
    Response.Write("[4]预留功能:<br/>");
    Response.Write("<input type=\"text\" name=\"par4\" value=\"" + this.par4 + "\"/><br/>");

    Response.Write("[5]预留功能:");
    Response.Write("<select name=\"par5\">");
    Response.Write("<option value=\"" + this.par5 + "\">" + this.par5 + "</option>");
    Response.Write("<option value=\"0\">0_只显返回首页</option>");
    Response.Write("<option value=\"1\">1_返回上级及返回首页</option>");
    Response.Write("</select><br/>");
    Response.Write("[6]强制悄悄话:");
    Response.Write("<select name=\"par6\">");
    Response.Write("<option value=\"" + this.par6 + "\">" + this.par6 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[7]二级页面显示上一页下一页:");
    Response.Write("<select name=\"par7\">");
    Response.Write("<option value=\"" + this.par7 + "\">" + this.par7 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("<hr/>");
        Response.Write("是否更新所有留言栏目？");
        Response.Write("<br/><input type=\"text\"  name=\"chkall\" size=\"3\" value=\"no\"/>如果是输入yes");
        Response.Write("<hr/>");
    }
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("保 存|保 存|save") + "\"/>");
    Response.Write("</form>");
    Response.Write("</form></div>");
    Response.Write("<div class=\"tip\">");
    Response.Write("说明:其它请到【页面综合排版】→【修改栏目】中配置。");
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "guessbook/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");

    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


