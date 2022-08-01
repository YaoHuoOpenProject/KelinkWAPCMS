<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showadmin.aspx.cs" Inherits="KeLin.WebSite.clan.showadmin" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("家族管理员", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");

    strhtml.Append("<b>族长</b><br/>");
    int k = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].userid ==bookVo.createid)
        {

            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("clan/my.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
                strhtml.Append("<u>签名:" + listVo[i].remark + "</u><br/>");
           
        }

    }
   
    
    strhtml.Append("<b>家族管理员</b><br/>");

    int y = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].userid != bookVo.createid)
        {
            
                y = y + 1;
                strhtml.Append(y + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("clan/my.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
                strhtml.Append("<u>签名:" + listVo[i].remark + "</u><br/>");
            
        }

    }
    if (y ==0)
    {
        strhtml.Append("<b>管理员招募中...</b><br/>");
    }

    strhtml.Append("------------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id="+this.id+"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">家族族长</div>");
    strhtml.Append("<div class=\"content\">");
    int k = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].userid==bookVo.createid)
        {

            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("clan/my.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
                strhtml.Append("<u>签名:" + listVo[i].remark + "</u><br/>");
            
        }

    }

    strhtml.Append("</div>");
    
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("家族管理员");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    int y = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].userid !=bookVo.createid)
        {
       
                y = y + 1;
                strhtml.Append(y + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("clan/my.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
                strhtml.Append("<u>签名:" + listVo[i].remark + "</u><br/>");
            
        }

    }
    if (y == 0)
    {
        strhtml.Append("<b>管理员招募中...</b><br/>");
    }


    strhtml.Append("</div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id="+this.id+"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    Response.Write(strhtml);
    
    //输出
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
