<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orderlistWAP.aspx.cs" Inherits="KeLin.WebSite.shop.orderlistWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
wmlVo.timer ="1800";
wmlVo.strUrl = "shop/orderlistWAP.aspx?state="+this.state +"&amp;action=class&amp;siteid="+this.siteid +"&amp;classid="+this.classid+"&amp;r="+this.r  ;
Response.Write(WapTool.showTop(this.GetLang("��������|��������|View Reply"), wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "DELOK")
    {
        strhtml.Append("<b>�����ɹ���</b><br/>");
    }
    strhtml.Append("״̬��<select name=\"state" + r + "\" value=\"" + this.state + "\">");
    strhtml.Append("<option value=\"\">����</option>");
    if(order_types=="0"){
    strhtml.Append("<option value=\"0\">0_δȷ��δ����</option>");
    strhtml.Append("<option value=\"4\">4_��ȷ��δ����*</option>");
    strhtml.Append("<option value=\"1\">1_��ȷ���ѷ���</option>");
    strhtml.Append("<option value=\"2\">2_�ѷ�����ǩ��</option>");
    strhtml.Append("<option value=\"3\">3_�ѷ���δǩ��</option>");
    strhtml.Append("<option value=\"-1\">-1_�ѱ��ͻ�ȡ��</option>");
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
    strhtml.Append("�����ţ�<input type=\"text\" name=\"orderid" + r + "\" value=\"" + id + "\" size=\"5\"/><br/>");
    strhtml.Append("�ؼ��֣�<input type=\"text\" name=\"key" + r + "\" value=\"" + key + "\" size=\"5\"/><br/>");
    strhtml.Append("�����<input type=\"text\" name=\"days" + r + "\" value=\"" + days + "\" size=\"5\"/>��<br/>");

    strhtml.Append("<anchor><go href=\"" + http_start + "shop/orderlistWAP.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"orderid\" value=\"$(orderid" + r + ")\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"days\" value=\"$(days" + r + ")\" />");
    strhtml.Append("<postfield name=\"state\" value=\"$(state" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("����|����|Search") + "</anchor> ");
    //strhtml.Append("<a href=\""+http_start+"shop/orderlistWAP.aspx?id="+id+"&amp;classid="+classid+"&amp;siteid="+siteid+"&amp;lpage="+lpage+"&amp;rnd="+r+"&amp;sid="+sid+"\">ˢ��</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistWAP_del.aspx?action=goall&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;lpage=" + lpage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">���һ����ǰ����</a><br/>");
    strhtml.Append("<br/>--------<br/>");
    strhtml.Append("�����ܼ�:��" + totalMoney.ToString("f2") + "<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistwap.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=1&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">����</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistwap.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=7&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">һ����</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistwap.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=30&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">һ����</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistwap.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=90&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">������</a>");
    strhtml.Append("<br/>--------<br/>");
 
    //��ʾ�б�

    kk = kk + ((CurrentPage - 1) * pageSize) -1 ;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        strhtml.Append("" + (total - kk) + ".");
            if (listVo[i].state == 0 && "|00|01|".IndexOf(userVo.managerlvl) > 0)
        {
            strhtml.Append("[<a href=\""+this.http_start + "shop/orderlistWAP_del.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage="+lpage+"&amp;page=" + this.CurrentPage + "&amp;key="+HttpUtility.UrlEncode(key)+"&amp;state="+state+""+"\">ɾ��</a>]");
        }
            strhtml.Append("[<a href=\"" + this.http_start + "shop/orderlistWAPMod.aspx?action=godel&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">������</a>]<br/>");
            strhtml.Append("<b>��ĿID:</b>" + listVo[i].book_classid + "<br/>");
            if (listVo[i].ischeck  == 1)
            {
                strhtml.Append("��<b>�ѱ��ͻ�ɾ��</b>��<br/>");
            }
            strhtml.Append("<b>�������:</b>" + listVo[i].orderID + "<br/>");
           
            strhtml.Append("<b>״̬:</b>");
        if(order_types=="0"){
            if (listVo[i].state == 4)
            {
                strhtml.Append("��ȷ��δ����");
            }else if (listVo[i].state == 3)
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
                
            }
            else if (listVo[i].state == 11)
            {
                strhtml.Append("�Ѹ��������");

            }
            else if (listVo[i].state == 12)
            {
                strhtml.Append("�ѷ������ջ�");
                
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
                
            }
        }
            strhtml.Append("<br/>");
            strhtml.Append("<b>�¶�ʱ�䣺</b>" + listVo[i].orderdate + "<br/>");
            strhtml.Append("<b>�¶���Ա��</b><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].nickname + "(" + listVo[i].userid + ")</a><br/>");
            strhtml.Append("<b>��Ʒ�б�</b><br/>" + listVo[i].productname + "");
            //strhtml.Append("<b>��Ʒ�ͺţ�</b>" + listVo[i].productxinghao + "<br/>");
            //strhtml.Append("<b>��Ʒ������</b>" + listVo[i].productcount + "<br/>");
            strhtml.Append("<b>��Ʒ���ۣ�</b>��" + listVo[i].productjiage.ToString("f2") + "<br/>");
            strhtml.Append("<b>��Ʒ�˷ѣ�</b>��" + listVo[i].book_charge.ToString("f2") + "<br/>");
            strhtml.Append("<b>�����ܼۣ�</b>��" + listVo[i].productmoney.ToString("f2") + "");
            strhtml.Append("<br/><b>���ʽ:</b>");
            if (listVo[i].payState == "2")
            {
                strhtml.Append("��������<br/>");

            }
            else  if (listVo[i].payState == "1")
            {
                strhtml.Append("<b>����֧����</b><a href=\"" + this.http_start + "chinabank_wap/banklist.aspx?siteid=" + this.siteid + "&amp;orderid=" + listVo[i].orderID + "&amp;backurl=" + HttpUtility.UrlEncode("shop/orderlistmy.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">��֧��</a><br/>");
                strhtml.Append("<b>֧��ʱ�䣺</b>" + listVo[i].payTime + "<br/>");
            }
            else
            {
                if (listVo[i].state == 1)
                {
                    //strhtml.Append("(��֧��)");
                }
                else
                {
                    strhtml.Append("(δ����֧��)<br/>");
                }
            }


            //strhtml.Append("--------<br/>");
            strhtml.Append("<b>������</b>" + listVo[i].nickname + "<br/>");
            strhtml.Append("<b>��ϵ�绰��</b>" + listVo[i].mobile + "<br/>");
            strhtml.Append("<b>�ռ���ַ��</b>" + WapTool.ToWML(listVo[i].remark, wmlVo) + "<br/>");

            strhtml.Append("<b>�ͻ����٣�</b>" + WapTool.ToWML(listVo[i].book_reply, wmlVo) + "<br/>");
           strhtml.Append("(<a href=\"" + this.http_start + "shop/orderlistWAPMod.aspx?action=godel&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">���ļ۸�/�ͻ�����</a>)");
                
            strhtml.Append("<br/>----------<br/>"); 
            kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">�����б�</a> ");

    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a> ");

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
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("��������|��������|View Reply") + "</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "shop/orderlistWAP.aspx\" method=\"get\">");
   
    strhtml.Append("״̬��<select name=\"state\">");
    strhtml.Append("<option value=\"" + this.state + "\">" + this.state + "</option>");
    strhtml.Append("<option value=\"\">����</option>");
    if(order_types =="0"){
    strhtml.Append("<option value=\"0\">0_δȷ��δ����</option>");
    strhtml.Append("<option value=\"4\">4_��ȷ��δ����*</option>");
    strhtml.Append("<option value=\"1\">1_��ȷ���ѷ���</option>");
    strhtml.Append("<option value=\"2\">2_�ѷ�����ǩ��</option>");
    strhtml.Append("<option value=\"3\">3_�ѷ���δǩ��</option>");
    strhtml.Append("<option value=\"-1\">-1_�ѱ��ͻ�ȡ��</option>");
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
    strhtml.Append("�����ţ�<input type=\"text\" name=\"orderid\" value=\"" + id + "\" size=\"5\"/><br/>");
    strhtml.Append("�ؼ��֣�<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/><br/>");
    strhtml.Append("�����<input type=\"text\" name=\"days\" value=\"" + days + "\" size=\"5\"/>��<br/>");
    strhtml.Append("���Ի�ԱID��<input type=\"text\" name=\"fromuserid\" value=\"" + fromuserid + "\" size=\"5\"/><br/>");
    strhtml.Append("��������ID��<input type=\"text\" name=\"fromlinkiD\" value=\"" + fromlinkid + "\" size=\"5\"/><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("����|����|Search") + "\"/>");
    strhtml.Append("</form><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistWAP_del.aspx?action=goall&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;lpage=" + lpage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">���һ����ǰ����</a><br/>");
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"subtitle\">");
    if (order_types != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistWAP.aspx?state=0&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=0\">����Ҹ���(" + this.state0 + ")</a>.<a href=\"" + this.http_start + "shop/orderlistWAP.aspx?state=11&amp;action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=0\">������(" + this.state11 + ")</a>.");
    }
    strhtml.Append("�ܼ�:��" + totalMoney.ToString("f2") + "<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistwap.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=1&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">����</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistwap.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=7&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">һ����</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistwap.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=30&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">һ����</a>|");
    strhtml.Append("<a href=\"" + this.http_start + "shop/orderlistwap.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;days=90&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">������</a>");
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
        strhtml.Append("" + (total - kk) + ".");
        if (listVo[i].state == 0 && "|00|01|".IndexOf(userVo.managerlvl) > 0)
        {
            strhtml.Append("[<a href=\"" + this.http_start + "shop/orderlistWAP_del.aspx?action=go&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">ɾ��</a>]");
        }
        strhtml.Append("[<a href=\"" + this.http_start + "shop/orderlistWAPMod.aspx?action=godel&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">������</a>]<br/>");
        strhtml.Append("<b>��ĿID:</b>" + listVo[i].book_classid + "<br/>");
        
        if (listVo[i].ischeck  == 1)
        {
            strhtml.Append("��<b>�ѱ��ͻ�ɾ��</b>��<br/>");
        }
        strhtml.Append("<b>�������:</b>" + listVo[i].orderID + "<br/>");
        
        strhtml.Append("<b>״̬:</b><font color=\"red\">");
        if(order_types=="0"){
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

            }
            else if (listVo[i].state == 11)
            {
                strhtml.Append("�Ѹ��������");

            }
            else if (listVo[i].state == 12)
            {
                strhtml.Append("�ѷ������ջ�");

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

            }
        }
        strhtml.Append("</font><br/>");
        strhtml.Append("<b>�¶�ʱ�䣺</b>" + listVo[i].orderdate + "<br/>");
        strhtml.Append("<b>�¶���Ա��</b><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + listVo[i].nickname + "(" + listVo[i].userid + ")</a><br/>");
        strhtml.Append("<b>��Ʒ�б�</b><br/>" + listVo[i].productname + "");
        //strhtml.Append("<b>��Ʒ�ͺţ�</b>" + listVo[i].productxinghao + "<br/>");
        //strhtml.Append("<b>��Ʒ������</b>" + listVo[i].productcount + "<br/>");
        //strhtml.Append("<b>��Ʒ���ۣ�</b>��" + listVo[i].productjiage.ToString("f2") + "<br/>");
        strhtml.Append("<b>��Ʒ�˷ѣ�</b>��" + listVo[i].book_charge.ToString("f2") + "<br/>");
        strhtml.Append("<b>�����ܼۣ�</b>��" + listVo[i].productmoney.ToString("f2") + "");
        strhtml.Append("<br/><b>���ʽ:</b>");
        if (listVo[i].payState == "2")
        {
            strhtml.Append("��������<br/>");

        }
        else if (listVo[i].payState == "1")
        {
            strhtml.Append("<b>����֧����</b><a href=\"" + this.http_start + "chinabank_wap/banklist.aspx?siteid=" + this.siteid + "&amp;orderid=" + listVo[i].orderID + "&amp;backurl=" + HttpUtility.UrlEncode("shop/orderlistmy.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">��֧��</a><br/>");
            strhtml.Append("<b>֧��ʱ�䣺</b>" + listVo[i].payTime + "<br/>");
        }
        else
        {
            if (listVo[i].state == 1)
            {
                //strhtml.Append("(��֧��)");
            }
            else
            {
                strhtml.Append("(δ����֧��)<br/>");
            }
        }

        strhtml.Append("--------<br/>");
        strhtml.Append("<b>������</b>" + listVo[i].nickname + "<br/>");
        strhtml.Append("<b>��ϵ�绰��</b>" + listVo[i].mobile + "<br/>");
        strhtml.Append("<b>�ռ���ַ��</b>" + WapTool.ToWML(listVo[i].remark, wmlVo) + "<br/>");

        strhtml.Append("<b>�ͻ����٣�</b>" + WapTool.ToWML(listVo[i].book_reply, wmlVo) + "<br/>");
        strhtml.Append("(<a href=\"" + this.http_start + "shop/orderlistWAPMod.aspx?action=godel&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + lpage + "&amp;page=" + this.CurrentPage + "&amp;key=" + HttpUtility.UrlEncode(key) + "&amp;state=" + state + "" + "\">���ļ۸�/�ͻ�����</a>)");
        strhtml.Append("<br/>[��Ա�Ƽ�ID:" + listVo[i].fromUserID+ "/�����Ƽ�ID:" + listVo[i].fromLinkID + "]");   
        strhtml.Append("</div>"); 
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"tip\">��ҳÿ��30����ˢ��һ�Σ����鵽WEB��̨�Ķ�������������������</div>");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");

    strhtml.Append("<a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">�����б�</a> ");
    
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a> ");

     
    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
