<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Share.aspx.cs" Inherits="KeLin.WebSite.yuehui.Share" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("����Լ��|����Լ��|share Notes"), wmlVo));//��ʾͷ 
string title = "��ĺ����Ƽ�����һ����Լ�ᡶ"+bookVo.yh_title+"��";
string content = "�Ƽ�����һ����Լ�ᡶ"+bookVo.yh_title+"��,��ַ��"+http_start+"yuehui/book_view.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;id="+this.id+"";
string content2="�Ƽ�����һ����Լ�ᡶ"+bookVo.yh_title+"��,[url="+http_start+"yuehui/book_view.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;id="+this.id+"]�������[/url]";
if(ver=="1"){

    Response.Write("<p align=\"" + classVo.position + "\">");
    Response.Write(this.ERROR);
    if (this.INFO == "WAITING")
    {
        Response.Write("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b><br/>");

    }
    if (downloadpath == "")
    {
        Response.Write("����:<a href=\"" + this.http_start + "yuehui/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + bookVo.yh_title + "</a><br/>");
        //Response.Write("����:<a href=\"" + this.http_start + "yuehui/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "\">" + bookVo.book_author + "(ID:" + bookVo.book_pub + ")</a><br/>");
        Response.Write("ʱ��:" + bookVo.yh_date + "<br/>");
        Response.Write("----------<br/>");
    }
    else
    {
        Response.Write("���ɳɹ����������:<br/><a href=\"" + downloadpath + "\">" + this.filename + "</a><br/>");
        Response.Write("----------<br/>");
    }
    
    Response.Write("<anchor><go href=\""+http_start+"bbs/messagelist_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"go\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"content\" value=\""+content2+"\"/>");
    Response.Write("<postfield name=\"title\" value=\""+title+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
	Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("yuehui/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id+"&amp;lpage="+this.lpage) + "\"/>");
    Response.Write("</go>�Ƽ���վ�ں���</anchor><br/>");

    Response.Write("<a href=\"ext:sms/"+content+"\">�Ƽ������ź���(UC)</a><br/>");
    Response.Write("<a href=\"sms:?body="+content+"\">�Ƽ������ź���(�Դ�)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "yuehui/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">�����ղ�/������ǩ</a><br/>");
    Response.Write("----------<br/>");
    
  
    
    Response.Write("<br/><a href=\"" + this.http_start + "yuehui/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("��������|��������|Back to subject") + "</a>");
    Response.Write(" <a href=\"" + this.http_start + "yuehui/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("�����б�|�����б�|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
    
}else{ //2.0����

    Response.Write("<div class=\"title\">" + this.GetLang("����Լ��|����Լ��|share Notes") + "</div>");
    Response.Write(this.ERROR);
    if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b><br/>");
        Response.Write("</div>");
    }
    if (downloadpath == "")
    {
        Response.Write("<div class=\"subtitle\">");
        Response.Write("<a href=\"" + this.http_start + "yuehui/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + bookVo.yh_title + "</a><br/>");
        //Response.Write("����:<a href=\"" + this.http_start + "yuehui/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "\">" + bookVo.book_author + "(ID:" + bookVo.book_pub + ")</a><br/>");
        //Response.Write("ʱ��:" + bookVo.yh_date + "<br/>");
        Response.Write("</div>");
    }
    else
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("���ɳɹ����������:<br/><a href=\"" + downloadpath + "\">" + this.filename + "</a><br/>");
        Response.Write("</div>");
    }
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/messagelist_add.aspx\" method=\"post\">");
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"go\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"content\" value=\"" + content2 + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"title\" value=\"" + title + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("yuehui/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + this.lpage) + "\"/>");
    Response.Write("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"�Ƽ���վ�ں���\"/><br/>");
    Response.Write("<div class=\"bt1\">");
    Response.Write("<a href=\"ext:sms/" + content + "\">�Ƽ������ź���(UC)</a><br/>");
    Response.Write("<a href=\"sms:?body=" + content + "\">�Ƽ������ź���(�Դ�)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "yuehui/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">�����ղ�/������ǩ</a><br/>");

    Response.Write("</div>");

    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "yuehui/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("��������|��������|Back to subject") + "</a>");
    Response.Write(" <a href=\"" + this.http_start + "yuehui/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("�����б�|�����б�|Back to list") + "</a>");
    Response.Write("</div>");
    Response.Write("</div>");
}
    
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); 
 %>