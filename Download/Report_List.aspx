<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Report_List.aspx.cs" Inherits="KeLin.WebSite.download.Report_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("��������|�e�����|Report Management"), wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        strhtml.Append("<a href=\""+this.http_start+"download/Report_List.aspx?action=class&amp;siteid="+this.siteid+"&amp;classid=0&amp;sid="+this.sid+"\">�鿴���б���</a>-<a href=\""+this.http_start+"download/Report_List_del.aspx?action=go&amp;siteid="+this.siteid+"&amp;classid=0&amp;id=0&amp;sid="+this.sid+"\">ɾ������</a><br/>");
    }
   
 
    //��ʾ�б�    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + "." + listVo[i].addtime + "<br/>������:<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + "\">" + listVo[i].nickname + "(ID:"+listVo[i].userid+")</a><br/><a href=\""+http_start+"download/book_view.aspx?siteid="+this.siteid+"&amp;classid="+listVo[i].classid+"&amp;id="+listVo[i].bbsid+"&amp;sid="+this.sid+"\">�鿴(ID:"+listVo[i].bbsid+" ��ĿID:"+listVo[i].classid+")</a><br/>");
        strhtml.Append("��������:"+listVo[i].ReportType+"<br/>");
        strhtml.Append("����:" + listVo[i].ReportWhy + "<br/>");
        strhtml.Append("����:<a href=\"" + this.http_start + "download/Report_List_del.aspx?action=go&amp;id="+listVo[i].id+"&amp;siteid=" + this.siteid + "&amp;classid="+listVo[i].classid+"&amp;page="+this.CurrentPage+"\">ɾ���˱���</a><br/>----------<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);

    
    strhtml.Append("<a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+lpage+"" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    
    Response.Write(strhtml);

    //���
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{
    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append(this.GetLang("��������|�e�����|Report Management"));
    strhtml.Append("</div>");

    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "download/Report_List.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=0\">�鿴���б���</a>-<a href=\"" + this.http_start + "download/Report_List_del.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=0&amp;id=0\">ɾ������</a><br/>");
        strhtml.Append("</div></div>");
    }


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
        
        
        strhtml.Append(index + "." + listVo[i].addtime + "<br/>������:<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + "\">" + listVo[i].nickname + "(ID:" + listVo[i].userid + ")</a><br/><a href=\"" + http_start + "download/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + listVo[i].classid + "&amp;id=" + listVo[i].bbsid + "\">�鿴(ID:" + listVo[i].bbsid + " ��ĿID:" + listVo[i].classid + ")</a><br/>");
        strhtml.Append("��������:" + listVo[i].ReportType + "<br/>");
        strhtml.Append("����:" + listVo[i].ReportWhy + "<br/>");
        strhtml.Append("����:<a href=\"" + this.http_start + "download/Report_List_del.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].classid + "&amp;page=" + this.CurrentPage + "\">ɾ���˱���</a>");
        strhtml.Append("</div>");
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");

    strhtml.Append("</div></div>");

    Response.Write(strhtml);

    
    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>