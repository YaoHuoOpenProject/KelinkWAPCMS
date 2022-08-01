<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="smalltypelist.aspx.cs" Inherits="KeLin.WebSite.bbs.smalltypelist" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();                                                                                                                                                        
Response.Write(WapTool.showTop(this.GetLang("会员身份分类管理|会员身份分类管理|my fav admin"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    if (this.INFO == "ADDOK")
    {
        strhtml.Append("<b>" + this.GetLang("添加成功！|添加成功！|add successfully!") + "</b><br/>");

    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>" + this.GetLang("不能为空！|不能为空！|not null!") + "</b><br/>");

    }
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");

    strhtml.Append("分类名称或图片地址:<br/>");
    strhtml.Append("<input type=\"text\" name=\"subjectname"+r+"\" value=\"" + subjectname + "\"/><br/>");
    strhtml.Append("昵称颜色：(<a href=\"" + this.http_start + "bbs/smalltypelist_color.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/smalltypelist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "") + "\">查看颜色编码</a>)<br/>#<input type=\"text\" name=\"color" + r + "\" size=\"6\" value=\"" + color + "\"/>(例:ff0000)<br/>");
    
    strhtml.Append("购买一个月(30天)需要RMB(0为关闭购买功能):<br/>");
    strhtml.Append("<input type=\"text\" name=\"ordernum"+r+"\" value=\"" + ordernum + "\" size=\"5\"/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "bbs/smalltypelist.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"goadd\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"subjectname\" value=\"$(subjectname"+r+")\" />");
    strhtml.Append("<postfield name=\"color\" value=\"$(color" + r + ")\" />");
    strhtml.Append("<postfield name=\"ordernum\" value=\"$(ordernum" + r + ")\" />");
    strhtml.Append("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("添加|添加|submit") + "</anchor><br/>");

    strhtml.Append("----------<br/>");
    strhtml.Append("<b>身份ID_分类名_昵称颜色_需要RMB</b><br/>");
    strhtml.Append("0_普通会员_默认颜色_￥0.00(默认)<br/>");
    for (int i = 0; (sublistVo != null && i < sublistVo.Count); i++)
    {

        strhtml.Append("<b>" + sublistVo[i].id + "</b>_" + WapTool.showImg(sublistVo[i].subclassName) + "_" + WapTool.showNickNameColor(sublistVo[i].subclassName) + "_￥" + sublistVo[i].rank + ".00");
        strhtml.Append("[<a href=\"" + http_start + "bbs/smalltypelist_mod.aspx?action=mod&amp;siteid=" + this.siteid + "&amp;classid=0&amp;id=" + sublistVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">修</a>.<a href=\"" + http_start + "bbs/smalltypelist_del.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=0&amp;id=" + sublistVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">删</a>.<a href=\"" + this.http_start + "bbs/togroupview.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + sublistVo[i].id + "\">查看权限</a>]<br/>");

    }
    if (sublistVo == null)
    {
        strhtml.Append("没有建分类，请先添加<br/>");
    }
    strhtml.Append("<br/>说明:一对一关系，即一个用户只能对应一个身份级别，建议身份级别是按身份ID递增的(如VIP1,VIP2)，会员可以在WAP上用RMB直接购买！<br/><b>访问权限设置</b>:栏目控制访问请在【页面综合排版】→【修改】→栏目属性中的【允许会员身份ID】中录入本页面中的身份ID值。<br/>昵称颜色在WAP2.0以上版本有效。");
    strhtml.Append("【<a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">查看效果</a>】");

    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("无权限时提示内容(支持UBB,200字内)，请进入WAP2.0界面中编辑。<br/>");
    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "&amp;classid=0" + "\">返回管理</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出

    Response.Write(strhtml);
}
else //2.0界面
{



    strhtml.Append("<div class=\"title\">" + this.GetLang("会员身份分类管理|会员身份分类管理|my fav admin") + "</div>");
   
    if (this.INFO == "ADDOK")
    {
        strhtml.Append("<div class=\"tip\"><b>" + this.GetLang("添加成功！|添加成功！|add successfully!") + "</b></div>");

    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\"><b>" + this.GetLang("不能为空！|不能为空！|not null!") + "</b></div>");

    }
    
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/smalltypelist.aspx\" method=\"post\">");
    strhtml.Append("分类名称或图标地址:<br/>");
    strhtml.Append("<input type=\"text\" name=\"subjectname\" value=\"" + subjectname + "\"/><br/>");
    strhtml.Append("昵称颜色:(<a href=\"" + this.http_start + "bbs/smalltypelist_color.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/smalltypelist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "") + "\">查看颜色代码</a>)<br/>");
    strhtml.Append("#<input type=\"text\" name=\"color\" size=\"6\" value=\"" + color + "\"/>(例:ff0000)<br/>");
    strhtml.Append("一个月(30天)购买需要RMB(0为关闭购买功能):<br/>");
    strhtml.Append("<input type=\"text\" name=\"ordernum\" value=\"" + ordernum + "\" size=\"5\"/>");
   
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"goadd\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("添加|添加|submit") + "\"/>");
    strhtml.Append("</form>");
    
    strhtml.Append("<hr/>");
    strhtml.Append("<b>身份ID_分类名_昵称颜色_需要RMB</b><br/>");
    strhtml.Append("0_普通会员_默认颜色_￥0.00(默认)<br/>");
    for (int i = 0; (sublistVo != null && i < sublistVo.Count); i++)
    {

        strhtml.Append("<b>" + sublistVo[i].id + "</b>_" + WapTool.showImg(sublistVo[i].subclassName) + "_" + WapTool.showNickNameColor(sublistVo[i].subclassName) + "_￥" + sublistVo[i].rank + ".00");
        strhtml.Append("[<a href=\"" + http_start + "bbs/smalltypelist_mod.aspx?action=mod&amp;siteid=" + this.siteid + "&amp;classid=0&amp;id=" + sublistVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">修</a>.<a href=\"" + http_start + "bbs/smalltypelist_del.aspx?action=del&amp;siteid=" + this.siteid + "&amp;classid=0&amp;id=" + sublistVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">删</a>.<a href=\"" + this.http_start + "bbs/togroupview.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + sublistVo[i].id + "\">查看权限</a>]<br/>");

    }
    if (sublistVo == null)
    {
        strhtml.Append("没有建分类，请先添加<br/>");
    }
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"tip\">");
    strhtml.Append("说明:一对一关系，即一个用户只能对应一个身份级别，建议身份级别是按身份ID递增的(如VIP1,VIP2)，会员可以在WAP上用RMB直接购买！<br/><b>访问权限设置</b>:栏目控制访问请在【页面综合排版】→【修改】→栏目属性中的【允许会员身份ID】中录入本页面中的身份ID值。<br/>昵称颜色在WAP2.0以上版本有效。");
    strhtml.Append("【<a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">查看效果</a>】");

    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">界面提示</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/smalltypelist.aspx\" method=\"post\">");
    strhtml.Append("无权限时提示内容(支持UBB):<br/>");
    strhtml.Append("<textarea name=\"content\" rows=\"5\" style=\"width:100%\">" + this.content + "</textarea><br/>");
       
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"goaddinfo\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"保存\"/>");
    strhtml.Append("</form>");
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

    strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "&amp;classid=0" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    
    strhtml.Append("</div></div>");

    Response.Write(strhtml);



}
                                                                                                                                                                               
strhtml.Append(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


