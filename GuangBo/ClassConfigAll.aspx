<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassConfigAll.aspx.cs" Inherits="KeLin.WebSite.guangbo.ClassConfigAll" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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
    else if (this.INFO == "NUMBER")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("[0][1]中的“_”个数不一致！|[0][1]中的_个数不一致！|[0][1]中的_个数不一致"));
        Response.Write("</b><br/>");
    }
 


    Response.Write("[0]显示分钟，多个用_区别:<br/>");
    Response.Write("<input type=\"text\" name=\"par0" + r + "\" value=\"" + this.par0 + "\"/><br/>");
    Response.Write("例:1_2_3_4_5<br/>");

    Response.Write("[1]显示分钟对应扣币，多个用_区别<br/>");
    Response.Write("<input type=\"text\" name=\"par1" + r + "\" value=\"" + this.par1 + "\"/><br/>");
    Response.Write("例:100_200_300_400_500<br/>");

    Response.Write("[2]最多发有效广播多少条<br/>");
    Response.Write("<input type=\"text\" name=\"par2" + r + "\" size=\"3\" value=\"" + this.par2 + "\"/><br/>");
    Response.Write("(留空或0不限制)<br/>");
   
    
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("<br/>------------<br/>");
        Response.Write("是否更新所有广播栏目？");
        Response.Write("<br/><input type=\"text\"  name=\"chkall" + r + "\" size=\"3\" value=\"no\"/>如果是输入yes");
        Response.Write("<br/>------------<br />");
    }
    Response.Write("<anchor><go href=\""+http_start+"guangbo/ClassConfigAll.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");    
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<postfield name=\"par0\" value=\"$(par0" + r + ")\"/>");
    Response.Write("<postfield name=\"par1\" value=\"$(par1" + r + ")\"/>");
    Response.Write("<postfield name=\"par2\" value=\"$(par2" + r + ")\"/>");
    Response.Write("<postfield name=\"chkall\" value=\"$(chkall" + r + ")\"/>"); 
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");
    
    Response.Write("<br/>说明:其它请到【页面综合排版】→【修改栏目】中配置。");
 

    Response.Write("<br/><a href=\"" + this.http_start + "guangbo/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"title\">" + this.GetLang("更多栏目属性设置|更多栏目属性设置|site setup") + "</div>");
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b></div>");

    }
    else if (this.INFO == "NUMBER")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("[0][1]中的“_”个数不一致！|[0][1]中的_个数不一致！|[0][1]中的_个数不一致"));
        Response.Write("</b></div>");
    }

    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "guangbo/ClassConfigAll.aspx\" method=\"post\">");
    Response.Write("[0]显示分钟，多个用_区别:<br/>");
    Response.Write("<input type=\"text\" name=\"par0\" value=\"" + this.par0 + "\"/><br/>");
    Response.Write("例:1_2_3_4_5<br/>");

    Response.Write("[1]显示分钟对应扣币，多个用_区别<br/>");
    Response.Write("<input type=\"text\" name=\"par1\" value=\"" + this.par1 + "\"/><br/>");
    Response.Write("例:100_200_300_400_500<br/>");

    Response.Write("[2]最多发有效广播多少条<br/>");
    Response.Write("<input type=\"text\" name=\"par2\" size=\"3\" value=\"" + this.par2 + "\"/><br/>");
    Response.Write("(留空或0不限制)<br/>");
    
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("<hr/>");
        Response.Write("是否更新所有广播栏目？");
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
    Response.Write("<div class=\"mylink\">");
    Response.Write("<a href=\"" + this.http_start + "guangbo/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


