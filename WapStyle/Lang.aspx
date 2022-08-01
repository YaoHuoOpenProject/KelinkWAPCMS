<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="Lang.aspx.cs" Inherits="KeLin.WebSite.WapStyle.Lang" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
//显示头
Response.Write(WapTool.showTop(this.GetLang("多国语言|多國語言|multi - language"), wmlVo));

/////////////////////////////////////////////////////////
StringBuilder strhtml = new StringBuilder();
                                                                                                                                                                                              
//显示中间
if (ver == "1")
{

    strhtml.Append("<p>");
    strhtml.Append("<b>" + this.GetLang("请选择|請選擇|Please Select") + ":</b><br/>");
    strhtml.Append("<a href=\"" + http_start + HttpUtility.UrlDecode(backurl) + "&amp;sid=-" + this.ver + "-" + this.cs + "-0-" + this.myua + "-" + this.width + "\">" + this.GetLang("中文简体|中文簡體|simplified chinese") + "</a><br/>");
    strhtml.Append("<a href=\"" + http_start + HttpUtility.UrlDecode(backurl) + "&amp;sid=-" + this.ver + "-" + this.cs + "-1-" + this.myua + "-"+ this.width + "\">" + this.GetLang("中文繁体|中文繁體|Traditional Chinese") + "</a><br/>");
    strhtml.Append("<a href=\"" + http_start + HttpUtility.UrlDecode(backurl) + "&amp;sid=-" + this.ver + "-" + this.cs + "-2-" + this.myua + "-" + this.width + "\">" + this.GetLang("英 文|英 文|English") + "</a><br/>");
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else  //2.0界面
{
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<b>" + this.GetLang("请选择|請選擇|Please Select") + ":</b>");
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt3\">");
    strhtml.Append("<a href=\"" + http_start + HttpUtility.UrlDecode(backurl) + "&amp;sid=-" + this.ver + "-" + this.cs + "-0-" + this.myua + "-" + this.width + "\">" + this.GetLang("中文简体|中文簡體|simplified chinese") + "</a> ");
    strhtml.Append("<a href=\"" + http_start + HttpUtility.UrlDecode(backurl) + "&amp;sid=-" + this.ver + "-" + this.cs + "-1-" + this.myua + "-" + this.width + "\">" + this.GetLang("中文繁体|中文繁體|Traditional Chinese") + "</a> ");
    strhtml.Append("<a href=\"" + http_start + HttpUtility.UrlDecode(backurl) + "&amp;sid=-" + this.ver + "-" + this.cs + "-2-" + this.myua + "-" + this.width + "\">" + this.GetLang("英 文|英 文|English") + "</a><br/>");
    strhtml.Append("</div></div>");
    Response.Write(strhtml);

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    
}


/////////////////////////////////////////////////////////
//显示底部


    strhtml.Append(WapTool.showDown(wmlVo));




 %>