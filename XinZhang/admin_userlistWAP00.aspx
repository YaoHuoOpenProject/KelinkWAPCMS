<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_userlistWAP00.aspx.cs" Inherits="KeLin.WebSite.XinZhang.admin_userlistWAP00" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");



    
    if (this.ordertype == "1")
    {
        strhtml.Append("������");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP00.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=1\">������</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "2")
    {
        strhtml.Append("��ʱ��");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP00.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=2\">��ʱ��</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "3")
    {
        strhtml.Append("���۸�");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP00.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=3\">���۸�</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "4")
    {
        strhtml.Append("���۵�");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP00.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=4\">���۵�</a>");
    }


    strhtml.Append("<br/>��վID��<input type=\"text\" name=\"tositeid" + r + "\" value=\"" + this.tositeid + "\" size=\"5\"/><br/>");



    strhtml.Append("�ؼ��֣�<input type=\"text\" name=\"key" + r + "\" value=\"" + key + "\" size=\"5\"/>");

    strhtml.Append("<anchor><go href=\"" + http_start + "xinzhang/admin_userlistWAP00.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"$(classid" + r + ")\" />");
    strhtml.Append("<postfield name=\"ischeck\" value=\"$(ischeck" + r + ")\" />");
    strhtml.Append("<postfield name=\"tositeid\" value=\"$(tositeid" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("����|����|Search") + "</anchor> ");

    strhtml.Append("<br/>[<a href=\"" + http_start + "XinZhang/book_view_del00all.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + CurrentPage + "&amp;ordertype=" + this.ordertype + "" + "\">����ɾ������</a>]");
    strhtml.Append("<br/>--------<br/>");
    
    //��ʾ�б�
    strhtml.Append(linkTOP);
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + "." + listVo[i].XinZhangMingChen + "<br/>");
        strhtml.Append("<img src=\"/" + listVo[i].XinZhangTuPian + "\" alt=\"" + listVo[i].XinZhangMingChen + "\"/><br/>�۸�:" + listVo[i].XinZhangJiaGe+" " +siteVo.sitemoneyname );
        strhtml.Append("<br/>��վID:"+listVo[i].siteid +"[<a href=\"" + http_start + "XinZhang/book_view_del00.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].ID  + "&amp;lpage="+CurrentPage+"&amp;ordertype="+this.ordertype +"" + "\">ɾ��</a>]<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    
  
    //������ť

    strhtml.Append("<a href=\"" + this.http_start + "/admin/basesitemodifywml00.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("ѫ����") + "&amp;gopath=XinZhang/index.aspx\">�����ϼ�</a> ");
   
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







   
    strhtml.Append("<div class=\"subtitle\">");
    if (this.ordertype == "1")
    {
        strhtml.Append("������");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP00.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=1\">������</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "2")
    {
        strhtml.Append("��ʱ��");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP00.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=2\">��ʱ��</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "3")
    {
        strhtml.Append("���۸�");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP00.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=3\">���۸�</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "4")
    {
        strhtml.Append("���۵�");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP00.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=4\">���۵�</a>");
    }


    strhtml.Append("<br/><form name=\"f\" aciont=\"" + http_start + "xinzhang/admin_userlistWAP00.aspx\" method=\"post\">");
    strhtml.Append("��վID��<input type=\"text\" name=\"tositeid\" value=\"" + tositeid + "\" size=\"5\"/> ");
    strhtml.Append("�ؼ��֣�<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");


    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<br/><input type=\"submit\" name=\"g\" value=\"" + this.GetLang("����|����|Search") + "\"/>");

    strhtml.Append("</form>");
    strhtml.Append("<br/>[<a href=\"" + http_start + "XinZhang/book_view_del00all.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + CurrentPage + "&amp;ordertype=" + this.ordertype + "" + "\">����ɾ������</a>]");
    
    strhtml.Append("</div>");
    //��ʾ�б�
    strhtml.Append(linkTOP);
    string book_click = "";
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
        index = index + kk;
        strhtml.Append(index + "." + listVo[i].XinZhangMingChen + "<br/>");
        strhtml.Append("<img src=\"/" + listVo[i].XinZhangTuPian + "\" alt=\"" + listVo[i].XinZhangMingChen + "\"/><br/>�۸�:" + listVo[i].XinZhangJiaGe +" "+siteVo.sitemoneyname );
        strhtml.Append("<br/>��վID:" + listVo[i].siteid + "[<a href=\"" + http_start + "XinZhang/book_view_del00.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].ID + "&amp;lpage=" + CurrentPage + "&amp;ordertype=" + this.ordertype + "" + "\">ɾ��</a>]<br/>");
        strhtml.Append("</div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    
    //��ʾ������ҳ
    strhtml.Append(linkURL);

    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");


    strhtml.Append("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("ѫ����") + "&amp;gopath=XinZhang/index.aspx\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
 
    strhtml.Append("</div></div>");
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
