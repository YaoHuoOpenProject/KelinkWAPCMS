<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myinfo.aspx.cs" Inherits="KeLin.WebSite.clan.myinfo" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("用户战绩", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
  
    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }


 

    if (bookVo != null )
    {
        
            strhtml.Append("昵称：" + bookVo[0].nickname + "<br/>");
            strhtml.Append("[<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo[0].userid + "&amp;backurl=" + HttpUtility.UrlEncode(base.GetUrlQueryString()) + "\">查看详细资料</a>]<br/>");
            strhtml.Append("所属家族：<br/>");
        

        for (int i = 0; (bookVo != null && i < bookVo.Count); i++)
        {
            strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo[i].clan_id + "" + "\">" + bookVo[i].clan_name + "</a><br/>");
        }
      
            strhtml.Append("家族族长：");
            if (bookVo[0].ismaster == true)
            {
                strhtml.Append("是<br/>");
            }
            else
            {
                strhtml.Append("否<br/>");
            }
            strhtml.Append("加入时间：" + bookVo[0].clan_joindate + "<br/>");
            strhtml.Append("战斗能量：" + bookVo[0].power + "<br/>");
            strhtml.Append("战斗积分：" + bookVo[0].mark + "<br/>");
            strhtml.Append("攻击次数：" + bookVo[0].pk_attack + "<br/>");
            strhtml.Append("受攻击次数：" + bookVo[0].pk_attacked + "<br/>");
        
    }
    if (bookVo == null)
    {
        strhtml.Append("您还没有加入任何一个家族，快去加入吧。<br/>");

    }
    
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }

    if (id == "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">返回家族</a>-");

    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">返回家族</a>-");
    }
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");
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
    strhtml.Append("<div class=\"subtitle\">用户战绩</div>");
    strhtml.Append("<div class=\"content\">");

    if (bookVo != null )
    {
        
            strhtml.Append("昵称：" + bookVo[0].nickname + "<br/>");
            strhtml.Append("[<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo[0].userid + "&amp;backurl=" + HttpUtility.UrlEncode(base.GetUrlQueryString()) + "\">查看详细资料</a>]<br/>");
            strhtml.Append("所属家族：<br/>");
        

        for (int i = 0; (bookVo != null && i < bookVo.Count); i++)
        {
            strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo[i].clan_id + "" + "\">" + bookVo[i].clan_name + "</a><br/>");
        }
      
            strhtml.Append("家族族长：");
            if (bookVo[0].ismaster == true)
            {
                strhtml.Append("是<br/>");
            }
            else
            {
                strhtml.Append("否<br/>");
            }
            strhtml.Append("加入时间：" + bookVo[0].clan_joindate + "<br/>");
            strhtml.Append("战斗能量：" + bookVo[0].power + "<br/>");
            strhtml.Append("战斗积分：" + bookVo[0].mark + "<br/>");
            strhtml.Append("攻击次数：" + bookVo[0].pk_attack + "<br/>");
            strhtml.Append("受攻击次数：" + bookVo[0].pk_attacked + "<br/>");
        
    }
    if (bookVo == null)
    {
        strhtml.Append("您还没有加入任何一个家族，快去加入吧。<br/>");

    }
    strhtml.Append("</div>");
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }

  
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    if (id == "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">返回家族</a> ");
   
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">返回家族</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");

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
