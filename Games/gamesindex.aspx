<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gamesindex.aspx.cs" Inherits="KeLin.WebSite.Games.gamesindex" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/><br/>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce + "<br/>");
    }
    
    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }
   
    //��ʾ���ݿ�ʼ
    strhtml.Append("<img src=\"wabao/wabao.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ڱ�����</a>.<a href=\"" + this.http_start + "games/wabao/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ����</a><br/>");
    strhtml.Append("������ע����:" + this.GetTodayState("waBao", "1") + "�� <br/>");
    strhtml.Append("������ע����:" + this.GetTodayState("waBao", "2") + siteVo.sitemoneyname + "<br/>");

    strhtml.Append("--------<br/>");
    strhtml.Append("<img src=\"happyten/10.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����ʮ��</a>.<a href=\"" + this.http_start + "games/happyTen/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ����</a><br/>");
    strhtml.Append("������ע����:" + this.GetTodayState("happyTen", "1") + "�� <br/>");
    strhtml.Append("������ע����:" + this.GetTodayState("happyTen", "2") + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<img src=\"marksix/zhong.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/marksix/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">������Ϸ</a>.<a href=\"" + this.http_start + "games/marksix/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ����</a><br/>");
    strhtml.Append("������ע����:" + this.GetTodayState("MarkSix", "1") + "�� <br/>");
    strhtml.Append("������ע����:" + this.GetTodayState("MarkSix", "2") + siteVo.sitemoneyname + "<br/>");
    //strhtml.Append("--------<br/>");
    //strhtml.Append("<img src=\"ball/ball.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʾ���</a>.<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��Ҫ��ע</a><br/>");
   // strhtml.Append("������ע����:" + this.GetTodayState("ballLottery", "1") + "�� <br/>");
   // strhtml.Append("������ע����:" + this.GetTodayState("ballLottery", "2") + siteVo.sitemoneyname + "<br/>");

    
    strhtml.Append("--------<br/>");
    strhtml.Append("<img src=\"stone/st.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/stone/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ʯͷ������</a>.<a href=\"" + this.http_start + "games/stone/add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�����а�</a><br/>");
    strhtml.Append("���շ������:" + this.GetTodayState("stone", "1") + "�� <br/>");
    strhtml.Append("����ʯͷ����:" + this.GetTodayState("stone", "2") + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<img src=\"touzi/sz.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/touzi/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a>.<a href=\"" + this.http_start + "games/touzi/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "\">���������</a><br/>");
    strhtml.Append("���������ܴ���:" + this.GetTodayState("touzi", "1") + "�� <br/>");
    strhtml.Append("���������ܽ��:" + this.GetTodayState("touzi", "2") + siteVo.sitemoneyname + " <br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<img src=\"apple/apple.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/apple/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ƻ����</a>.<a href=\"" + this.http_start + "games/apple/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�淨</a> <br/>");
    strhtml.Append("����Ͷע�ܴ���:" + this.GetTodayState("apple", "1") + "�� <br/>");
    strhtml.Append("����Ͷע�ܽ��:" + this.GetTodayState("apple", "2") + siteVo.sitemoneyname + "  <br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<img src=\"quankun/qkb.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/quankun/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">Ǭ����</a>.<a href=\"" + this.http_start + "games/quankun/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a><br/>");
    strhtml.Append("����ѹע�ܴ���:" + this.GetTodayState("quankun", "1") + " �� <br/>");
    strhtml.Append("����ѹע�ܽ��:" + this.GetTodayState("quankun", "2") + siteVo.sitemoneyname + "  <br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<img src=\"chuiniu/dh.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/chuiniu/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">���ţ</a>.<a href=\"" + this.http_start + "games/chuiniu/add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�źݻ�</a> <br/>");
    strhtml.Append("���մ���������:" + this.GetTodayState("chuiniu", "1") + " �� <br/>");
    strhtml.Append("���մ����󻰽��:" + this.GetTodayState("chuiniu", "2") + siteVo.sitemoneyname + "  <br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<img src=\"lucky28/luck28.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/lucky28/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����28��</a> <br/>");
    strhtml.Append("��������˭�����˴�Ӯ�ң� <br/>");
    strhtml.Append("����Ͷע�ܴ���:" + this.GetTodayState("lucky28", "1") + " �� <br/>");
    strhtml.Append("����Ͷע�ܽ��:" + this.GetTodayState("lucky28", "2") + siteVo.sitemoneyname + " <br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<img src=\"shoot/ball.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/shoot/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�������</a> <br/>");
    strhtml.Append("�����̼��ķ�����ţ���������������Ȥ��׬�Ҷ�࣡ <br/>");
    strhtml.Append("���շ�������ܴ���:" + this.GetTodayState("shoot", "1") + " �� <br/>");
    strhtml.Append("���շ�������ܽ��:" + this.GetTodayState("shoot", "2") + siteVo.sitemoneyname + "  <br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<img src=\"horse/2.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/horse/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a><br/>");
    strhtml.Append("���̼���ˬ��׬�Ҷ�࣡ <br/>");
    strhtml.Append("����Ͷע�ܴ���:" + this.GetTodayState("horse", "1") + " �� <br/>");
    strhtml.Append("����Ͷע�ܽ��:" + this.GetTodayState("horse", "2") + siteVo.sitemoneyname + " <br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<img src=\"egg/egg.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/egg/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ҽ�</a> <br/>");
    strhtml.Append("�����ʣ������¸��ĺ�;����<br/>");
    strhtml.Append("��������ܴ���:" + this.GetTodayState("egg", "1") + " �� <br/>");
    strhtml.Append("�����ҽ��ܽ��:" + this.GetTodayState("egg", "2") + siteVo.sitemoneyname + " <br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<img src=\"/netImages/nc.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "nongchang/index.asp?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid + "\">����ũ��</a> <br/>");
    strhtml.Append("���Լ�ũ���￪�����ء���ֲ�����߲˺�ˮ������ȥ͵�˰ɡ�<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("<img src=\"/netImages/jz.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "clan/main.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a> <br/>");
    strhtml.Append("��ͬ����֮�����ԣ������Լ��ļ�����������<br/>");
    
    //strhtml.Append("</div>");
    
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
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



    

    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<div class=\"logo\"><img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/></div>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce);
    }

    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
    //��ʾ����
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("<img src=\"chuiniu/dh.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/chuiniu/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">���ţ</a>.<a href=\"" + this.http_start + "games/chuiniu/add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�źݻ�</a> <br/>");
    strhtml.Append("���մ���������:" + this.GetTodayState("chuiniu", "1")  + " �� <br/>");
    strhtml.Append("���մ����󻰽��:" + this.GetTodayState("chuiniu", "2") + siteVo.sitemoneyname + "  <br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("<img src=\"wabao/wabao.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ڱ�����</a>.<a href=\"" + this.http_start + "games/wabao/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��ʷ����</a><br/>");
    strhtml.Append("������ע����:" + this.GetTodayState("waBao", "1") + "�� <br/>");
    strhtml.Append("������ע����:" + this.GetTodayState("waBao", "2") + siteVo.sitemoneyname + "<br/>");
    strhtml.Append("</div>");
    
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("<img src=\"stone/st.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/stone/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ʯͷ������</a>.<a href=\"" + this.http_start + "games/stone/add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�����а�</a><br/>");
    strhtml.Append("���շ������:" + this.GetTodayState ("stone","1")+ "�� <br/>");
    strhtml.Append("����ʯͷ����:" + this.GetTodayState("stone", "2") +siteVo.sitemoneyname +"<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("<img src=\"touzi/sz.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/touzi/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a>.<a href=\"" + this.http_start + "games/touzi/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + this.userid + "\">���������</a><br/>");
    strhtml.Append("���������ܴ���:" + this.GetTodayState("touzi", "1") + "�� <br/>");
    strhtml.Append("���������ܽ��:" + this.GetTodayState("touzi", "2") + siteVo.sitemoneyname + " <br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("<img src=\"apple/apple.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/apple/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">ƻ����</a>.<a href=\"" + this.http_start + "games/apple/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�淨</a> <br/>");
    strhtml.Append("����Ͷע�ܴ���:" + this.GetTodayState("apple", "1") + "�� <br/>");
    strhtml.Append("����Ͷע�ܽ��:" + this.GetTodayState("apple", "2") + siteVo.sitemoneyname + "  <br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("<img src=\"quankun/qkb.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/quankun/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">Ǭ����</a>.<a href=\"" + this.http_start + "games/quankun/info.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a><br/>");
    strhtml.Append("����ѹע�ܴ���:" + this.GetTodayState("quankun", "1") + " �� <br/>");
    strhtml.Append("����ѹע�ܽ��:" + this.GetTodayState("quankun", "2") + siteVo.sitemoneyname + "  <br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("<img src=\"lucky28/luck28.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/lucky28/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����28��</a> <br/>");
    strhtml.Append("��������˭�����˴�Ӯ�ң� <br/>");
    strhtml.Append("����Ͷע�ܴ���:" + this.GetTodayState("lucky28", "1") +  " �� <br/>");
    strhtml.Append("����Ͷע�ܽ��:" + this.GetTodayState("lucky28", "2") + siteVo.sitemoneyname + " <br/>");
    strhtml.Append("</div>");  
    strhtml.Append("<div class=\"line2\">");
    strhtml.Append("<img src=\"shoot/ball.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/shoot/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�������</a> <br/>");
    strhtml.Append("�����̼��ķ�����ţ���������������Ȥ��׬�Ҷ�࣡ <br/>");
    strhtml.Append("���շ�������ܴ���:" + this.GetTodayState("shoot", "1")  + " �� <br/>");
    strhtml.Append("���շ�������ܽ��:" + this.GetTodayState("shoot", "2") + siteVo.sitemoneyname + "  <br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("<img src=\"horse/2.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/horse/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a><br/>");
    strhtml.Append("���̼���ˬ��׬�Ҷ�࣡ <br/>");
    strhtml.Append("����Ͷע�ܴ���:" + this.GetTodayState("horse", "1") + " �� <br/>");
    strhtml.Append("����Ͷע�ܽ��:" + this.GetTodayState("horse", "2") + siteVo.sitemoneyname + " <br/>");
    strhtml.Append("</div>");
    //strhtml.Append("<div class=\"line2\">");
    //strhtml.Append("<img src=\"egg/egg.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "games/egg/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�ҽ�</a> <br/>");
    //strhtml.Append("�����ʣ������¸��ĺ�;����<br/>");
    //strhtml.Append("��������ܴ���:" + this.GetTodayState("egg", "1") + " �� <br/>");
    //strhtml.Append("�����ҽ��ܽ��:" + this.GetTodayState("egg", "2") + siteVo.sitemoneyname + " <br/>");
    //strhtml.Append("</div>");
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("<img src=\"/netImages/jz.gif\" alt=\"PIC\"/><a href=\"" + this.http_start + "clan/main.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a> <br/>");
    strhtml.Append("��ͬ����֮�����ԣ������Լ��ļ�����������");
    strhtml.Append("</div>");
    
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
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

    if (base.IsCheckManagerLvl("|00|01|", ""))
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("��ʾ:��WEB/WAP��ҳ���ۺ��Ű桿���������Ŀ��ȥ��������������ס���¼��UBB���ݣ��������桿Ҳ���ԡ���ר�ŵ���ϷUBB���á�");
        strhtml.Append("</div>");
    }
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>