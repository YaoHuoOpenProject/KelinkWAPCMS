<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_waplistFun.aspx.cs" Inherits="KeLin.WebSite.admin.admin_waplistFun" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("所有插件模块内容|所有插件模块内容|Content of the all"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");

    strhtml.Append("注意:有些模块没有站长后台，点击可能报错！<br/>");
    strhtml.Append("关键字：<input type=\"text\" name=\"key" + r + "\" value=\"" + key + "\" size=\"5\"/>");

    strhtml.Append("<anchor><go href=\"" + http_start + "admin/admin_waplistFun.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"$(classid" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor><br/>");
    
    //显示列表
    strhtml.Append(linkTOP);
    string YesOrNo = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;

        
        strhtml.Append(index + ".["+listVo[i].typeid+"]<a href=\"" + http_start + listVo[i].typepath+"?action=wapAdmin&amp;siteid=" + siteid + "&amp;classid=0" + "\">" + listVo[i].typename+"</a>["+listVo[i].typepath+"]<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);


    if (userVo.managerlvl == "03")
    {
        strhtml.Append("<a href=\"" + this.http_start + "myfile.aspx?sid=" + sid + "&amp;siteid=" + siteid + "\">返回上级</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?sid=" + sid + "&amp;siteid=" + siteid + "\">返回上级</a>");
    }
    strhtml.Append("-<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">" + classVo.classname + "</div>");

    strhtml.Append("<div class=\"tip\">注意:有些模块没有站长后台，点击可能报错！</div>");
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "admin/admin_waplistFun.aspx\" method=\"get\">");

    strhtml.Append("关键字：<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");


    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");

    strhtml.Append("</form></div>");
    //显示列表
    strhtml.Append(linkTOP);
    string YesOrNo = "";
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



        strhtml.Append(index + ".[" + listVo[i].typeid + "]<a href=\"" + http_start + listVo[i].typepath + "?action=wapAdmin&amp;siteid=" + siteid + "&amp;classid=0" + "\">" + listVo[i].typename + "</a>["+listVo[i].typepath+"]</div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    
    //显示导航分页
    strhtml.Append( linkURL );


    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");

    if (userVo.managerlvl == "03")
    {
        strhtml.Append("<a href=\"" + this.http_start + "myfile.aspx?sid=" + sid + "&amp;siteid=" + siteid + "\">返回上级</a>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?sid=" + sid + "&amp;siteid=" + siteid + "\">返回上级</a>");
    }
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");

    //输出
    Response.Write(strhtml);
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


