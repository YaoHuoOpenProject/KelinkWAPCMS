<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toDefine.aspx.cs" Inherits="KeLin.WebSite.bbs.toDefine" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("浏览设置|浏览设置|View Content"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        strhtml.Append("</b><br/>");
        strhtml.Append("<a href=\"" + this.http_start + (backurl) + ""+"\">" + this.GetLang("返回|返回|Back") + "</a><br/>");
    }
    else if(this.INFO!="")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang(this.INFO));
        strhtml.Append("</b><br/>");

    }

    strhtml.Append(this.GetLang("每页内容显示数|每页内容显示数|View Content Num") + "(100-65535):<br/>");

    strhtml.Append("<input type=\"text\" name=\"num" + r + "\" value=\"" + num + "\"/><br/>");
    strhtml.Append(this.GetLang("WAP2.0页面宽度|WAP2.0页面宽度|WAP2.0页面宽度") + "(0为100%):<br/>");
    strhtml.Append("<input type=\"text\" name=\"towidth" + r + "\" value=\"" + towidth + "\"/>");
    strhtml.Append("<br/>");

    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        strhtml.Append("<br/>------------<br/>");
        strhtml.Append("是否更新本站所有会员设置？");
        strhtml.Append("<br/><input type=\"text\"  name=\"chkall"+r+"\" size=\"3\" value=\"no\"/>如果是输入yes");        
        strhtml.Append("<br/>------------<br />");
    }
    
    strhtml.Append("<anchor><go href=\""+http_start+"bbs/toDefine.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");    
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode(backurl) + "\"/>");
    strhtml.Append("<postfield name=\"num\" value=\"$(num" + r + ")\"/>");
    strhtml.Append("<postfield name=\"towidth\" value=\"$(towidth" + r + ")\"/>");
    strhtml.Append("<postfield name=\"chkall\" value=\"$(chkall"+r+")\"/>"); 
    strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor><br/><br/>");


    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a><br/>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("更新操作|更新操作|Update operation") + "</div>");
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        strhtml.Append("</b><br/>");
        strhtml.Append("<a href=\"" + this.http_start + (backurl) + "\">" + this.GetLang("返回|返回|Back") + "</a><br/>");
    }
    else
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang(this.INFO));
        strhtml.Append("</b>");

    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"go\" action=\"" + this.http_start + "bbs/toDefine.aspx\" method=\"post\">");
    strhtml.Append(this.GetLang("每页内容显示数|每页内容显示数|View Content Num") + "(100-65535):<br/>");
    strhtml.Append("<input type=\"text\" name=\"num\" value=\"" + num + "\"/><br/>");

    strhtml.Append(this.GetLang("WAP2.0页面宽度|WAP2.0页面宽度|WAP2.0页面宽度") + "(0为100%,建议320):<br/>");
    strhtml.Append("<input type=\"text\" name=\"towidth\" value=\"" + towidth + "\"/>");
   
    strhtml.Append("<br/>");

    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        strhtml.Append("<hr/>");
        strhtml.Append("是否更新本站所有会员设置？");
        strhtml.Append("<br/><input type=\"text\"  name=\"chkall\" size=\"3\" value=\"no\"/>如果是输入yes");
        
        strhtml.Append("<hr/>");
    }
    
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");    
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode(backurl) + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"bt\" class=\"btn\" value=\"" + this.GetLang("保 存|保 存|Update") + "\"/>");

    strhtml.Append("</form></div>");
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml,wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    //strhtml.Append("<div class=\"subtitle\">"+this.GetLang("说明：默认为10|說明：默認爲10|Note: The default is 10")+"</div>");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a><br/>");
    
    strhtml.Append("</div></div>");
    Response.Write(strhtml);

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


