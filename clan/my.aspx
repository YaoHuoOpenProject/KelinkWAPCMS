<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="my.aspx.cs" Inherits="KeLin.WebSite.clan.my" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(bookVo.clan_name, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    
    
    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }
    if (bookVo.clan_img != "" && bookVo.clan_img != "http://")
    {
        strhtml.Append("<img src=\"" + bookVo.clan_img + "\" alt=\"LOGO\"/><br/>");

    }
    strhtml.Append("<b>+���幫��</b><br/>");
 
    if (bookVo.clan_notice != "")
    {
        strhtml.Append(bookVo.clan_notice);
    }
    else
    {
        strhtml.Append("���޹��棡");

    }

    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("<b>+������Ϣ</b><br/>");
   
    strhtml.Append("���ƣ�" + bookVo.clan_name + "<br/>");
    strhtml.Append("��Ա��" + bookVo.clan_memberCount + "/" + bookVo.clan_maxMemberCount + "��<br/>");
    strhtml.Append("����<a href=\"" + this.http_start + "clan/user_join_list.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + joining + "</a>��<br/>");

    strhtml.Append("����" + bookVo.clan_money + " [<a href=\"" + this.http_start + "clan/app.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">Ӧ��</a>]<br/>");
    strhtml.Append("���֣�" + bookVo.clan_mark + " <br/>");
    strhtml.Append("�����ˣ�");
    if (toUserVo != null)
    {

        strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo.createid + "&amp;id=" + this.id + "" + "\">" + WapTool.GetColorNickName(toUserVo.idname, toUserVo.nickname, lang, ver) + "</a>(ID:" + bookVo.createid + ")<br/>");
    }
    else
    {
        strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo.createid + "&amp;id=" + this.id + "" + "\">" + bookVo.createid + "</a>(���峤��ȥ������)<br/>");

    }
    strhtml.Append("����ʱ�䣺" + string.Format("{0:yyyy-MM-dd}", bookVo.clan_createdate) + "<br/>");
    strhtml.Append("���ż��룺");
    if (bookVo.clan_join == true)
    {
        strhtml.Append("������");
    }
    else
    {
        strhtml.Append("�ر���");
    }
    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/user_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�����Ա</a>.<a href=\"" + this.http_start + "clan/user_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��Ա����</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/joinclan.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�������</a>.<a href=\"" + this.http_start + "clan/user_out.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�˳�����</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/setclan.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�����趨</a>.<a href=\"" + this.http_start + "clan/user_join_list.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��˼���</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/user_list.aspx?type=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��Ա����</a>.<a href=\"" + this.http_start + "clan/user_del_clan.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�������</a><br/>");
    strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "&amp;id=" + this.id + "" + "\">�ҵ���Ϣ</a>.<a href=\"" + this.http_start + "clan/buypower.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "clan/chat_list.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a>.<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + bookVo.clan_bbs + "\">������̳</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "clan/showadmin.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������Ա</a>.<a href=\"" + this.http_start + "clan/user_pk_list.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a><br/>");

    
    
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }


    strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");
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


 

    

    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
    //��ʾ����
    if (bookVo.clan_img != "" && bookVo.clan_img != "http://")
    {
        strhtml.Append("<div class=\"logo\"><img src=\""+bookVo.clan_img+"\" alt=\"LOGO\"/></div>");

    }
    strhtml.Append("<div class=\"subtitle\">���幫��</div>");
    strhtml.Append("<div class=\"content\">");
    if (bookVo.clan_notice != "")
    {
        strhtml.Append(bookVo.clan_notice);
    }
    else
    {
        strhtml.Append("���޹��棡");

    }
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">������Ϣ</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("���ƣ�" + bookVo.clan_name + "<br/>");
    strhtml.Append("��Ա��"+bookVo.clan_memberCount+"/"+bookVo.clan_maxMemberCount+"��<br/>");
    strhtml.Append("����<a href=\"" + this.http_start + "clan/user_join_list.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + joining + "</a>��<br/>");

    strhtml.Append("����" + bookVo.clan_money + " [<a href=\"" + this.http_start + "clan/app.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">Ӧ��</a>]<br/>");
    strhtml.Append("���֣�" + bookVo.clan_mark + " <br/>");
    strhtml.Append("�����ˣ�");
    if (toUserVo != null)
    {

        strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo.createid + "&amp;id=" + this.id + "" + "\">" + WapTool.GetColorNickName(toUserVo.idname, toUserVo.nickname, lang, ver) + "</a>(ID:"+bookVo.createid+")<br/>");
    }
    else
    {
        strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo.createid + "&amp;id=" + this.id + "" + "\">" + bookVo.createid + "</a>(���峤��ȥ������)<br/>");
    
    }
    strhtml.Append("����ʱ�䣺" + string.Format("{0:yyyy-MM-dd}", bookVo.clan_createdate) + "<br/>");
    strhtml.Append("���ż��룺");
    if (bookVo.clan_join == true)
    {
        strhtml.Append("������");
    }
    else
    {
        strhtml.Append("�ر���");
    }
    strhtml.Append("<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/user_list.aspx?type=0&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�����Ա</a>.<a href=\"" + this.http_start + "clan/user_list.aspx?type=1&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��Ա����</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/joinclan.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�������</a>.<a href=\"" + this.http_start + "clan/user_out.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�˳�����</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/setclan.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�����趨</a>.<a href=\"" + this.http_start + "clan/user_join_list.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��˼���</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/user_list.aspx?type=2&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��Ա����</a>.<a href=\"" + this.http_start + "clan/user_del_clan.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�������</a><br/>");
    strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "&amp;id=" + this.id + "" + "\">�ҵ���Ϣ</a>.<a href=\"" + this.http_start + "clan/buypower.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "clan/chat_list.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a>.<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + bookVo.clan_bbs + "\">������̳</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "clan/showadmin.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������Ա</a>.<a href=\"" + this.http_start + "clan/user_pk_list.aspx?id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a><br/>");

    strhtml.Append("</div>");
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }

  
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");
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
