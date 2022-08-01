<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_guestlistWAP.aspx.cs" Inherits="KeLin.WebSite.wabao.admin_guestlistWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("礼品内容|礼品內容|Content of "), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    

    strhtml.Append("<b>" + classVo.classname + "</b><br/>");
   
    strhtml.Append("<a href=\"" + this.http_start + "wabao/admin_userlistWAP.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">挖宝管理</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wabao/admin_guestlistwap.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">礼品管理</a><br/>");
    strhtml.Append("标题关键字：<input type=\"text\" name=\"key"+r+"\" value=\"" + key + "\" size=\"5\"/>");
    strhtml.Append("挖宝ID：<input type=\"text\" name=\"bookid" + r + "\" value=\"" + bookid + "\" size=\"5\"/><br/>");
    strhtml.Append("会员ID：<input type=\"text\" name=\"touserid" + r + "\" value=\"" + touserid + "\" size=\"5\"/>(0表示未中)<br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "wabao/admin_guestlistWAP.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"bookid\" value=\"$(bookid" + r + ")\" />");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor><br/> ");


  
    
    //显示列表
    strhtml.Append(linkTOP);
    string YesOrNo = "";
    string CheckStr = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;


        strhtml.Append(index + "." + "礼品[ID" + listVo[i].bookid + "]:" + listVo[i].content + "<br/>中奖人:" + listVo[i].userid + "<br/>时间:" + listVo[i].addtime + "<br/>--------<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);



    strhtml.Append("<a href=\"" + this.http_start + "wabao/admin_userlistWAP.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"title\">" + classVo.classname + "</div>");
    //显示搜索
    
    strhtml.Append("<div class=\"subtitle\">");

    strhtml.Append("<a href=\"" + this.http_start + "wabao/admin_userlistWAP.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">挖宝管理</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wabao/admin_guestlistwap.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">礼品管理</a><br/>");
    
    strhtml.Append("<form id=\"form1\" action=\"" + http_start + "wabao/admin_guestlistWAP.aspx\" method=\"get\">");
    strhtml.Append("标题关键字：<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");
    strhtml.Append("挖宝ID：<input type=\"text\" name=\"bookid\" value=\"" + bookid + "\" size=\"5\"/><br/>");
    strhtml.Append("会员ID：<input type=\"text\" name=\"touserid\" value=\"" + touserid + "\" size=\"5\"/>(0表示未中，空为所有)<br/>");
    
    strhtml.Append("<input type=\"submit\" value=\"搜索\" />");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</form>");
    strhtml.Append("</div>");

    //显示列表
    strhtml.Append(linkTOP);
    string YesOrNo = "";
    string CheckStr = "";
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



        strhtml.Append(index + "." + "礼品[ID"+listVo[i].bookid+"]:" + listVo[i].content + "<br/>中奖人:" + listVo[i].userid + "<br/>时间:" + listVo[i].addtime + "</div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    
    //显示导航分页
    strhtml.Append( linkURL );


    //导航按钮
    strhtml.Append("<div class=\"mylink\">");

    strhtml.Append("<a href=\"" + this.http_start + "wabao/admin_userlistWAP.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</div>");

    //输出
    Response.Write(strhtml);
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


