<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Re.aspx.cs" Inherits="KeLin.WebSite.hotel.Book_Re" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("�鿴�ҵĶ���|�鿴�ҵĶ���|View Reply"), wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    strhtml.Append("״̬��<select name=\"state" + r + "\" value=\"" + this.state + "\">");
    strhtml.Append("<option value=\"\">����</option>");
    strhtml.Append("<option value=\"1\">�ɹ�</option>");
    strhtml.Append("<option value=\"0\">������</option>");
    strhtml.Append("</select><br/>");

    strhtml.Append("�ؼ��֣�<input type=\"text\" name=\"key" + r + "\" value=\"" + key + "\" size=\"5\"/>");

    strhtml.Append("<anchor><go href=\"" + http_start + "hotel/book_re.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"id\" value=\"" + id + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"state\" value=\"$(state" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("����|����|Search") + "</anchor> ");
    //strhtml.Append("<a href=\""+http_start+"hotel/book_re.aspx?id="+id+"&amp;classid="+classid+"&amp;siteid="+siteid+"&amp;lpage="+lpage+"&amp;rnd="+r+"&amp;sid="+sid+"\">ˢ��</a> ");

    strhtml.Append("<br/>");
 
    //��ʾ�б�

    kk = kk + ((CurrentPage - 1) * pageSize) -1 ;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        strhtml.Append("" + (total - kk) + ".������:<b>" + listVo[i].id + "</b><br/>״̬:");
        if (listVo[i].state == 1)
        {
            strhtml.Append("�ɹ���");
        }
        else
        {
            strhtml.Append("������...");
        }
        strhtml.Append("<br/>�Ƶ�:"+listVo[i].hotelname+"["+listVo[i].hotelid+"]<br/>����:"+listVo[i].days+"<br/>��סʱ��:"+string.Format("{0:yyyy-MM-dd}",listVo[i].starttime)+"<br/>�뿪ʱ��:"+string.Format("{0:yyyy-MM-dd}",listVo[i].endtime)+"<br/>�绰:"+listVo[i].tel+"<br/>�ҵ�˵��:"+listVo[i].content+"<br/>�ظ�:"+listVo[i].remark+"<br/>�ύʱ��:"+string.Format("{0:MM-dd HH:mm}",listVo[i].addtime)+"<br/>----------<br/>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    if (id != "" && id != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "hotel/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">�����ϼ�</a> ");

    }
    strhtml.Append("<a href=\"" + this.http_start + "hotel/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+lpage+"" + "\">�����б�</a> ");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("�鿴�ҵĶ���|�鿴�ҵĶ���|View Reply") + "</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "hotel/book_re.aspx\" method=\"get\">");
   
    strhtml.Append("״̬��<select name=\"state\">");
    strhtml.Append("<option value=\"\">����</option>");
    strhtml.Append("<option value=\"1\">�ɹ�</option>");
    strhtml.Append("<option value=\"0\">������</option>");
    strhtml.Append("</select> ");
   
    strhtml.Append("�ؼ��֣�<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("����|����|Search") + "\"/>");

    strhtml.Append("</form></div>");

    //��ʾ�б�

    kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append("" + (total - kk) + ".������:<b>"+listVo[i].id+"</b><br/>״̬:");
        if (listVo[i].state == 1)
        {
            strhtml.Append("�ɹ���");
        }
        else
        {
            strhtml.Append("������...");
        }
        strhtml.Append("<br/>�Ƶ�:" + listVo[i].hotelname + "[" + listVo[i].hotelid + "]<br/>����:" + listVo[i].days + "<br/>��סʱ��:" + string.Format("{0:yyyy-MM-dd}", listVo[i].starttime) + "<br/>�뿪ʱ��:" + string.Format("{0:yyyy-MM-dd}",listVo[i].endtime) + "<br/>�绰:" + listVo[i].tel + "<br/>�ҵ�˵��:" + listVo[i].content + "<br/>�ظ�:" + listVo[i].remark + "<br/>�ύʱ��:" + string.Format("{0:MM-dd HH:mm}", listVo[i].addtime) + "</div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    if (id != "" && id != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "hotel/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">�����ϼ�</a> ");
    }
        strhtml.Append("<a href=\"" + this.http_start + "hotel/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">�����б�</a> ");


        strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
