<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="onList.aspx.cs" Inherits="KeLin.WebSite.bbs.onList" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname + this.GetLang("��������:|��������:|online:")+this.total, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);


   
    //��ʾ�б�

    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].nickname + "(ID:" + listVo[i].userid + ")</a>" + listVo[i].classname + "" + "<br/>");
        strhtml.Append("[" + string.Format("{0:MM-dd HH:mm}", listVo[i].ftime) + " " + this.getShowIP(listVo[i].fip) + "]<br/>----------<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);

    if (classid != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/onlist.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=0" + "\">��վ����������</a><br/>");
        
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">�����б�</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{
    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("<b>" + classVo.classname + "��������:" + this.total + "</b>");
    strhtml.Append("</div>");

    //��ʾ�б�


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

        strhtml.Append(index + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].nickname + "(ID:" + listVo[i].userid + ")</a>" + listVo[i].classname + "" + "<br/>");
        strhtml.Append("[" + string.Format("{0:MM-dd HH:mm}", listVo[i].ftime) + " " + this.getShowIP(listVo[i].fip) + "]");
        strhtml.Append("</div>");
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);

    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    if (classid != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/onlist.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=0" + "\">��վ����������</a><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">�����б�</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");

    strhtml.Append("</div></div>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
