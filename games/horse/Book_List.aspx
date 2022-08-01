<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.Games.horse.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="投注记录";
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    strhtml.Append("会员ID：<input type=\"text\" name=\"touserid" + r + "\" value=\"" + this.touserid + "\" size=\"8\"/><br/>");
    strhtml.Append("期数：<input type=\"text\" name=\"toid"+r+"\" value=\"" + toid + "\" size=\"8\"/><br/>");
    strhtml.Append("状态：<select name=\"towin" + r + "\" value=\"" + this.towin + "\">");
    strhtml.Append("<option value=\"\">所有</option>");
    strhtml.Append("<option value=\"1\">获胜</option>");
    strhtml.Append("<option value=\"0\">失败</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "games/horse/book_list.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\" />");
    strhtml.Append("<postfield name=\"toid\" value=\"$(toid" + r + ")\" />");
    strhtml.Append("<postfield name=\"towin\" value=\"$(towin" + r + ")\" />");    
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor> ");
    strhtml.Append("<br/>--------<br/>");
    //显示列表

   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        index = index + kk;        
        strhtml.Append(index);
        strhtml.Append(".第" + listVo[i].periodID + "期");
        if (listVo[i].userid.ToString() != this.userid)
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].nickname + "(ID" + listVo[i].userid + ")</a>");
        }
        else
        {
            strhtml.Append("我");
        }
        strhtml.Append("压" + listVo[i].typesName + listVo[i].myMoney + siteVo.sitemoneyname + ",");
        if (listVo[i].state == 1)
        {
            strhtml.Append("赢" + listVo[i].getMoney + siteVo.sitemoneyname);
        }
        else if (listVo[i].state == 2)
        {
            strhtml.Append("输局");
        }
        else
        {
            strhtml.Append("未开");
        }
        
        strhtml.Append("<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<a href=\"" + this.http_start + "games/horse/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回赛马场游戏</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" );
    strhtml.Append(title);    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "games/horse/book_list.aspx\" method=\"get\">");
    strhtml.Append("会员ID：<input type=\"text\" name=\"touserid\" value=\"" + touserid + "\" size=\"8\"/><br/>");
    strhtml.Append("期数：<input type=\"text\" name=\"toid\" value=\"" + toid + "\" size=\"8\"/><br/>"); 
    strhtml.Append("状态：<select name=\"towin\">");
    strhtml.Append("<option value=\"" + towin + "\">" + towin + "</option>");
    strhtml.Append("<option value=\"\">所有</option>");
    strhtml.Append("<option value=\"1\">1_获胜</option>");
    strhtml.Append("<option value=\"0\">0_失败</option>");
    strhtml.Append("</select><br/>");  
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");
    strhtml.Append("</form></div>");
    

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
        strhtml.Append(".第"+listVo[i].periodID+"期");
        if (listVo[i].userid.ToString() != this.userid)
        {
            strhtml.Append("<a href=\""+this.http_start+"bbs/userinfo.aspx?siteid="+this.siteid+"&amp;touserid="+listVo[i].userid+"&amp;sid="+this.sid+"\">"+listVo[i].nickname+"(ID"+listVo[i].userid+")</a>");
        }
        else
        {
            strhtml.Append("我");
        }
        strhtml.Append("压" + listVo[i].typesName + listVo[i].myMoney + siteVo.sitemoneyname + ",");
        if (listVo[i].state == 1)
        {
            strhtml.Append("赢"+listVo[i].getMoney+siteVo.sitemoneyname);
        }
        else if (listVo[i].state == 2)
        {
            strhtml.Append("输局");
        }
        else
        {
            strhtml.Append("未开");
        }
        
        strhtml.Append("</div>");
       
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/horse/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回赛马场游戏</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
