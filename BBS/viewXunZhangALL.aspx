<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewXunZhangALL.aspx.cs" Inherits="KeLin.WebSite.bbs.viewXunZhangALL" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write (WapTool.showTop(this.GetLang(toUserVo.nickname+"所有勋章|"+toUserVo.nickname+"所有勋章|"+toUserVo.nickname+" 所有勋章"), wmlVo));//显示头                                                                                                                                                                       
string TA = "TA";
if (this.userid == touserid)
{
    TA = "我";
}
else
{
    if (toUserVo.sex.ToString() == "1")
    {
        TA = "他";
    }
    else if(toUserVo.sex.ToString () == "0")
    {
        TA = "她";
    }
}
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append("<a href=\""  + (backurl) +  "\">[返回源来页]</a><br/>");

   strhtml.Append("<b>"+TA+"的勋章：</b><br/>" + WapTool.GetMedal(toUserVo.moneyname, this.http_start) + "<br/>");

strhtml.Append("<a href=\""+http_start+"wapindex.aspx?siteid="+siteid+"&amp;sid="+sid+"\">返回首页</a>	");
strhtml.Append(WapTool.GetVS(wmlVo));
strhtml.Append("</p>");

Response.Write(strhtml.ToString());
}
else //2.0界面
{

    
   strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<a class=\"urlbtn\" href=\"" + (backurl) +  "\">[返回源来页]</a><br/>");
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<b>"+TA+"的勋章：</b><br/>" + WapTool.GetMedal(toUserVo.moneyname, this.http_start) + "<br/>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
   
    strhtml.Append("<a href=\"" + http_start + "wapindex.aspx?siteid=" + siteid + "" + "\">返回首页</a>	");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</div></div>");

    Response.Write(strhtml.ToString());

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


