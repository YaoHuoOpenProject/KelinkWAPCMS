<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="KeLin.WebSite.clan.main" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");

    if (classVo.classid != 0 && classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/><br/>");
    }
    if (classVo.classid != 0 && classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce + "<br/>");
    }
    
    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }


    strhtml.Append("<b>+���ȼ���</b><br/>");
   
    for (int i = 0; (hotClanListVo != null && i < hotClanListVo.Count); i++)
    {

        strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + hotClanListVo[i].id + "" + "\">" + hotClanListVo[i].clan_name + "</a>(" + hotClanListVo[i].clan_memberCount + "/" + hotClanListVo[i].clan_maxMemberCount + "��)<br/>");
        //kk = kk + 1;
    }
    if (hotClanListVo == null)
    {
        strhtml.Append("���޼��壡<br/>");
    }
    strhtml.Append("----------<br/>");
    strhtml.Append("<b>+�ҵļ���</b><br/>");
    
    for (int i = 0; (myListVo != null && i < myListVo.Count); i++)
    {

        strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + myListVo[i].clan_id + "" + "\">" + myListVo[i].clan_name + "</a>(" + myListVo[i].clan_memberCount + "/" + myListVo[i].clan_maxMemberCount + "��)<br/>");
        //kk = kk + 1;
    }
    if (myListVo == null)
    {
        strhtml.Append("�һ�û�м�����壬�����򴴽�һ����<br/>");
    }
    //strhtml.Append("----------<br/>");

    strhtml.Append("<a href=\"" + this.http_start + "clan/addclan.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a>(���" + maxclan + "��)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�������</a>(���" + maxclanadd + "��)<br/>");
 
    strhtml.Append("----------<br/>");
    strhtml.Append("<b>+��������</b><br/>");
  
    strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "" + "\">�ҵ�ս��</a>.<a href=\"" + http_start + "clan/rule.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "" + "\">��Ϸ����</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a>.");


    strhtml.Append("<a href=\"" + this.http_start + "clan/user_pk_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a>");
    strhtml.Append("<br/>");
    strhtml.Append("�³�ԱĬ��ս����:" + power);
    strhtml.Append("<br/>");
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("----------<br/>");
        strhtml.Append("��<a href=\"" + this.http_start + "clan/classconfigALL.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����Ա���Ƽ���</a>��");
        strhtml.Append("<br/>----------<br/>");
    }
    
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");
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




    if (classVo.classid !=0 && classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/><br/>");
    }
    if (classVo.classid != 0 && classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce + "<br/>");
    }

    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
    //��ʾ����
    strhtml.Append("<div class=\"subtitle\">���ȼ���</div>");
    strhtml.Append("<div class=\"content\">");
    for (int i = 0; (hotClanListVo != null && i < hotClanListVo.Count); i++)
    {

        strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + hotClanListVo[i].id + "" + "\">" + hotClanListVo[i].clan_name + "</a>(" + hotClanListVo[i].clan_memberCount + "/" + hotClanListVo[i].clan_maxMemberCount + "��)<br/>");
        //kk = kk + 1;
    }
    if (hotClanListVo == null)
    {
        strhtml.Append("���޼��壡<br/>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">�ҵļ���</div>");
    strhtml.Append("<div class=\"content\">");
    for (int i = 0; (myListVo != null && i < myListVo.Count); i++)
    {

        strhtml.Append("<a href=\"" + http_start + "clan/my.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + myListVo [i].clan_id+ "" + "\">" + myListVo[i].clan_name + "</a>(" + myListVo[i].clan_memberCount + "/" + myListVo[i].clan_maxMemberCount + "��)<br/>");
        //kk = kk + 1;
    }
    if (myListVo == null)
    {
        strhtml.Append("�һ�û�м�����壬�����򴴽�һ����<br/>");
    }
    strhtml.Append("----------<br/>");
   
    strhtml.Append("<a href=\""+this.http_start+"clan/addclan.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid+"\">��������</a>(���"+maxclan+"��)<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�������</a>(���" + maxclanadd + "��)");
   
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">��������</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "" + "\">�ҵ�ս��</a>.<a href=\"" + http_start + "clan/rule.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "" + "\">��Ϸ����</a><br/>");
    strhtml.Append("<a href=\""+this.http_start+"clan/book_list.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid+"\">��������</a>.");


    strhtml.Append("<a href=\"" + this.http_start + "clan/user_pk_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a>");
    strhtml.Append("<br/>�³�ԱĬ��ս����:" + power);
   
    strhtml.Append("</div>");
    
    
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("��<a href=\"" + this.http_start + "clan/classconfigALL.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����Ա���Ƽ���</a>��");
        strhtml.Append("</div>");
    }
    
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");
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
