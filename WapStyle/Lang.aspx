<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="Lang.aspx.cs" Inherits="KeLin.WebSite.WapStyle.Lang" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
//��ʾͷ
Response.Write(WapTool.showTop(this.GetLang("�������|�����Z��|multi - language"), wmlVo));

/////////////////////////////////////////////////////////
StringBuilder strhtml = new StringBuilder();
                                                                                                                                                                                              
//��ʾ�м�
if (ver == "1")
{

    strhtml.Append("<p>");
    strhtml.Append("<b>" + this.GetLang("��ѡ��|Ո�x��|Please Select") + ":</b><br/>");
    strhtml.Append("<a href=\"" + http_start + HttpUtility.UrlDecode(backurl) + "&amp;sid=-" + this.ver + "-" + this.cs + "-0-" + this.myua + "-" + this.width + "\">" + this.GetLang("���ļ���|���ĺ��w|simplified chinese") + "</a><br/>");
    strhtml.Append("<a href=\"" + http_start + HttpUtility.UrlDecode(backurl) + "&amp;sid=-" + this.ver + "-" + this.cs + "-1-" + this.myua + "-"+ this.width + "\">" + this.GetLang("���ķ���|���ķ��w|Traditional Chinese") + "</a><br/>");
    strhtml.Append("<a href=\"" + http_start + HttpUtility.UrlDecode(backurl) + "&amp;sid=-" + this.ver + "-" + this.cs + "-2-" + this.myua + "-" + this.width + "\">" + this.GetLang("Ӣ ��|Ӣ ��|English") + "</a><br/>");
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else  //2.0����
{
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<b>" + this.GetLang("��ѡ��|Ո�x��|Please Select") + ":</b>");
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt3\">");
    strhtml.Append("<a href=\"" + http_start + HttpUtility.UrlDecode(backurl) + "&amp;sid=-" + this.ver + "-" + this.cs + "-0-" + this.myua + "-" + this.width + "\">" + this.GetLang("���ļ���|���ĺ��w|simplified chinese") + "</a> ");
    strhtml.Append("<a href=\"" + http_start + HttpUtility.UrlDecode(backurl) + "&amp;sid=-" + this.ver + "-" + this.cs + "-1-" + this.myua + "-" + this.width + "\">" + this.GetLang("���ķ���|���ķ��w|Traditional Chinese") + "</a> ");
    strhtml.Append("<a href=\"" + http_start + HttpUtility.UrlDecode(backurl) + "&amp;sid=-" + this.ver + "-" + this.cs + "-2-" + this.myua + "-" + this.width + "\">" + this.GetLang("Ӣ ��|Ӣ ��|English") + "</a><br/>");
    strhtml.Append("</div></div>");
    Response.Write(strhtml);

    string isWebHtml = this.ShowWEB_view(this.classid); //���Ǵ���html����   
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
//��ʾ�ײ�


    strhtml.Append(WapTool.showDown(wmlVo));




 %>