<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userWin_list.aspx.cs" Inherits="KeLin.WebSite.Games.ball.userWin_list" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="竟猜兑奖";

Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);


    if (ptype == "0")
    {
        strhtml.Append("全部");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/userWin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=0\">全部</a>");
    }
    if (ptype == "1")
    {
        strhtml.Append(".足球");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userWin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=1\">足球</a>");
    }
    if (ptype == "2")
    {
        strhtml.Append(".篮球");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userWin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=2\">篮球</a>");
    }


    strhtml.Append("<br/>---------<br/>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append("兑奖成功！");
        strhtml.Append("</b><br/>");
    }
    else if (this.INFO == "NO")
    {
        strhtml.Append("<b>");
        strhtml.Append("兑奖失败！可能不是自己的或没有要兑奖的记录了。");
        strhtml.Append("</b><br/>");
    }
    //显示列表

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        index = index + kk;
        if (i % 2 == 0)
        {
            //strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            //strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append(index);
        strhtml.Append("." + listVo[i].payview);
        if (listVo[i].p_active == 2)
        {
            strhtml.Append(",平盘");
        }
        else
        {
            strhtml.Append(",结果" + listVo[i].p_result_one + ":" + listVo[i].p_result_two);
        }


        strhtml.Append("<br/>时间:" + listVo[i].paytimes + ",返" + listVo[i].p_getMoney.ToString("f2") + siteVo.sitemoneyname);

        allmoney = allmoney + listVo[i].p_getMoney;
        strhtml.Append("<br/>");

    }
    if (listVo == null)
    {
        strhtml.Append("<b>没有要兑奖的记录了。</b><br/>");
    }

    strhtml.Append("---------<br/>");
    strhtml.Append("【共赢:" + allmoney.ToString("f2") + "个" + siteVo.sitemoneyname + " <a href=\"" + this.http_start + "games/ball/userwin_list.aspx?action=add&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype=" + this.ptype + "\">确定兑奖</a>】");

    strhtml.Append("<br/>---------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回上级</a>");
   
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    
    strhtml.Append("<div class=\"subtitle\">" );
    

    strhtml.Append("");
    if (ptype == "0")
    {
        strhtml.Append("全部");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/ball/userWin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=0\">全部</a>");
    }
    if (ptype == "1")
    {
        strhtml.Append(".足球");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userWin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=1\">足球</a>");
    }
    if (ptype == "2")
    {
        strhtml.Append(".篮球");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "games/ball/userWin_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;p_active=" + this.p_active + "&amp;touserid=" + this.touserid + "&amp;ptype=2\">篮球</a>");
    }


    strhtml.Append("</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("兑奖成功！");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NO")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("兑奖失败！可能不是自己的或没有要兑奖的记录了。");
        strhtml.Append("</div>");
    }
    //显示列表
    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        index = index + kk;
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append(index);
        strhtml.Append("." + listVo[i].payview);
        if (listVo[i].p_active == 2)
        {
            strhtml.Append(",平盘");
        }
        else
        {
            strhtml.Append(",结果" + listVo[i].p_result_one + ":" + listVo[i].p_result_two);
        }


        strhtml.Append("<br/>时间:"+listVo[i].paytimes+",返" + listVo[i].p_getMoney.ToString("f2")+siteVo.sitemoneyname);

        allmoney = allmoney + listVo[i].p_getMoney;
        strhtml.Append("</div>");
       
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">没有要兑奖的记录了。</div>");
    }


    strhtml.Append("<div class=\"subtitle\">【共赢:" + allmoney.ToString("f2") + "个" + siteVo.sitemoneyname + " <a href=\"" + this.http_start + "games/ball/userwin_list.aspx?action=add&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype="+this.ptype+"\">确定兑奖</a>】</div>");
   
    //显示导航分页
   
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回上级</a>");
    strhtml.Append("</div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
