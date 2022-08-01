<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassConfigAll.aspx.cs" Inherits="KeLin.WebSite.picture.ClassConfigAll" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("栏目配置|栏目配置|Manage Ads"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("保存成功！|保存成功！|Successfully saved"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "picture/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }

    Response.Write(this.GetLang("列表显示行数|列表显示行数列表显示行数") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"ismodel"+r+"\" value=\""+classVo.ismodel+"\"/><br/>");
    
    Response.Write("[0]显示评论功能:");
    Response.Write("<select name=\"par0" + r + "\" value=\"" + this.par0 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[1]允许游客评论:");
    Response.Write("<select name=\"par1" + r + "\" value=\"" + this.par1 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("<option value=\"" + KL_PICRE_Anonymous_Open + "\">Web.confi配置：" + KL_PICRE_Anonymous_Open + "</option>");

    Response.Write("</select><br/>(优先级web.config中“KL_PICRE_Anonymous_Open”值)<br/>");

    Response.Write("[2]列表排序:");
    Response.Write("<select name=\"par2" + r + "\" value=\"" + this.par2 + "\">");
    Response.Write("<option value=\"0\">0_降序(最后提交最新显示)</option>");
    Response.Write("<option value=\"1\">1_升序</option>");
    Response.Write("</select><br/>");
    Response.Write("[3]生成缩放图宽:");
    Response.Write("<input type=\"text\" name=\"par3" + r + "\" value=\"" + this.par3 + "\" size=\"3\" /><br/>");
    Response.Write("[4]生成缩放图图高:");
    Response.Write("<input type=\"text\" name=\"par4" + r + "\" value=\"" + this.par4 + "\" size=\"3\" /><br/>");
    Response.Write("(建议130*130或高为0保持比例,配合【14】【15】【16】)<br/>");


    Response.Write("[5]二级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par5" + r + "\" value=\"" + this.par5 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"ins" + r + "\" value=\"[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[parentid]]返回上级[/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");

    Response.Write("[6]三级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par6" + r + "\" value=\"" + this.par6 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"infos" + r + "\" value=\"[url=/picture/book_list.aspx?siteid=[siteid]&amp;classid=[classid]]返回[classname][/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");
    
    /*新加的功能*/

    Response.Write("[7]二级页面显示小图标:");
    Response.Write("<select name=\"par7" + r + "\" value=\"" + this.par7 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[8]会员上传功能:");
    Response.Write("<select name=\"par8" + r + "\" value=\"" + this.par8 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[9]会员上传采纳送币:");
    Response.Write("<input type=\"text\" name=\"par9" + r + "\" size=\"3\" value=\"" + this.par9 + "\"/><br/>");


    Response.Write("[10]会员上传采纳送经验:");
    Response.Write("<input type=\"text\" name=\"par10" + r + "\" size=\"3\" value=\"" + this.par10 + "\"/><br/>");

    Response.Write("当前栏目上传地址:<input type=\"text\" name=\"picUP" + r + "\" value=\"[url=" + this.http_start + "picture/user_wapadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "]我要上传[/url]\" /> <br/>");
    Response.Write("我的上传记录:<input type=\"text\" name=\"picUPmylist" + r + "\" value=\"[url=" + this.http_start + "picture/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=0&amp;key=[userid]&amp;type=makerid]我的上传记录[/url]\" /> <br/>");
    Response.Write("[11]分享显示:");
    Response.Write("<select name=\"par11\">");
    Response.Write("<option value=\"" + par11 + "\">" + par11 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭省空间</option>");
    Response.Write("</select><br/>");

    Response.Write("[12]三级页面显示上一条下一条:");
    Response.Write("<select name=\"par12" + r + "\" value=\"" + this.par12 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("(关闭提高性能，优先级web.cofig配置)<br/>");
    Response.Write("[17]二级页面显示上一页下一页，默认有加载更多:");
    Response.Write("<select name=\"par17" + r + "\" value=\"" + this.par17 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_显示</option>");
    Response.Write("</select><br/>");
    
    Response.Write("[13]三级页面显示上传者:");
    Response.Write("<select name=\"par13" + r + "\" value=\"" + this.par13 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[18]三级页面显示日期+访问量:");
    Response.Write("<select name=\"par18" + r + "\" value=\"" + this.par18 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("----------<br/>");
    Response.Write("[14]二级页面布局效果:");
    Response.Write("<select name=\"par14" + r + "\" value=\"" + this.par14 + "\">");
    Response.Write("<option value=\"0\">布局0</option>");
    Response.Write("<option value=\"6\">布局6默认</option>");
    Response.Write("<option value=\"7\">布局7</option>");
    Response.Write("<option value=\"8\">布局8</option>");
    Response.Write("<option value=\"9\">布局9</option>");
    Response.Write("<option value=\"10\">布局10</option>");
    Response.Write("</select><br/>");
    Response.Write("[15]二级页面展示图宽:");
    Response.Write("<input type=\"text\" name=\"par15" + r + "\" size=\"3\" value=\"" + this.par15 + "\"/>");
    Response.Write("[16]高:");
    Response.Write("<input type=\"text\" name=\"par16" + r + "\" size=\"3\" value=\"" + this.par16 + "\"/><br/>");
    Response.Write("(布局效果WAP2.0以上有效建议130*130)<br/>");
    Response.Write("----------<br/>");
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("<br/>------------<br/>");
        Response.Write("是否更新所有图片栏目？");
        Response.Write("<br/><input type=\"text\"  name=\"chkall" + r + "\" size=\"3\" value=\"no\"/>如果是输入yes");
        Response.Write("<br/>------------<br />");
    }
    Response.Write("<anchor><go href=\""+http_start+"picture/ClassConfigAll.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");   
    Response.Write("<postfield name=\"ismodel\" value=\"$(ismodel" + r + ")\"/>");   
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
    Response.Write("<postfield name=\"chkall\" value=\"$(chkall" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor><br/><br/>");

    Response.Write("说明:更多栏目属性请在页面综合排版修改栏目！<br/>");
    Response.Write("<br/><a href=\"" + this.http_start + "picture/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("栏目配置|栏目配置|Manage Ads") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("保存成功！|保存成功！|Successfully saved"));
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "picture/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"go\" action=\""+this.http_start+"picture/ClassConfigAll.aspx\" method=\"post\">");
    Response.Write(this.GetLang("列表显示行数|列表显示行数列表显示行数") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"ismodel\" value=\"" + classVo.ismodel + "\"/><br/>");
    

    

    Response.Write("[0]显示评论功能:");
    Response.Write("<select name=\"par0\">");
    Response.Write("<option value=\"" + par0 + "\">" + par0 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[1]允许游客评论:");
    Response.Write("<select name=\"par1\">");
    Response.Write("<option value=\"" + par1 + "\">" + par1 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("<option value=\"" + KL_PICRE_Anonymous_Open + "\">Web.confi配置：" + KL_PICRE_Anonymous_Open + "</option>");

    Response.Write("</select><br/>(优先级web.config中“KL_PICRE_Anonymous_Open”值)<br/>");

    Response.Write("[2]列表排序:");
    Response.Write("<select name=\"par2\">");
    Response.Write("<option value=\"" + par2 + "\">" + par2 + "</option>");
    Response.Write("<option value=\"0\">0_降序(最后提交最新显示)</option>");
    Response.Write("<option value=\"1\">1_升序</option>");
    Response.Write("</select><br/>");
   

    Response.Write("[5]二级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par5\" value=\"" + this.par5 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"ins" + r + "\" value=\"[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[parentid]]返回上级[/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");

    Response.Write("[6]三级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par6\" value=\"" + this.par6 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"infos" + r + "\" value=\"[url=/picture/book_list.aspx?siteid=[siteid]&amp;classid=[classid]]返回[classname][/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");

    /*新加的功能*/

    Response.Write("[7]二级页面显示小图标:");
    Response.Write("<select name=\"par7\">");
    Response.Write("<option value=\"" + par7 + "\">" + par7 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[8]会员上传功能:");
    Response.Write("<select name=\"par8\">");
    Response.Write("<option value=\"" + par8 + "\">" + par8 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[9]会员上传采纳送币:");
    Response.Write("<input type=\"text\" name=\"par9\" size=\"3\" value=\"" + this.par9 + "\"/><br/>");


    Response.Write("[10]会员上传采纳送经验:");
    Response.Write("<input type=\"text\" name=\"par10\" size=\"3\" value=\"" + this.par10 + "\"/><br/>");

    Response.Write("当前栏目上传地址:<input type=\"text\" name=\"picUP" + r + "\" value=\"[url=" + this.http_start + "picture/user_wapadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "]我要上传[/url]\" /> <br/>");
    Response.Write("我的上传记录:<input type=\"text\" name=\"picUPmylist" + r + "\" value=\"[url=" + this.http_start + "picture/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=0&amp;key=[userid]&amp;type=makerid]我的上传记录[/url]\" /> <br/>");
    Response.Write("[11]分享显示:");
    Response.Write("<select name=\"par11\">");
    Response.Write("<option value=\"" + par11 + "\">" + par11 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭省空间</option>");
    Response.Write("</select><br/>");

    Response.Write("[12]三级页面显示上一条下一条:");
    Response.Write("<select name=\"par12\">");
    Response.Write("<option value=\"" + par12 + "\">" + par12 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[17]二级页面显示上一页下一页(默认有加载更多):");
    Response.Write("<select name=\"par17\">");
    Response.Write("<option value=\"" + par17 + "\">" + par17 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    
    Response.Write("(关闭提高性能，优先级web.cofig配置)<br/>");
    Response.Write("[13]三级页面显示上传者:");
    Response.Write("<select name=\"par13\">");
    Response.Write("<option value=\"" + par13 + "\">" + par13 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[18]三级页面显示日期+访问量:");
    Response.Write("<select name=\"par18\" >");
    Response.Write("<option value=\"" + par18 + "\">" + par18 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("----------<br/>");
    Response.Write("[14]二级页面布局效果:");
    Response.Write("<select name=\"par14\">");
    Response.Write("<option value=\"" + par14 + "\">" + par14 + "</option>");
    Response.Write("<option value=\"0\">布局0</option>");
    Response.Write("<option value=\"6\">布局6默认130*130</option>");
    Response.Write("<option value=\"7\">布局7</option>");
    Response.Write("<option value=\"8\">布局8</option>");
    Response.Write("<option value=\"9\">布局9</option>");
    Response.Write("<option value=\"10\">布局10</option>");
    Response.Write("</select><br/>");
    Response.Write("[15]二级页面展示图宽:");
    Response.Write("<input type=\"text\" name=\"par15\" size=\"3\" value=\"" + this.par15 + "\"/>");
    Response.Write("[16]高:");
    Response.Write("<input type=\"text\" name=\"par16\" size=\"3\" value=\"" + this.par16 + "\"/><br/>");
    Response.Write("(布局效果WAP2.0以上有效,建议130*130或130*0)<br/>");
    Response.Write("[3]生成缩放图宽:");
    Response.Write("<input type=\"text\" name=\"par3\" value=\"" + this.par3 + "\" size=\"3\" /><br/>");
    Response.Write("[4]生成缩放图高:");
    Response.Write("<input type=\"text\" name=\"par4\" value=\"" + this.par4 + "\" size=\"3\" /><br/>");
    Response.Write("(建议130*130或或高为0保持比例,配合【14】【15】【16】)<br/>");
    Response.Write("----------<br/>");
    
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("<hr/>");
        Response.Write("是否更新所有下载栏目？");
        Response.Write("<br/><input type=\"text\"  name=\"chkall\" size=\"3\" value=\"no\"/>如果是输入yes");
        Response.Write("<hr/>");
    }
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("保 存|保 存|Save") + "\"/><br/>");
    Response.Write("说明:更多栏目属性请在页面综合排版修改栏目！<br/>");
    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "picture/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
   
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


