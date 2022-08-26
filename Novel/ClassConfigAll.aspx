<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassConfigAll.aspx.cs" Inherits="KeLin.WebSite.novel.ClassConfigAll" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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
 


    
    Response.Write("[0]允许游客评论:");
    Response.Write("<select name=\"par0" + r + "\" value=\"" + this.par0 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("<option value=\"" + KL_NOVRE_Anonymous_Open + "\">Web.confi配置：" + KL_NOVRE_Anonymous_Open + "</option>");
    Response.Write("</select><br/>(优先级web.config中“KL_NOVRE_Anonymous_Open”值)<br/>");
  

    Response.Write("[1]分享下载:");
    Response.Write("<select name=\"par1" + r + "\" value=\"" + this.par1 + "\">");    
    Response.Write("<option value=\"0\">0_关闭省空间</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[2]允许会员身份级别ID查看:<br/>");
    Response.Write("<input type=\"text\" name=\"par2" + r + "\" value=\"" + this.par2 + "\"/><br/>");
    Response.Write("(多个身份ID用_区分,<a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("novel/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid) + "\">查看</a>)<br/>");
    Response.Write("[3]允许普通会员发布小说:");
    Response.Write("<select name=\"par3" + r + "\" value=\"" + this.par3 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[4]录入小说是否判断重复标题:");
    Response.Write("<select name=\"par4" + r + "\" value=\"" + this.par4 + "\">");
    Response.Write("<option value=\"0\">0_判断</option>");
    Response.Write("<option value=\"1\">1_不判断</option>");
    Response.Write("</select><br/>");

    Response.Write("[5]显示下一页上一页，默认有加载更多:");
    Response.Write("<select name=\"par5" + r + "\" value=\"" + this.par5 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_显示</option>");
    Response.Write("</select><br/>");
  
    
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("<br/>------------<br/>");
        Response.Write("是否更新所有小说栏目？");
        Response.Write("<br/><input type=\"text\"  name=\"chkall" + r + "\" size=\"3\" value=\"no\"/>如果是输入yes");
        Response.Write("<br/>------------<br />");
    }
    Response.Write("<anchor><go href=\""+http_start+"novel/ClassConfigAll.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");    
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<postfield name=\"par0\" value=\"$(par0" + r + ")\"/>");
    Response.Write("<postfield name=\"par1\" value=\"$(par1" + r + ")\"/>");
    Response.Write("<postfield name=\"par2\" value=\"$(par2" + r + ")\"/>");
    Response.Write("<postfield name=\"par3\" value=\"$(par3" + r + ")\"/>");
    Response.Write("<postfield name=\"par4\" value=\"$(par4" + r + ")\"/>");
    Response.Write("<postfield name=\"par5\" value=\"$(par5" + r + ")\"/>"); 
    Response.Write("<postfield name=\"chkall\" value=\"$(chkall" + r + ")\"/>"); 
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");
    
    Response.Write("<br/>说明:其它请到【页面综合排版】→【修改栏目】中配置。");
 

    Response.Write("<br/><a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
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

    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "novel/ClassConfigAll.aspx\" method=\"post\">");

    Response.Write("[0]允许游客评论:");
    Response.Write("<select name=\"par0\">");
    Response.Write("<option value=\"" + this.par0 + "\">" + this.par0 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("<option value=\"" + KL_NOVRE_Anonymous_Open + "\">Web.confi配置：" + KL_NOVRE_Anonymous_Open + "</option>");
    Response.Write("</select><br/>(优先级web.config中“KL_NOVRE_Anonymous_Open”值)<br/>");
  

    
    Response.Write("[1]分享下载:");
    Response.Write("<select name=\"par1\">");
    Response.Write("<option value=\"" + par1 + "\">" + par1 + "</option>");
    Response.Write("<option value=\"0\">0_关闭省空间</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    
    Response.Write("</select><br/>");
    Response.Write("[2]允许会员身份级别ID查看:<br/>");
    Response.Write("<input type=\"text\" name=\"par2\" value=\"" + this.par2 + "\"/><br/>");
    Response.Write("(多个身份ID用_区分,<a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("novel/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid) + "\">查看</a>)<br/>");

    Response.Write("[3]允许普通会员发布小说:");
    Response.Write("<select name=\"par3\" value=\"" + this.par3 + "\">");
    Response.Write("<option value=\"" + par3 + "\">" + par3 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[4]录入小说是否判断重复标题:");
    Response.Write("<select name=\"par4\">");
    Response.Write("<option value=\"" + par4 + "\">" + par4 + "</option>");
    Response.Write("<option value=\"0\">0_判断</option>");
    Response.Write("<option value=\"1\">1_不判断</option>");
    Response.Write("</select><br/>");

    Response.Write("[5]显示下一页上一页，默认有加载更多:");
    Response.Write("<select name=\"par5\">");
    Response.Write("<option value=\"" + par5 + "\">" + par5 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_显示</option>");
    Response.Write("</select><br/>");
    
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("<hr/>");
        Response.Write("是否更新所有小说栏目？");
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
    Response.Write("<a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


