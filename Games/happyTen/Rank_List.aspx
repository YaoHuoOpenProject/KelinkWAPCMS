<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rank_List.aspx.cs" Inherits="KeLin.WebSite.Games.happyTen.Rank_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title=GamesClassManager.Tool.GetGameCN(id);
if (this.type == "0")
{
    title = title + "ʤ��";
}
else if (this.type == "1")
{
    title = title + "ӯ��";
}
else if (this.type == "2")
{
    title = title + "����";
}
Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);


    if (type == "0")
    {
        strhtml.Append("ʤ��");
      
    }else{
        
       strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/Rank_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ʤ��</a>");
        
    }


    if (type == "1")
    {
        strhtml.Append(".ӯ��");

    }
    else
    {

        strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/Rank_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ӯ��</a>");

    }
    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        if (type == "2")
        {
            strhtml.Append(".����");

        }
        else
        {
            strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/Rank_list.aspx?type=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>");
        }

        strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/Rank_list_back.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>");
       
        
    }

    strhtml.Append("<br/>--------<br/>");
    //��ʾ�б�

    kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        kk++;
        strhtml.Append("[��" + kk + "��]");
        if (type == "0")
        {
            strhtml.Append("<a href=\""+this.http_start+"bbs/userinfo.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;touserid="+listVo[i].userid+"&amp;backurl="+HttpUtility.UrlEncode(this.GetUrlQueryString())+"&amp;sid="+this.sid+"\">"+listVo[i].nickName+"</a>(ID"+listVo[i].userid+")��ʤ"+listVo[i].rankTimes+"��");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].nickName + "</a>(ID" + listVo[i].userid + ")��ʤ" + listVo[i].rankMoney + "��" + siteVo.sitemoneyname);
        
        }

        strhtml.Append("<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    if (base.IsCheckManagerLvl("|00|01|", ""))
    {

        strhtml.Append("��<a href=\"" + this.http_start + "games/happyTen/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������������</a>|<a href=\"" + this.http_start + "games/happyTen/Admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��տ�����ע��¼</a>��<br/>");
        strhtml.Append("--------<br/>");
    }

    strhtml.Append("<a href=\"" + this.http_start + "games/"+id+"/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id="+id+"" + "\">����"+GamesClassManager.Tool.GetGameCN(id)+"��Ϸ</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��Ϸ����</a> ");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" + title + "</div>");
    strhtml.Append("<div class=\"content\">");
    if (type == "0")
    {
        strhtml.Append("ʤ��");

    }
    else
    {

        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/Rank_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ʤ��</a>");

    }


    if (type == "1")
    {
        strhtml.Append(".ӯ��");

    }
    else
    {

        strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/Rank_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ӯ��</a>");

    }
    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        if (type == "2")
        {
            strhtml.Append(".����");

        }
        else
        {
            strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/Rank_list.aspx?type=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>");
        }
    }
    strhtml.Append(".<a href=\"" + this.http_start + "games/happyTen/Rank_list_back.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>");
       
    strhtml.Append("</div>");

    //��ʾ�б�

    kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        kk++;
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append("[��" + kk + "��]");
        if (type == "0")
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].nickName + "</a>(ID" + listVo[i].userid + ")��ʤ" + listVo[i].rankTimes + "��");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].nickName + "</a>(ID" + listVo[i].userid + ")��ʤ" + listVo[i].rankMoney + "��" + siteVo.sitemoneyname);

        }
        strhtml.Append("</div>");
       
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("��<a href=\"" + this.http_start + "games/happyTen/classconfigall.aspx?backtype=wap&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������������</a>|<a href=\"" + this.http_start + "games/happyTen/Admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��տ�����ע��¼</a>��<br/>");
        strhtml.Append("</div>");
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/" + id + "/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;nid=" + id + "" + "\">����" + GamesClassManager.Tool.GetGameCN(id) + "��Ϸ</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��Ϸ����</a> ");
    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
