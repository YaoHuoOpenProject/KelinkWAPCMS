<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_userlistWAP.aspx.cs" Inherits="KeLin.WebSite.myAccount.admin_userlistWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");

    strhtml.Append("��ԱID:<input type=\"text\" name=\"touserid" + r + "\" value=\"" + touserid + "\" size=\"8\"/><br/>");
    strhtml.Append("��ʼʱ��:<input type=\"text\" name=\"starttime" + r + "\" value=\"" + starttime + "\" size=\"8\"/>("+format+")<br/>");
    strhtml.Append("����ʱ��:<input type=\"text\" name=\"endtime" + r + "\" value=\"" + endtime + "\" size=\"8\"/>(" + format + ")<br/>");
    strhtml.Append("��ע:<input type=\"text\" name=\"key" + r + "\" value=\"" + key + "\" size=\"5\"/>");    
    strhtml.Append("<anchor><go href=\"" + http_start + "myaccount/admin_userlistWAP.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"totype\" value=\"$(totype" + r + ")\" />");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\" />");
    strhtml.Append("<postfield name=\"starttime\" value=\"$(starttime" + r + ")\" />");
    strhtml.Append("<postfield name=\"endtime\" value=\"$(endtime" + r + ")\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"$(classid" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("����|����|Search") + "</anchor><br/>");
    if (this.totype == "")
    {
        strhtml.Append("����/");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "myaccount/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=&amp;touserid="+this.touserid+"\">����</a>/");
    }
    if (this.totype == "1")
    {
        strhtml.Append("����/");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "myaccount/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=1&amp;touserid=" + this.touserid + "\">����</a>/");
    }
    if (this.totype == "0")
    {
        strhtml.Append("֧��");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "myaccount/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=0&amp;touserid=" + this.touserid + "\">֧��</a>");
    }
    strhtml.Append("/<b>��:" + this.sum.ToString("f2") + "</b>");
    strhtml.Append("<br/>");

       
    
    //��ʾ�б�
    strhtml.Append(linkTOP);
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;

        strhtml.Append(index + "." + listVo[i].payTime + " " + getTypeName(listVo[i].toType) + ":" + listVo[i].money.ToString("f2"));
        strhtml.Append("<br/>��ע:"+listVo[i].remark);
        strhtml.Append("<br/>��ԱID:" + listVo[i].userid);
        strhtml.Append("<br/>[" + string.Format("{0:MM-dd HH:mm}", listVo[i].addTime) + "<a href=\"" + this.http_start + "myaccount/admin_wapdel.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;totype=" + this.totype + "&amp;starttime=" + this.starttime + "&amp;endtime=" + this.endtime + "&amp;key=" + HttpUtility.UrlEncode(this.key) + "" + "\">ɾ��</a>]");
        strhtml.Append("<br/>--------<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);


    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("������") + "&amp;gopath=myaccount/index.aspx\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    
    if (classVo.sitedowntip != "")
    {
        strhtml.Append("<br/>" + classVo.sitedowntip);
    }
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{



    strhtml.Append("<div class=\"title\">���ʹ���</div>");

   

        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form id=\"form1\" action=\"" + http_start + "myaccount/admin_userlistWAP.aspx\" method=\"get\">");
        strhtml.Append("��ԱID:<input type=\"text\" name=\"touserid\" value=\"" + this.touserid + "\" size=\"8\"/><br/>");
        strhtml.Append("��ʼʱ��:<input type=\"text\" name=\"starttime\" value=\"" + this.starttime + "\" size=\"8\"/>(" + format + ")<br/>");
        strhtml.Append("����ʱ��:<input type=\"text\" name=\"endtime\" value=\"" + this.endtime + "\" size=\"8\"/>(" + format + ")<br/>");    
        strhtml.Append("��ע:<input type=\"text\" name=\"key\" value=\"" + this.key + "\" size=\"5\"/><br/>");       
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"totype\" value=\"" + this.totype + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("<input type=\"submit\" value=\"����\" />");
        strhtml.Append("</form><br/>");
        if (this.totype == "")
        {
            strhtml.Append("����/");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "myaccount/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=&amp;touserid="+this.touserid+"\">����</a>/");
        }
        if (this.totype == "1")
        {
            strhtml.Append("����/");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "myaccount/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=1&amp;touserid=" + this.touserid + "\">����</a>/");
        }
        if (this.totype == "0")
        {
            strhtml.Append("֧��");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "myaccount/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;totype=0&amp;touserid=" + this.touserid + "\">֧��</a>");
        }

        strhtml.Append("/<b>��:" + this.sum.ToString("f2") + "</b>");
        strhtml.Append("</div>");

    
    //��ʾ�б�
    strhtml.Append(linkTOP);
   
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

        strhtml.Append(index + "." + listVo[i].payTime + " " + getTypeName(listVo[i].toType) + ":" + listVo[i].money.ToString("f2"));
        strhtml.Append("<br/>��ע:"+listVo[i].remark);
        strhtml.Append("<br/>��ԱID:" + listVo[i].userid);
        strhtml.Append("<br/>[" + string.Format("{0:MM-dd HH:mm}", listVo[i].addTime) + "<a href=\"" + this.http_start + "myaccount/admin_wapdel.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;totype=" + this.totype + "&amp;starttime=" + this.starttime + "&amp;endtime=" + this.endtime + "&amp;key=" + HttpUtility.UrlEncode(this.key) + "" + "\">ɾ��</a>]");
        
        strhtml.Append("</div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    
    //��ʾ������ҳ
    strhtml.Append(linkURL);

  
    //������ť
    strhtml.Append("<div class=\"mylink\">");
    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("������") + "&amp;gopath=myaccount/index.aspx\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</div>");
    if (classVo.sitedowntip != "")
    {
        strhtml.Append(classVo.sitedowntip);
    }
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           


}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
