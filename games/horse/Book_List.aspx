<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.Games.horse.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="Ͷע��¼";
Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    strhtml.Append("��ԱID��<input type=\"text\" name=\"touserid" + r + "\" value=\"" + this.touserid + "\" size=\"8\"/><br/>");
    strhtml.Append("������<input type=\"text\" name=\"toid"+r+"\" value=\"" + toid + "\" size=\"8\"/><br/>");
    strhtml.Append("״̬��<select name=\"towin" + r + "\" value=\"" + this.towin + "\">");
    strhtml.Append("<option value=\"\">����</option>");
    strhtml.Append("<option value=\"1\">��ʤ</option>");
    strhtml.Append("<option value=\"0\">ʧ��</option>");
    strhtml.Append("</select><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "games/horse/book_list.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\" />");
    strhtml.Append("<postfield name=\"toid\" value=\"$(toid" + r + ")\" />");
    strhtml.Append("<postfield name=\"towin\" value=\"$(towin" + r + ")\" />");    
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("����|����|Search") + "</anchor> ");
    strhtml.Append("<br/>--------<br/>");
    //��ʾ�б�

   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        index = index + kk;        
        strhtml.Append(index);
        strhtml.Append(".��" + listVo[i].periodID + "��");
        if (listVo[i].userid.ToString() != this.userid)
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].nickname + "(ID" + listVo[i].userid + ")</a>");
        }
        else
        {
            strhtml.Append("��");
        }
        strhtml.Append("ѹ" + listVo[i].typesName + listVo[i].myMoney + siteVo.sitemoneyname + ",");
        if (listVo[i].state == 1)
        {
            strhtml.Append("Ӯ" + listVo[i].getMoney + siteVo.sitemoneyname);
        }
        else if (listVo[i].state == 2)
        {
            strhtml.Append("���");
        }
        else
        {
            strhtml.Append("δ��");
        }
        
        strhtml.Append("<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<a href=\"" + this.http_start + "games/horse/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">����������Ϸ</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��Ϸ����</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" );
    strhtml.Append(title);    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "games/horse/book_list.aspx\" method=\"get\">");
    strhtml.Append("��ԱID��<input type=\"text\" name=\"touserid\" value=\"" + touserid + "\" size=\"8\"/><br/>");
    strhtml.Append("������<input type=\"text\" name=\"toid\" value=\"" + toid + "\" size=\"8\"/><br/>"); 
    strhtml.Append("״̬��<select name=\"towin\">");
    strhtml.Append("<option value=\"" + towin + "\">" + towin + "</option>");
    strhtml.Append("<option value=\"\">����</option>");
    strhtml.Append("<option value=\"1\">1_��ʤ</option>");
    strhtml.Append("<option value=\"0\">0_ʧ��</option>");
    strhtml.Append("</select><br/>");  
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("����|����|Search") + "\"/>");
    strhtml.Append("</form></div>");
    

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
        strhtml.Append(index);
        strhtml.Append(".��"+listVo[i].periodID+"��");
        if (listVo[i].userid.ToString() != this.userid)
        {
            strhtml.Append("<a href=\""+this.http_start+"bbs/userinfo.aspx?siteid="+this.siteid+"&amp;touserid="+listVo[i].userid+"&amp;sid="+this.sid+"\">"+listVo[i].nickname+"(ID"+listVo[i].userid+")</a>");
        }
        else
        {
            strhtml.Append("��");
        }
        strhtml.Append("ѹ" + listVo[i].typesName + listVo[i].myMoney + siteVo.sitemoneyname + ",");
        if (listVo[i].state == 1)
        {
            strhtml.Append("Ӯ"+listVo[i].getMoney+siteVo.sitemoneyname);
        }
        else if (listVo[i].state == 2)
        {
            strhtml.Append("���");
        }
        else
        {
            strhtml.Append("δ��");
        }
        
        strhtml.Append("</div>");
       
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/horse/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">����������Ϸ</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��Ϸ����</a> ");
    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
