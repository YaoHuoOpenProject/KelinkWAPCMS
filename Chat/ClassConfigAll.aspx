<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassConfigAll.aspx.cs" Inherits="KeLin.WebSite.chat.ClassConfigAll" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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
 


    Response.Write("[0]直播模式(游客可进，只能管理员发言):<br/>");
    Response.Write("<select name=\"par0" + r + "\" value=\"" + this.par0 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");    
    
    Response.Write("[1]二级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par1" + r + "\" value=\"" + this.par1 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"infos"+r+"\" value=\"[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[parentid]]返回上级[/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");


    Response.Write("[2]页面默认刷新时间:<br/>");
    Response.Write("<input type=\"text\" name=\"par2" + r + "\" value=\"" + this.par2 + "\" size=\"2\"/>秒(默认60)<br/>");
   
Response.Write("----------<br/>");
    Response.Write("[3]聊天室抢币文字：<br/>");
    Response.Write("<input type=\"text\" name=\"par3"+r+"\" value=\"" + this.par3 + "\"  /><br/>");
    Response.Write("(多个用,隔开，如：恭,喜,发,财)<br/>");
    Response.Write("[4]抢中送币：<br/>");
    Response.Write("<input type=\"text\" name=\"par4"+r+"\" value=\"" + this.par4 + "\"  /><br/>");
    Response.Write("(跟上面文字对应,隔开，如：100,200,300,400可负数)<br/>");
    Response.Write("[5]每隔多少秒显示：<br/>");
    Response.Write("<input type=\"text\" name=\"par5" + r + "\" size=\"5\" value=\"" + this.par5 + "\"  />秒<br/>");

    Response.Write("[6]二级列表页面是否显示上一页下一页，默认有加载更多:<br/>");
    Response.Write("<select name=\"par6"+r+"\" value=\""+this.par6+"\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    
    Response.Write("----------<br/>");
    
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("<br/>------------<br/>");
        Response.Write("是否更新所有聊天栏目？");
        Response.Write("<br/><input type=\"text\"  name=\"chkall" + r + "\" size=\"3\" value=\"no\"/>如果是输入yes");
        Response.Write("<br/>------------<br />");
    }
    Response.Write("<anchor><go href=\""+http_start+"chat/ClassConfigAll.aspx\" method=\"post\" accept-charset=\"utf-8\">");
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
    Response.Write("<postfield name=\"chkall\" value=\"$(chkall" + r + ")\"/>"); 
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");
    
    Response.Write("<br/>说明:其它请到【页面综合排版】→【修改栏目】中配置。如每页显示行数");
 

    Response.Write("<br/><a href=\"" + this.http_start + "chat/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
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
    Response.Write("<form name=\"f\" action=\"" + http_start + "chat/ClassConfigAll.aspx\" method=\"post\">");
    Response.Write("[0]直播模式(游客可进，只能管理员发言):<br/>");
    Response.Write("<select name=\"par0\">");
    Response.Write("<option value=\"" + this.par0 + "\">" + this.par0 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");



    
    Response.Write("[1]二级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par1\" value=\"" + this.par1 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"infos\" value=\"[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[parentid]]返回上级[/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");


    Response.Write("[2]页面默认刷新时间:<br/>");
    Response.Write("<input type=\"text\" name=\"par2\" value=\"" + this.par2 + "\" size=\"2\"/>秒(默认60)<br/>");
   

  
    Response.Write("----------<br/>");
    
      Response.Write("[3]聊天室抢币文字：<br/>");
    Response.Write("<input type=\"text\" name=\"par3\" value=\"" + this.par3 + "\"  /><br/>");
    Response.Write("(多个用,隔开，如：恭,喜,发,财)<br/>");
    Response.Write("[4]抢中送币：<br/>");
    Response.Write("<input type=\"text\" name=\"par4\" value=\"" + this.par4 + "\"  /><br/>");
    Response.Write("(跟上面文字对应,隔开，如：100,200,300,400可负数)<br/>");
    Response.Write("[5]每隔多少秒显示：<br/>");
    Response.Write("<input type=\"text\" name=\"par5\" size=\"5\" value=\"" + this.par5 + "\"  />秒(默认300)<br/>");
    Response.Write("[6]二级列表页面是否显示上一页下一页，默认有加载更多:<br/>");
    Response.Write("<select name=\"par6\">");
    Response.Write("<option value=\"" + this.par6 + "\">" + this.par6 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("----------<br/>");
    
    
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("<hr/>");
        Response.Write("是否更新所有聊天栏目？");
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
    Response.Write("说明:其它请到【页面综合排版】→【修改栏目】中配置。如每页显示行数");
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "chat/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
 
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


