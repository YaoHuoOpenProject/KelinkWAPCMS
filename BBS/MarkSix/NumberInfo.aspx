<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NumberInfo.aspx.cs" Inherits="KeLin.WebSite.bbs.marksix.NumberInfo" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop("���ձ�", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");


    strhtml.Append("<b>��ѯ����</b>");
    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("����Ҫ��ѯ�ĺ��룺<input type=\"text\" name=\"num"+r+"\" size=\"3\" value=\"" + num + "\"/><br/>");
    
    strhtml.Append("<anchor><go href=\"" + http_start + "bbs/MarkSix/numberinfo.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"num\" value=\"$(num" + r + ")\"/>");   
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>��ѯ</anchor>");
    
    
    
    

    strhtml.Append("<br/>----------<br/>");

    if (this.num != "")
    {
        strhtml.Append("<b>�鿴��������</b>");
        

        strhtml.Append("����ѯ�ĺ��� <b>" + num + "</b> �������£� <br/>");
        strhtml.Append("������˫��" + GamesClassManager.Tool.single_double_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("������С��" + GamesClassManager.Tool.big_small_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("������ɫ��" + GamesClassManager.Tool.wave_color_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("������Ф��" + GamesClassManager.Tool.Good_looking_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("������Ұ��" + GamesClassManager.Tool.Poultry_beast_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("�������У�" + GamesClassManager.Tool.five_elements_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("������˫��" + GamesClassManager.Tool.Together_single_double_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("������С��" + GamesClassManager.Tool.Together_big_small_from_number(configVo.config, num) + " <br/>");

        strhtml.Append("<br/>----------<br/>");
    }


    //������ť

    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">�����ϼ�</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

   
    //��ʾ����
    strhtml.Append("<div class=\"subtitle\">��ѯ����</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"from1\" action=\""+this.http_start+"bbs/marksix/numberinfo.aspx\" method=\"get\">");
    strhtml.Append("����Ҫ��ѯ�ĺ��룺<input type=\"text\" name=\"num\" size=\"3\" value=\""+num+"\"/><br/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\"  value=\"" + this.siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\"  value=\"" + this.classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\"  value=\"" + this.sid + "\"/>");
    strhtml.Append("<input type=\"submit\"  value=\" �� ѯ \"/>");
    strhtml.Append("</form>");

    strhtml.Append("</div>");

    if (this.num != "")
    {
        strhtml.Append("<div class=\"subtitle\">�鿴��������</div>");
        strhtml.Append("<div class=\"content\">");

        strhtml.Append("����ѯ�ĺ��� <b>" + num + "</b> �������£� <br/>");
        strhtml.Append("������˫��" + GamesClassManager.Tool.single_double_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("������С��" + GamesClassManager.Tool.big_small_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("������ɫ��" + GamesClassManager.Tool.wave_color_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("������Ф��" + GamesClassManager.Tool.Good_looking_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("������Ұ��" + GamesClassManager.Tool.Poultry_beast_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("�������У�" + GamesClassManager.Tool.five_elements_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("������˫��" + GamesClassManager.Tool.Together_single_double_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("������С��" + GamesClassManager.Tool.Together_big_small_from_number(configVo.config, num) + " <br/>");

        strhtml.Append("</div>");
    }
    
   
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">������ҳ</a>");

    strhtml.Append("</div></div>");
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
