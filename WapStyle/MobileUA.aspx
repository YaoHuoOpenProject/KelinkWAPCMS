<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MobileUA.aspx.cs" Inherits="KeLin.WebSite.WapStyle.MobileUA" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
bool flag1 = false;
bool flag2 = false;
Response.Write(WapTool.showTop(this.GetLang("手机型号选择|手机型号选择|Select phone model"), wmlVo));//显示头    
StringBuilder strhtml = new StringBuilder();                                                                                                                                                                   
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    strhtml.Append("我的当前设置:<b>" + WapTool.ToWML(myMobile,wmlVo) + "</b><br/>自动检测:");
    if (autoMobile != "")
    {
        strhtml.Append(autoMobile + "<br/>");
    }
    else
    {
        strhtml.Append("抱歉,无法自动识别。<br/>");
    }
    
    strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua_view.aspx?action=OK&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=0&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">不设置机型</a><br/>----------<br/>");
    strhtml.Append("设置手机型号可让您快速的找到适合您自己手机型号的丰富资源!<br/>");

    strhtml.Append("输入您手机型号(如:诺基亚 N73,输入N73):<br/>");
    strhtml.Append("<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"8\"/>");    
    strhtml.Append("<anchor><go href=\"" + http_start + "wapstyle/mobileUA.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key)\" />");
    strhtml.Append("<postfield name=\"totype\" value=\"0\" />");
    strhtml.Append("<postfield name=\"backurl\" value=\"" + (backurl) + "\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor><br/>");
    strhtml.Append("按");
    if (this.totype == "4")
    {
        strhtml.Append("快速");
    }
    else
    {
        strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=4&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">快速</a>");
    }
    strhtml.Append("|");
    if (this.totype == "3")
    {
        strhtml.Append("平台");
    }
    else
    {
        strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=3&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">平台</a>");
    }

    strhtml.Append("|");
    
    if (this.totype == "1")
    {
        strhtml.Append("品牌");
    }
    else
    {
        strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=1&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;sid="+this.sid+"\">品牌</a>");
    }

    strhtml.Append("|");

    if (this.totype == "2")
    {
        strhtml.Append("屏幕");
        

    }
    else
    {
        strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=2&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">屏幕</a>");
    }
    strhtml.Append("|");
    if (this.totype == "0")
    {
        strhtml.Append("列表");

    }
    else
    {
        strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">列表</a>");
    }

    strhtml.Append("<br/>");
    strhtml.Append("---------<br/>");
    if (totype == "0") strhtml.Append(linkTOP);
    //显示列表
    if (this.totype == "4") //按快速
    {

        strhtml.Append(GetMobileFast());

    }
    for (int i = 0; (listVo != null && i < listVo.Count&&totype!="4"); i++)
    {
        if (this.totype == "1")//按品牌
        {

            strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode(listVo[i].nameCN) + "&amp;tonameen="+listVo[i].nameEN+"" + "\">");
            strhtml.Append(listVo[i].nameCN + "." + listVo[i].nameEN + "("+listVo[i].id+")");
            strhtml.Append("</a> ");
            if (i % 2 == 0) strhtml.Append("<br/>");
            
        }
        else if (this.totype == "2")//按屏幕
        {
            if (flag1 == false && int.Parse(listVo[i].nameCN) < long.Parse(listVo[i].nameEN))
            {
                strhtml.Append("【竖屏分辨率选择】<br/>");
                flag1 = true;
            }

            if (flag2 == false && int.Parse(listVo[i].nameCN) > long.Parse(listVo[i].nameEN))
            {
                strhtml.Append("【横屏分辨率选择】<br/>");
                flag2 = true;
            }
            strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;towidthpx=" + HttpUtility.UrlEncode(listVo[i].nameCN) + "&amp;toheightpx=" + listVo[i].nameEN + "" + "\">");
            strhtml.Append(listVo[i].nameCN + "x" + listVo[i].nameEN + "(" + listVo[i].id + ")");
            strhtml.Append("</a> ");
            if (i % 2 == 0) strhtml.Append("<br/>");


        }
        else if (this.totype == "3")//按平台
        {
            strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;toosystem=" + HttpUtility.UrlEncode(listVo[i].nameCN) + "" + "\">");
            strhtml.Append(listVo[i].nameCN + "(" + listVo[i].id + ")");
            strhtml.Append("</a> ");
            if (i % 2 == 0) strhtml.Append("<br/>");


        }
        else
        {
            index = index + kk;
            strhtml.Append(index + ".<a href=\"" + http_start + "wapstyle/mobileua_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;key=" + HttpUtility.UrlEncode(key) + "" + "\">");

            if (this.lang == "2")
            {
                strhtml.Append(listVo[i].nameEN + " ");
            }
            else
            {
                strhtml.Append(listVo[i].nameCN + " ");
            }

            strhtml.Append(listVo[i].Mode + "(" + listVo[i].widthpx + "×" + listVo[i].heightpx + ")</a><br/>");
        }
    }
    if (listVo == null && totype != "4")
    {
        strhtml.Append("查无记录！<br/>");
    }
    //显示导航分页
    if (totype == "0") strhtml.Append(linkURL);

    strhtml.Append("<br/>没有搜索到我的机型？<br/>");
    strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua_add.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">我来添加吧</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("手机型号选择|手机型号选择|Select phone model") + "</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<div class=\"bt1\"><a href=\"" + http_start + "wapstyle/mobileua_view.aspx?action=OK&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=0&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">不设置机型</a></div>");
  
    
    strhtml.Append("我的当前设置:<b>" + WapTool.ToWML(myMobile,wmlVo ) + "</b><br/>自动检测:");
    if (autoMobile != "")
    {
        strhtml.Append(autoMobile  + "<br/>");
    }
    else
    {
        strhtml.Append("抱歉,无法自动识别。<br/>");
    }
    
    strhtml.Append("<br/>");

    strhtml.Append("设置手机型号可让您快速的找到适合您自己手机型号的丰富资源!<br/>");
    strhtml.Append("输入您手机型号(如:诺基亚 N73,输入N73):<br/>");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "wapstyle/mobileUA.aspx\" method=\"\">");
    strhtml.Append("<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"15\"/>");    
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"totype\" value=\"0\" />");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + (backurl) + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");
    strhtml.Append("</form></div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt5\">");
    strhtml.Append("<a ");
    
    if (this.totype == "4")
    {
        strhtml.Append("class=\"btSelect\" ");
    }

    strhtml.Append("href=\"" + http_start + "wapstyle/mobileua.aspx?totype=4&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">快速</a>");

    strhtml.Append("<a ");
    
    if (this.totype == "3")
    {
       strhtml.Append("class=\"btSelect\" ");
    }

    strhtml.Append("href=\"" + http_start + "wapstyle/mobileua.aspx?totype=3&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">平台</a>");


    strhtml.Append("<a ");
    if (this.totype == "1")
    {
        strhtml.Append("class=\"btSelect\" ");
    }
    strhtml.Append("href=\"" + http_start + "wapstyle/mobileua.aspx?totype=1&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">品牌</a>");

    strhtml.Append("<a ");
    if (this.totype == "2")
    {
        strhtml.Append("class=\"btSelect\" ");

    }
    strhtml.Append("href=\"" + http_start + "wapstyle/mobileua.aspx?totype=2&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">屏幕</a>");


    strhtml.Append("<a ");
    if (this.totype == "0")
    {
        strhtml.Append("class=\"btSelect\" ");

    }
    strhtml.Append("href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">列表</a>");
   

 

    strhtml.Append("</div></div>");
    if (totype == "0") strhtml.Append(linkTOP);
    //显示列表
    if (this.totype != "0")
    {
        strhtml.Append("<div class=\"content\">");
    }
    if (this.totype == "4") //按快速
    {

        strhtml.Append(GetMobileFast());

    }
    
    for (int i = 0; (listVo != null && i < listVo.Count && this.totype!="4"); i++)
    {
        if (this.totype == "0")
        {
            if (i % 2 == 0)
            {
                strhtml.Append("<div class=\"line1\">");
            }
            else
            {
                strhtml.Append("<div class=\"line2\">");
            }
        }
         if (this.totype == "1")//按品牌
        {

            strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode(listVo[i].nameCN) + "&amp;tonameen=" + listVo[i].nameEN + "" + "\">");
            strhtml.Append(listVo[i].nameCN + "." + listVo[i].nameEN + "(" + listVo[i].id + ")");
            strhtml.Append("</a> ");
            if (i % 2 == 0) strhtml.Append("<br/>");
          
        }
        else if (this.totype == "2") //按屏幕
        {
            if (flag1 == false && int.Parse(listVo[i].nameCN) < long.Parse(listVo[i].nameEN))
            {
                strhtml.Append("【竖屏分辨率选择】<br/>");
                flag1 = true;
            }
            
            if (flag2 == false && int.Parse(listVo[i].nameCN) > long.Parse(listVo[i].nameEN))
            {
                strhtml.Append("【横屏分辨率选择】<br/>");
                flag2 = true;
            }
                        
            strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;towidthpx=" + HttpUtility.UrlEncode(listVo[i].nameCN) + "&amp;toheightpx=" + listVo[i].nameEN + "" + "\">");
            strhtml.Append(listVo[i].nameCN + "x" + listVo[i].nameEN + "(" + listVo[i].id + ")");
            strhtml.Append("</a> ");
            if (i % 2 == 0) strhtml.Append("<br/>");
            
            
            
        }
        else if (this.totype == "3")//按平台
        {
            strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;toosystem=" + HttpUtility.UrlEncode(listVo[i].nameCN) + "" + "\">");
            strhtml.Append(listVo[i].nameCN + "(" + listVo[i].id + ")");
            strhtml.Append("</a> ");
            if (i % 2 == 0) strhtml.Append("<br/>");


        }
        else
        {
            index = index + kk;
            strhtml.Append(index + ".<a href=\"" + http_start + "wapstyle/mobileua_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;key=" + HttpUtility.UrlEncode(key) + "" + "\">");

            if (this.lang == "2")
            {
                strhtml.Append(listVo[i].nameEN + " ");
            }
            else
            {
                strhtml.Append(listVo[i].nameCN + " ");
            }

            strhtml.Append(listVo[i].Mode + "(" + listVo[i].widthpx + "×" + listVo[i].heightpx + ")</a>");
        }
        if (this.totype == "0")
        {
            strhtml.Append("</div>");
        }
    }
    if (this.totype != "0")
    {
        strhtml.Append("</div>");
    }
    if (listVo == null && totype!="4")
    {
        strhtml.Append("<div class=\"tip\">查无记录！</div>");
    }
    //显示导航分页
    if (totype == "0") strhtml.Append(linkURL);

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码  

    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");

    strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua_add.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "" + "\">没有搜索?我来添加</a><br/>");
    strhtml.Append("</div></div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">返回源来页</a> ");

    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");


    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    Response.Write(strhtml);



}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); 


%>
<script language="c#" runat="server">
/// <summary>
/// 机型首页链接，可自行修改，请用UE软件修改页面代码。
/// </summary>
/// <returns></returns>
    public string GetMobileFast()
    {
        StringBuilder mob = new StringBuilder();
        //取【诺基亚】
        mob.Append("【<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode("诺基亚") + "&amp;tonameen=NOKIA" + "\">诺基亚</a>】");
        listVo = bll.GetListVo(100, 1, " namecn='诺基亚' and showindex=1", "*", "id", 100, 1);
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            if (i % 4 == 0)
            {
                mob.Append("<br/>");
            }
            mob.Append("<a href=\"" + http_start + "wapstyle/mobileua_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;key=" + HttpUtility.UrlEncode(key) + "" + "\">"+listVo[i].Mode+"</a> ");
            

        }
        
        
        //【索爱】
        mob.Append("<br/>【<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode("索爱") + "&amp;tonameen=SonyEricsson" + "\">索爱</a>】");
        listVo = bll.GetListVo(100, 1, " namecn='索爱' and showindex=1", "*", "id", 100, 1);
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            if (i % 4 == 0)
            {
                mob.Append("<br/>");
            }
            mob.Append("<a href=\"" + http_start + "wapstyle/mobileua_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;key=" + HttpUtility.UrlEncode(key) + "" + "\">" + listVo[i].Mode + "</a> ");


        }

        //【摩托罗拉】
        mob.Append("<br/>【<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode("摩托罗拉") + "&amp;tonameen=MOTOROLA" + "\">摩托罗拉</a>】");
        listVo = bll.GetListVo(100, 1, " namecn='摩托罗拉' and showindex=1", "*", "id", 100, 1);
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            if (i % 4 == 0)
            {
                mob.Append("<br/>");
            }
            mob.Append("<a href=\"" + http_start + "wapstyle/mobileua_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;key=" + HttpUtility.UrlEncode(key) + "" + "\">" + listVo[i].Mode + "</a> ");


        }

        //【多普达】
        mob.Append("<br/>【<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode("多普达") + "&amp;tonameen=DOPOD" + "\">多普达</a>】");
        listVo = bll.GetListVo(100, 1, " namecn='多普达' and showindex=1", "*", "id", 100, 1);
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            if (i % 4 == 0)
            {
                mob.Append("<br/>");
            }
            mob.Append("<a href=\"" + http_start + "wapstyle/mobileua_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;key=" + HttpUtility.UrlEncode(key) + "" + "\">" + listVo[i].Mode + "</a> ");


        }

        //【三星】
        mob.Append("<br/>【<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode("三星") + "&amp;tonameen=SAMSUNG" + "\">三星</a>】");
        listVo = bll.GetListVo(100, 1, " namecn='三星' and showindex=1", "*", "id", 100, 1);
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            if (i % 4 == 0)
            {
                mob.Append("<br/>");
            }
            mob.Append("<a href=\"" + http_start + "wapstyle/mobileua_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;key=" + HttpUtility.UrlEncode(key) + "" + "\">" + listVo[i].Mode + "</a> ");


        }
        
        //其它品排链接
        mob.Append("<br/>【<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode("OPPO") + "&amp;tonameen=OPPO" + "\">OPPO</a>.");
        mob.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode("HTC") + "&amp;tonameen=HTC" + "\">HTC</a>.");
        mob.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode("西门子") + "&amp;tonameen=SIEMENS" + "\">西门子</a>.");
        mob.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode("金立") + "&amp;tonameen=GIONEE" + "\">金立</a>】 ");
        mob.Append("<br/>【<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode("天语") + "&amp;tonameen=K-TOUCH" + "\">天语</a>.");
        mob.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode("夏新") + "&amp;tonameen=AMOI" + "\">夏新</a>.");
        mob.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode("夏普") + "&amp;tonameen=SHARP" + "\">夏普</a>.");
        mob.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=0&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;tonamecn=" + HttpUtility.UrlEncode("联想") + "&amp;tonameen=LENOVO" + "\">联想</a>】 ");

        mob.Append("<br/>【<a href=\"" + http_start + "wapstyle/mobileua.aspx?totype=1&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">更多品牌...</a>】");
        return mob.ToString();
    }

</script>

