<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="my.aspx.cs" Inherits="KeLin.WebSite.clan.my" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(bookVo.clan_name, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    
    
    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }
    if (bookVo.clan_img != "" && bookVo.clan_img != "http://")
    {
        strhtml.Append("<img src=\"" + bookVo.clan_img + "\" alt=\"LOGO\"/><br/>");

    }
    strhtml.Append("<b>+家族公告</b><br/>");
 
    if (bookVo.clan_notice != "")
    {
        strhtml.Append(bookVo.clan_notice);
    }
    else
    {
        strhtml.Append("暂无公告！");

    }

    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("<b>+家族信息</b><br/>");
   
    strhtml.Append("名称：" + bookVo.clan_name + "<br/>");
    strhtml.Append("成员：" + bookVo.clan_memberCount + "/" + bookVo.clan_maxMemberCount + "人<br/>");
    strhtml.Append("待审：<a href=\"" + this.http_start + "clan/user_join_list.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + joining + "</a>人<br/>");

    strhtml.Append("基金：" + bookVo.clan_money + " [<a href=\"" + this.http_start + "clan/app.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">应用</a>]<br/>");
    strhtml.Append("积分：" + bookVo.clan_mark + " <br/>");
    strhtml.Append("创建人：");
    if (toUserVo != null)
    {

        strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo.createid + "&amp;id=" + this.id + "" + "\">" + WapTool.GetColorNickName(toUserVo.idname, toUserVo.nickname, lang, ver) + "</a>(ID:" + bookVo.createid + ")<br/>");
    }
    else
    {
        strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo.createid + "&amp;id=" + this.id + "" + "\">" + bookVo.createid + "</a>(此族长已去西天了)<br/>");

    }
    strhtml.Append("创建时间：" + string.Format("{0:yyyy-MM-dd}", bookVo.clan_createdate) + "<br/>");
    strhtml.Append("开放加入：");
    if (bookVo.clan_join == true)
    {
        strhtml.Append("开放中");
    }
    else
    {
        strhtml.Append("关闭中");
    }
    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/user_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">家族成员</a>.<a href=\"" + this.http_start + "clan/user_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">成员排行</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/joinclan.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">申请加入</a>.<a href=\"" + this.http_start + "clan/user_out.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">退出家族</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/setclan.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">家族设定</a>.<a href=\"" + this.http_start + "clan/user_join_list.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">审核加入</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/user_list.aspx?type=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">成员管理</a>.<a href=\"" + this.http_start + "clan/user_del_clan.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">解除家族</a><br/>");
    strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "&amp;id=" + this.id + "" + "\">我的信息</a>.<a href=\"" + this.http_start + "clan/buypower.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">购买能量</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "clan/chat_list.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">家族聊天</a>.<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + bookVo.clan_bbs + "\">家族论坛</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "clan/showadmin.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">管理人员</a>.<a href=\"" + this.http_start + "clan/user_pk_list.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">进入争霸</a><br/>");

    
    
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }


    strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));    
    if (classVo.sitedowntip != "")
    {
        strhtml.Append("<br/>" + classVo.sitedowntip);
    }
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{


 

    

    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
    //显示内容
    if (bookVo.clan_img != "" && bookVo.clan_img != "http://")
    {
        strhtml.Append("<div class=\"logo\"><img src=\""+bookVo.clan_img+"\" alt=\"LOGO\"/></div>");

    }
    strhtml.Append("<div class=\"subtitle\">家族公告</div>");
    strhtml.Append("<div class=\"content\">");
    if (bookVo.clan_notice != "")
    {
        strhtml.Append(bookVo.clan_notice);
    }
    else
    {
        strhtml.Append("暂无公告！");

    }
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">家族信息</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("名称：" + bookVo.clan_name + "<br/>");
    strhtml.Append("成员："+bookVo.clan_memberCount+"/"+bookVo.clan_maxMemberCount+"人<br/>");
    strhtml.Append("待审：<a href=\"" + this.http_start + "clan/user_join_list.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + joining + "</a>人<br/>");

    strhtml.Append("基金：" + bookVo.clan_money + " [<a href=\"" + this.http_start + "clan/app.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">应用</a>]<br/>");
    strhtml.Append("积分：" + bookVo.clan_mark + " <br/>");
    strhtml.Append("创建人：");
    if (toUserVo != null)
    {

        strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo.createid + "&amp;id=" + this.id + "" + "\">" + WapTool.GetColorNickName(toUserVo.idname, toUserVo.nickname, lang, ver) + "</a>(ID:"+bookVo.createid+")<br/>");
    }
    else
    {
        strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo.createid + "&amp;id=" + this.id + "" + "\">" + bookVo.createid + "</a>(此族长已去西天了)<br/>");
    
    }
    strhtml.Append("创建时间：" + string.Format("{0:yyyy-MM-dd}", bookVo.clan_createdate) + "<br/>");
    strhtml.Append("开放加入：");
    if (bookVo.clan_join == true)
    {
        strhtml.Append("开放中");
    }
    else
    {
        strhtml.Append("关闭中");
    }
    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/user_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">家族成员</a>.<a href=\"" + this.http_start + "clan/user_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">成员排行</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/joinclan.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">申请加入</a>.<a href=\"" + this.http_start + "clan/user_out.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">退出家族</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/setclan.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">家族设定</a>.<a href=\"" + this.http_start + "clan/user_join_list.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">审核加入</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/user_list.aspx?type=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">成员管理</a>.<a href=\"" + this.http_start + "clan/user_del_clan.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">解除家族</a><br/>");
    strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "&amp;id=" + this.id + "" + "\">我的信息</a>.<a href=\"" + this.http_start + "clan/buypower.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">购买能量</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "clan/chat_list.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">家族聊天</a>.<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + bookVo.clan_bbs + "\">家族论坛</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "clan/showadmin.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">管理人员</a>.<a href=\"" + this.http_start + "clan/user_pk_list.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">进入争霸</a><br/>");

    strhtml.Append("</div>");
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }

  
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    if (classVo.sitedowntip != "")
    {
        strhtml.Append(classVo.sitedowntip);
    }

    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
