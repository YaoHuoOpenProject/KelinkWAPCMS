<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showadmin.aspx.cs" Inherits="KeLin.WebSite.bbs.showadmin" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname + "����", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    if (this.INFO == "REMOVEOK")
    {
        strhtml.Append("<b>��ջ���ɹ���</b><br/>");
    }
    strhtml.Append("<b>�ܰ����б�</b><br/>");
    int k = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].managerlvl == "04")
        {
            if (i == 0 || (i > 0 && listVo[i].userid != listVo[i - 1].userid))
            {
                k = k + 1;
                strhtml.Append(k + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/showadmin.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
                strhtml.Append("<u>ǩ��:" + listVo[i].remark + "</u><br/>");
            }
        }

    }
    if (k==0)
    {
        strhtml.Append("<b>�ܰ�����ļ��...</b><br/>");
    }
    strhtml.Append("<b>����(ID:" + this.classid + ")�����б�</b><br/>");

    int y = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].managerlvl != "04")
        {
            if (i == 0 || (i > 0 && listVo[i].userid != listVo[i - 1].userid))
            {
                y = y + 1;
                strhtml.Append(y + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/showadmin.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
                strhtml.Append("<u>ǩ��:" + listVo[i].remark + "</u><br/>");
            }
        }

    }
    if (y ==0)
    {
        strhtml.Append("<b>������ļ��...</b><br/>");
    }

    strhtml.Append("ע:�������������Ⱥ�<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toNotice.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[��湫��]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toDefineBBS.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[�б�����]</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;backurlid=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=0\">[��������]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/Log_List.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[�����¼]</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_search.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[��̳����]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;type=days&amp;key=2&amp;siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[��������]</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "bbs/toNewLine.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[�б���]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toBbsFace.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[��������]</a><br/>");


    strhtml.Append("<a href=\"" + this.http_start + "bbs/toBbsType.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[���ͻظ�������]</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/showTopic_admin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[ר�����]</a> <a href=\"" + this.http_start + "bbs/Report_List.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[�ٱ�����]</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toBbsAdmin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[��������]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_back.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[����վ��]</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/toBbsSecret.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[���氵������]</a> ");
    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/classconfigall.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[������������]</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/showadmin.aspx?action=remove&amp;siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[���±�������]</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/showadmin.aspx?action=removeall&amp;siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[���±�վ����]</a>");
    if (KL_BAK_SQLCONN != "")
    {
        strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/book_list_bak.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[��ʷ����]</a>");

    } 
    else
    {
        strhtml.Append("<br/>[��ʷ����](��ʱû��)");

    }
    strhtml.Append("<br/>------------<br/>");
    strhtml.Append("�ǳƣ�<input type=\"text\" title=\"�ǳ�\" name=\"sname\" value=\"\" size=\"12\"/><br/>");
    strhtml.Append("�û�ID��<input type=\"text\" format=\"*N\" title=\"�û�ID\" name=\"suserid\" value=\"\" size=\"6\"/><br/>");
    strhtml.Append("<anchor><go href=\""+this.http_start+"search/book_list.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"search\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+this.siteid+"\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+this.classid+"\"/>");
    strhtml.Append("<postfield name=\"backurl\" value=\"" + this.GetUrlQueryString() + "\"/>");
    strhtml.Append("<postfield name=\"tonickname\" value=\"$(sname)\"/>");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(suserid)\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\""+this.sid+"\"/>");
    strhtml.Append("</go>�� Ա �� ��</anchor><br/>");
    
    strhtml.Append("------------<br/>");
    strhtml.Append("��ʾ:�ܰ�������ˢ����������ӽ�ȥ�������ȼӺ�¥������[���]λ�õ�����ӻ�ظ���[�������]<br/>");
    strhtml.Append("------------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page="+this.page+"" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(strhtml);
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{
    if (this.INFO == "REMOVEOK")
    {
        strhtml.Append("<div class=\"tip\">��ջ���ɹ���</div>");
    }
    strhtml.Append("<div class=\"subtitle\">�ܰ����б�</div>");
    strhtml.Append("<div class=\"content\">");
    int k = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].managerlvl == "04")
        {
            if (i == 0 || (i > 0 && listVo[i].userid != listVo[i - 1].userid))
            {
                k = k + 1;
                strhtml.Append(k + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/showadmin.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
                strhtml.Append("<u>ǩ��:" + listVo[i].remark + "</u><br/>");
            }
        }

    }
    if (k==0)
    {
        strhtml.Append("<b>�ܰ�����ļ��...</b>");
    }
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("����(ID:" + this.classid + ")�����б�<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    int y = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].managerlvl != "04")
        {
            if (i == 0 || (i > 0 && listVo[i].userid != listVo[i - 1].userid))
            {
                y = y + 1;
                strhtml.Append(y + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/showadmin.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
                strhtml.Append("<u>ǩ��:" + listVo[i].remark + "</u><br/>");
            }
        }

    }
    if (y == 0)
    {
        strhtml.Append("<b>������ļ��...</b><br/>");
    }

    strhtml.Append("ע:�������������Ⱥ�");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">��������</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toNotice.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page="+this.page+"" + "\">[��湫��]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toDefineBBS.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[�б�����]</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;backurlid=1&amp;siteid=" + this.siteid + "&amp;classid=0\">[��������]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/Log_List.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[�����¼]</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"bt2\">");
    
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toNewLine.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[�б���]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toBbsFace.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[��������]</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"bt2\">");

   
    strhtml.Append("<a href=\"" + this.http_start + "bbs/showTopic_admin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[ר�����]</a> <a href=\"" + this.http_start + "bbs/Report_List.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[�ٱ�����]</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"bt2\">");
    
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toBbsAdmin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[��������]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_back.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[�� �� վ]</a>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toBbsType.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[���ͻظ�������]</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/classconfigall.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[������������]</a>");
    strhtml.Append("</div>");
    strhtml.Append("</div>"); 
    
    strhtml.Append("<div class=\"subtitle\">��������</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_search.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[��̳����]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;type=days&amp;key=2&amp;siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[��������]</a><br/>");
    strhtml.Append("</div>");
    
    strhtml.Append("<form name=\"f\" action=\"" + this.http_start + "search/book_list.aspx\" method=\"get\">");    
    strhtml.Append("�ǳƣ�<input type=\"text\" title=\"�ǳ�\" class=\"txt\" name=\"tonickname\" value=\"\" size=\"12\"/><br/>");
    strhtml.Append("�û�ID��<input type=\"text\" format=\"*N\" class=\"txt\" title=\"�û�ID\" name=\"touserid\" value=\"\" size=\"6\"/><br/>");
    
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"search\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + this.siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + this.classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + this.GetUrlQueryString() + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + this.sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" class=\"btn\" value=\"�� Ա �� ��\"/>");
    strhtml.Append("</form></div>");

    strhtml.Append("<div class=\"tip\">");
    strhtml.Append("��ʾ:�ܰ�������ˢ����������ӽ�ȥ�������ȼӺ�¥������[���]λ�õ�����ӻ�ظ���[�������]");
    strhtml.Append("</div>");

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

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">"); 
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page="+this.page+"" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</div></div>");
    Response.Write(strhtml);
    
    //���
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
