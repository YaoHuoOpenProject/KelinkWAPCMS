<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.XinZhang.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/><br/>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce + "<br/>");
    }
    
    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }

    strhtml.Append("�ҵ�ѫ�£�" + WapTool.GetMedal(userVo.moneyname, http_start) + "[<a href=\"" + http_start + "XinZhang/book_view_my.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + CurrentPage + "&amp;ordertype=" + this.ordertype + "" + "\">����</a>]<br/>--------<br/>");

    if (this.ordertype == "1")
    {
        strhtml.Append("������");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "/XinZhang/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=1\">������</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "2")
    {
        strhtml.Append("��ʱ��");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "XinZhang/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=2\">��ʱ��</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "3")
    {
        strhtml.Append("���۸�");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "XinZhang/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=3\">���۸�</a>");
    }
    strhtml.Append("|");
    if (this.ordertype == "4")
    {
        strhtml.Append("���۵�");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "XinZhang/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=4\">���۵�</a>");
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
        strhtml.Append("[<a href=\"" + http_start + "XinZhang/book_view_buy.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].ID  + "&amp;lpage="+CurrentPage+"&amp;ordertype="+this.ordertype +"" + "\">����</a>]<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }
    //������ť
    if (classid == "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "myfile.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");
    
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");
    }
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



    

    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<div class=\"logo\"><img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/></div>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce);
    }

    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
    strhtml.Append("<!--web-->");
    strhtml.Append("<div class=\"subtitle\">�ҵ�ѫ��</div>");
    strhtml.Append("<div class=\"content\">" + WapTool.GetMedal(userVo.moneyname, http_start) + "<br/></div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
    strhtml.Append("<a");
    if (this.ordertype == "1")
    {
        strhtml.Append(" class=\"btSelect\"");
    }
    strhtml.Append(" href=\"" + this.http_start + "XinZhang/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=1\">������</a>");


    strhtml.Append("<a");
    if (this.ordertype == "2")
    {
        strhtml.Append(" class=\"btSelect\"");
    }
    strhtml.Append(" href=\"" + this.http_start + "XinZhang/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=2\">��ʱ��</a>");


    strhtml.Append("<a");

    if (this.ordertype == "3")
    {
        strhtml.Append(" class=\"btSelect\"");
    }
    strhtml.Append(" href=\"" + this.http_start + "XinZhang/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=3\">���۸�</a>");

    strhtml.Append("<a");
    if (this.ordertype == "4")
    {
        strhtml.Append(" class=\"btSelect\"");

    }
    strhtml.Append(" href=\"" + this.http_start + "XinZhang/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ordertype=4\">���۵�</a>");
 
    strhtml.Append("</div></div>");
    //��ʾ�б�
    //strhtml.Append(linkTOP);

    strhtml.Append("<!--listS-->");
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
        strhtml.Append(" <a class=\"urlbtn\" href=\"" + http_start + "XinZhang/book_view_buy.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + listVo[i].ID  + "&amp;lpage=" + CurrentPage + "&amp;ordertype="+this.ordertype +"" + "\">����</a><br/>");
        strhtml.Append("</div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    strhtml.Append("<!--listE-->");
    //��ʾ������ҳ
    strhtml.Append(linkURL);

    //��ʾ���԰�
    string isWebHtml = this.ShowWEB_list(this.classid); //���Ǵ���html����    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<!--web-->");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }

    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    if (classid == "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "myfile.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");

    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");
    }
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
