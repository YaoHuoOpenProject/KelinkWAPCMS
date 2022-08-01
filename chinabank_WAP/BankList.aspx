<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BankList.aspx.cs" Inherits="KeLin.WebSite.chinabank_WAP.BankList" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
                                                                                                                                                                    
StringBuilder strhtml=new StringBuilder ();                                                                                                                                                                    
Response.Write(WapTool.showTop(this.GetLang("充值明细|充值明细|bank list"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");
    strhtml.Append("年份:<input type=\"text\" name=\"toyear"+r+"\" value=\"" + toyear + "\" size=\"4\"/>");
    strhtml.Append("月份:<input type=\"text\" name=\"tomonth"+r+"\" value=\"" + tomonth + "\" size=\"4\"/><br/>");
      
    if (userVo.managerlvl=="00")
    {
        strhtml.Append("网站ID:<input type=\"text\" name=\"tositeid"+r+"\" value=\"" + tositeid + "\" size=\"5\"/>");
        strhtml.Append("会员ID:<input type=\"text\" name=\"touserid" + r + "\" value=\"" + touserid + "\" size=\"5\"/>");
    }else if(userVo.managerlvl=="01"){

        strhtml.Append("会员ID:<input type=\"text\" name=\"touserid" + r + "\" value=\"" + touserid + "\" size=\"5\"/>");
    }

    strhtml.Append("<br/>");
    strhtml.Append("项目名称:<select name=\"banktype" + r + "\" value=\""+banktype+"\">");
    strhtml.Append("<option value=\"\">所有</option>");
    strhtml.Append("<option value=\"0\">0_易宝支付</option>");
    strhtml.Append("<option value=\"1\">1_WAP支付宝/2_手机网银</option>");
    //strhtml.Append("<option value=\"2\">2_手机网银</option>");
    strhtml.Append("<option value=\"3\">3_手工入帐</option>");
    strhtml.Append("<option value=\"-3\">-3_手工扣帐</option>");
    strhtml.Append("<option value=\"4\">4_商品支付</option>");
    strhtml.Append("<option value=\"-1\">-1_购买虚拟币</option>");
    strhtml.Append("<option value=\"-2\">-2_购买身份级别</option>");
    strhtml.Append("<option value=\"5\">5_RMB购买内容收入</option>");
    strhtml.Append("<option value=\"-5\">-5_RMB购买内容消费</option>");
    strhtml.Append("</select><br/>");
    
    strhtml.Append("状态:<select name=\"code" + r + "\" value=\"" + code + "\">");
    strhtml.Append("<option value=\"\">所有</option>");
    strhtml.Append("<option value=\"0\">0_支付失败</option>");
    strhtml.Append("<option value=\"1\">1_支付成功</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("流水ID:<input type=\"text\" name=\"orderid" + r + "\" value=\"" + orderid + "\" size=\"10\"/><br/>");
    
        strhtml.Append("<anchor><go href=\"" + http_start + "chinabank_wap/banklist.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"search\" />");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
        strhtml.Append("<postfield name=\"tositeid\" value=\"$(tositeid"+r+")\" />");
        strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\" />");
        strhtml.Append("<postfield name=\"orderid\" value=\"$(orderid" + r + ")\" />");
        strhtml.Append("<postfield name=\"code\" value=\"$(code" + r + ")\" />");
        strhtml.Append("<postfield name=\"toyear\" value=\"$(toyear" + r + ")\" />");
        strhtml.Append("<postfield name=\"tomonth\" value=\"$(tomonth" + r + ")\" />");
        strhtml.Append("<postfield name=\"banktype\" value=\"$(banktype" + r + ")\" />");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor> <b>金额￥:" + this.allmoney.ToString("f2") + "</b><br/>");
        
    
    strhtml.Append("---------<br/>");
    strhtml.Append(linkTOP);
    //显示列表

    strhtml.Append("<table border=\"1\" width=\"700\" id=\"table1\">");
    strhtml.Append("<tr align=\"center\">");
    strhtml.Append("<td width=\"46\">币种</td>");
    strhtml.Append("<td width=\"109\">项目</td>");
    strhtml.Append("<td width=\"85\">交易数量</td>");
    strhtml.Append("<td width=\"105\">帐户余额</td>");
    strhtml.Append("<td width=\"106\">操作者</td>");
    strhtml.Append("<td width=\"101\">备注</td>");
    strhtml.Append("<td width=\"80\">流水ID</td>");
    strhtml.Append("<td width=\"80\">状态</td>");
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
        strhtml.Append("<td width=\"46\">RMB</td>");
        strhtml.Append("<td width=\"109\">" + WapTool.GetRMBTypeName(listVo[i].bankType.ToString()) + "</td>");
        strhtml.Append("<td width=\"85\">");
        if (listVo[i].Amount.ToString().IndexOf("-") >= 0)
        {
            //strhtml.Append("<font color=\"FF0000\">");
            strhtml.Append(listVo[i].Amount.ToString("f2"));
            //strhtml.Append("</font>");
        }
        else
        {
            //strhtml.Append("<font color=\"008000\">");
            strhtml.Append(listVo[i].Amount.ToString("f2"));
            //strhtml.Append("</font>");
        }
        strhtml.Append("</td>");
        strhtml.Append("<td width=\"105\">" + listVo[i].leftmoney.ToString("f2") + "</td>");
        strhtml.Append("<td width=\"106\"><a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + listVo[i].opera_userid + "&amp;backurl=" + HttpUtility.UrlEncode("chinabank_wap/banklist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + HttpUtility.UrlEncode(touserid)) + "" + "\">" + listVo[i].opera_nickname + "</a><br/>(ID:" + listVo[i].opera_userid + ")</td>");
        strhtml.Append("<td width=\"101\">" + listVo[i].CodeInfo + "</td>");
        
        strhtml.Append("<td width=\"80\">" + listVo[i].orderID + "</td>");
        strhtml.Append("<td width=\"80\">" + this.getCodeStr(listVo[i].Code) + "</td>");
        strhtml.Append("<td width=\"104\">" + listVo[i].addtime + "</td>");
        strhtml.Append("<td width=\"80\">ID:<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("chinabank_wap/banklist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid.ToString() )+ "" + "\">" + listVo[i].userid.ToString() + "</a><br/>IP:" + listVo[i].IP + "</td>");
        strhtml.Append("</tr>");






    }

    strhtml.Append("</table>");
    if (listVo == null)
    {
        strhtml.Append("没有记录<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);


    
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{

string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("充值明细|充值明细|bank list") + "</div>");

    strhtml.Append("<div class=\"content\">");
    
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");

    strhtml.Append("<form name=\"f\" action=\"" + http_start + "chinabank_wap/banklist.aspx\" method=\"get\">");
    strhtml.Append("年份:<input type=\"text\" name=\"toyear\" value=\"" + toyear + "\" size=\"4\"/>");
    strhtml.Append("月份:<input type=\"text\" name=\"tomonth\" value=\"" + tomonth + "\" size=\"4\"/><br/>");
       
    if (userVo.managerlvl == "00")
    {
        strhtml.Append("网站ID:<input type=\"text\" name=\"tositeid\" value=\"" + tositeid + "\" size=\"5\"/>");
        strhtml.Append("会员ID:<input type=\"text\" name=\"touserid\" value=\"" + touserid + "\" size=\"5\"/>");
    }
    else if (userVo.managerlvl == "01")
    {

        strhtml.Append("会员ID:<input type=\"text\" name=\"touserid\" value=\"" + touserid + "\" size=\"5\"/>");
    }

    strhtml.Append("<br/>");
    strhtml.Append("项目名称:<select name=\"banktype\">");
    strhtml.Append("<option value=\""+banktype+"\">"+banktype+"</option>");
    strhtml.Append("<option value=\"\">所有</option>");
    strhtml.Append("<option value=\"0\">0_易宝支付</option>");
    strhtml.Append("<option value=\"1\">1_WAP支付宝2_手机网银</option>");
    //strhtml.Append("<option value=\"2\">2_手机网银</option>");
    strhtml.Append("<option value=\"3\">3_手工入帐</option>");
    strhtml.Append("<option value=\"-3\">-3_手工扣帐</option>");
    strhtml.Append("<option value=\"4\">4_商品支付</option>");
    strhtml.Append("<option value=\"-1\">-1_购买虚拟币</option>");
    strhtml.Append("<option value=\"-2\">-2_购买身份级别</option>");
    strhtml.Append("<option value=\"5\">5_RMB购买内容收入</option>");
    strhtml.Append("<option value=\"-5\">-5_RMB购买内容消费</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("状态:<select name=\"code\">");
    strhtml.Append("<option value=\"" + code + "\">" + code + "</option>");
    strhtml.Append("<option value=\"\">所有</option>");
    strhtml.Append("<option value=\"0\">0_支付失败</option>");
    strhtml.Append("<option value=\"1\">1_支付成功</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("流水ID:<input type=\"text\" name=\"orderid\" value=\"" + orderid + "\" size=\"10\"/><br/>");

   
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"search\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");

    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");
    strhtml.Append("<b>金额￥:" + this.allmoney.ToString("f2") + "</b>");
    strhtml.Append("</form>");
    strhtml.Append("</div>");
    strhtml.Append(linkTOP);
    //显示列表    

    strhtml.Append("<table border=\"1\" width=\"700\" id=\"table1\">");
    strhtml.Append("<tr align=\"center\">");
    strhtml.Append("<td width=\"46\">币种</td>");
    strhtml.Append("<td width=\"109\">项目</td>");
    strhtml.Append("<td width=\"85\">交易数量</td>");
    strhtml.Append("<td width=\"105\">帐户余额</td>");
    strhtml.Append("<td width=\"106\">操作者</td>");
    strhtml.Append("<td width=\"101\">备注</td>");
    strhtml.Append("<td width=\"80\">流水ID</td>");
    strhtml.Append("<td width=\"80\">状态</td>");
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
        strhtml.Append("<td width=\"46\">RMB</td>");
        strhtml.Append("<td width=\"109\">" + WapTool.GetRMBTypeName(listVo[i].bankType.ToString()) + "</td>");
        strhtml.Append("<td width=\"85\">");
        if (listVo[i].Amount.ToString().IndexOf("-") >= 0)
        {
            strhtml.Append("<font color=\"FF0000\">");
            strhtml.Append(listVo[i].Amount.ToString("f2"));
            strhtml.Append("</font>");
        }
        else
        {
            strhtml.Append("<font color=\"008000\">");
            strhtml.Append(listVo[i].Amount.ToString("f2"));
            strhtml.Append("</font>");
        }
        strhtml.Append("</td>");
        strhtml.Append("<td width=\"105\">" + listVo[i].leftmoney.ToString("f2") + "</td>");
        strhtml.Append("<td width=\"106\"><a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + listVo[i].opera_userid + "&amp;backurl=" + HttpUtility.UrlEncode("chinabank_wap/banklist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + HttpUtility.UrlEncode(touserid)) + "" + "\">" + listVo[i].opera_nickname + "</a><br/>(ID:" + listVo[i].opera_userid + ")</td>");
        strhtml.Append("<td width=\"101\">" + listVo[i].CodeInfo + "</td>");
        strhtml.Append("<td width=\"80\">" + listVo[i].orderID + "</td>");
        strhtml.Append("<td width=\"80\">" + this.getCodeStr(listVo[i].Code) + "</td>");
        strhtml.Append("<td width=\"104\">" + listVo[i].addtime + "</td>");
        strhtml.Append("<td width=\"80\">ID:<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("chinabank_wap/banklist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid) + "" + "\">" + listVo[i].userid + "</a><br/>IP:" + listVo[i].IP + "</td>");
        strhtml.Append("</tr>");






    }

    strhtml.Append("</table>");
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">没有记录</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

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


