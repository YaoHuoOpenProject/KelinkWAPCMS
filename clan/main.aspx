<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="KeLin.WebSite.clan.main" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");

    if (classVo.classid != 0 && classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/><br/>");
    }
    if (classVo.classid != 0 && classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce + "<br/>");
    }
    
    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }


    strhtml.Append("<b>+最热家族</b><br/>");
   
    for (int i = 0; (hotClanListVo != null && i < hotClanListVo.Count); i++)
    {

        strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + hotClanListVo[i].id + "" + "\">" + hotClanListVo[i].clan_name + "</a>(" + hotClanListVo[i].clan_memberCount + "/" + hotClanListVo[i].clan_maxMemberCount + "人)<br/>");
        //kk = kk + 1;
    }
    if (hotClanListVo == null)
    {
        strhtml.Append("暂无家族！<br/>");
    }
    strhtml.Append("----------<br/>");
    strhtml.Append("<b>+我的家族</b><br/>");
    
    for (int i = 0; (myListVo != null && i < myListVo.Count); i++)
    {

        strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + myListVo[i].clan_id + "" + "\">" + myListVo[i].clan_name + "</a>(" + myListVo[i].clan_memberCount + "/" + myListVo[i].clan_maxMemberCount + "人)<br/>");
        //kk = kk + 1;
    }
    if (myListVo == null)
    {
        strhtml.Append("我还没有加入家族，快加入或创建一个！<br/>");
    }
    //strhtml.Append("----------<br/>");

    strhtml.Append("<a href=\"" + this.http_start + "clan/addclan.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">创建家族</a>(最多" + maxclan + "个)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">加入家族</a>(最多" + maxclanadd + "个)<br/>");
 
    strhtml.Append("----------<br/>");
    strhtml.Append("<b>+家族争霸</b><br/>");
  
    strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "" + "\">我的战绩</a>.<a href=\"" + http_start + "clan/rule.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "" + "\">游戏规则</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">家族排行</a>.");


    strhtml.Append("<a href=\"" + this.http_start + "clan/user_pk_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">进入争霸</a>");
    strhtml.Append("<br/>");
    strhtml.Append("新成员默认战斗力:" + power);
    strhtml.Append("<br/>");
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("----------<br/>");
        strhtml.Append("【<a href=\"" + this.http_start + "clan/classconfigALL.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">管理员配制家族</a>】");
        strhtml.Append("<br/>----------<br/>");
    }
    
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
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




    if (classVo.classid !=0 && classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/><br/>");
    }
    if (classVo.classid != 0 && classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce + "<br/>");
    }

    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
    //显示内容
    strhtml.Append("<div class=\"subtitle\">最热家族</div>");
    strhtml.Append("<div class=\"content\">");
    for (int i = 0; (hotClanListVo != null && i < hotClanListVo.Count); i++)
    {

        strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + hotClanListVo[i].id + "" + "\">" + hotClanListVo[i].clan_name + "</a>(" + hotClanListVo[i].clan_memberCount + "/" + hotClanListVo[i].clan_maxMemberCount + "人)<br/>");
        //kk = kk + 1;
    }
    if (hotClanListVo == null)
    {
        strhtml.Append("暂无家族！<br/>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">我的家族</div>");
    strhtml.Append("<div class=\"content\">");
    for (int i = 0; (myListVo != null && i < myListVo.Count); i++)
    {

        strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + myListVo [i].clan_id+ "" + "\">" + myListVo[i].clan_name + "</a>(" + myListVo[i].clan_memberCount + "/" + myListVo[i].clan_maxMemberCount + "人)<br/>");
        //kk = kk + 1;
    }
    if (myListVo == null)
    {
        strhtml.Append("我还没有加入家族，快加入或创建一个！<br/>");
    }
    strhtml.Append("----------<br/>");
   
    strhtml.Append("<a href=\""+this.http_start+"clan/addclan.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid+"\">创建家族</a>(最多"+maxclan+"个)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">加入家族</a>(最多" + maxclanadd + "个)");
   
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">家族争霸</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "" + "\">我的战绩</a>.<a href=\"" + http_start + "clan/rule.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "" + "\">游戏规则</a><br/>");
    strhtml.Append("<a href=\""+this.http_start+"clan/book_list.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid+"\">家族排行</a>.");


    strhtml.Append("<a href=\"" + this.http_start + "clan/user_pk_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">进入争霸</a>");
    strhtml.Append("<br/>新成员默认战斗力:" + power);
   
    strhtml.Append("</div>");
    
    
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("【<a href=\"" + this.http_start + "clan/classconfigALL.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">管理员配制家族</a>】");
        strhtml.Append("</div>");
    }
    
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
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
