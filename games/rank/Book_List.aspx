<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.Games.rank.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title=GamesClassManager.Tool.GetGameCN(id);
if(this.type=="0"){
    title = title+"Ӯ������";
}else{
    title = title+"׬������";
}
Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);


    if (type == "0")
    {
        strhtml.Append("Ӯ������|<a href=\"" + this.http_start + "games/rank/book_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">׬������</a>");
        strhtml.Append("<br/>���а��վ�ʤ��������,����Ӯ20����5��,��ʤ15��<br/>");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/rank/book_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">Ӯ������</a>|׬������");
        strhtml.Append("<br/>���а�����" + GamesClassManager.Tool.GetGameCN(id) + "��Ϸ��׬���������<br/>");
    
    }

    strhtml.Append("--------<br/>");
    //��ʾ�б�

   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        if (type == "0")
        {
            strhtml.Append("<a href=\""+this.http_start+"bbs/userinfo.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;touserid="+listVo[i].userid+"&amp;sid="+this.sid+"\">"+listVo[i].nickName+"</a>(ID"+listVo[i].userid+")��ʤ"+listVo[i].rankTimes+"��");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].nickName + "</a>(ID" + listVo[i].userid + ")��ʤ" + listVo[i].rankMoney + "��"+siteVo.sitemoneyname);
        
        }

        strhtml.Append("<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);

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
        strhtml.Append("Ӯ������|<a href=\"" + this.http_start + "games/rank/book_list.aspx?type=1&amp;nid=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">׬������</a>");
        strhtml.Append("<br/>���а��վ�ʤ��������,����Ӯ20����5��,��ʤ15��");
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "games/rank/book_list.aspx?type=0&amp;nid=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">Ӯ������</a>|׬������");
        strhtml.Append("<br/>���а�����" + GamesClassManager.Tool.GetGameCN(id) + "��Ϸ��׬���������");
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
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].nickName + "</a>(ID" + listVo[i].userid + ")��ʤ" + listVo[i].rankTimes + "��");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].nickName + "</a>(ID" + listVo[i].userid + ")��ʤ" + listVo[i].rankMoney + "��" + siteVo.sitemoneyname);

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
    strhtml.Append("<a href=\"" + this.http_start + "games/" + id + "/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;nid=" + id + "" + "\">����" + GamesClassManager.Tool.GetGameCN(id) + "��Ϸ</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��Ϸ����</a> ");

    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
