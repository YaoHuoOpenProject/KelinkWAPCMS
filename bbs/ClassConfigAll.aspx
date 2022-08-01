<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassConfigAll.aspx.cs" Inherits="KeLin.WebSite.bbs.ClassConfigAll" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("更多栏目属性设置|更多栏目属性设置|site setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        strhtml.Append("</b><br/>");
        
    }
 


    strhtml.Append("[0]本栏目论坛:");
    strhtml.Append("<select name=\"par0" + r + "\" value=\"" + this.par0 + "\">");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");
    
    strhtml.Append("[1]回贴跳转至:");
    strhtml.Append("<select name=\"par1" + r + "\" value=\"" + this.par1 + "\">");
    strhtml.Append("<option value=\"0\">0_回复列表</option>");
    strhtml.Append("<option value=\"1\">1_贴子主题</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[2]发贴:");
    strhtml.Append("<select name=\"par2" + r + "\" value=\"" + this.par2 + "\">");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[3]回贴:");
    strhtml.Append("<select name=\"par3" + r + "\" value=\"" + this.par3 + "\">");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[4]续贴:");
    strhtml.Append("<select name=\"par4" + r + "\" value=\"" + this.par4 + "\">");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[5]发文件贴:");
    strhtml.Append("<select name=\"par5" + r + "\" value=\"" + this.par5 + "\">");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[6]回复文件贴:");
    strhtml.Append("<select name=\"par6" + r + "\" value=\"" + this.par6 + "\">");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[7]续文件贴:");
    strhtml.Append("<select name=\"par7" + r + "\" value=\"" + this.par7 + "\">");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[28]修改贴子:");
    strhtml.Append("<select name=\"par28" + r + "\" value=\"" + this.par28 + "\">");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");
    
    strhtml.Append("[8]修改贴子显示操作记录:");
    strhtml.Append("<select name=\"par8" + r + "\" value=\"" + this.par8 + "\">");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("[9]第一个回贴发信通知楼主:");
    strhtml.Append("<select name=\"par9" + r + "\" value=\"" + this.par9 + "\">");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("[10]允许电脑下载:");
    strhtml.Append("<select name=\"par10" + r + "\" value=\"" + this.par10 + "\">");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("[11]允许游客发贴:");
    strhtml.Append("<select name=\"par11" + r + "\" value=\"" + this.par11 + "\">");
    strhtml.Append("<option value=\"0\">0_关闭</option>");
    strhtml.Append("<option value=\"1\">1_开启</option>");
    strhtml.Append("<option value=\"" + KL_BBS_Anonymous_Open + "\">Web.confi配置：" + KL_BBS_Anonymous_Open + "</option>");
    strhtml.Append("</select><br/>(优先级web.config中“KL_BBS_Anonymous_Open”)<br/>");
    strhtml.Append("[12]允许游客回贴:");
    strhtml.Append("<select name=\"par12" + r + "\" value=\"" + this.par12 + "\">");
    strhtml.Append("<option value=\"0\">0_关闭</option>");
    strhtml.Append("<option value=\"1\">1_开启</option>");
    strhtml.Append("<option value=\"" + KL_BBSRE_Anonymous_Open + "\">Web.confi配置：" + KL_BBSRE_Anonymous_Open + "</option>");
    strhtml.Append("</select><br/>(优先级web.config中“KL_BBSRE_Anonymous_Open”)<br/>");
    strhtml.Append("[13]分享下载:");
    strhtml.Append("<select name=\"par13" + r + "\" value=\"" + this.par13 + "\">");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭省空间</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("[14]本区专题列表排序:");
    strhtml.Append("<select name=\"par14" + r + "\" value=\"" + this.par14 + "\">");
    strhtml.Append("<option value=\"0\">0_升序</option>");
    strhtml.Append("<option value=\"1\">1_降序</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("[15]显示上一条下一条:");
    strhtml.Append("<select name=\"par15" + r + "\" value=\"" + this.par15 + "\">");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("(关闭提高性能，优先级web.cofig配置)<br/>");
    strhtml.Append("[40]显示上一页下一页，关闭有加载更多按钮:");
    strhtml.Append("<select name=\"par40" + r + "\" value=\"" + this.par40 + "\">");
    strhtml.Append("<option value=\"0\">0_关闭</option>");
    strhtml.Append("<option value=\"1\">1_开启</option>");
    strhtml.Append("</select><br/>");

   
    
    strhtml.Append("[19]二级页面返回上级/首页替换:<br/>");
    strhtml.Append("<input type=\"text\" name=\"par19" + r + "\" value=\"" + this.par19 + "\"/><br/>");
    strhtml.Append("例:<input type=\"text\" name=\"ins"+r+"\" value=\"[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[parentid]&amp;stype=[stype]]返回上级[/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");
   
    strhtml.Append("[20]三级页面返回上级/首页替换:<br/>");
    strhtml.Append("<input type=\"text\" name=\"par20" + r + "\" value=\"" + this.par20 + "\"/><br/>");
    strhtml.Append("例:<input type=\"text\" name=\"infos"+r+"\" value=\"[url=/bbs/book_list.aspx?siteid=[siteid]&amp;classid=[classid]&amp;stype=[stype]]返回[classname][/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");
    strhtml.Append("[21]允许会员身份ID发特殊贴:(设了后所有会员还可以发普通贴)<br/>");
    strhtml.Append("<input type=\"text\" name=\"par21" + r + "\" value=\"" + this.par21 + "\"/><br/>");
    strhtml.Append("(多个身份ID用_区分,<a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid="+this.siteid+"&amp;backurl="+HttpUtility.UrlEncode("bbs/classconfigall.aspx?siteid="+this.siteid+"&amp;classid="+this.classid)+"&amp;sid="+this.sid+"\">查看</a>)<br/>");

    strhtml.Append("[27]允许会员身份ID发贴:(设了后只有对应身份的人才可以发贴)<br/>");
    strhtml.Append("<input type=\"text\" name=\"par27" + r + "\" value=\"" + this.par27 + "\"/><br/>");
    strhtml.Append("(多个身份ID用_区分,<a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid) + "\">查看</a>)<br/>");

    
    strhtml.Append("[23]三级页面效果:");
    strhtml.Append("<select name=\"par23" + r + "\" value=\"" + this.par23 + "\">");
    strhtml.Append("<option value=\"1\">1_简洁(推荐，楼主在下面)</option>");
    strhtml.Append("<option value=\"0\">0_默认(楼主在上面)</option>");    
    strhtml.Append("</select><br/>");

    strhtml.Append("[24]贴子标题最小长度:");
    strhtml.Append("<input type=\"text\" name=\"par24" + r + "\" value=\"" + this.par24 + "\" size=\"5\"/><br/>");
    strhtml.Append("(1-200)<br/>");

    strhtml.Append("[25]贴子内容最小长度:");
    strhtml.Append("<input type=\"text\" name=\"par25" + r + "\" value=\"" + this.par25 + "\" size=\"5\"/><br/>");
    strhtml.Append("(1-无限)<br/>");

    strhtml.Append("[26]回贴内容最小长度:");
    strhtml.Append("<input type=\"text\" name=\"par26" + r + "\" value=\"" + this.par26 + "\" size=\"5\"/><br/>");
    strhtml.Append("(1-无限)<br/>");


    strhtml.Append("[30]贴子标题最大长度:");
    strhtml.Append("<input type=\"text\" name=\"par30" + r + "\" value=\"" + this.par30 + "\" size=\"5\"/><br/>");
    strhtml.Append("(空或0为无限)<br/>");

    strhtml.Append("[31]贴子内容最大长度:");
    strhtml.Append("<input type=\"text\" name=\"par31" + r + "\" value=\"" + this.par31 + "\" size=\"5\"/><br/>");
    strhtml.Append("(空或0为无限)<br/>");

    strhtml.Append("[32]回贴内容最大长度:");
    strhtml.Append("<input type=\"text\" name=\"par32" + r + "\" value=\"" + this.par32 + "\" size=\"5\"/><br/>");
    strhtml.Append("(空或0为无限)<br/>");
    strhtml.Append("[33]默认显示附件个数:");
    strhtml.Append("<input type=\"text\" name=\"par33" + r + "\" value=\"" + this.par33 + "\" size=\"5\"/><br/>");
    strhtml.Append("(0为所有)<br/>");
    
    strhtml.Append("[29]附件推荐到下载栏目ID:<br/>");
    strhtml.Append("<input type=\"text\" name=\"par29" + r + "\" value=\"" + this.par29 + "\"/><br/>");
    strhtml.Append("(多个用,隔开，为空所有)<br/>");

    strhtml.Append("----------<br/>");
    strhtml.Append("总版主站长才有权设以下参数，不设置取站长后台【币种经验规则设置】<br/>");
    strhtml.Append("[16]下载文件需要登录:");
    strhtml.Append("<select name=\"par16" + r + "\" value=\"" + this.par16 + "\">");
    strhtml.Append("<option value=\"0\">0_关闭</option>");
    strhtml.Append("<option value=\"1\">1_开启</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("[17]下载文件扣币:");
    strhtml.Append("<input type=\"text\" name=\"par17" + r + "\" value=\"" + this.par17 + "\" size=\"5\"/>个<br/>");
    strhtml.Append("[18]下载文件送币:");
    strhtml.Append("<input type=\"text\" name=\"par18" + r + "\" value=\"" + this.par18 + "\" size=\"5\"/>个<br/>");
    strhtml.Append("(管理员无效)<br/>");
    strhtml.Append("[22]下载扣币送给上传者:");
    strhtml.Append("<select name=\"par22" + r + "\" value=\"" + this.par22 + "\">");
    strhtml.Append("<option value=\"0\">0_关闭</option>");
    strhtml.Append("<option value=\"1\">1_开启</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("[34]发普通贴送币和经验:<br/>");
    strhtml.Append("<input type=\"text\" name=\"par34" + r + "\" value=\"" + this.par34 + "\" size=\"10\"/>(格式:100,200)<br/>");
    strhtml.Append("[35]发文件贴送币和经验:<br/>");
    strhtml.Append("<input type=\"text\" name=\"par35" + r + "\" value=\"" + this.par35 + "\" size=\"10\"/>(格式:100,200)<br/>");
    strhtml.Append("[36]普通回贴送币和经验:<br/>");
    strhtml.Append("<input type=\"text\" name=\"par36" + r + "\" value=\"" + this.par36 + "\" size=\"10\"/>(格式:100,200)<br/>");
    strhtml.Append("[37]文件回贴送币和经验:<br/>");
    strhtml.Append("<input type=\"text\" name=\"par37" + r + "\" value=\"" + this.par37 + "\" size=\"10\"/>(格式:100,200)<br/>");
    strhtml.Append("[38]回贴列表显示头像:");
    strhtml.Append("<select name=\"par38" + r + "\" value=\"" + this.par38 + "\">");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");
    
    strhtml.Append("----------<br/><b>以下为六合论坛配置</b><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap\">玩法参数配置</a>｜<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap\">开奖管理</a><br/>");

    strhtml.Append("[39]本论坛发贴显示玩法,请输入玩法ID:<br/>");
    strhtml.Append("<input type=\"text\" name=\"par39" + r + "\" value=\"" + this.par39 + "\" /><br/>(只能输入一个ID，例9。配置了，论坛列表中的“发贴”按钮默认进入发投注贴，“排行”按钮默认进入高手排行)<br/>");

    strhtml.Append("----------<br/>");

    strhtml.Append("[41]发贴必选类别:");
    strhtml.Append("<select name=\"par41" + r + "\" value=\"" + this.par41 + "\">");
    strhtml.Append("<option value=\"0\">0_否</option>");
    strhtml.Append("<option value=\"1\">1_是</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("[42]置顶贴颜色:<br/>");
    strhtml.Append("#<input type=\"text\" name=\"par42" + r + "\" value=\"" + this.par42 + "\" size=\"6\" />(颜色代码如红#FF0000，蓝#0000FF)<br/>");

    strhtml.Append("[43]贴子排序功能:<br/>");
    strhtml.Append("<select name=\"par43" + r + "\" value=\"" + this.par43 + "\">");

    strhtml.Append("<option value=\"0\">0_帖子被回复后提升</option>");
    strhtml.Append("<option value=\"1\">1_帖子被回复后不会提升</option>");
    strhtml.Append("<option value=\"2\">2_帖子被作者编辑后提升</option>");
    strhtml.Append("</select><br/>");
    
    strhtml.Append("[44]发外站资源贴(对普通会员):");
    strhtml.Append("<select name=\"par44" + r + "\" value=\"" + this.par44 + "\">");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[45]图片展示宽:");
    strhtml.Append("<input type=\"text\" name=\"par45" + r + "\" value=\"" + this.par45 + "\" size=\"3\" />px(0为默认)<br/>");

    strhtml.Append("[46]图片展示高:");
    strhtml.Append("<input type=\"text\" name=\"par46" + r + "\" value=\"" + this.par46 + "\" size=\"3\" />px(0为默认)<br/>");

    
    
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        strhtml.Append("<br/>------------<br/>");
        strhtml.Append("是否更新所有论坛栏目？");
        strhtml.Append("<br/><input type=\"text\"  name=\"chkall" + r + "\" size=\"3\" value=\"no\"/>如果是输入yes");
        strhtml.Append("<br/>------------<br />");
    }
    
    strhtml.Append("<anchor><go href=\""+http_start+"bbs/ClassConfigAll.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");    
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"par0\" value=\"$(par0" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par1\" value=\"$(par1" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par2\" value=\"$(par2" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par3\" value=\"$(par3" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par4\" value=\"$(par4" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par5\" value=\"$(par5" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par6\" value=\"$(par6" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par7\" value=\"$(par7" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par8\" value=\"$(par8" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par9\" value=\"$(par9" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par10\" value=\"$(par10" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par11\" value=\"$(par11" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par12\" value=\"$(par12" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par13\" value=\"$(par13" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par14\" value=\"$(par14" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par15\" value=\"$(par15" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par16\" value=\"$(par16" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par17\" value=\"$(par17" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par18\" value=\"$(par18" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par19\" value=\"$(par19" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par20\" value=\"$(par20" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par21\" value=\"$(par21" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par22\" value=\"$(par22" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par23\" value=\"$(par23" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par24\" value=\"$(par24" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par25\" value=\"$(par25" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par26\" value=\"$(par26" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par27\" value=\"$(par27" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par28\" value=\"$(par28" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par29\" value=\"$(par29" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par30\" value=\"$(par30" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par31\" value=\"$(par31" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par32\" value=\"$(par32" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par33\" value=\"$(par33" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par34\" value=\"$(par34" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par35\" value=\"$(par35" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par36\" value=\"$(par36" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par37\" value=\"$(par37" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par38\" value=\"$(par38" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par39\" value=\"$(par39" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par40\" value=\"$(par40" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par41\" value=\"$(par41" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par42\" value=\"$(par42" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par43\" value=\"$(par43" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par44\" value=\"$(par44" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par45\" value=\"$(par45" + r + ")\"/>");
    strhtml.Append("<postfield name=\"par46\" value=\"$(par46" + r + ")\"/>");
    strhtml.Append("<postfield name=\"chkall\" value=\"$(chkall" + r + ")\"/>"); 
    strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");

    strhtml.Append("<br/>说明:其它请到【页面综合排版】→【修改栏目】中配置。");
  strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid=" + this.siteid + "&amp;classid="+this.classid+"\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
  strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返回列表</a> ");
  
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("更多栏目属性设置|更多栏目属性设置|site setup") + "</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        strhtml.Append("<a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    
        strhtml.Append("</b></div>");

    }

    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/ClassConfigAll.aspx\" method=\"post\">");
    strhtml.Append("[0]本栏目论坛:");
    strhtml.Append("<select name=\"par0\">");
    strhtml.Append("<option value=\"" + this.par0 + "\">" + this.par0 + "</option>");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[1]回贴跳转至:");
    strhtml.Append("<select name=\"par1\">");
    strhtml.Append("<option value=\"" + this.par1 + "\">" + this.par1 + "</option>");
    strhtml.Append("<option value=\"0\">0_回复列表</option>");
    strhtml.Append("<option value=\"1\">1_贴子主题</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[2]发贴:");
    strhtml.Append("<select name=\"par2\">");
    strhtml.Append("<option value=\"" + this.par2 + "\">" + this.par2 + "</option>");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[3]回贴:");
    strhtml.Append("<select name=\"par3\">");
    strhtml.Append("<option value=\"" + this.par3 + "\">" + this.par3 + "</option>");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[4]续贴:");
    strhtml.Append("<select name=\"par4\">");
    strhtml.Append("<option value=\"" + this.par4 + "\">" + this.par4 + "</option>");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[5]发文件贴(对普通会员):");
    strhtml.Append("<select name=\"par5\">");
    strhtml.Append("<option value=\"" + this.par5 + "\">" + this.par5 + "</option>");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[6]回复文件贴:");
    strhtml.Append("<select name=\"par6\">");
    strhtml.Append("<option value=\"" + this.par6 + "\">" + this.par6 + "</option>");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[7]续文件贴:");
    strhtml.Append("<select name=\"par7\">");
    strhtml.Append("<option value=\"" + this.par7 + "\">" + this.par7 + "</option>");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[28]修改贴子:");
    strhtml.Append("<select name=\"par28\">");
    strhtml.Append("<option value=\"" + this.par28 + "\">" + this.par28 + "</option>");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");
    
    strhtml.Append("[8]修改贴子显示操作记录:");
    strhtml.Append("<select name=\"par8\">");
    strhtml.Append("<option value=\"" + this.par8 + "\">" + this.par8 + "</option>");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("[9]第一个回贴发信通知楼主:");
    strhtml.Append("<select name=\"par9\">");
    strhtml.Append("<option value=\"" + this.par9 + "\">" + this.par9 + "</option>");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("[10]允许电脑下载:");
    strhtml.Append("<select name=\"par10\">");
    strhtml.Append("<option value=\"" + par10 + "\">" + par10 + "</option>");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("[11]允许游客发贴:");
    strhtml.Append("<select name=\"par11\">");
    strhtml.Append("<option value=\"" + par11 + "\">" + par11 + "</option>");
    strhtml.Append("<option value=\"0\">0_关闭</option>");
    strhtml.Append("<option value=\"1\">1_开启</option>");
    strhtml.Append("<option value=\"" + KL_BBS_Anonymous_Open + "\">Web.confi配置：" + KL_BBS_Anonymous_Open + "</option>");
   
    strhtml.Append("</select><br/>(优先级web.config中“KL_BBS_Anonymous_Open”值)<br/>");
    strhtml.Append("[12]允许游客回贴:");
    strhtml.Append("<select name=\"par12\">");
    strhtml.Append("<option value=\"" + par12 + "\">" + par12 + "</option>");
    strhtml.Append("<option value=\"0\">0_关闭</option>");
    strhtml.Append("<option value=\"1\">1_开启</option>");
    strhtml.Append("<option value=\"" + KL_BBSRE_Anonymous_Open + "\">Web.confi配置：" + KL_BBSRE_Anonymous_Open + "</option>");
    strhtml.Append("</select><br/>(优先级web.config中“KL_BBSRE_Anonymous_Open”值)<br/>");
    strhtml.Append("[13]分享下载:");
    strhtml.Append("<select name=\"par13\">");
    strhtml.Append("<option value=\"" + par13 + "\">" + par13 + "</option>");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭省空间</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("[14]本区专题列表排序:");
    strhtml.Append("<select name=\"par14\">");
    strhtml.Append("<option value=\"" + par14 + "\">" + par14 + "</option>");
    strhtml.Append("<option value=\"0\">0_升序</option>");
    strhtml.Append("<option value=\"1\">1_降序</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("[15]显示上一条下一条:");
    strhtml.Append("<select name=\"par15\">");
    strhtml.Append("<option value=\"" + par15 + "\">" + par15 + "</option>");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");
   
    strhtml.Append("(关闭提高性能，优先级web.cofig配置)<br/>");
    strhtml.Append("[40]显示上一页下一页，关闭有加载更多按钮:");
    strhtml.Append("<select name=\"par40\">");
    strhtml.Append("<option value=\"" + par40 + "\">" + par40 + "</option>");
    strhtml.Append("<option value=\"0\">0_关闭</option>");
    strhtml.Append("<option value=\"1\">1_开启</option>");
    strhtml.Append("</select><br/>");
    
    
    
    strhtml.Append("[19]二级页面返回上级/首页替换:<br/>");
    strhtml.Append("<input type=\"text\" name=\"par19\" value=\"" + this.par19 + "\"/><br/>");
    strhtml.Append("例:<input type=\"text\" name=\"infas\" value=\"[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[parentid]&amp;stype=[stype]]返回上级[/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");
   
    strhtml.Append("[20]三级页面返回上级/首页替换:<br/>");
    strhtml.Append("<input type=\"text\" name=\"par20\" value=\"" + this.par20 + "\"/><br/>");
    strhtml.Append("例:<input type=\"text\" name=\"infos\" value=\"[url=/bbs/book_list.aspx?siteid=[siteid]&amp;classid=[classid]&amp;stype=[stype]]返回[classname][/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");
    strhtml.Append("[21]允许会员身份ID发特殊贴:(所有会员还可以发普通贴)<br/>");
    strhtml.Append("<input type=\"text\" name=\"par21\" value=\"" + this.par21 + "\"/><br/>");
    strhtml.Append("(多个身份/用户级别ID用_区分,<a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid) + "\">查看</a>)<br/>");

    strhtml.Append("[27]允许会员身份ID发贴:(只有对应身份的人才可以发贴)<br/>");
    strhtml.Append("<input type=\"text\" name=\"par27\" value=\"" + this.par27 + "\"/><br/>");
    strhtml.Append("(多个身份ID用_区分,<a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid) + "\">查看</a>)<br/>");

    
    strhtml.Append("[23]三级页面效果:");
    strhtml.Append("<select name=\"par23\">");
    strhtml.Append("<option value=\"" + par23 + "\">" + par23 + "</option>");
    strhtml.Append("<option value=\"1\">1_简洁(推荐,楼主在下面)</option>");
    strhtml.Append("<option value=\"0\">0_默认(楼主在上面)</option>");    
    strhtml.Append("</select><br/>");

    strhtml.Append("[24]贴子标题最小长度:");
    strhtml.Append("<input type=\"text\" name=\"par24\" value=\"" + this.par24 + "\" size=\"5\"/><br/>");
    strhtml.Append("(1-200)<br/>");

    strhtml.Append("[25]贴子内容最小长度:");
    strhtml.Append("<input type=\"text\" name=\"par25\" value=\"" + this.par25 + "\" size=\"5\"/><br/>");
    strhtml.Append("(1-无限)<br/>");
    strhtml.Append("[26]回贴内容最小长度:");
    strhtml.Append("<input type=\"text\" name=\"par26\" value=\"" + this.par26 + "\" size=\"5\"/><br/>");
    strhtml.Append("(1-无限)<br/>");

    strhtml.Append("[30]贴子标题最大长度:");
    strhtml.Append("<input type=\"text\" name=\"par30\" value=\"" + this.par30 + "\" size=\"5\"/><br/>");
    strhtml.Append("(空或0为无限)<br/>");

    strhtml.Append("[31]贴子内容最大长度:");
    strhtml.Append("<input type=\"text\" name=\"par31\" value=\"" + this.par31 + "\" size=\"5\"/><br/>");
    strhtml.Append("(空或0为无限)<br/>");

    strhtml.Append("[32]回贴内容最大长度:");
    strhtml.Append("<input type=\"text\" name=\"par32\" value=\"" + this.par32 + "\" size=\"5\"/><br/>");
    strhtml.Append("(空或0为无限)<br/>");

    strhtml.Append("[33]默认显示附件个数:");
    strhtml.Append("<input type=\"text\" name=\"par33\" value=\"" + this.par33 + "\" size=\"5\"/><br/>");
    strhtml.Append("(0为所有)<br/>");
    
    strhtml.Append("[29]附件推荐到下载栏目ID:<br/>");
    strhtml.Append("<input type=\"text\" name=\"par29\" value=\"" + this.par29 + "\"/><br/>");
    strhtml.Append("(多个用,隔开，为空所有)<br/>");
    
    strhtml.Append("----------<br/>");
    strhtml.Append("总版主站长才有权设以下参数，不设置取站长后台【币种经验规则设置】<br/>");
    strhtml.Append("[16]下载文件需要登录:");
    strhtml.Append("<select name=\"par16\">");
    strhtml.Append("<option value=\"" + par16 + "\">" + par16 + "</option>");
    strhtml.Append("<option value=\"0\">0_关闭</option>");
    strhtml.Append("<option value=\"1\">1_开启</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("[17]下载文件扣币:");
    strhtml.Append("<input type=\"text\" name=\"par17\" value=\"" + this.par17 + "\" size=\"5\"/>个<br/>");
    strhtml.Append("[18]下载文件送币:");
    strhtml.Append("<input type=\"text\" name=\"par18\" value=\"" + this.par18 + "\" size=\"5\"/>个<br/>");
    strhtml.Append("(管理员无效)<br/>");
    strhtml.Append("[22]下载扣币送给上传者:");
    strhtml.Append("<select name=\"par22\" value=\"" + this.par22 + "\">");
    strhtml.Append("<option value=\"" + par22 + "\">" + par22 + "</option>");
    strhtml.Append("<option value=\"0\">0_关闭</option>");
    strhtml.Append("<option value=\"1\">1_开启</option>");
    strhtml.Append("</select><br/>");  
    strhtml.Append("[34]发普通贴送币和经验:<br/>");
    strhtml.Append("<input type=\"text\" name=\"par34\" value=\"" + this.par34 + "\" size=\"10\"/>(格式:100,200)<br/>");
    strhtml.Append("[35]发文件贴送币和经验:<br/>");
    strhtml.Append("<input type=\"text\" name=\"par35\" value=\"" + this.par35 + "\" size=\"10\"/>(格式:100,200)<br/>");
    strhtml.Append("[36]普通回贴送币和经验:<br/>");
    strhtml.Append("<input type=\"text\" name=\"par36\" value=\"" + this.par36 + "\" size=\"10\"/>(格式:100,200)<br/>");
    strhtml.Append("[37]文件回贴送币和经验:<br/>");
    strhtml.Append("<input type=\"text\" name=\"par37\" value=\"" + this.par37 + "\" size=\"10\"/>(格式:100,200)<br/>");
    strhtml.Append("[38]回贴列表显示头像:");
    strhtml.Append("<select name=\"par38\">");
    strhtml.Append("<option value=\"" + par38 + "\">" + par38 + "</option>");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("----------<br/><b>以下为六合论坛配置</b><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap\">玩法参数配置</a>｜<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap\">开奖管理</a><br/>");

    strhtml.Append("[39]本论坛发贴显示玩法,请输入玩法ID:<br/>");
    strhtml.Append("<input type=\"text\" name=\"par39\" value=\"" + this.par39 + "\" /><br/>(只能输入一个ID，例9。配置了，论坛列表中的“发贴”按钮默认进入发投注贴，“排行”按钮默认进入高手排行)<br/>");

    strhtml.Append("----------<br/>");

    strhtml.Append("[41]发贴必选类别:");
    strhtml.Append("<select name=\"par41\">");
    strhtml.Append("<option value=\"" + par41 + "\">" + par41 + "</option>");
    strhtml.Append("<option value=\"0\">0_否</option>");
    strhtml.Append("<option value=\"1\">1_是</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("[42]置顶贴颜色:");
    strhtml.Append("#<input type=\"text\" name=\"par42\" value=\"" + this.par42 + "\" size=\"6\" /><br/>(颜色代码如红#FF0000，蓝#0000FF)<br/>");

    strhtml.Append("[43]贴子排序功能:<br/>");
    strhtml.Append("<select name=\"par43\">");
    strhtml.Append("<option value=\"" + par43 + "\">" + par43 + "</option>");
    strhtml.Append("<option value=\"0\">0_帖子被回复后提升</option>");
    strhtml.Append("<option value=\"1\">1_帖子被回复后不会提升</option>");
    strhtml.Append("<option value=\"2\">2_帖子被作者编辑后提升</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[44]发外站资源贴(对普通会员):");
    strhtml.Append("<select name=\"par44\">");
    strhtml.Append("<option value=\"" + par44 + "\">" + par44 + "</option>");
    strhtml.Append("<option value=\"0\">0_开启</option>");
    strhtml.Append("<option value=\"1\">1_关闭</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("[45]图片展示宽:");
    strhtml.Append("<input type=\"text\" name=\"par45\" value=\"" + this.par45 + "\" size=\"3\" />px(0为默认)<br/>");

    strhtml.Append("[46]图片展示高:");
    strhtml.Append("<input type=\"text\" name=\"par46\" value=\"" + this.par46 + "\" size=\"3\" />px(0为默认)<br/>");

    
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        strhtml.Append("<hr/>");
        strhtml.Append("是否更新所有论坛栏目？");
        strhtml.Append("<br/><input type=\"text\"  name=\"chkall\" size=\"3\" value=\"no\"/>如果是输入yes");
        strhtml.Append("<hr/>");
    }
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("保 存|保 存|save") + "\"/>");
    strhtml.Append("</form>");
    strhtml.Append("</form></div>");
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append("说明:其它请到【页面综合排版】→【修改栏目】中配置。");
    
    strhtml.Append("</div>");

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返回列表</a> ");
    strhtml.Append("</div></div>");
    Response.Write(strhtml);

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


