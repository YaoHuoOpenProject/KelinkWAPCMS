<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="history.aspx.cs" Inherits="KeLin.WebSite.Games.touzi.history" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="��ʷ��ѯ";
Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    strhtml.Append("<b>����ǰ10����ʾ��¼</b><br/>");
    //��ʾ�б�

   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        if (listVo[i].Result != "")
        {
            strhtml.Append("��<a href=\"" + this.http_start + "games/touzi/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;toid=" + listVo[i].touziID + "\">" + listVo[i].touziID + "</a>�ڿ�" + listVo[i].num1.ToString() + listVo[i].num2.ToString() + listVo[i].num3.ToString() + listVo[i].Result);

            strhtml.Append("<br/>");
        }
        
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<a href=\"" + this.http_start + "games/touzi/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">����������Ϸ</a>-");
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
    strhtml.Append("<div class=\"content\">����ǰ10����ʾ��¼</div>");
    

    //��ʾ�б�

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].Result != "")
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



            strhtml.Append("��<a href=\""+this.http_start+"games/touzi/book_list.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;toid="+listVo[i].touziID+"&amp;sid="+this.sid+"\">" + listVo[i].touziID + "</a>�ڿ�" + listVo[i].num1.ToString() + listVo[i].num2.ToString() + listVo[i].num3.ToString() + listVo[i].Result);

            strhtml.Append("</div>");
        }
       
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/touzi/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">����������Ϸ</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��Ϸ����</a> ");
    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
