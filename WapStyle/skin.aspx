<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="skin.aspx.cs" Inherits="KeLin.WebSite.WapStyle.skin" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
//��ʾͷ
Response.Write(WapTool.showTop(this.GetLang("��Ƥ��|�QƤ�w|select skin"), wmlVo));

/////////////////////////////////////////////////////////

StringBuilder strhtml = new StringBuilder();                                                                                                                                                                                             
//��ʾ�м�
if (ver == "1")
{

    strhtml.Append("<p>");
    if (selCSS != "")
    {
        strhtml.Append("��<a href=\"" + http_start + WapTool.URLtoWAP ( HttpUtility.UrlDecode(backurl)) + "" + "\">" + this.GetLang("�� ��|�� ��|finish") + "</a>��<br/>");
    }
    else
    {
        strhtml.Append("��<a href=\"" + http_start + WapTool.URLtoWAP (HttpUtility.UrlDecode(backurl)) + "" + "\">" + this.GetLang("�� ��|�� ��|back") + "</a>��<br/>");
    }
    strhtml.Append("��<a href=\"" + http_start + WapTool.URLtoWAP (HttpUtility.UrlDecode(backurl)) + "&amp;sid=-1-" + cs + "-" + lang + "-" + myua + "-" + this.width + "\">WAP 1.0</a>��<br/>");

    strhtml.Append("��WAP 2.0��" + this.GetLang("��ѡ��|Ո�x��|Please Select") +"<br/>");

    backurl = HttpUtility.UrlEncode(backurl);
    
    for (int i = 0; (volist != null && i < volist.Count); i++)
    {
        
        strhtml.Append(bg);
        strhtml.Append("<img src=\"showColor.aspx?sc=" + volist[i].style_color + "\" alt=\".\"/> <a href=\"" + http_start + "wapstyle/skin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;selCSS=" + volist[i].ID + "&amp;sid=-2-" + volist[i].ID + "-" + lang + "-" + myua + "-" + this.width + "&amp;backurl=" + backurl + "\">" + volist[i].style_name.Replace("[HTML5]","") + "</a>");
        if (volist[i].ID.ToString() == selCSS) { strhtml.Append(" ��"); }
        strhtml.Append("<br/>");    
    }

    strhtml.Append("��HTML5��" + this.GetLang("��ѡ��|Ո�x��|Please Select") + "<br/>");

    backurl = HttpUtility.UrlEncode(backurl);
    int yy = 0;
    for (int i = 0; (volist != null && i < volist.Count); i++)
    {
        if (volist[i].style_name.ToLower().IndexOf("html5") > -1)
        {
            yy++;
            strhtml.Append(bg);
            strhtml.Append("<img src=\"showColor.aspx?sc=" + volist[i].style_color + "\" alt=\".\"/> <a href=\"" + http_start + "wapstyle/skin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;selCSS=" + volist[i].ID + "&amp;sid=-2-" + volist[i].ID + "-" + lang + "-" + myua + "-" + this.width + "&amp;backurl=" + backurl + "\">" + volist[i].style_name.Replace("[HTML5]", "") + "</a>");
            if (volist[i].ID.ToString() == selCSS) { strhtml.Append(" ��"); }
            strhtml.Append("<br/>");
        }
    }
    if (yy == 0)
    {
        strhtml.Append("<img src=\"showColor.aspx?sc=FFFFFF\" alt=\".\"/> <a href=\"" + http_start + "wapstyle/skin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;selCSS=0&amp;sid=-5-0-" + lang + "-" + myua + "-" + this.width + "&amp;backurl=" + backurl + "\">Ĭ��</a><br/>");

    }
    strhtml.Append("" + this.GetLang("���� �ԡ���ѡ��|��� �X��Ո�x��|��PC WEB��Please Select") + "<br/>");
    strhtml.Append("<img src=\"showColor.aspx?sc=FFFFFF\" alt=\".\"/> <a href=\"" + http_start + "wapstyle/skin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;selCSS=0&amp;sid=-3-0-" + lang + "-" + myua + "-" + this.width + "&amp;backurl=" + backurl + "\">Ĭ��</a><br/>");

    for (int i = 0; (volist3 != null && i < volist3.Count); i++)
    {

        //if (i % 2 == 0) { bg = "<div class=\"line1\">"; } else { bg = "<div class=\"line2\">"; }
        strhtml.Append(bg);
        strhtml.Append("<img src=\"showColor.aspx?sc=" + volist3[i].style_color + "\" alt=\".\"/> <a href=\"" + http_start + "wapstyle/skin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;selCSS=" + volist3[i].ID + "&amp;sid=-3-" + volist3[i].ID + "-" + lang + "-" + myua + "-" + this.width + "&amp;backurl=" + backurl + "\">" + volist3[i].style_name + "</a>");
        if (volist3[i].ID.ToString() == selCSS) { strhtml.Append(" ��"); }
        strhtml.Append("<br/>");
    }

    strhtml.Append("" + this.GetLang("��ƽ�塿��ѡ��|��ƽ�塿Ո�x��|��ƽ�塿Please Select") + "<br/>");

    strhtml.Append("<img src=\"showColor.aspx?sc=FFFFFF\" alt=\".\"/> <a href=\"" + http_start + "wapstyle/skin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;selCSS=0&amp;sid=-4-0-" + lang + "-" + myua + "-" + this.width + "&amp;backurl=" + backurl + "\">Ĭ��</a><br/>");



    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else 
{
    if (selCSS != "")
    {
        strhtml.Append("<div class=\"line1\">��<a href=\"" + http_start + WapTool.URLtoWAP (HttpUtility.UrlDecode(backurl)) + "" + "\">" + this.GetLang("�� ��|�� ��|finish") + "</a>��</div>");
    }
    else
    {
        strhtml.Append("<div class=\"line2\">��<a href=\"" + http_start + WapTool.URLtoWAP (HttpUtility.UrlDecode(backurl)) + "" + "\">" + this.GetLang("�� ��|�� ��|back") + "</a>��</div>");
    }


    strhtml.Append("<div class=\"line1\">��<a href=\"" + http_start + WapTool.URLtoWAP (HttpUtility.UrlDecode(backurl)) + "&amp;sid=-1-" + cs + "-" + lang + "-" + myua + "-" + this.width + "\">WAP 1.0</a>��</div>");


    strhtml.Append("<div class=\"subtitle\">��WAP 2.0��" + this.GetLang("��ѡ��|Ո�x��|Please Select") + "</div>");

    backurl = HttpUtility.UrlEncode(backurl);
    
    for (int i = 0; (volist != null && i < volist.Count); i++)
    {

        if (i % 2 == 0) { bg = "<div class=\"line1\">"; } else { bg = "<div class=\"line2\">"; }
        strhtml.Append(bg);
        strhtml.Append("<img src=\"showColor.aspx?sc=" + volist[i].style_color + "\" /> <a href=\"" + http_start + "wapstyle/skin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;selCSS=" + volist[i].ID + "&amp;sid=-2-" + volist[i].ID + "-" + lang + "-" + myua + "-" + this.width + "&amp;backurl=" + backurl + "\">" + volist[i].style_name.Replace("[HTML5]", "") + "</a>");
        if (volist[i].ID.ToString() == selCSS) { strhtml.Append(" ��"); }
        strhtml.Append("</div>");  
    }

    strhtml.Append("<div class=\"subtitle\">��HTML5��" + this.GetLang("��ѡ��|Ո�x��|Please Select") + "</div>");

    backurl = HttpUtility.UrlEncode(backurl);
    int yy = 0;
    for (int i = 0; (volist != null && i < volist.Count); i++)
    {
        if (volist[i].style_name.ToLower().IndexOf("html5") > -1)
        {
            yy++;
            if (i % 2 == 0) { bg = "<div class=\"line1\">"; } else { bg = "<div class=\"line2\">"; }
            strhtml.Append(bg);
            strhtml.Append("<img src=\"showColor.aspx?sc=" + volist[i].style_color + "\" /> <a href=\"" + http_start + "wapstyle/skin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;selCSS=" + volist[i].ID + "&amp;sid=-5-" + volist[i].ID + "-" + lang + "-" + myua + "-" + this.width + "&amp;backurl=" + backurl + "\">" + volist[i].style_name.Replace("[HTML5]", "") + "</a>");
            if (volist[i].ID.ToString() == selCSS) { strhtml.Append(" ��"); }
            strhtml.Append("</div>");
        }
    }

    if (yy == 0)
    {
        strhtml.Append("<div class=\"line2\"><img src=\"showColor.aspx?sc=FFFFFF\" alt=\".\"/> <a href=\"" + http_start + "wapstyle/skin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;selCSS=0&amp;sid=-5-0-" + lang + "-" + myua + "-" + this.width + "&amp;backurl=" + backurl + "\">Ĭ��</a></div>");

    }

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("���� �ԡ���ѡ��|��� �X��Ո�x��|��PC WEB��Please Select") + "</div>");
    strhtml.Append("<div class=\"line2\"><img src=\"showColor.aspx?sc=FFFFFF\" alt=\".\"/> <a href=\"" + http_start + "wapstyle/skin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;selCSS=0&amp;sid=-3-0-" + lang + "-" + myua + "-" + this.width + "&amp;backurl=" + backurl + "\">Ĭ��</a></div>");
    
    for (int i = 0; (volist3 != null && i < volist3.Count); i++)
    {

        if (i % 2 == 0) { bg = "<div class=\"line1\">"; } else { bg = "<div class=\"line2\">"; }
        strhtml.Append(bg);
        strhtml.Append("<img src=\"showColor.aspx?sc=" + volist3[i].style_color + "\" alt=\".\"/> <a href=\"" + http_start + "wapstyle/skin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;selCSS=" + volist3[i].ID + "&amp;sid=-3-" + volist3[i].ID + "-" + lang + "-" + myua + "-" + this.width + "&amp;backurl=" + backurl + "\">" + volist3[i].style_name + "</a>");
        if (volist3[i].ID.ToString() == selCSS) { strhtml.Append(" ��"); }
        strhtml.Append("</div>");
    }
    
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("��ƽ�塿��ѡ��|��ƽ�塿Ո�x��|��ƽ�塿Please Select") + "</div>");

    strhtml.Append("<div class=\"line2\"><img src=\"showColor.aspx?sc=FFFFFF\" alt=\".\"/> <a href=\"" + http_start + "wapstyle/skin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;selCSS=0&amp;sid=-4-0-" + lang + "-" + myua + "-" + this.width + "&amp;backurl=" + backurl + "\">Ĭ��</a></div>");




    string isWebHtml = this.ShowWEB_view(this.classid); //���Ǵ���html����   
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"subtitle\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    Response.Write(strhtml);

}


/////////////////////////////////////////////////////////
//��ʾ�ײ�


Response.Write(WapTool.showDown(wmlVo));




 %>