<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_join_List.aspx.cs" Inherits="KeLin.WebSite.clan.user_join_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="��˼���";


Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    if (this.INFO != "")
    {
        strhtml.Append(this.INFO+"<br/>");
    }
   
    //��ʾ�б�
    strhtml.Append("<a href=\"" + this.http_start + "clan/user_join_list.aspx?action=okall&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">һ����׼����</a><br/>");
    
   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");


        strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].clan_id + "" + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a>[<a href=\"" + this.http_start + "clan/user_join_list.aspx?action=ok&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + listVo[i].userid + "\">��׼</a>.<a href=\"" + this.http_start + "clan/user_join_list.aspx?action=no&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + listVo[i].userid + "\">����</a>]<br/>");
        strhtml.Append("��֤��Ϣ:" + listVo[i].request_message);
        strhtml.Append("<br/>����ʱ��:" + listVo[i].request_time);
        strhtml.Append("<br/>");

        
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">���ؼ���</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">������ҳ</a>");
   
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" + title + "</div>");
    if (this.INFO != "")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append(this.INFO + "</div>");
    }

    //��ʾ�б�
    strhtml.Append("<div class=\"subtitle\"><a href=\"" + this.http_start + "clan/user_join_list.aspx?action=okall&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">һ����׼����</a></div>");
    
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
        strhtml.Append(index + ".");

        strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].clan_id + "" + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a>[<a href=\"" + this.http_start + "clan/user_join_list.aspx?action=ok&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + listVo[i].userid + "\">��׼</a>.<a href=\"" + this.http_start + "clan/user_join_list.aspx?action=no&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + listVo[i].userid + "\">����</a>]<br/>");
        strhtml.Append("��֤��Ϣ:" + listVo[i].request_message);
        strhtml.Append("<br/>����ʱ��:" + listVo[i].request_time);
        
        strhtml.Append("</div>");
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
   
    strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">���ؼ���</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">������ҳ</a>");
   
    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
