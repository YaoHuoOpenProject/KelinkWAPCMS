<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Share.aspx.cs" Inherits="KeLin.WebSite.bbs.Share" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("��������|�����N��|share Notes"), wmlVo));//��ʾͷ 
string title = "��ĺ����Ƽ�����һƪ�����¡�"+bookVo.book_title+"��";
string content = "�Ƽ�����һƪ�����¡�"+bookVo.book_title+"��,��ַ��"+http_start+"bbs/view.aspx?id="+this.id+"";
string content2="�Ƽ�����һƪ�����¡�"+bookVo.book_title+"��,[url="+http_start+"bbs/view.aspx?id="+this.id+"]�������[/url]";
if(ver=="1"){

    Response.Write("<p align=\"" + classVo.position + "\">");
    Response.Write(this.ERROR);
    if (this.INFO == "WAITING")
    {
        Response.Write("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b><br/>");

    }
    if (downloadpath == "")
    {
        Response.Write("����:<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;vpage=" + this.vpage + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + bookVo.book_title + "</a><br/>");
        Response.Write("����:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "\">" + bookVo.book_author + "(ID:" + bookVo.book_pub + ")</a><br/>");
        Response.Write("ʱ��:" + bookVo.book_date + "<br/>");
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
    Response.Write("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("bbs/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id+"&amp;stype="+bookVo.topic+"&amp;lpage="+this.lpage) + "\"/>");
    Response.Write("</go>�Ƽ���վ�ں���</anchor><br/>");
    Response.Write("<anchor><go href=\"" + http_start + "bbs/share.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"goclan\"/>");
    Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<postfield name=\"vpage\" value=\"" + vpage + "\"/>");
    Response.Write("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
    Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("</go>�Ƽ����ҵļ���</anchor><br/>");

    Response.Write("<a href=\"" + this.http_start + "bbs/sharetomail.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurl=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "\">�Ƽ�����������</a><br/>");


    Response.Write("<a href=\"ext:sms/"+content+"\">�Ƽ������ź���(UC)</a><br/>");
    Response.Write("<a href=\"sms:?body="+content+"\">�Ƽ������ź���(�Դ�)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">�����ղ�/������ǩ</a><br/>");
    Response.Write("----------<br/>");
    Response.Write("������<a href=\"http://v.t.sina.com.cn/share/share.php?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">����</a>.<a href=\"http://v.t.qq.com/share/share.php?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">��Ѷ</a>.<a href=\"http://w.sohu.com/t2/share.do?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "&amp;content=utf-8\">�Ѻ�</a>.<a href=\"http://t.163.com/article/user/checkLogin.do?source=&amp;info=" + HttpUtility.UrlEncode(bookVo.book_title) + " " + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "\">����</a><br/>");
    Response.Write("<a href=\"http://share.renren.com/share/buttonshare.do?link=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">������</a>.<a href=\"http://s.jiathis.com/?webid=kaixin001&amp;url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "&amp;uid=1&amp;jtss=1\">������</a><br/>");
    Response.Write("----------<br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=txt&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����TXT����(UTF8��)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=jar&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����JAR����</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=umd&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����UMD����</a><br/>");
    //Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=chm&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����CHM����</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=pdf&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����PDF����</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=epub&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����EPUB(iphone��ʽ)����</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=eml&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����EML(�ʼ���ʽ)����</a><br/>");



    Response.Write("<br/><a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;vpage=" + this.vpage + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("��������|��������|Back to subject") + "</a>");
    Response.Write(" <a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("�����б�|�����б�|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
    
}else{ //2.0����

    Response.Write("<div class=\"title\">" + this.GetLang("��������|�����N��|share Notes") + "</div>");
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
        Response.Write("����:<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;vpage=" + this.vpage + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + bookVo.book_title + "</a><br/>");
        //Response.Write("����:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "\">" + bookVo.book_author + "(ID:" + bookVo.book_pub + ")</a><br/>");
        //Response.Write("ʱ��:" + bookVo.book_date + "<br/>");
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
    Response.Write("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("bbs/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;stype=" + bookVo.topic + "&amp;lpage=" + this.lpage) + "\"/>");
    Response.Write("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"�Ƽ���վ�ں���\"/></form><br/>");
    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/share.aspx\" method=\"get\">");
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"goclan\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"vpage\" value=\"" + vpage + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" class=\"btn\" name=\"g\" value=\"�Ƽ����ҵļ���\"/></form><br/>");

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\""+this.http_start +"bbs/sharetomail.aspx?siteid="+this.siteid +"&amp;classid="+this.classid+"&amp;backurl=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "\">�Ƽ�����������</a><br/>");

    Response.Write("<a href=\"ext:sms/" + content + "\">�Ƽ������ź���(UC)</a><br/>");
    Response.Write("<a href=\"sms:?body=" + content + "\">�Ƽ������ź���(�Դ�)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">�����ղ�/������ǩ</a><br/>");
    Response.Write("</div></div>");

    Response.Write("<div class=\"linkbtn\">");
    Response.Write("������<a href=\"http://v.t.sina.com.cn/share/share.php?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">����</a>.<a  href=\"http://v.t.qq.com/share/share.php?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">��Ѷ</a>.<a  href=\"http://w.sohu.com/t2/share.do?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "&amp;content=utf-8\">�Ѻ�</a>.<a href=\"http://t.163.com/article/user/checkLogin.do?source=&amp;info=" + HttpUtility.UrlEncode(bookVo.book_title) + " " + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "\">����</a><br/><br/>");
    Response.Write("<a  href=\"http://share.renren.com/share/buttonshare.do?link=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">������</a>.<a  href=\"http://s.jiathis.com/?webid=kaixin001&amp;url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "&amp;uid=1&amp;jtss=1\">������</a>");
    Response.Write(" <a  href=\"http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "&amp;pic_url=&amp;burl=" + HttpUtility.UrlEncode(this.http_start) + "&amp;g_ut=2\">QQ�ռ�</a> ");
    Response.Write("</div>");

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=txt&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����TXT����(UTF8��)</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=jar&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����JAR����</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=umd&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����UMD����</a><br/>");
    //Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=chm&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����CHM����</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=pdf&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����PDF����</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=epub&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����EPUB(iphone��ʽ)����</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "bbs/share.aspx?action=eml&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">����EML(�ʼ���ʽ)����</a><br/>");
    Response.Write("</div></div>");

    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;vpage=" + this.vpage + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("��������|��������|Back to subject") + "</a>");
    Response.Write(" <a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("�����б�|�����б�|Back to list") + "</a>");

    Response.Write("</div></div>");
}
    
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); 
 %>