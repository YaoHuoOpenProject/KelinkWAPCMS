<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showadmin.aspx.cs" Inherits="KeLin.WebSite.chat.showadmin" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname + "����Ա", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");


    if (this.INFO == "LOCKOK")
    {
        strhtml.Append("<b>���Գɹ���</b><br/>");

    }
    else if (this.INFO == "NORIGHT")
    {

        strhtml.Append("<b>�˻�ԱID����Ȩ���������ԱID����</b><br/>");
    }
    else if (this.INFO == "UNLOCKOK")
    {

        strhtml.Append("<b>������Գɹ���</b><br/>");
    }
    else if (this.INFO == "DELOK")
    {

        strhtml.Append("<b>��ճɹ���</b><br/>");
    }
    strhtml.Append("��������(ID:" + this.classid + ")����Ա�б�<br/>");

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
     strhtml.Append((i+1)+".<a href=\""+this.http_start+"bbs/userinfo.aspx?siteid="+this.siteid+"&amp;touserid="+listVo[i].userid+"&amp;sid="+this.sid+"\">"+listVo[i].nickname+"</a><br/>");
     strhtml.Append("<u>ǩ��:"+listVo[i].remark+"</u><br/>");   

    }
    if (listVo == null)
    {
        strhtml.Append("<b>�Ĺ���ļ��...</b><br/>");
    }

    strhtml.Append("ע:���������Ⱥ�<br/>");
   
    

    strhtml.Append("------------<br/>");
    strhtml.Append("��ԱID��<input type=\"text\" format=\"*N\" title=\"�û�ID\" name=\"touserid\" value=\"\" size=\"6\"/><br/>");
    strhtml.Append("<anchor><go href=\""+this.http_start+"chat/showadmin.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"lock\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+this.siteid+"\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+this.classid+"\"/>");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid)\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\""+this.sid+"\"/>");
    strhtml.Append("</go>1.����</anchor><br/>");
   
    strhtml.Append("<anchor><go href=\"" + this.http_start + "chat/showadmin.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"unlock\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + this.siteid + "\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + this.classid + "\"/>");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid)\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + this.sid + "\"/>");
    strhtml.Append("</go>2.���</anchor><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "chat/showadmin.aspx?action=godel&amp;siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid+"\">3.������������¼</a><br/>");
    strhtml.Append("------------<br/>");
    
    
    
    strhtml.Append("<a href=\"" + this.http_start + "chat/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(strhtml);
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{
    if (this.INFO == "LOCKOK")
    {
        strhtml.Append("<div class=\"tip\"><b>���Գɹ���</b></div>");

    }
    else if (this.INFO == "NORIGHT")
    {

        strhtml.Append("<div class=\"tip\"><b>�˻�ԱID����Ȩ���������ԱID����</b></div>");
    }
    else if (this.INFO == "UNLOCKOK")
    {

        strhtml.Append("<div class=\"tip\"><b>������Գɹ���</b></div>");
    }
    else if (this.INFO == "DELOK")
    {

        strhtml.Append("<div class=\"tip\"><b>��ճɹ���</b></div>");
    }
    
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("��������(ID:" + this.classid + ")����Ա�б�<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        strhtml.Append((i + 1) + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].nickname + "</a><br/>");
        strhtml.Append("<u>ǩ��:" + listVo[i].remark + "</u><br/>");

    }
    if (listVo == null)
    {
        strhtml.Append("<b>�Ĺ���ļ��...</b><br/>");
    }

    strhtml.Append("ע:���������Ⱥ�");
    strhtml.Append("<br/><br/>");



    strhtml.Append("<form name=\"f\" action=\"" + this.http_start + "chat/showadmin.aspx\" method=\"get\">"); 
    strhtml.Append("��ԱID��<input type=\"text\" format=\"*N\" class=\"txt\" title=\"�û�ID\" name=\"touserid\" value=\"\" size=\"6\"/><br/>");    
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"lock\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + this.siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + this.classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + this.sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" class=\"btn\" value=\"1.����\"/>");
    strhtml.Append("</form><br/>");
    strhtml.Append("<form name=\"f\" action=\"" + this.http_start + "chat/showadmin.aspx\" method=\"get\">");
    strhtml.Append("��ԱID��<input type=\"text\" format=\"*N\" class=\"txt\" title=\"�û�ID\" name=\"touserid\" value=\"\" size=\"6\"/><br/>");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"unlock\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + this.siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + this.classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + this.sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" class=\"btn\" value=\"2.�������\"/>");
    strhtml.Append("</form><br/>");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurlid=2\">3.�鿴��������</a><br/>");
    strhtml.Append("</div></div>");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "chat/showadmin.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">4.������������¼</a><br/>");
    strhtml.Append("</div></div>");
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">"); 
    strhtml.Append("<a href=\"" + this.http_start + "chat/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page="+this.page+"" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");
    Response.Write(strhtml);
    
    //���
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
