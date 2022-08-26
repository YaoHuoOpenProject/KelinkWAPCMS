<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Search.aspx.cs" Inherits="KeLin.WebSite.search.Book_Search" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("会员搜索|会员搜索|Search"), wmlVo));//显示头 
StringBuilder strhtml=new StringBuilder ();
if(ver=="1"){


strhtml.Append("<p>");
strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");
strhtml.Append("<br />");
strhtml.Append("身份:<select name=\"sessiontimeout\" value=\"\">");
strhtml.Append("<option value=\"\">所有会员</option>");
strhtml.Append("<option value=\"0\">普通会员</option>");

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].subclassName.IndexOf("http")>=0)
        {
            listVo[i].subclassName = "(图片)";
        }
       strhtml.Append("<option value=\""+listVo[i].id+"\">"+listVo[i].subclassName+"</option>");
    }

strhtml.Append("</select><br/>");
strhtml.Append("排序:<select name=\"order\" value=\"\">");
strhtml.Append("<option value=\"\">最新注册</option>");
strhtml.Append("<option value=\"0\">货币值</option>");
strhtml.Append("<option value=\"1\">经验值</option>");
strhtml.Append("</select><br/>");
strhtml.Append("状态:<select name=\"isonline\" value=\"\">");
strhtml.Append("<option value=\"\">默认</option>");
strhtml.Append("<option value=\"1\">在线</option>");
strhtml.Append("<option value=\"0\">离线</option>");
strhtml.Append("</select><br/>");
strhtml.Append("性别:<select name=\"sex\" value=\"\">");
strhtml.Append("<option value=\"\">默认</option>");
strhtml.Append("<option value=\"0\">女</option>");
strhtml.Append("<option value=\"1\">男</option>");
strhtml.Append("</select><br />");
strhtml.Append("城市:<input type=\"text\" name=\"city\" value=\"\" size=\"8\"/><br/>");
strhtml.Append("昵称:<input type=\"text\" name=\"tonickname\" value=\"\" size=\"8\"/><br/>");
strhtml.Append("会员ID:<input type=\"text\" name=\"touserid\" value=\"\" size=\"8\"/><br/>");

strhtml.Append("<anchor><go href=\""+this.http_start +"search/book_list.aspx\" method=\"get\" accept-charset=\"utf-8\">");
strhtml.Append("<postfield name=\"action\" value=\"search\"/>");
strhtml.Append("<postfield name=\"siteid\" value=\""+this.siteid +"\"/>");
strhtml.Append("<postfield name=\"classid\" value=\""+this.classid +"\"/>");
strhtml.Append("<postfield name=\"sessiontimeout\" value=\"$(sessiontimeout)\"/>");
strhtml.Append("<postfield name=\"order\" value=\"$(order)\"/>");
strhtml.Append("<postfield name=\"isonline\" value=\"$(isonline)\"/>");
strhtml.Append("<postfield name=\"sex\" value=\"$(sex)\"/>");
strhtml.Append("<postfield name=\"city\" value=\"$(city)\"/>");
strhtml.Append("<postfield name=\"tonickname\" value=\"$(tonickname)\"/>");
strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid)\"/>");
strhtml.Append("<postfield name=\"backurl\" value=\""+backurl +"\"/>");
strhtml.Append("<postfield name=\"sid\" value=\""+this.sid +"\"/>");
strhtml.Append("</go>快速搜索</anchor><br/>");

strhtml.Append("--------<br/>");
strhtml.Append("<a href=\""+this.http_start +"wapindex.aspx?siteid="+this.siteid +"&amp;classid="+classVo.childid+"&amp;sid="+this.sid  +"\">返回上级</a> ");
strhtml.Append("<a href=\""+this.http_start +"wapindex.aspx?siteid="+this.siteid +"&amp;sid="+this.sid  +"\">返回首页</a>");
strhtml.Append(WapTool.GetVS(wmlVo));
strhtml.Append("</p>");
Response.Write(strhtml);

}else{ //2.0界面

strhtml.Append("<div class=\"subtitle\">"+ this.GetLang("会员搜索|会员搜索|Search")+"</div>");
strhtml.Append("<div class=\"content\">");
//strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[返回源来页]</a><br/>");
//strhtml.Append("<br />");
strhtml.Append("<form id=\"form1\" action=\""+this.http_start +"search/book_list.aspx\" method=\"get\">");
strhtml.Append("状态：<select name=\"isonline\">");
strhtml.Append("<option value=\"\">默认</option>");
strhtml.Append("<option value=\"1\">在线</option>");
strhtml.Append("<option value=\"0\">离线</option>");
strhtml.Append("</select><br/>");
strhtml.Append("性别：<select name=\"sex\">");
strhtml.Append("<option value=\"\">默认</option>");
strhtml.Append("<option value=\"0\">女</option>");
strhtml.Append("<option value=\"1\">男</option>");
strhtml.Append("</select>");
//strhtml.Append("<br />排序：<select name=\"order\">");
strhtml.Append("<select name=\"order\" style=\"display:none;\">");
strhtml.Append("<option value=\"1\">经验值</option>");
strhtml.Append("<option value=\"2\">货币值</option>");
strhtml.Append("<option value=\"3\">最新注册</option>");
strhtml.Append("</select><br/>");
strhtml.Append("城市：<input type=\"text\" style=\"width:50%;max-width:200px;\" name=\"city\" value=\"\" size=\"8\"/><br/>");
strhtml.Append("昵称：<input type=\"text\" style=\"width:50%;max-width:200px;\" name=\"tonickname\" value=\"\" size=\"8\"/><br/>");
strhtml.Append("ID号：<input type=\"text\" style=\"width:50%;max-width:200px;\" name=\"touserid\" value=\"\" size=\"8\"/><br/>");
//strhtml.Append("身份：<select name=\"sessiontimeout\">");
//strhtml.Append("<option value=\"\">所有会员</option>");
//strhtml.Append("<option value=\"0\">普通会员</option>");

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].subclassName.IndexOf("http") >= 0)
        {
            listVo[i].subclassName = "(图片)";
        }
   //strhtml.Append("<option value=\""+listVo[i].id+"\">"+listVo[i].subclassName+"</option>");
    }

//strhtml.Append("</select><br/>");

strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\""+this.siteid +"\"/>");
strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\""+this.classid +"\"/>");
strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\""+this.backurl +"\"/>");
strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\""+this.sid +"\"/>");
strhtml.Append("<input type=\"submit\" name=\"g\" value=\"快速搜索\" class=\"btn\"/>");
strhtml.Append("</form>");
strhtml.Append("</div>");
string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代
strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");

strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "" + "\">返回首页</a>");

strhtml.Append("</div></div>");

if (isWebHtml != "")
{
    string strhtml_list = strhtml.ToString();
    //int s = strhtml_list.IndexOf("<div class=\"title\">");
    //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

    Response.Clear();
    Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml_list));
    Response.End();
}
Response.Write(strhtml);
    
}
    
                                                                                                                                                                           
//显示底部
Response.Write(WapTool.showDown(wmlVo)); 
 %>