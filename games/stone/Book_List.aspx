<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.Games.stone.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="";
if(this.type=="1"){
    title = "Ӧս��¼";
}else{
    title = "��ս��¼";
}
Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    strhtml.Append("�ҵ�");
    if (type == "0")
    {
        strhtml.Append("��ս��¼|<a href=\"" + this.http_start + "games/stone/book_list.aspx?type=1&amp;touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">Ӧս��¼</a>");

    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/stone/book_list.aspx?type=0&amp;touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ս��¼</a>|Ӧս��¼");

    }

    strhtml.Append("<br/>--------<br/>");
    //��ʾ�б�

   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        if (type == "0")
        {
            strhtml.Append("ID:<a href=\"" + this.http_start + "games/stone/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=" + this.type + "&amp;id=" + listVo[i].id + "\">" + listVo[i].id + "</a>,");
            if (listVo[i].state == 0)
            {
                strhtml.Append("������");
            }
            else if (listVo[i].state == 2)
            {
                strhtml.Append("��<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].winUserid + "\">" + listVo[i].winNickname + "</a>Ӧս,��ʤ,��׬��" + listVo[i].myMoney + "(��˰)��" + siteVo.sitemoneyname + "");
            }
            else if (listVo[i].state == 1)
            {
                strhtml.Append("��<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].winUserid + "\">" + listVo[i].winNickname + "</a>Ӧս,ʧ��,����" + listVo[i].myMoney + "��" + siteVo.sitemoneyname + "");

            }
            else if (listVo[i].state == 3)
            {
                strhtml.Append("ƽ��!");
            }

        }
        else
        {


            strhtml.Append("��Ӧս<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].nickName + "</a>��ID:<a href=\"" + this.http_start + "games/stone/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=" + this.type + "&amp;id=" + listVo[i].id + "\">" + listVo[i].id + "</a>����ս,");
            if (listVo[i].state == 2)
            {
                strhtml.Append("ʧ��,������" + listVo[i].myMoney + "��" + siteVo.sitemoneyname + "");
            }
            else if (listVo[i].state == 1)
            {
                strhtml.Append("��ʤ,��׬��" + listVo[i].myMoney + "(��˰)��" + siteVo.sitemoneyname + "");

            }
            else if (listVo[i].state == 3)
            {
                strhtml.Append("ƽ��!");
            }


        }
        strhtml.Append("<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<a href=\"" + this.http_start + "games/stone/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">����ʯͷ��Ϸ</a>-");
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
    strhtml.Append("�ҵ�");
    if (type == "0")
    {
        strhtml.Append("��ս��¼|<a href=\"" + this.http_start + "games/stone/book_list.aspx?type=1&amp;touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">Ӧս��¼</a>");

    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/stone/book_list.aspx?type=0&amp;touserid=" + this.userid + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ս��¼</a>|Ӧս��¼");

    }
    
    
    strhtml.Append("</div>");
    
    

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
        if (type == "0")
        {
            strhtml.Append("ID:<a href=\"" + this.http_start + "games/stone/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=" + this.type + "&amp;touserid="+this.touserid+"&amp;id=" + listVo[i].id + "\">" + listVo[i].id + "</a>,");
            if (listVo[i].state == 0)
            {
                strhtml.Append("������");
            }
            else if (listVo[i].state == 2)
            {
                strhtml.Append("��<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].winUserid + "\">" + listVo[i].winNickname + "</a>Ӧս,��ʤ,��׬��" + listVo[i].myMoney + "(��˰)��" + siteVo.sitemoneyname + "");
            }
            else if (listVo[i].state == 1)
            {
                strhtml.Append("��<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].winUserid + "\">" + listVo[i].winNickname + "</a>Ӧս,ʧ��,����" + listVo[i].myMoney + "��" + siteVo.sitemoneyname + "");

            }
            else if (listVo[i].state == 3)
            {
                strhtml.Append("��<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].winUserid + "\">" + listVo[i].winNickname + "</a>Ӧս,ƽ��!");
            }

        }
        else
        {


            strhtml.Append("��Ӧս<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].nickName + "</a>��ID:<a href=\"" + this.http_start + "games/stone/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=" + this.type + "&amp;touserid=" + this.touserid + "&amp;id=" + listVo[i].id + "\">" + listVo[i].id + "</a>����ս,");
            if (listVo[i].state == 2)
            {
                strhtml.Append("ʧ��,������" + listVo[i].myMoney + "��" + siteVo.sitemoneyname + "");
            }
            else if (listVo[i].state == 1)
            {
                strhtml.Append("��ʤ,��׬��" + listVo[i].myMoney + "(��˰)��" + siteVo.sitemoneyname + "");

            }
            else if (listVo[i].state == 3)
            {
                strhtml.Append("ƽ��!");
            }
            else if (listVo[i].state == 0)
            {
                strhtml.Append("������!");
            }


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
    strhtml.Append("<a href=\"" + this.http_start + "games/stone/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">����ʯͷ��Ϸ</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��Ϸ����</a> ");
    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
