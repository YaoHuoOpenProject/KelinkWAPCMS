<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TJList.aspx.cs" Inherits="KeLin.WebSite.bbs.TJList" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
string msgbox = "";
msgbox = "查询推荐人|查询推荐人|查询推荐人";
                                                                                                                                                                             
                                                                                                                                                                               
Response.Write(WapTool.showTop(this.GetLang(msgbox), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p align=\"left\">");

    if (this.INFO == "OK")
    {

        Response.Write("<b>"+this.GetLang("操作成功！||")+"</b><br/>");
    }


    Response.Write("网站ID:<input type=\"text\" name=\"tositeid\" value=\"" + tositeid + "\" size=\"8\"/>");
    Response.Write("推荐人ID:<input type=\"text\" name=\"touserid\" value=\"" + touserid + "\" size=\"8\"/>");
    Response.Write("<anchor><go href=\"" + http_start + "bbs/tjlist.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\" />");
    Response.Write("<postfield name=\"tositeid\" value=\"$(tositeid)\" />");
    Response.Write("<postfield name=\"touserid\" value=\"$(touserid)\" />");
    Response.Write("<postfield name=\"sid\" value=\"" + sid + "\" />");
    Response.Write("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor><br/>");
    
    Response.Write("---------<br/>");
    Response.Write(linkTOP);
    //显示列表
    string YesOrNo = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        Response.Write(index + ".");

        Response.Write("推荐人:" + listVo[i].userid + "<br/>被推荐人:" + listVo[i].frienduserid + "(" + listVo[i].friendnickname + ")");

        Response.Write("<br/>所在网站:"+listVo[i].siteid+"<br/>(" + listVo[i].addtime + ")<br/>");
    }
    if (listVo == null)
    {
        Response.Write("没有记录！<br/>");
    }
    //显示导航分页
    Response.Write(linkURL);



    Response.Write("<a href=\"" + this.http_start + "bbs/shareSite.aspx?siteid=" + this.siteid + "" + "\">返回上级</a>-");
    
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");

    //输出
   
    
}
else //2.0界面
{



    Response.Write("<div class=\"subtitle\">" + this.GetLang(msgbox) + "</div>");
    if (this.INFO == "OK")
    {

        Response.Write("<div class=\"tip\"><b>" + this.GetLang("操作成功！||") + "</b></div>");
    }
    
    
    Response.Write("<div class=\"content\">");
  
    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/tjlist.aspx\" method=\"get\">");
    Response.Write("网站ID:<input type=\"text\" name=\"tositeid\" value=\"" + tositeid + "\" size=\"8\"/>");
    Response.Write("推荐人ID:<input type=\"text\" name=\"touserid\" value=\"" + touserid + "\" size=\"8\"/><br/>");
    Response.Write("有效时间:<input type=\"text\" name=\"totime\" value=\"" + totime + "\" size=\"2\"/>秒");      
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");   
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    Response.Write("&nbsp;&nbsp;&nbsp;&nbsp;<input type=\"submit\"  value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");
    
    
    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt3\">");


    Response.Write("<a ");
    if (flag == "0" || flag == "")
    {
        Response.Write(" class=\"btSelect\" ");
    }
    Response.Write("href=\"/bbs/tjlist.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&totime=" + this.totime + "&amp;flag=0&touserid=" + this.touserid + "&amp;tositeid=" + this.tositeid + "\">全部</a>");

    Response.Write("<a ");
    if (flag == "1")
    {
        Response.Write(" class=\"btSelect\" ");
    }
    Response.Write("href=\"/bbs/tjlist.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&totime=" + this.totime + "&amp;flag=1&touserid=" + this.touserid + "&amp;tositeid=" + this.tositeid + "\">有效</a>");
    Response.Write("<a ");
    if (flag == "2")
    {
        Response.Write(" class=\"btSelect\" ");
    }
    Response.Write("href=\"/bbs/tjlist.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&totime=" + this.totime + "&amp;flag=2&touserid=" + this.touserid + "&amp;tositeid=" + this.tositeid + "\">无效</a>");

    


    Response.Write("</div>");

    Response.Write(html);
    //显示导航分页
    Response.Write(linkURL);


    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/shareSite.aspx?siteid=" + this.siteid + "" + "\">返回上级</a> ");
    
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    Response.Write("</div></div>");
    
    
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


