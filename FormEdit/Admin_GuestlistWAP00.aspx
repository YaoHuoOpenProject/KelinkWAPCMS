<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_guestlistWAP00.aspx.cs" Inherits="KeLin.WebSite.FormEdit.admin_guestlistWAP00" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("表单接收内容审核|表单接收内容审核|Check Content of the FormEdit"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    strhtml.Append("<a href=\"" + this.http_start + "FormEdit/admin_userlistWAP00.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.tositeid + "\">表单设计审核</a>.接收内容审核<br/>");
    
    strhtml.Append("<b>" + classVo.classname + "</b><br/>");

    strhtml.Append("网站ID：<input type=\"text\" name=\"tositeid" + r + "\" value=\"" + this.tositeid + "\" size=\"5\"/><br/>");
    strhtml.Append("表单ID：<input type=\"text\" name=\"bookid" + r + "\" value=\"" + bookid + "\" size=\"5\"/><br/>");
    
    
    
    strhtml.Append("关键字：<input type=\"text\" name=\"key"+r+"\" value=\"" + key + "\" size=\"5\"/>");
    
    strhtml.Append("<anchor><go href=\"" + http_start + "FormEdit/admin_guestlistWAP00.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key"+r+")\" />");
    strhtml.Append("<postfield name=\"bookid\" value=\"$(bookid" + r + ")\" />");
    strhtml.Append("<postfield name=\"ischeck\" value=\"$(ischeck"+r+")\" />");
    strhtml.Append("<postfield name=\"tositeid\" value=\"$(tositeid" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor> ");
    
    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "FormEdit/admin_guestlistWAP00.aspx?action=gocheckall&amp;state=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.tositeid + "&amp;page=" + this.CurrentPage + "\">审核所有</a>.<a href=\"" + this.http_start + "FormEdit/admin_guestlistWAP00.aspx?action=gocheckall&amp;state=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.tositeid + "&amp;page=" + this.CurrentPage + "\">取消所有审核</a><br/>");
    
    //显示列表
    strhtml.Append(this.linkTOP);
    string YesOrNo = "";
    string CheckStr = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + "." + "[<a href=\"" + this.http_start + "FormEdit/admin_guestlistWAPdel00.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].classid + "&amp;page=" + this.CurrentPage + "\">删除</a>]表单ID:" + listVo[i].bookID + "<br/>");
        strhtml.Append("<textarea name=\"book_content\" rows=\"3\" style=\"width:100%\">" + listVo[i].FormData + "</textarea><br/>");
        strhtml.Append("提交时间:" + listVo[i].addtime + "<br/>");
        strhtml.Append("<hr/>");
    
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);



    strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?sid="+sid+"&amp;siteid="+siteid +"\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    Response.Write(strhtml);
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"title\">" + classVo.classname + "</div>");


    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<a href=\"" + this.http_start + "FormEdit/admin_userlistWAP00.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;tositeid=" + this.tositeid + "\">表单设计审核</a>.接收内容审核<br/>");
    
    strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "FormEdit/admin_userlistWAP00.aspx\" method=\"post\">");
    strhtml.Append("网站ID：<input type=\"text\" name=\"tositeid\" value=\"" + tositeid + "\" size=\"5\"/> ");
    

   
    strhtml.Append("表单ID：<input type=\"text\" name=\"bookid\" value=\"" + bookid + "\" size=\"5\"/> ");
    strhtml.Append("关键字：<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");


    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<br/><input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");

    strhtml.Append("</form></div>");
  
    //显示列表
    strhtml.Append(this.linkTOP);
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
        strhtml.Append(index + "." + "[<a href=\"" + this.http_start + "FormEdit/admin_guestlistWAPdel00.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].classid + "&amp;page=" + this.CurrentPage + "\">删除</a>]表单ID:" + listVo[i].bookID + "<br/>");
        strhtml.Append("<textarea name=\"book_content\" rows=\"3\" style=\"width:100%\">" + listVo[i].FormData + "</textarea><br/>");
        strhtml.Append("提交时间:" + listVo[i].addtime + "<br/>");
        strhtml.Append("<hr/></div>");
    
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);


    strhtml.Append("<div class=\"mylink\">");
    strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?sid=" + sid + "&amp;siteid=" + siteid + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</div>");

    //输出
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    Response.Write(strhtml);
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


