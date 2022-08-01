<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toGroupView.aspx.cs" Inherits="KeLin.WebSite.bbs.toGroupView" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("允许访问栏目|文章內容审核|Check Content of the bbs"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    
    strhtml.Append("身份级别：<select name=\"toid"+r+"\" value=\""+this.toid+"\">");
    for (int i = 0; (sublistVo != null && i < sublistVo.Count); i++)
    {
        string[] temparry = ("/" + sublistVo[i].subclassName).Split('/');
        string tempimg = temparry[temparry.Length - 1];
        strhtml.Append("<option value=\"" + sublistVo[i].id + "\">" + sublistVo[i].id + "_" + tempimg + "</option>");
    }
    if (sublistVo == null)
    {
        strhtml.Append("<option value=\"\">还没有建分类</option>");
    }
    strhtml.Append("<option value=\"0\">0_所有身份(除普通)</option>");
    strhtml.Append("</select><br/>");
   
    strhtml.Append("<anchor><go href=\"" + http_start + "bbs/toGroupView.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");   
    strhtml.Append("<postfield name=\"classid\" value=\""+this.classid+"\" />");
    strhtml.Append("<postfield name=\"toid\" value=\"$(toid" + r + ")\" />");   
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor> ");
    
    strhtml.Append("<br/>");
    strhtml.Append("-----------<br/>");
    if (this.toid != "0")
    {
        strhtml.Append("当前您所选的身份为:" + WapTool.showImg(toidname));

    }
    else
    {
        strhtml.Append("当前您所选的身份为:所有身份");
    }
    strhtml.Append("，以下栏目只允许此身份访问：<br/>");
    strhtml.Append("-----------<br/>");
    //显示列表
    strhtml.Append(this.linkTOP);
    string YesOrNo = "";
    string CheckStr = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;

     
        strhtml.Append(index + "."  + "<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].classid + "" + "\">" + listVo[i].classname + "</a><br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);



    strhtml.Append("<a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?sid="+sid+"&amp;siteid="+siteid +"\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">" + classVo.classname + "</div>");


    strhtml.Append("<div class=\"content\">");
    
    strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "bbs/toGroupView.aspx\" method=\"post\">");
    
    strhtml.Append("身份级别：<select name=\"toid\">");
    string[] temparry2 = ("/" + this.toidname).Split('/');
    string tempimg2 = temparry2[temparry2.Length - 1];

    strhtml.Append("<option value=\"" + this.toid + "\">" + this.toid + "_" + tempimg2 + "</option>");
    
    for (int i = 0; (sublistVo != null && i < sublistVo.Count); i++)
    {
        string[] temparry = ("/" + sublistVo[i].subclassName).Split('/');
        string tempimg = temparry[temparry.Length - 1];
        strhtml.Append("<option value=\"" + sublistVo[i].id + "\">" + sublistVo[i].id + "_" + tempimg + "</option>");
    }
    if (sublistVo == null)
    {
        strhtml.Append("<option value=\"\">还没有建分类</option>");
    }
    strhtml.Append("<option value=\"0\">0_所有身份(除普通)</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"search\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("搜索|搜索|Search") + "\"/>");

    strhtml.Append("</form><br/>");

    if (this.toid != "0")
    {
        strhtml.Append("当前您所选的身份为:" + WapTool.showImg(toidname));

    }
    else
    {
        strhtml.Append("当前您所选的身份为:所有身份");
    }
    strhtml.Append("，以下栏目只允许此身份访问：<br/>");
    strhtml.Append("</div>");
   
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
        strhtml.Append(index + "." + "<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].classid + "" + "\">" + listVo[i].classname + "</a></div>");
    
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   


    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/togroupinfo.aspx?sid=" + sid + "&amp;siteid=" + siteid + "\">返回上级</a> ");
   
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

    //输出
    Response.Write(strhtml);
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


