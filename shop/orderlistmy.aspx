<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderlistmy.aspx.cs" Inherits="KeLin.WebSite.shop.orderlistmy" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("�鿴�ҵĶ���|�鿴�ҵĶ���|View Reply"), wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "DELOK")
    {
        strhtml.Append("<b>�����ɹ���</b><br/>");
    }
    if (this.userid == "0")
    {
        strhtml.Append("<b>�ף�����ǰ���Ϊ�οͣ��谴�����Ų�ѯ��</b><br/>");
    }
    strhtml.Append("״̬��<select name=\"state" + r + "\" value=\"" + this.state + "\">");
    strhtml.Append("<option value=\"\">����</option>");
    if (order_types == "0")
    {
        strhtml.Append("<option value=\"0\">0_δȷ��δ����</option>");
        strhtml.Append("<option value=\"4\">4_��ȷ��δ����*</option>");
        strhtml.Append("<option value=\"1\">1_��ȷ���ѷ���</option>");
        strhtml.Append("<option value=\"2\">2_�ѷ�����ǩ��</option>");
        strhtml.Append("<option value=\"3\">3_�ѷ���δǩ��</option>");
   
    }
    else
    {
        strhtml.Append("<option value=\"0\">0_�ȴ���Ҹ���</option>");
        strhtml.Append("<option value=\"11\">11_����Ѹ���</option>");
        strhtml.Append("<option value=\"12\">12_�����ѷ���</option>");
        strhtml.Append("<option value=\"13\">13_���׳ɹ�</option>");
        strhtml.Append("<option value=\"14\">14_���׹ر�</option>");
        strhtml.Append("<option value=\"15\">15_�˿���</option>");

    }
    strhtml.Append("</select><br/>");
    strhtml.Append("�����ţ�<input type=\"text\" name=\"orderid" + r + "\" value=\"" + orderid + "\" size=\"5\"/><br/>");
    strhtml.Append("�ؼ��֣�<input type=\"text\" name=\"key" + r + "\" value=\"" + key + "\" size=\"5\"/><br/>");
    strhtml.Append("�����<input type=\"text\" name=\"days" + r + "\" value=\"" + days + "\" size=\"5\"/>��<br/>");

    strhtml.Append("<anchor><go href=\"" + http_start + "shop/orderlistmy.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"id\" value=\"" + id + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"days\" value=\"$(days" + r + ")\" />");
    strhtml.Append("<postfield name=\"orderid\" value=\"$(orderid" + r + ")\" />");
    strhtml.Append("<postfield name=\"state\" value=\"$(state" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("����|����|Search") + "</anchor> ");
    //strhtml.Append("<a href=\""+http_start+"shop/orderlistmy.aspx?id="+id+"&amp;classid="+classid+"&amp;siteid="+siteid+"&amp;lpage="+lpage+"&amp;rnd="+r+"&amp;sid="+sid+"\">ˢ��</a> ");

    strhtml.Append("<br/>--------<br/>");
    if (order_types != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?state=0&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=0\">������([shopstate]0[/shopstate])</a>.<a href=\"" + this.http_start + "shop/orderlistmy.aspx?state=12&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=0\">���ջ�([shopstate]12[/shopstate])</a>.");
    }
    
    strhtml.Append("�ܼ�:��" + totalMoney.ToString("f2") + "<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=1&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">����</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=7&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">һ����</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=30&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">һ����</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=90&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">������</a>");
    strhtml.Append("<br/>--------<br/>");
 
    //��ʾ�б�

    kk = kk + ((CurrentPage - 1) * pageSize) -1 ;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        strhtml.Append("" + (total - kk) + ".������:<b>" + listVo[i].orderID + "</b>");
            if (listVo[i].state == 0 && order_types=="0")
        {
            strhtml.Append("[<a href=\""+this.http_start + "shop/orderlistmy_del.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage="+lpage+"&amp;page=" + this.CurrentPage + "&amp;key="+HttpUtility.UrlEncode(key)+"&amp;state="+state+""+"\">ȡ������</a>]");
        }    
        
        strhtml.Append("<br/>״̬:");
        if (order_types == "0")
        {
            if (listVo[i].state == 4)
            {
                strhtml.Append("��ȷ��δ����");
            }
            else if (listVo[i].state == 3)
            {
                strhtml.Append("�ѷ���δǩ��");
            }
            else if (listVo[i].state == 2)
            {
                strhtml.Append("�ѷ�����ǩ��");
            }
            else if (listVo[i].state == 1)
            {
                strhtml.Append("��ȷ���ѷ���");
            }
            else
            {
                strhtml.Append("δȷ��δ����");
            }
        }
        else
        {

            if (listVo[i].state == 0)
            {
                strhtml.Append("������");
                strhtml.Append("��<a href=\"" + this.http_start + "shop/orderlistmy_del.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">ȡ������</a>��");

            }
            else if (listVo[i].state == 11)
            {
                strhtml.Append("�Ѹ��������");
               
            }
            else if (listVo[i].state == 12)
            {
                strhtml.Append("�ѷ������ջ�");
                strhtml.Append("��<a href=\"" + this.http_start + "shop/orderlistmy_ok.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">ȷ���ջ�</a>��");

            }
            else if (listVo[i].state == 13)
            {
                strhtml.Append("���׳ɹ�");
            }
            else if (listVo[i].state == 14)
            {
                strhtml.Append("���׹ر�");
            }
            else if (listVo[i].state == 15)
            {
                strhtml.Append("�˿���");
                strhtml.Append(",�յ����롾<a href=\"" + this.http_start + "shop/orderlistmy_del.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">ȡ������</a>��");

            }
        }
        strhtml.Append("<br/>�¶�ʱ��:" + string.Format("{0:MM-dd HH:mm}", listVo[i].orderdate));
        strhtml.Append("<br/>��Ʒ�б�:<br/>" + listVo[i].productname + "");
        //strhtml.Append("<br/>����:" + listVo[i].productcount);
        //strhtml.Append("<br/>����:��" + listVo[i].productjiage.ToString("f2"));
        //strhtml.Append("<br/>�˷�:��" + listVo[i].book_charge.ToString("f2"));
        strhtml.Append("�����ܼ�:��" + listVo[i].productmoney.ToString("f2"));
        strhtml.Append("<br/>���ʽ:");
        if (listVo[i].payState == "2")
        {
            strhtml.Append("��������");

        }
        else if (listVo[i].payState == "1")
        {
            strhtml.Append("(<a href=\"" + this.http_start + "chinabank_wap/banklist.aspx?siteid="+this.siteid+"&amp;orderid="+listVo[i].orderID+"&amp;backurl="+HttpUtility.UrlEncode("shop/orderlistmy.aspx?siteid="+this.siteid+"&classid="+this.classid)+"&amp;sid="+this.sid+"\">֧���ɹ�</a>:" + string.Format("{0:MM-dd HH:mm}", listVo[i].payTime) + ")"); 
        }
        else
        {
            if (listVo[i].state == 1)
            {
                //strhtml.Append("(��֧��)");
            }
            else
            {
                strhtml.Append("(<a href=\"" + this.http_start + "shop/book_view_add.aspx?action=OK&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;showid=" + listVo[i].id + "" + "\">��Ҫ֧��</a>)");
            }
        }
        strhtml.Append("<br/>�ͻ�����:" + WapTool.ToWML(listVo[i].book_reply , wmlVo));
        strhtml.Append("<br/><a href=\"" + this.http_start + "shop/orderinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;page=" + this.CurrentPage + "&amp;state=" + this.state + "" + "\">��ϸ��Ϣ/�ͻ�����</a>");
            
        //strhtml.Append("<br/>�ҵ�˵��:" + listVo[i].remark);
        
        //strhtml.Append("<br/>�곤�ظ�:" + listVo[i].book_reply);
        strhtml.Append("<br/>----------<br/>"); 
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    if (CheckManagerLvl("03", classVo.adminusername) == true)
    {

        strhtml.Append("����Ա���ã����������ڡ��ҵĵ��̡�������վ�����̨���������ɾ�����ݡ������̵���Ŀ��������<a href=\"" + this.http_start + "shop/orderlistWAP.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid+"\">��������</a>����WEB��̨���ɾ�������й���");
        strhtml.Append("<br/>");
    }
    if (id != "" && id != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">�����ϼ�</a> ");

    }
    strhtml.Append("<a href=\"" + this.http_start + "shop/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+lpage+"" + "\">�����б�</a> ");

    
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    
    strhtml.Append(ERROR);
    if (this.INFO == "DELOK")
    {
        strhtml.Append("<div class=\"tip\"><b>�����ɹ���</b></div>");
    }
    
    
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("�鿴�ҵĶ���|�鿴�ҵĶ���|View Reply") + "</div>");
    if (this.userid == "0")
    {
        strhtml.Append("<div class=\"tip\"><b>�ף�����ǰ���Ϊ�οͣ��谴�����Ų�ѯ��</b></div>");
    } 
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "shop/orderlistmy.aspx\" method=\"get\">");
   
    strhtml.Append("״̬��<select name=\"state\">");
    strhtml.Append("<option value=\"" + this.state + "\">" + this.state + "</option>");
    strhtml.Append("<option value=\"\">����</option>");
    if (order_types == "0")
    {
        strhtml.Append("<option value=\"0\">0_δȷ��δ����</option>");
        strhtml.Append("<option value=\"4\">4_��ȷ��δ����*</option>");
        strhtml.Append("<option value=\"1\">1_��ȷ���ѷ���</option>");
        strhtml.Append("<option value=\"2\">2_�ѷ�����ǩ��</option>");
        strhtml.Append("<option value=\"3\">3_�ѷ���δǩ��</option>");
       
    }
    else
    {
        strhtml.Append("<option value=\"0\">0_�ȴ���Ҹ���</option>");
        strhtml.Append("<option value=\"11\">11_����Ѹ���</option>");
        strhtml.Append("<option value=\"12\">12_�����ѷ���</option>");
        strhtml.Append("<option value=\"13\">13_���׳ɹ�</option>");
        strhtml.Append("<option value=\"14\">14_���׹ر�</option>");
        strhtml.Append("<option value=\"15\">15_�˿���</option>");
    }
    strhtml.Append("</select><br/>");
    strhtml.Append("�����ţ�<input type=\"text\" name=\"orderid\" value=\"" + orderid + "\" size=\"5\"/><br/>");
    strhtml.Append("�ؼ��֣�<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/><br/>");
    strhtml.Append("�����<input type=\"text\" name=\"days\" value=\"" + days + "\" size=\"5\"/>��<br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("����|����|Search") + "\"/>");

    strhtml.Append("</form></div>");


    strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=1&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">����</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=7&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">һ����</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=30&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">һ����</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=90&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">������</a>");
    strhtml.Append("</div></div>");
  
    
    strhtml.Append("<div class=\"subtitle\">");
    if (order_types != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistmy.aspx?state=0&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=0\">������([shopstate]0[/shopstate])</a>.<a href=\"" + this.http_start + "shop/orderlistmy.aspx?state=12&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=0\">���ջ�([shopstate]12[/shopstate])</a>.");
    }
    
    strhtml.Append("�ܼ�:��" + totalMoney.ToString("f2") + "<br/>");
  strhtml.Append("</div>");

    //��ʾ�б�

    kk = kk + ((CurrentPage - 1) * pageSize) - 1;
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
        strhtml.Append("" + (total - kk) + ".������:<b>"+listVo[i].orderID+"</b>");
        if (listVo[i].state == 0 && order_types == "0")
        {
            strhtml.Append("[<a href=\"" + this.http_start + "shop/orderlistmy_del.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">ȡ������</a>]");
        }

        strhtml.Append("<br/>״̬:<font color=\"red\">");
        if (order_types == "0")
        {
            if (listVo[i].state == 4)
            {
                strhtml.Append("��ȷ��δ����");
            }
            else if (listVo[i].state == 3)
            {
                strhtml.Append("�ѷ���δǩ��");
            }
            else if (listVo[i].state == 2)
            {
                strhtml.Append("�ѷ�����ǩ��");
            }
            else if (listVo[i].state == 1)
            {
                strhtml.Append("��ȷ���ѷ���");
            }
            else
            {
                strhtml.Append("δȷ��δ����");
            }
        }
        else
        {

            if (listVo[i].state == 0)
            {
                strhtml.Append("������");
                strhtml.Append("��<a href=\"" + this.http_start + "shop/orderlistmy_del.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">ȡ������</a>��");
       
            }
            else if (listVo[i].state == 11)
            {
                strhtml.Append("�Ѹ��������");
                
            }
            else if (listVo[i].state == 12)
            {
                strhtml.Append("�ѷ������ջ�");
                strhtml.Append("��<a href=\"" + this.http_start + "shop/orderlistmy_ok.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">ȷ���ջ�</a>��");
       
            }
            else if (listVo[i].state == 13)
            {
                strhtml.Append("���׳ɹ�");
            }
            else if (listVo[i].state == 14)
            {
                strhtml.Append("���׹ر�");
            }
            else if (listVo[i].state == 15)
            {
                strhtml.Append("�˿���");
                strhtml.Append(",�յ����롾<a href=\"" + this.http_start + "shop/orderlistmy_del.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">ȡ������</a>��");
       
            }


        }
        strhtml.Append("</font><br/>�¶�ʱ��:" + string.Format("{0:MM-dd HH:mm}", listVo[i].orderdate));
        strhtml.Append("<br/>��Ʒ�б�:<br/>" + listVo[i].productname + "");
       // strhtml.Append("<br/>����:" + listVo[i].productcount );
        //strhtml.Append("<br/>����:��" + listVo[i].productjiage.ToString("f2") );
        //strhtml.Append("<br/>�˷�:��" + listVo[i].book_charge.ToString("f2") );
        strhtml.Append("�����ܼ�:��" + listVo[i].productmoney.ToString("f2"));
        strhtml.Append("<br/>���ʽ:");
        if (listVo[i].payState == "2")
        {
            strhtml.Append("��������");

        }
        else if (listVo[i].payState == "1")
        {
            strhtml.Append("����֧��(<a href=\"" + this.http_start + "chinabank_wap/banklist.aspx?siteid=" + this.siteid + "&amp;orderid=" + listVo[i].orderID + "&amp;backurl=" + HttpUtility.UrlEncode("shop/orderlistmy.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">֧���ɹ�</a>:" + string.Format("{0:MM-dd HH:mm}", listVo[i].payTime) + ")");
        }
        else
        {
            if (listVo[i].state == 1)
            {
                //strhtml.Append("(��֧��)");
            }
            else
            {
                strhtml.Append("����֧��(<a href=\"" + this.http_start + "shop/book_view_add.aspx?action=OK&amp;siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid  + "&amp;showid=" + listVo[i].id  + "" + "\">��Ҫ֧��</a>)");
            }
        }
        strhtml.Append("<br/>�ͻ�����:" + WapTool.ToWML(listVo[i].book_reply, wmlVo));
        strhtml.Append("<br/><a href=\"" + this.http_start + "shop/orderinfo.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;page=" + this.CurrentPage + "&amp;state=" + this.state + "" + "\">��ϸ��Ϣ/�ͻ�����</a>");
           
        //strhtml.Append("<br/>˵��:" + listVo[i].remark );
        
        //strhtml.Append("<br/>�곤�ظ�:" + listVo[i].book_reply);
        strhtml.Append("</div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    if (CheckManagerLvl("03",classVo.adminusername)==true)
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("����Ա���ã����������ڡ��ҵĵ��̡�������վ�����̨���������ɾ�����ݡ������̵���Ŀ��������<a href=\"" + this.http_start + "shop/orderlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��������</a>����WEB��̨���ɾ�������й�������״̬ģʽ���Ե���<a href=\"" + this.http_start + "admin/sitesetdefault.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��վĬ������</a>����40�������û�������ģʽ���Ա�ģʽ������״̬ͳ��UBB:��shopstate��X��/shopstate�ݣ�XΪ״ֵ̬������ջ�(��shopstate��12��/shopstate��)");
        strhtml.Append("</div>");
    }
    //��ʾ���԰�
    string isWebHtml = this.ShowWEB_view(this.classid); //���Ǵ���html����    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }

    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    if (id != "" && id != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">�����ϼ�</a> ");
    }
        strhtml.Append("<a href=\"" + this.http_start + "shop/book_list.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">�����б�</a> ");


        strhtml.Append("</div></div>");
    strhtml.Append(WapTool.GetVS(wmlVo));

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
