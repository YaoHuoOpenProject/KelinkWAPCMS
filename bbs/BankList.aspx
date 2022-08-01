<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BankList.aspx.cs" Inherits="KeLin.WebSite.bbs.BankList" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
                                                                                                                                                                    
StringBuilder strhtml=new StringBuilder ();                                                                                                                                                                             
Response.Write(WapTool.showTop(this.GetLang("帐目明细|帐目明细|bank list"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");

    
        strhtml.Append("年份:<input type=\"text\" name=\"toyear\" value=\"" + toyear + "\" size=\"4\"/>");
        strhtml.Append("月份:<input type=\"text\" name=\"tomonth\" value=\"" + tomonth + "\" size=\"4\"/><br/>");
        strhtml.Append("当事ID:<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/><br/>");
       
        strhtml.Append("<select name=\"typeid\" value=\""+typeid+"\">");
        strhtml.Append("<option value=\"\">  </option>");
        strhtml.Append("<option value=\"1\">项目名称</option>");
        strhtml.Append("<option value=\"2\">操作ID</option>");
        strhtml.Append("<option value=\"3\">操作昵称</option>");
        strhtml.Append("<option value=\"4\">备注</option>");
        strhtml.Append("<option value=\"5\">流水ID</option>");    
        strhtml.Append("</select>");
        strhtml.Append("关键字:<input type=\"text\" name=\"typekey\" value=\"" + typekey + "\" size=\"5\"/><br/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "bbs/banklist.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"search\" />");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
        strhtml.Append("<postfield name=\"key\" value=\"$(key)\" />");
        strhtml.Append("<postfield name=\"typeid\" value=\"$(typeid)\" />");
        strhtml.Append("<postfield name=\"typekey\" value=\"$(typekey)\" />");
        strhtml.Append("<postfield name=\"toyear\" value=\"$(toyear)\" />");
        strhtml.Append("<postfield name=\"tomonth\" value=\"$(tomonth)\" />");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor><br/>");

      
    strhtml.Append("---------<br/>");
    strhtml.Append(linkTOP);
    strhtml.Append("<table border=\"1\" width=\"860\" id=\"table1\">");
    strhtml.Append("<tr align=\"center\">");
    strhtml.Append("<td width=\"46\">币种</td>");
    strhtml.Append("<td width=\"109\">项目</td>");
    strhtml.Append("<td width=\"85\">交易数量</td>");
    strhtml.Append("<td width=\"105\">帐户余额</td>");
    strhtml.Append("<td width=\"106\">操作者</td>");
    strhtml.Append("<td width=\"101\">备注</td>");
    strhtml.Append("<td width=\"80\">流水ID</td>");
    strhtml.Append("<td width=\"104\">时间</td>");
    strhtml.Append("<td width=\"80\">当事ID</td>");
    strhtml.Append("</tr>");

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml.Append("<tr bgcolor=\"#C0C0C0\">");
        }
        else
        {
            strhtml.Append("<tr>");
        }


        //index = index + kk;
        // strhtml.Append(index + ".");
        strhtml.Append("<td width=\"46\">" + siteVo.sitemoneyname + "</td>");
        strhtml.Append("<td width=\"109\">" + listVo[i].actionName + "</td>");
        strhtml.Append("<td width=\"85\">");
        if (listVo[i].money.IndexOf("-") >= 0)
        {
            //strhtml.Append("<font color=\"FF0000\">");
            strhtml.Append(listVo[i].money);
           // strhtml.Append("</font>");
        }
        else
        {
            //strhtml.Append("<font color=\"008000\">");
            strhtml.Append(listVo[i].money);
            //strhtml.Append("</font>");
        }
        strhtml.Append("</td>");
        strhtml.Append("<td width=\"105\">" + listVo[i].leftMoney + "</td>");
        strhtml.Append("<td width=\"106\"><a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + listVo[i].opera_userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/banklist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;key=" + HttpUtility.UrlEncode(key)) + "" + "\">" + listVo[i].opera_nickname + "</a><br/>(ID:" + listVo[i].opera_userid + ")</td>");
        strhtml.Append("<td width=\"101\">" + listVo[i].remark + "</td>");
        strhtml.Append("<td width=\"80\">" + listVo[i].id + "</td>");
        strhtml.Append("<td width=\"104\">" + listVo[i].addtime + "</td>");
        strhtml.Append("<td width=\"80\">ID:<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/banklist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;key=" + HttpUtility.UrlEncode(key)) + "" + "\">" + listVo[i].userid + "</a><br/>IP:" + listVo[i].ip + "</td>");
        strhtml.Append("</tr>");






    }

    strhtml.Append("</table>");
    if (listVo == null)
    {
        strhtml.Append("没有记录<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    if (this.isadmin == true)
    {
        strhtml.Append("----------<br/>");
        strhtml.Append("【<a href=\"" + this.http_start + "bbs/banklist.aspx?action=mod&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;toyear=" + this.toyear + "&amp;tomonth=" + this.tomonth + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">删除本月之前所有会员的记录(只保留本月)</a>】");
        strhtml.Append("<br/>----------<br/>");
    }

    
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("帐目明细|帐目明细|bank list") + "</div>");

    strhtml.Append("<div class=\"content\">");
    
   // strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");

   
        strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/banklist.aspx\" method=\"post\">");
        
        strhtml.Append("年份:<input type=\"text\" name=\"toyear\" value=\"" + toyear + "\" size=\"4\"/>");
        strhtml.Append("月份:<input type=\"text\" name=\"tomonth\" value=\"" + tomonth + "\" size=\"4\"/><br/>");
        strhtml.Append("当事ID:<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/><br/>");
        
        strhtml.Append("<select name=\"typeid\">");
        strhtml.Append("<option value=\"" + typeid + "\">" + typeid + "</option>");    
        strhtml.Append("<option value=\"1\">1_项目名称</option>");
        strhtml.Append("<option value=\"2\">2_操作ID</option>");
        strhtml.Append("<option value=\"3\">3_操作昵称</option>");
        strhtml.Append("<option value=\"4\">4_备注</option>");
        strhtml.Append("<option value=\"5\">5_流水ID</option>");
        strhtml.Append("</select>");
        strhtml.Append("关键字:<input type=\"text\" name=\"typekey\" value=\"" + typekey + "\" size=\"5\"/><br/>");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"search\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append(" <input type=\"submit\" class=\"btn\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/><br/>");
       
        strhtml.Append("</form>");
        
    strhtml.Append("</div>");
    strhtml.Append(linkTOP);
    //显示列表
    //strhtml.Append("<div class=\"content\">");
    strhtml.Append("<table border=\"1\" width=\"700\" id=\"table1\">");
    strhtml.Append("<tr align=\"center\">");
    strhtml.Append("<td width=\"46\">币种</td>");
    strhtml.Append("<td width=\"109\">项目</td>");
    strhtml.Append("<td width=\"85\">交易数量</td>");
    strhtml.Append("<td width=\"105\">帐户余额</td>");
    strhtml.Append("<td width=\"106\">操作者</td>");
    strhtml.Append("<td width=\"101\">备注</td>");
    strhtml.Append("<td width=\"80\">流水ID</td>");
    strhtml.Append("<td width=\"104\">时间</td>");
    strhtml.Append("<td width=\"80\">当事ID</td>");
    strhtml.Append("</tr>");
    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml.Append("<tr bgcolor=\"#C0C0C0\">");
        }
        else
        {
            strhtml.Append("<tr>");
        }
        
        
        //index = index + kk;
       // strhtml.Append(index + ".");
        strhtml.Append("<td width=\"46\">"+siteVo.sitemoneyname+"</td>");
        strhtml.Append("<td width=\"109\">"+listVo[i].actionName+"</td>");
        strhtml.Append("<td width=\"85\">");
        if (listVo[i].money.IndexOf("-") >= 0)
        {
            strhtml.Append("<font color=\"FF0000\">");
            strhtml.Append(listVo[i].money);
            strhtml.Append("</font>");
        }
        else
        {
            strhtml.Append("<font color=\"008000\">");
            strhtml.Append(listVo[i].money);
            strhtml.Append("</font>");
        }
        strhtml.Append("</td>");
        strhtml.Append("<td width=\"105\">"+listVo[i].leftMoney+"</td>");
        strhtml.Append("<td width=\"106\"><a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + listVo[i].opera_userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/banklist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;key=" + HttpUtility.UrlEncode(key)) + "" + "\">" + listVo[i].opera_nickname + "</a><br/>(ID:"+listVo[i].opera_userid+")</td>");
        strhtml.Append("<td width=\"101\">"+listVo[i].remark+"</td>");
        strhtml.Append("<td width=\"80\">"+listVo[i].id+"</td>");
        strhtml.Append("<td width=\"104\">"+listVo[i].addtime+"</td>");
        strhtml.Append("<td width=\"80\">ID:<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/banklist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;key=" + HttpUtility.UrlEncode(key)) + "" + "\">" + listVo[i].userid + "</a><br/>IP:" + listVo[i].ip + "</td>");
        strhtml.Append("</tr>");
        
        
        
     
        
       
    }

    strhtml.Append("</table>");
    //strhtml.Append("</div>");
    
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">没有记录</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    if (this.isadmin == true)
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\""+this.http_start + "bbs/banklist.aspx?action=mod&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;toyear="+this.toyear+"&amp;tomonth="+this.tomonth+"&amp;backurl=" + HttpUtility.UrlEncode(backurl) + ""+"\">删除本月之前所有会员的记录(只保留本月)</a> ");
        strhtml.Append("</div></div>");
    }
    
    
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
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    
    strhtml.Append("</div></div>");
    Response.Write(strhtml);
                                                                                                                                                                           




}

Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


