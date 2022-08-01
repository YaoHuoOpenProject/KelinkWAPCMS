<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassConfigAll.aspx.cs" Inherits="KeLin.WebSite.ring.ClassConfigAll" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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
 


    Response.Write("[0]二级页面显示小图标:");
    Response.Write("<select name=\"par0" + r + "\" value=\"" + this.par0 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    
    Response.Write("[1]显示评论功能:");
    Response.Write("<select name=\"par1" + r + "\" value=\"" + this.par1 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    

    Response.Write("[2]允许游客评论:");
    Response.Write("<select name=\"par2" + r + "\" value=\"" + this.par2 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("<option value=\"" + KL_RINRE_Anonymous_Open + "\">Web.confi配置：" + KL_RINRE_Anonymous_Open + "</option>");

    Response.Write("</select><br/>(优先级web.config中“KL_RINRE_Anonymous_Open”值)<br/>");


    Response.Write("[3]会员上传功能:");
    Response.Write("<select name=\"par3" + r + "\" value=\"" + this.par3 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[4]会员上传采纳送币:");
    Response.Write("<input type=\"text\" name=\"par4" + r + "\" size=\"3\" value=\"" + this.par4 + "\"/><br/>");


    Response.Write("[5]会员上传采纳送经验:");
    Response.Write("<input type=\"text\" name=\"par5" + r + "\" size=\"3\" value=\"" + this.par5 + "\"/><br/>");

    Response.Write("当前栏目上传地址:<input type=\"text\" name=\"bookUP" + r + "\" value=\"[url=" + this.http_start + "ring/user_wapadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "]我要上传[/url]\" /> <br/>");
    Response.Write("我的上传记录:<input type=\"text\" name=\"bookUPmylist" + r + "\" value=\"[url=" + this.http_start + "ring/book_list.aspx?action=search&amp;siteid="+this.siteid +"&amp;classid=0&amp;key=[userid]&amp;type=makerid]我的上传记录[/url]\" /> <br/>");
    
    Response.Write("[6]二级页面列表排序:");
    Response.Write("<select name=\"par6" + r + "\" value=\"" + this.par6 + "\">");
    Response.Write("<option value=\"0\">0_降序(最后提交最新显示)</option>");
    Response.Write("<option value=\"1\">1_升序</option>");
    Response.Write("</select><br/>");
    
    Response.Write("[7]分享显示:");
    Response.Write("<select name=\"par7" + r + "\" value=\"" + this.par7 + "\">"); 
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    
    Response.Write("[8]三级页面显示上一条下一条:");
    Response.Write("<select name=\"par8" + r + "\" value=\"" + this.par8 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("(关闭提高性能，优先级web.cofig配置)<br/>");
    Response.Write("[17]二级页面显示上一条下一条（默认更多加载）:");
    Response.Write("<select name=\"par17" + r + "\" value=\"" + this.par17 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    
    Response.Write("[9]二级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par9" + r + "\" value=\"" + this.par9 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"infos"+r+"\" value=\"[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[parentid]]返回上级[/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");

    Response.Write("[10]三级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par10" + r + "\" value=\"" + this.par10 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"infos"+r+"\" value=\"[url=/ring/book_list.aspx?siteid=[siteid]&amp;classid=[classid]]返回[classname][/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");

    Response.Write("[11]三级页面显示上传者:");
    Response.Write("<select name=\"par11" + r + "\" value=\"" + this.par11 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("----------<br/>");
    Response.Write("[14]二级页面布局效果:");
    Response.Write("<select name=\"par14" + r + "\" value=\"" + this.par14 + "\">");
    Response.Write("<option value=\"0\">布局0默认</option>");
    Response.Write("<option value=\"6\">布局6</option>");
    Response.Write("<option value=\"7\">布局7</option>");
    Response.Write("<option value=\"8\">布局8</option>");
    Response.Write("<option value=\"9\">布局9</option>");
    Response.Write("<option value=\"10\">布局10</option>");
    Response.Write("</select><br/>");
    Response.Write("[15]二级页面展示图宽:");
    Response.Write("<input type=\"text\" name=\"par15" + r + "\" size=\"3\" value=\"" + this.par15 + "\"/>");
    Response.Write("[16]高:");
    Response.Write("<input type=\"text\" name=\"par16" + r + "\" size=\"3\" value=\"" + this.par16 + "\"/><br/>");
    Response.Write("(布局效果WAP2.0以上有效)<br/>");
    Response.Write("[18]生成缩放图宽:");
    Response.Write("<input type=\"text\" name=\"par18" + r + "\" size=\"3\" value=\"" + this.par18 + "\"/>");
    Response.Write("[19]高:");
    Response.Write("<input type=\"text\" name=\"par19" + r + "\" size=\"3\" value=\"" + this.par19 + "\"/>(默认130*130)<br/>");
   
    Response.Write("----------<br/>");
    
    
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("<br/>------------<br/>");
        Response.Write("是否更新所有铃声栏目？");
        Response.Write("<br/><input type=\"text\"  name=\"chkall" + r + "\" size=\"3\" value=\"no\"/>如果是输入yes");
        Response.Write("<br/>------------<br />");
    }
    Response.Write("<anchor><go href=\""+http_start+"ring/ClassConfigAll.aspx\" method=\"post\" accept-charset=\"utf-8\">");
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
    Response.Write("<postfield name=\"par8\" value=\"$(par8" + r + ")\"/>");
    Response.Write("<postfield name=\"par9\" value=\"$(par9" + r + ")\"/>");
    Response.Write("<postfield name=\"par10\" value=\"$(par10" + r + ")\"/>");
    Response.Write("<postfield name=\"par11\" value=\"$(par11" + r + ")\"/>");
    Response.Write("<postfield name=\"par12\" value=\"$(par12" + r + ")\"/>");
    Response.Write("<postfield name=\"par13\" value=\"$(par13" + r + ")\"/>");
    Response.Write("<postfield name=\"par14\" value=\"$(par14" + r + ")\"/>");
    Response.Write("<postfield name=\"par15\" value=\"$(par15" + r + ")\"/>");
    Response.Write("<postfield name=\"par16\" value=\"$(par16" + r + ")\"/>");
    Response.Write("<postfield name=\"par17\" value=\"$(par17" + r + ")\"/>");
    Response.Write("<postfield name=\"par18\" value=\"$(par18" + r + ")\"/>");
    Response.Write("<postfield name=\"par19\" value=\"$(par19" + r + ")\"/>");
    Response.Write("<postfield name=\"chkall\" value=\"$(chkall" + r + ")\"/>"); 
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");
    
    Response.Write("<br/>说明:其它请到【页面综合排版】→【修改栏目】中配置。");
 

    Response.Write("<br/><a href=\"" + this.http_start + "ring/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
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
    Response.Write("<form name=\"f\" action=\"" + http_start + "ring/ClassConfigAll.aspx\" method=\"post\">");
    Response.Write("[0]二级页面显示小图标:");
    Response.Write("<select name=\"par0\">");
    Response.Write("<option value=\"" + this.par0 + "\">" + this.par0 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");

    Response.Write("[1]显示评论功能:");
    Response.Write("<select name=\"par1\">");
    Response.Write("<option value=\"" + this.par1 + "\">" + this.par1 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");

    Response.Write("[2]允许游客评论:");
    Response.Write("<select name=\"par2\">");
    Response.Write("<option value=\"" + this.par2 + "\">" + this.par2 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("<option value=\"" + KL_RINRE_Anonymous_Open + "\">Web.confi配置：" + KL_RINRE_Anonymous_Open + "</option>");

    Response.Write("</select><br/>(优先级web.config中“KL_RINRE_Anonymous_Open”值)<br/>");


    Response.Write("[3]会员上传功能:");
    Response.Write("<select name=\"par3\">");
    Response.Write("<option value=\"" + this.par3 + "\">" + this.par3 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[4]会员上传采纳送币:");
    Response.Write("<input type=\"text\" name=\"par4\" size=\"3\" value=\"" + this.par4 + "\"/><br/>");


    Response.Write("[5]会员上传采纳送经验:");
    Response.Write("<input type=\"text\" name=\"par5\" size=\"3\" value=\"" + this.par5 + "\"/><br/>");

    Response.Write("当前栏目投稿地址:<input type=\"text\" name=\"bookUP" + r + "\" value=\"[url=" + this.http_start + "ring/user_wapadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "]投稿[/url]\" /> <br/>");
    Response.Write("我的投稿记录:<input type=\"text\" name=\"bookUPmylist" + r + "\" value=\"[url=" + this.http_start + "ring/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=0&amp;key=[userid]&amp;type=makerid]我的投稿记录[/url]\" /> <br/>");
    
    Response.Write("[6]列表排序:");
    Response.Write("<select name=\"par6\">");
    Response.Write("<option value=\"" + this.par6 + "\">" + this.par6 + "</option>");
    Response.Write("<option value=\"0\">0_降序(最后提交最新显示)</option>");
    Response.Write("<option value=\"1\">1_升序</option>");
    Response.Write("</select><br/>");
    Response.Write("[7]分享显示:");
    Response.Write("<select name=\"par7\">");
    Response.Write("<option value=\"" + par7 + "\">" + par7 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[8]三级页面显示上一条下一条:");
    Response.Write("<select name=\"par8\">");
    Response.Write("<option value=\"" + par8 + "\">" + par8 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("(关闭提高性能，优先级web.cofig配置)<br/>");
    Response.Write("[17]三级页面显示上一页下一页，默认显示加载更多:");
    Response.Write("<select name=\"par17\">");
    Response.Write("<option value=\"" + par17 + "\">" + par17 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[9]二级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par9\" value=\"" + this.par9 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"infos\" value=\"[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[parentid]]返回上级[/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");

    Response.Write("[10]三级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par10\" value=\"" + this.par10 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"infos\" value=\"[url=/ring/book_list.aspx?siteid=[siteid]&amp;classid=[classid]]返回[classname][/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");

    Response.Write("[11]三级页面显示上传者:");
    Response.Write("<select name=\"par11\" value=\"" + this.par11 + "\">");
    Response.Write("<option value=\"" + par11 + "\">" + par11 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("----------<br/>");
    Response.Write("[14]二级页面布局效果:");
    Response.Write("<select name=\"par14\">");
    Response.Write("<option value=\"" + par14 + "\">" + par14 + "</option>");
    Response.Write("<option value=\"0\">布局0默认</option>");
    Response.Write("<option value=\"6\">布局6</option>");
    Response.Write("<option value=\"7\">布局7</option>");
    Response.Write("<option value=\"8\">布局8</option>");
    Response.Write("<option value=\"9\">布局9</option>");
    Response.Write("<option value=\"10\">布局10</option>");
    Response.Write("</select><br/>");
    Response.Write("[15]二级页面展示图宽:");
    Response.Write("<input type=\"text\" name=\"par15\" size=\"3\" value=\"" + this.par15 + "\"/>");
    Response.Write("[16]高:");
    Response.Write("<input type=\"text\" name=\"par16\" size=\"3\" value=\"" + this.par16 + "\"/><br/>");
    Response.Write("(布局效果WAP2.0以上有效)<br/>");
    Response.Write("[18]生成缩放图宽:");
    Response.Write("<input type=\"text\" name=\"par18\" size=\"3\" value=\"" + this.par18 + "\"/>");
    Response.Write("[19]高:");
    Response.Write("<input type=\"text\" name=\"par19\" size=\"3\" value=\"" + this.par19 + "\"/>(默认130*130)<br/>");
    
    Response.Write("----------<br/>");
    
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("<hr/>");
        Response.Write("是否更新所有铃声栏目？");
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
    Response.Write("<a href=\"" + this.http_start + "ring/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


