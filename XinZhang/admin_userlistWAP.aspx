<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_userlistWAP.aspx.cs" Inherits="KeLin.WebSite.XinZhang.admin_userlistWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");



    strhtml.Append("[<a href=\"" + http_start + "XinZhang/book_view_add.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�ϴ�ѫ��</a>][<a href=\"" + http_start + "XinZhang/book_view_daoru.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">����ϵͳѫ��</a>]<br/>--------<br/>");

    if (this.ordertype == "1")
    {
        strhtml.Append("������");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=1\">������</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "2")
    {
        strhtml.Append("��ʱ��");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=2\">��ʱ��</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "3")
    {
        strhtml.Append("���۸�");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=3\">���۸�</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "4")
    {
        strhtml.Append("���۵�");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=4\">���۵�</a>");
    }
    strhtml.Append("<br/>--------<br/>");
    //��ʾ�б�
    strhtml.Append(linkTOP);
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + "." + listVo[i].XinZhangMingChen + "<br/>");
        strhtml.Append("<img src=\"/" + listVo[i].XinZhangTuPian + "\" alt=\"" + listVo[i].XinZhangMingChen + "\"/><br/>�۸�:" + listVo[i].XinZhangJiaGe+" " +siteVo.sitemoneyname );
        strhtml.Append("<br/>[<a href=\"" + http_start + "XinZhang/book_view_mod.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].ID  + "&amp;lpage="+CurrentPage+"&amp;ordertype="+this.ordertype +"" + "\">�޸�</a>][<a href=\"" + http_start + "XinZhang/book_view_del.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].ID  + "&amp;lpage="+CurrentPage+"&amp;ordertype="+this.ordertype +"" + "\">ɾ��</a>]<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    
  
    //������ť

    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("ѫ����") + "&amp;gopath=XinZhang/index.aspx\">�����ϼ�</a> ");
   
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







    strhtml.Append("<div class=\"subtitle\">[<a href=\"" + http_start + "XinZhang/book_view_add.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�ϴ�ѫ��</a>][<a href=\"" + http_start + "XinZhang/book_view_daoru.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">����ϵͳѫ��</a>]</div>");
   
    strhtml.Append("<div class=\"subtitle\">");
    if (this.ordertype == "1")
    {
        strhtml.Append("������");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=1\">������</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "2")
    {
        strhtml.Append("��ʱ��");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=2\">��ʱ��</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "3")
    {
        strhtml.Append("���۸�");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=3\">���۸�</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "4")
    {
        strhtml.Append("���۵�");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/admin_userlistWAP.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=4\">���۵�</a>");
    }
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
        strhtml.Append("<br/>[<a href=\"" + http_start + "XinZhang/book_view_mod.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].ID + "&amp;lpage=" + CurrentPage + "&amp;ordertype=" + this.ordertype + "" + "\">�޸�</a>][<a href=\"" + http_start + "XinZhang/book_view_del.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].ID + "&amp;lpage=" + CurrentPage + "&amp;ordertype=" + this.ordertype + "" + "\">ɾ��</a>]<br/>");
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


    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("ѫ����") + "&amp;gopath=XinZhang/index.aspx\">�����ϼ�</a> ");
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
