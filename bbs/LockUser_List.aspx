<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LockUser_List.aspx.cs" Inherits="KeLin.WebSite.bbs.LockUser_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("�������б�|�������б�|Lock User List"), wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
        
    strhtml.Append("��ԱID:<input type=\"text\" name=\"touserid"+r+"\" value=\"" + this.touserid + "\" size=\"5\"/>");
    strhtml.Append("��ĿID:<input type=\"text\" name=\"toclassid"+r+"\" value=\"" + this.toclassid + "\" size=\"5\"/><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "bbs/lockuser_list.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid"+r+")\" />");
    strhtml.Append("<postfield name=\"toclassid\" value=\"$(toclassid"+r+")\" />");
    strhtml.Append("<postfield name=\"id\" value=\"" + id + "\" />");
    strhtml.Append("<postfield name=\"backurlid\" value=\"" + backurlid + "\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("����|����|Search") + "</anchor> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/lockuser_list_add.aspx?action=go&amp;backurlid="+this.backurlid+"&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toclassid=" + this.toclassid + "&amp;touserid=" + this.touserid + "\">�Ӻ�</a>");
    strhtml.Append("<br/>----------<br/>");
    //��ʾ�б�

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;

        strhtml.Append(index + ".ID:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].lockuserid + "\">" + listVo[i].lockuserid + "</a>(<a href=\"" + this.http_start + "bbs/LockUser_List_del.aspx?action=go&amp;delid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurlid=" + this.backurlid + "&amp;touserid=" + this.touserid + "&amp;toclassid=" + this.toclassid + "\">���</a>)<br/>");
        strhtml.Append("�Ӻ�����:" + listVo[i].lockdate + "<br/>");
        strhtml.Append("��ʼʱ��:" + listVo[i].operdate + "<br/>");
        strhtml.Append("����ʱ��:");
        if (listVo[i].lockdate == 0)
        {
            strhtml.Append("�Ӻ������ޣ�<br/>");
        }
        else
        {
            strhtml.Append(listVo[i].lockdate + "��<br/>");
        }
        strhtml.Append("������ĿID:" + listVo[i].classid + "<br/>");
        strhtml.Append("������ID:" + listVo[i].operuserid + "<br/>");
        strhtml.Append("----------<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);

    if (backurlid == "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id="+id+"" + "\">��������</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����б�</a><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_admin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + id + "" + "\">���ع���</a> ");
    }
    else if (backurlid == "1")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">���ذ���</a> ");

    }
    else if (backurlid == "2")
    {
        strhtml.Append("<a href=\"" + this.http_start + "chat/showadmin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");

    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����б�</a><br/>");
    }


    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    Response.Write(strhtml);
    
}
else //2.0����
{

    strhtml.Append("<div class=\"subtitle\">"+this.GetLang("�������б�|�������б�|Lock User List")+"</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/lockuser_list.aspx\" method=\"post\">");
    strhtml.Append("��ԱID:<input type=\"text\" name=\"touserid\" value=\"" + this.touserid + "\" size=\"5\"/>");
    strhtml.Append("��ĿID:<input type=\"text\" name=\"toclassid\" value=\"" + this.toclassid + "\" size=\"5\"/><br/>");
   
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"backurlid\" value=\"" + backurlid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("����|����|Search") + "\"/> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/lockuser_list_add.aspx?action=go&amp;backurlid="+this.backurlid+"&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toclassid=" + this.toclassid + "&amp;touserid=" + this.touserid + "\">�Ӻ�</a>");
    strhtml.Append("</form></div>");
    //��ʾ�б�

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

        strhtml.Append(index + ".ID:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].lockuserid + "\">" + listVo[i].lockuserid + "</a>(<a href=\"" + this.http_start + "bbs/LockUser_List_del.aspx?action=go&amp;delid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurlid=" + this.backurlid + "&amp;touserid=" + this.touserid + "&amp;toclassid=" + this.toclassid + "\">���</a>)<br/>");
        strhtml.Append("�Ӻ�����:" + listVo[i].lockdate + "<br/>");
        strhtml.Append("��ʼʱ��:" + listVo[i].operdate + "<br/>");
        strhtml.Append("����ʱ��:");
        if (listVo[i].lockdate == 0)
        {
            strhtml.Append("�Ӻ������ޣ�<br/>");
        }
        else
        {
            strhtml.Append(listVo[i].lockdate + "��<br/>");
        }
        strhtml.Append("������ĿID:" + listVo[i].classid + "<br/>");
        strhtml.Append("������ID:" + listVo[i].operuserid + "");
        
        strhtml.Append("</div>");
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    
    string isWebHtml = this.ShowWEB_view(this.classid); //���Ǵ���html����    


    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    if (backurlid == "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + id + "" + "\">��������</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����б�</a><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_admin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + id + "" + "\">���ع���</a> ");
    }
    else if (backurlid == "1")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">���ذ���</a> ");

    }
    else if (backurlid == "2")
    {
        strhtml.Append("<a href=\"" + this.http_start + "chat/showadmin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");

    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����б�</a><br/>");
    }


    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");

    strhtml.Append("</div></div>");

    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml,wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }

    Response.Write(strhtml);
                                                                                                                                                                           




}
                                                                                                                                                                               
strhtml.Append(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
