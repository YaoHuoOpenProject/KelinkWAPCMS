<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rule.aspx.cs" Inherits="KeLin.WebSite.clan.rule" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("��Ϸ����", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
  
    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }


    strhtml.Append("��Ϸ����:<br/>");
    strhtml.Append("������������,ʤ��Ϊ��,����Ϊ��!<br/>");
    strhtml.Append("��Ϸ����:<br/>");
    strhtml.Append("1.������Ϸ5��󷽿ɽ��й���!<br/>");
    strhtml.Append("2.ÿһ�ι����������5��!<br/>");
    strhtml.Append("3.������һ�ι���5��󷽿����˳�����!<br/>");
    strhtml.Append("4.�����ڲ���Ա�����Ի��๥��!<br/>");
    strhtml.Append("5.���������ո��˵ȼ�����!<br/>");
    strhtml.Append("6.�������������û��ˢ��ҳ����Զ�����!<br/>");

    
    
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }

    
        strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">���ؼ���</a>-");

   
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
    strhtml.Append("<div class=\"subtitle\">��Ϸ����</div>");
    strhtml.Append("<div class=\"content\">");

    strhtml.Append("��Ϸ����:<br/>");
    strhtml.Append("������������,ʤ��Ϊ��,����Ϊ��!<br/>");
    strhtml.Append("��Ϸ����:<br/>");
    strhtml.Append("1.������Ϸ10��󷽿ɽ��й���!<br/>");
    strhtml.Append("2.ÿһ�ι����������10��!<br/>");
    strhtml.Append("3.������һ�ι���10��󷽿����˳�����!<br/>");
    strhtml.Append("4.�����ڲ���Ա�����Ի��๥��!<br/>");
    strhtml.Append("5.���������ո��˵ȼ�����!<br/>");
    strhtml.Append("6.�������������û��ˢ��ҳ����Զ�����!<br/>");
    
    strhtml.Append("</div>");
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }

  
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    
        strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">���ؼ���</a> ");
   
  
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
