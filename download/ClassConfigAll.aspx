<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassConfigAll.aspx.cs" Inherits="KeLin.WebSite.download.ClassConfigAll" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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
        Response.Write("<a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }

    Response.Write(this.GetLang("列表显示行数|列表显示行数列表显示行数") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"ismodel"+r+"\" value=\""+classVo.ismodel+"\"/><br/>");
    Response.Write(this.GetLang("列表是否显示栏目名称|列表是否显示栏目名称|Two top of the list") + "*:<br/>");
    Response.Write("<select name=\"articlenum" + r + "\" value=\"" + classVo.articlenum + "\">");
    Response.Write("<option value=\"0\">0_不显示</option>");
    Response.Write("<option value=\"1\">1_显示</option>");
    Response.Write("</select><br/>");
    
    Response.Write("--------<br/>");
    Response.Write(this.GetLang("默认机型适配|默认机型适配|默认机型适配") + "*:<br/>");
    Response.Write("<select name=\"sp" + r + "\" value=\"" + classVo.topicID + "\">");
    Response.Write("<option value=\"0\">0_关闭自动适配</option>");
    Response.Write("<option value=\"1\">1_按平台适配</option>");
    Response.Write("<option value=\"2\">2_按分辨率适配</option>");
    Response.Write("<option value=\"3\">3_按游戏系列适配</option>");
    Response.Write("<option value=\"4\">4_按平台+分辨率适配</option>");
    Response.Write("<option value=\"5\">5_按1,2,3条件或适配</option>");
    Response.Write("<option value=\"6\">6_按1,2,3条件与适配</option>");
    Response.Write("</select><br/>");
    
    Response.Write("[16]将上面适配信息显示在二级页面:");
    Response.Write("<select name=\"par16" + r + "\" value=\"" + this.par16 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");

    Response.Write("[17]显示我选择的机型:");
    Response.Write("<select name=\"par17" + r + "\" value=\"" + this.par17 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");

    Response.Write("[18]界面布局效果(WAP2.0以上有效):");
    Response.Write("<select name=\"par18" + r + "\" value=\"" + this.par18 + "\">");
    Response.Write("<option value=\"0\">0_布局5(安桌下载效果)</option>");
    Response.Write("<option value=\"1\">1_默认</option>");
    Response.Write("<option value=\"6\">布局6</option>");
    Response.Write("<option value=\"7\">布局7</option>");
    Response.Write("<option value=\"8\">布局8</option>");
    Response.Write("<option value=\"9\">布局9</option>");
    Response.Write("<option value=\"10\">布局10</option>");
    Response.Write("</select><br/>");  
    Response.Write("[26]二级页面展示图宽:");
    Response.Write("<input type=\"text\" name=\"par26" + r + "\" size=\"3\" value=\"" + this.par26 + "\"/>");
    Response.Write("[27]高:");
    Response.Write("<input type=\"text\" name=\"par27" + r + "\" size=\"3\" value=\"" + this.par27 + "\"/><br/>");
    Response.Write("(布局效果WAP2.0以上有效)<br/>");
    Response.Write("----------<br/>");
    
    
    Response.Write("[0]第三级页显示评论:");
    Response.Write("<select name=\"par0" + r + "\" value=\"" + this.par0 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[1]允许游客评论:");
    Response.Write("<select name=\"par1" + r + "\" value=\"" + this.par1 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("<option value=\"" + KL_DOWRE_Anonymous_Open + "\">Web.confi配置：" + KL_DOWRE_Anonymous_Open + "</option>");

    Response.Write("</select><br/>(优先级web.config中“KL_DOWRE_Anonymous_Open”值)<br/>");

    Response.Write("[2]列表排序:");
    Response.Write("<select name=\"par2" + r + "\" value=\"" + this.par2 + "\">");
    Response.Write("<option value=\"0\">0_降序(最新的显示最前)</option>");
    Response.Write("<option value=\"1\">1_升序</option>");
    Response.Write("</select><br/>");
    Response.Write("[10]排序按:");
    Response.Write("<select name=\"par10" + r + "\" value=\"" + this.par10 + "\">");
    Response.Write("<option value=\"0\">0_上传时间</option>");
    Response.Write("<option value=\"1\">1_更新时间(可能会出现重复记录)</option>");
    Response.Write("</select><br/>");
    Response.Write("[3]允许电脑下载:");
    Response.Write("<select name=\"par3" + r + "\" value=\"" + this.par3 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[4]列表显示缩放图:");
    Response.Write("<select name=\"par4" + r + "\" value=\"" + this.par4 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[5]选了机型才能进入:");
    Response.Write("<select name=\"par5" + r + "\" value=\"" + this.par5 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[6]三级页面显示上一条下一条:");
    Response.Write("<select name=\"par6" + r + "\" value=\"" + this.par6 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("(关闭提高性能，优先级web.cofig配置)<br/>");
    Response.Write("[29]二级页面显示上一页下一页（默认有加载更多）:");
    Response.Write("<select name=\"par29" + r + "\" value=\"" + this.par29 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[7]二级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par7" + r + "\" value=\"" + this.par7 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"infos" + r + "\" value=\"[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[parentid]&amp;sp=[sp]]返回上级[/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");

    Response.Write("[8]三级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par8" + r + "\" value=\"" + this.par8 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"infos" + r + "\" value=\"[url=/download/book_list.aspx?siteid=[siteid]&amp;classid=[classid]&amp;sp=[sp]]返回[classname][/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");

    Response.Write("[9]上传文件名处理:");
    Response.Write("<select name=\"par9" + r + "\" value=\"" + this.par9 + "\">");
    Response.Write("<option value=\"0\">0_会员ID_原文件名</option>");
    Response.Write("<option value=\"1\">1_时间数字</option>");
    Response.Write("<option value=\"2\">2_原文件名</option>");
    Response.Write("</select><br/>");

    Response.Write("[11]会员上传功能:");
    Response.Write("<select name=\"par11" + r + "\" value=\"" + this.par11 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[12]会员上传采纳送币:");
    Response.Write("<input type=\"text\" name=\"par12" + r + "\" size=\"3\" value=\"" + this.par12 + "\"/><br/>");


    Response.Write("[13]会员上传采纳送经验:");
    Response.Write("<input type=\"text\" name=\"par13" + r + "\" size=\"3\" value=\"" + this.par13 + "\"/><br/>");

    Response.Write("当前栏目上传地址:<input type=\"text\" name=\"dlUP" + r + "\" value=\"[url=" + this.http_start + "download/user_wapadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "]我要上传[/url]\" /> <br/>");
    Response.Write("我的上传记录:<input type=\"text\" name=\"dlUPmylist" + r + "\" value=\"[url=" + this.http_start + "download/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=0&amp;key=[userid]&amp;type=makerid]我的上传记录[/url]\" /> <br/>");
    
    Response.Write("[14]分享显示:");
    Response.Write("<select name=\"par14" + r + "\" value=\"" + this.par14 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");   
    
    Response.Write("[15]三级页面显示上传者:");
    Response.Write("<select name=\"par15" + r + "\" value=\"" + this.par15 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[19]三级页面“软件截图”改成:<br/>");
    Response.Write("<input type=\"text\" name=\"par19" + r + "\" size=\"5\" value=\"" + this.par19 + "\"/><br/>");
    Response.Write("[20]三级页面“软件参数”改成:<br/>");
    Response.Write("<input type=\"text\" name=\"par20" + r + "\" size=\"5\" value=\"" + this.par20 + "\"/><br/>");
    Response.Write("[21]三级页面“软件简介”改成:<br/>");
    Response.Write("<input type=\"text\" name=\"par21" + r + "\" size=\"5\" value=\"" + this.par21 + "\"/><br/>");
    Response.Write("[22]三级页面“软件下载”改成:<br/>");
    Response.Write("<input type=\"text\" name=\"par22" + r + "\" size=\"5\" value=\"" + this.par22 + "\"/><br/>");
    Response.Write("[23]三级页面“客户评分”改成:<br/>");
    Response.Write("<input type=\"text\" name=\"par23" + r + "\" size=\"5\" value=\"" + this.par23 + "\"/><br/>");
    Response.Write("[24]三级页面“相关操作”改成:<br/>");
    Response.Write("<input type=\"text\" name=\"par24" + r + "\" size=\"5\" value=\"" + this.par24 + "\"/><br/>");
    Response.Write("[25]三级页面“软件”改成:<br/>");
    Response.Write("<input type=\"text\" name=\"par25" + r + "\" size=\"5\" value=\"" + this.par25 + "\"/><br/>");


    Response.Write("[28]列表置顶显示:");
    Response.Write("<select name=\"par28" + r + "\" value=\"" + this.par28 + "\">");
    Response.Write("<option value=\"0\">0_列表第一页</option>");
    Response.Write("<option value=\"1\">1_列表每页</option>");
    Response.Write("</select><br/>");
    
    
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("<br/>------------<br/>");
        Response.Write("是否更新所有下载栏目？");
        Response.Write("<br/><input type=\"text\"  name=\"chkall" + r + "\" size=\"3\" value=\"no\"/>如果是输入yes");
        Response.Write("<br/>------------<br />");
    }
    Response.Write("<anchor><go href=\""+http_start+"download/ClassConfigAll.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");
    Response.Write("<postfield name=\"articlenum\" value=\"$(articlenum" + r + ")\"/>");
    Response.Write("<postfield name=\"ismodel\" value=\"$(ismodel" + r + ")\"/>");
    Response.Write("<postfield name=\"sp\" value=\"$(sp" + r + ")\"/>");
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
    Response.Write("<postfield name=\"par20\" value=\"$(par20" + r + ")\"/>");
    Response.Write("<postfield name=\"par21\" value=\"$(par21" + r + ")\"/>");
    Response.Write("<postfield name=\"par22\" value=\"$(par22" + r + ")\"/>");
    Response.Write("<postfield name=\"par23\" value=\"$(par23" + r + ")\"/>");
    Response.Write("<postfield name=\"par24\" value=\"$(par24" + r + ")\"/>");
    Response.Write("<postfield name=\"par25\" value=\"$(par25" + r + ")\"/>");
    Response.Write("<postfield name=\"par26\" value=\"$(par26" + r + ")\"/>");
    Response.Write("<postfield name=\"par27\" value=\"$(par27" + r + ")\"/>");
    Response.Write("<postfield name=\"par28\" value=\"$(par28" + r + ")\"/>");
    Response.Write("<postfield name=\"par29\" value=\"$(par29" + r + ")\"/>");
    Response.Write("<postfield name=\"chkall\" value=\"$(chkall" + r + ")\"/>"); 
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor><br/><br/>");

    Response.Write("说明:更多栏目属性请在页面综合排版修改栏目！<br/>");
    Response.Write("<br/>资源链接:<br/>[url=/download/book_list.aspx?action=hot&amp;siteid=" + this.siteid + "&amp;classid=(具体栏目ID或上级栏目ID或0表示所有)]按点量[/url]");
    Response.Write("<br/>[url=/download/book_list.aspx?action=new&amp;siteid=" + this.siteid + "&amp;classid=(具体栏目ID或上级栏目ID或0表示所有)]按最新[/url]");
    Response.Write("<br/>[url=/download/book_list.aspx?action=top&amp;siteid=" + this.siteid + "&amp;classid=(具体栏目ID或上级栏目ID或0表示所有)]按置顶[/url]");
    Response.Write("<br/>[url=/download/book_list.aspx?action=good&amp;siteid=" + this.siteid + "&amp;classid=(具体栏目ID或上级栏目ID或0表示所有)]按加精[/url]");
    Response.Write("<br/>[url=/download/book_list.aspx?action=recommend&amp;siteid=" + this.siteid + "&amp;classid=(具体栏目ID或上级栏目ID或0表示所有)]按推荐[/url]");
    
    Response.Write("<br/><a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
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
        Response.Write("<a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"go\" action=\""+this.http_start+"download/ClassConfigAll.aspx\" method=\"post\">");
    Response.Write(this.GetLang("列表显示行数|列表显示行数列表显示行数") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"ismodel\" value=\"" + classVo.ismodel + "\"/><br/>");
    
    Response.Write(this.GetLang("列表是否显示栏目名称|列表是否显示栏目名称|Two top of the list") + ":<br/>");
    
    Response.Write("<select name=\"articlenum\">");
    Response.Write("<option value=\"" + classVo.articlenum + "\">" + classVo.articlenum + "</optiong>");
    Response.Write("<option value=\"0\">0_不显示</option>");
    Response.Write("<option value=\"1\">1_显示</option>");
    Response.Write("</select><br/>");

    Response.Write("--------<br/>");
    Response.Write(this.GetLang("默认机型适配|默认机型适配|默认机型适配") + "*:<br/>");
    Response.Write("<select name=\"sp\">");
    Response.Write("<option value=\"" + classVo.topicID + "\">" + classVo.topicID + "</option>");
    Response.Write("<option value=\"0\">0_关闭自动适配</option>");
    Response.Write("<option value=\"1\">1_按平台适配</option>");
    Response.Write("<option value=\"2\">2_按分辨率适配</option>");
    Response.Write("<option value=\"3\">3_按游戏系列适配</option>");
    Response.Write("<option value=\"4\">4_按平台+分辨率适配</option>");
    Response.Write("<option value=\"5\">5_按1,2,3条件或适配</option>");
    Response.Write("<option value=\"6\">6_按1,2,3条件与适配</option>");
    Response.Write("</select><br/>");

    
    Response.Write("[16]将上面适配信息显示在二级页面:");
    Response.Write("<select name=\"par16\">");
    Response.Write("<option value=\"" + par16 + "\">" + par16 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");

    Response.Write("[17]显示我选的机型:");
    Response.Write("<select name=\"par17\">");
    Response.Write("<option value=\"" + par17 + "\">" + par17 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");

    Response.Write("[18]界面布局效果(WAP2.0以上有效):");
    Response.Write("<select name=\"par18\">");
    Response.Write("<option value=\"" + par18 + "\">" + par18 + "</option>");
    Response.Write("<option value=\"0\">0_布局5(安桌下载效果)</option>");
    Response.Write("<option value=\"1\">1_默认</option>");
    Response.Write("<option value=\"6\">布局6</option>");
    Response.Write("<option value=\"7\">布局7</option>");
    Response.Write("<option value=\"8\">布局8</option>");
    Response.Write("<option value=\"9\">布局9</option>");
    Response.Write("<option value=\"10\">布局10</option>");
    Response.Write("</select><br/>");
    Response.Write("[26]二级页面展示图宽:");
    Response.Write("<input type=\"text\" name=\"par26\" size=\"3\" value=\"" + this.par26 + "\"/>");
    Response.Write("[27]高:");
    Response.Write("<input type=\"text\" name=\"par27\" size=\"3\" value=\"" + this.par27 + "\"/><br/>");
    Response.Write("(布局效果WAP2.0以上有效)<br/>");
    Response.Write("----------<br/>");

    Response.Write("[0]第三级页显示评论:");
    Response.Write("<select name=\"par0\">");
    Response.Write("<option value=\"" + par0 + "\">" + par0 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[1]允许游客评论:");
    Response.Write("<select name=\"par1\">");
    Response.Write("<option value=\"" + par1 + "\">" + par1 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("<option value=\"" + KL_DOWRE_Anonymous_Open + "\">Web.confi配置：" + KL_DOWRE_Anonymous_Open + "</option>");

    Response.Write("</select><br/>(优先级web.config中“KL_DOWRE_Anonymous_Open”值)<br/>");

    Response.Write("[2]列表排序:");
    Response.Write("<select name=\"par2\">");
    Response.Write("<option value=\"" + par2 + "\">" + par2 + "</option>");
    Response.Write("<option value=\"0\">0_降序(最新显示最前)</option>");
    Response.Write("<option value=\"1\">1_升序</option>");
    Response.Write("</select><br/>");
    Response.Write("[10]排序按:");
    Response.Write("<select name=\"par10\">");
    Response.Write("<option value=\"" + par10 + "\">" + par10 + "</option>");
    Response.Write("<option value=\"0\">0_上传时间</option>");
    Response.Write("<option value=\"1\">1_更新时间(可能会出现重复记录)</option>");
    Response.Write("</select><br/>");
    Response.Write("[3]允许电脑下载:");
    Response.Write("<select name=\"par3\">");
    Response.Write("<option value=\"" + par3 + "\">" + par3 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[4]列表显示缩放图:");
    Response.Write("<select name=\"par4\">");
    Response.Write("<option value=\"" + par4 + "\">" + par4 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[5]选了机型才能进入:");
    Response.Write("<select name=\"par5\">");
    Response.Write("<option value=\"" + par5 + "\">" + par5 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[6]三级页面显示上一条下一条:");
    Response.Write("<select name=\"par6\">");
    Response.Write("<option value=\"" + par6 + "\">" + par6 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("(关闭提高性能，优先级web.cofig配置)<br/>");
    Response.Write("[29]二级页面显示上一页下一页（默认有加载更多）:");
    Response.Write("<select name=\"par29\">");
    Response.Write("<option value=\"" + par29 + "\">" + par29 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[7]二级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par7\" value=\"" + this.par7 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"infos" + r + "\" value=\"[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[parentid]&amp;sp=[sp]]返回上级[/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");

    Response.Write("[8]三级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par8\" value=\"" + this.par8 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"infos" + r + "\" value=\"[url=/download/book_list.aspx?siteid=[siteid]&amp;classid=[classid]&amp;sp=[sp]]返回[classname][/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");

    Response.Write("[9]上传文件名处理:");
    Response.Write("<select name=\"par9\">");
    Response.Write("<option value=\"" + par9 + "\">" + par9 + "</option>");
    Response.Write("<option value=\"0\">0_会员ID_原文件名</option>");
    Response.Write("<option value=\"1\">1_时间数字</option>");
    Response.Write("<option value=\"2\">2_原文件名</option>");
    Response.Write("</select><br/>");

    Response.Write("[11]会员上传功能:");
    Response.Write("<select name=\"par11\">");
    Response.Write("<option value=\"" + par11 + "\">" + par11 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[12]会员上传采纳送币:");
    Response.Write("<input type=\"text\" name=\"par12\" size=\"3\" value=\"" + this.par12 + "\"/><br/>");


    Response.Write("[13]会员上传采纳送经验:");
    Response.Write("<input type=\"text\" name=\"par13\" size=\"3\" value=\"" + this.par13 + "\"/><br/>");

    Response.Write("当前栏目上传地址:<input type=\"text\" name=\"dlUP" + r + "\" value=\"[url=" + this.http_start + "download/user_wapadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "]我要上传[/url]\" /> <br/>");
    Response.Write("我的上传记录:<input type=\"text\" name=\"dlUPmylist" + r + "\" value=\"[url=" + this.http_start + "download/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=0&amp;key=[userid]&amp;type=makerid]我的上传记录[/url]\" /> <br/>");

    Response.Write("[14]分享显示:");
    Response.Write("<select name=\"par14\">");
    Response.Write("<option value=\"" + par14 + "\">" + par14 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");

    Response.Write("[15]三级页面显示上传者:");
    Response.Write("<select name=\"par15\">");
    Response.Write("<option value=\"" + par15 + "\">" + par15 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");


    Response.Write("[19]三级页面“软件截图”改成:<br/>");
    Response.Write("<input type=\"text\" name=\"par19\" size=\"5\" value=\"" + this.par19 + "\"/><br/>");
    Response.Write("[20]三级页面“软件参数”改成:<br/>");
    Response.Write("<input type=\"text\" name=\"par20\" size=\"5\" value=\"" + this.par20 + "\"/><br/>");
    Response.Write("[21]三级页面“软件简介”改成:<br/>");
    Response.Write("<input type=\"text\" name=\"par21\" size=\"5\" value=\"" + this.par21 + "\"/><br/>");
    Response.Write("[22]三级页面“软件下载”改成:<br/>");
    Response.Write("<input type=\"text\" name=\"par22\" size=\"5\" value=\"" + this.par22 + "\"/><br/>");
    Response.Write("[23]三级页面“客户评分”改成:<br/>");
    Response.Write("<input type=\"text\" name=\"par23\" size=\"5\" value=\"" + this.par23 + "\"/><br/>");
    Response.Write("[24]三级页面“相关操作”改成:<br/>");
    Response.Write("<input type=\"text\" name=\"par24\" size=\"5\" value=\"" + this.par24 + "\"/><br/>");
    Response.Write("[25]三级页面“软件”改成:<br/>");
    Response.Write("<input type=\"text\" name=\"par25\" size=\"5\" value=\"" + this.par25 + "\"/><br/>");

    Response.Write("[28]列表置顶显示:");
    Response.Write("<select name=\"par28\">");
    Response.Write("<option value=\"" + par28 + "\">" + par28 + "</option>");
    Response.Write("<option value=\"0\">0_列表第一页</option>");
    Response.Write("<option value=\"1\">1_列表每页</option>");
    Response.Write("</select><br/>");
    
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
    Response.Write("<br/>资源链接:<br/>[url=/download/book_list.aspx?action=hot&amp;siteid=" + this.siteid + "&amp;classid=(具体栏目ID或上级栏目ID或0表示所有)]按点量[/url]");
    Response.Write("<br/>[url=/download/book_list.aspx?action=new&amp;siteid=" + this.siteid + "&amp;classid=(具体栏目ID或上级栏目ID或0表示所有)]按最新[/url]");
    Response.Write("<br/>[url=/download/book_list.aspx?action=top&amp;siteid=" + this.siteid + "&amp;classid=(具体栏目ID或上级栏目ID或0表示所有)]按置顶[/url]");
    Response.Write("<br/>[url=/download/book_list.aspx?action=good&amp;siteid=" + this.siteid + "&amp;classid=(具体栏目ID或上级栏目ID或0表示所有)]按加精[/url]");
    Response.Write("<br/>[url=/download/book_list.aspx?action=recommend&amp;siteid=" + this.siteid + "&amp;classid=(具体栏目ID或上级栏目ID或0表示所有)]按推荐[/url]");
    
    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


