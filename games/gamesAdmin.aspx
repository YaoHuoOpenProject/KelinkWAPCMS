<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gamesAdmin.aspx.cs" Inherits="KeLin.WebSite.Games.gamesAdmin" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("��Ϸ����վ����̨", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");

    //��ʾ����
    //strhtml.Append("<div class=\"line2\">");
    strhtml.Append("*.<a href=\"" + this.http_start + "games/chat/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">�������ݹ���</a><br/>");
    strhtml.Append("--------<br/>");
    
    strhtml.Append("*.<a href=\"" + this.http_start + "games/admin_WAPAdvertise.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">������ݹ���</a><br/>");
    strhtml.Append("--------<br/>");
   
    strhtml.Append("01.<a href=\"" + this.http_start + "games/stone/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">���ʯͷ��������</a><br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("02.<a href=\"" + this.http_start + "games/touzi/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">�������Ӳ�������</a><br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("03.<a href=\"" + this.http_start + "games/apple/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">ƻ������������</a><br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("04.<a href=\"" + this.http_start + "games/quankun/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">Ǭ������������</a><br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("05.<a href=\"" + this.http_start + "games/chuiniu/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">���ţ��������</a><br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("06.<a href=\"" + this.http_start + "games/war/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">�Ӷ���Ų�������</a><br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("07.<a href=\"" + this.http_start + "games/lucky28/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">����28��������</a> <br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("08.<a href=\"" + this.http_start + "games/shoot/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">������Ų�������</a> <br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("09.<a href=\"" + this.http_start + "games/horse/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">������������</a><br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("10.<a href=\"" + this.http_start + "games/egg/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">�ҽ𵰲�������</a> <br/>");
    strhtml.Append("11.<a href=\"" + this.http_start + "games/marksix/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">���ʲ�������</a> <br/>");
    strhtml.Append("12.<a href=\"" + this.http_start + "games/happyTen/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">����ʮ�ֲ�������</a> <br/>");
    strhtml.Append("13.<a href=\"" + this.http_start + "games/wabao/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">�ڱ���Ϸ��������</a> <br/>");

    strhtml.Append("--------<br/>");

    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("��Ϸ����") + "&amp;gopath=games/index.aspx\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));    
    
    
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{




    strhtml.Append("<div class=\"subtitle\">��Ϸ����վ����̨</div>");
    
  
    //��ʾ����
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("*.<a href=\"" + this.http_start + "games/chat/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">�������ݹ���</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("*.<a href=\"" + this.http_start + "games/admin_WAPAdvertise.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">������ݹ���</a><br/>");
    strhtml.Append("</div>");
    
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("01.<a href=\"" + this.http_start + "games/stone/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">���ʯͷ��������</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("02.<a href=\"" + this.http_start + "games/touzi/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">�������Ӳ�������</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("03.<a href=\"" + this.http_start + "games/apple/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">ƻ������������</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("04.<a href=\"" + this.http_start + "games/quankun/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">Ǭ������������</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("05.<a href=\"" + this.http_start + "games/chuiniu/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">���ţ��������</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("06.<a href=\"" + this.http_start + "games/war/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">�Ӷ���Ų�������</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("07.<a href=\"" + this.http_start + "games/lucky28/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">����28��������</a> <br/>");
   strhtml.Append("</div>");  
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("08.<a href=\"" + this.http_start + "games/shoot/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">������Ų�������</a> <br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("09.<a href=\"" + this.http_start + "games/horse/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">������������</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("10.<a href=\"" + this.http_start + "games/egg/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">�ҽ𵰲�������</a> <br/>");
    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("11.<a href=\"" + this.http_start + "games/marksix/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">���ʲ�������</a> <br/>");
    strhtml.Append("12.<a href=\"" + this.http_start + "games/happyTen/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">����ʮ�ֲ�������</a> <br/>");
    strhtml.Append("13.<a href=\"" + this.http_start + "games/wabao/ClassConfigAll.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=gamesadmin\">�ڱ���Ϸ��������</a> <br/>");
    strhtml.Append("</div>");
    
    
    //������ť
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("��Ϸ����") + "&amp;gopath=games/index.aspx\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");
   

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
