<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="myinfo.aspx.cs" Inherits="KeLin.WebSite.clan.myinfo" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("�û�ս��", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
  
    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }


 

    if (bookVo != null )
    {
        
            strhtml.Append("�ǳƣ�" + bookVo[0].nickname + "<br/>");
            strhtml.Append("[<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo[0].userid + "&amp;backurl=" + HttpUtility.UrlEncode(base.GetUrlQueryString()) + "\">�鿴��ϸ����</a>]<br/>");
            strhtml.Append("�������壺<br/>");
        

        for (int i = 0; (bookVo != null && i < bookVo.Count); i++)
        {
            strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo[i].clan_id + "" + "\">" + bookVo[i].clan_name + "</a><br/>");
        }
      
            strhtml.Append("�����峤��");
            if (bookVo[0].ismaster == true)
            {
                strhtml.Append("��<br/>");
            }
            else
            {
                strhtml.Append("��<br/>");
            }
            strhtml.Append("����ʱ�䣺" + bookVo[0].clan_joindate + "<br/>");
            strhtml.Append("ս��������" + bookVo[0].power + "<br/>");
            strhtml.Append("ս�����֣�" + bookVo[0].mark + "<br/>");
            strhtml.Append("����������" + bookVo[0].pk_attack + "<br/>");
            strhtml.Append("�ܹ���������" + bookVo[0].pk_attacked + "<br/>");
        
    }
    if (bookVo == null)
    {
        strhtml.Append("����û�м����κ�һ�����壬��ȥ����ɡ�<br/>");

    }
    
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }

    if (id == "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">���ؼ���</a>-");

    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">���ؼ���</a>-");
    }
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��Ϸ����</a> ");
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
    strhtml.Append("<div class=\"subtitle\">�û�ս��</div>");
    strhtml.Append("<div class=\"content\">");

    if (bookVo != null )
    {
        
            strhtml.Append("�ǳƣ�" + bookVo[0].nickname + "<br/>");
            strhtml.Append("[<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + bookVo[0].userid + "&amp;backurl=" + HttpUtility.UrlEncode(base.GetUrlQueryString()) + "\">�鿴��ϸ����</a>]<br/>");
            strhtml.Append("�������壺<br/>");
        

        for (int i = 0; (bookVo != null && i < bookVo.Count); i++)
        {
            strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo[i].clan_id + "" + "\">" + bookVo[i].clan_name + "</a><br/>");
        }
      
            strhtml.Append("�����峤��");
            if (bookVo[0].ismaster == true)
            {
                strhtml.Append("��<br/>");
            }
            else
            {
                strhtml.Append("��<br/>");
            }
            strhtml.Append("����ʱ�䣺" + bookVo[0].clan_joindate + "<br/>");
            strhtml.Append("ս��������" + bookVo[0].power + "<br/>");
            strhtml.Append("ս�����֣�" + bookVo[0].mark + "<br/>");
            strhtml.Append("����������" + bookVo[0].pk_attack + "<br/>");
            strhtml.Append("�ܹ���������" + bookVo[0].pk_attacked + "<br/>");
        
    }
    if (bookVo == null)
    {
        strhtml.Append("����û�м����κ�һ�����壬��ȥ����ɡ�<br/>");

    }
    strhtml.Append("</div>");
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }

  
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    if (id == "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">���ؼ���</a> ");
   
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">���ؼ���</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��Ϸ����</a> ");

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
