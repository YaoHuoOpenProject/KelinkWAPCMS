<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WapLogin.aspx.cs" Inherits="KeLin.WebSite.WapLogin" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
if(this.INFO=="OK"){
   
    wmlVo.timer = "2"; //5����Զ���ת
    wmlVo.strUrl = backurl;
    
}
StringBuilder strhtml = new StringBuilder();
//��ʾͷ
Response.Write(WapTool.showTop(this.GetLang("��¼��վ|��䛾Wվ|LogIn"), wmlVo));//��ʾͷ
if (ver == "1")  //��ʾWAP1.0
{
    strhtml.Append("<p>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>" + this.GetLang("��¼�ɹ���|��¼�ɹ�����|Login Sucess!") + "</b><br/>");
        strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">�Ȳ����ˣ����Ͻ���</a><br/>");
        
    }else if (this.INFO == "IDNULL")
    {
       
        strhtml.Append("<b>" + this.GetLang("*�û�ID/�û���/�ֻ����벻��Ϊ�գ�|*�û�ID/�û���/�ֻ����벻��Ϊ�գ�|username not null!") + "</b><br/>");
    }
    else if (this.INFO == "PASSNULL")
    {
       
        strhtml.Append("<b>" + this.GetLang("*���벻��Ϊ�գ�|*���벻��Ϊ�գ�|password not null!") + "</b><br/>");
    }
    else if (this.INFO == "NOTEXIST")
    {
        
        strhtml.Append("<b>" + this.GetLang("*�û�ID/�û���/�ֻ����벻�棡|*�û�ID/�û���/�ֻ����벻�棡|username not exist ") + "</b><br/>");
    }
    else if (this.INFO == "PASSERR")
    {
        
        strhtml.Append("<b>" + this.GetLang("*�������|*�������|Password error!") + "</b><br/>");
    }
    else if (this.INFO == "USERLOCK")
    {
       
        strhtml.Append("<b>" + this.GetLang("*�û���������|*�û���������|user locked!") + "</b><br/>");
    }
    else if (this.INFO == "MAXLOGIN")
    {

        strhtml.Append("<b>" + this.GetLang("*��¼ʧ�ܴ�������" + this.KL_LoginTime + "���ˣ�����������!") + "</b><br/>");
    }

    if (errorinfo == "config")
    {
        strhtml.Append("<b>������ǽ����¼���棬����ϵվ���ڡ���վĬ�����ơ���[55].�������淽ʽ��ѡ[1]</b><br/>");
  
    }

    if (this.INFO != "OK")
    {

        strhtml.Append(this.GetLang("�û�ID/�û���/�ֻ�����|�û�ID/�û���/�ֻ�����|userid/username/mobile") + "*:<br/>");


        strhtml.Append("<input type=\"text\" name=\"logname\" value=\"" + this.logname + "\"/><br/>");



        strhtml.Append(this.GetLang("����|����|password") + "*:<br/>");


        strhtml.Append("<input type=\"password\" name=\"logpass\" value=\"" + this.logpass + "\"/><br/>");

        strhtml.Append("<select name=\"savesid\" value=\"0\">");
        //if (this.ver == "3" || this.ver == "4")
        //{
        //    strhtml.Append("<option value=\"1\">[2]��ȫ��¼(WLan;��������)</option>");
        //    strhtml.Append("<option value=\"0\">[1]�´��Զ���¼(�ƶ�����)</option>");            
        //}
        //else
        //{
            strhtml.Append("<option value=\"0\">[1]�´��Զ���¼(�ƶ�����)</option>");
            strhtml.Append("<option value=\"1\">[2]��ȫ��¼(WLan;��������)</option>");
        //}
        strhtml.Append("</select><br/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "waplogin.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"login\"/>");
        strhtml.Append("<postfield name=\"logname\" value=\"$(logname)\"/>");
        strhtml.Append("<postfield name=\"logpass\" value=\"$(logpass)\"/>");
        strhtml.Append("<postfield name=\"savesid\" value=\"$(savesid)\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + backurl + "\"/>");
        strhtml.Append("</go>" + this.GetLang("�� ¼|�� ¼|Login") + "</anchor><br/>");


        if (this.showQQLogin == "0")
        {
            strhtml.Append("<a href=\"http://" + http_start2 + "/oauth/qq/qqlogin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\"><img src=\"/oauth/qq/Connect_logo.png\" alt=\"QQ\"/>QQ�ʺŵ�¼</a><br/>");
        }
        strhtml.Append("<a href=\"" + http_start + "wapreg.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">���ע���Ա</a><br/>");
        strhtml.Append("<a href=\"" + http_start + "wapgetpw.aspx?siteid=" + siteid + "" + "\">ȡ����������</a><br/>");

        if (pd == false)
        {
            strhtml.Append("<a href=\"" + http_start + "WapRegSite.aspx?siteid=" + siteid + "" + "\">����������վ</a><br/>");
        }
        strhtml.Append("<a href=\"" + http_start + "wapindex.aspx?siteid=" + siteid + "" + "\">�����ϼ�ҳ��</a><br/>");


        strhtml.Append("˵��:�����һ�ε�¼����վ����ѡ��\"���ע���Ա\"����¼��ʽ[1]�������Ϣ����URL��ַ�е�sid=xxxxx����¼���������ǩ���´δ���ǩ�з��ʿ��Զ���¼����Ҫ������sid�ĵ�ַ�������ˣ����԰��¼��ѡ��ȫ��¼,sid������ʾ��");
        strhtml.Append(WapTool.GetVS(wmlVo));
    }
    strhtml.Append("</p>");
    Response.Write(strhtml);

}else{ //��ʾWAP2.0

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("��¼��վ|��¼��վ|Login") + "</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("��¼�ɹ���|��¼�ɹ�����|Login Sucess!") + "</b></div>");
        strhtml.Append("<div class=\"bt1\"><a href=\"" + this.http_start + (backurl) + "" + "\">�Ȳ����ˣ����Ͻ���!</a></div>");

    }
    if (this.INFO == "IDNULL")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("*�û�ID/�û���/�ֻ����벻��Ϊ�գ�|*�û�ID/�û���/�ֻ����벻��Ϊ�գ�|username not null!") + "</b></div>");
    }
    else if (this.INFO == "PASSNULL")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("*���벻��Ϊ�գ�|*���벻��Ϊ�գ�|password not null!") + "</b></div>");
    }
    else if (this.INFO == "NOTEXIST")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("*�û�ID/�û���/�ֻ����벻�棡|*�û�ID/�û���/�ֻ����벻�棡|username not exist ") + "</b></div>");
    }
    else if (this.INFO == "PASSERR")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("*�������|*�������|Password error!") + "</b></div>");
    }
    else if (this.INFO == "USERLOCK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("*�û���������|*�û���������|user locked!") + "</b></div>");
    }
    else if (this.INFO == "MAXLOGIN")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("*��¼ʧ�ܴ�������" + this.KL_LoginTime + "���ˣ�����������!") + "</b></div>");
    }
    else if (this.INFO == "weixin")
    {
        strhtml.Append("<div class=\"tip\">");
        if (publicID != "")
        {
            strhtml.Append("����΢�żӱ�վ�����ʺ�:"+publicName +" �� "+publicID +" ����ע���Զ�ע���Ϊ��Ա������������΢���Ϸ��ͣ�����+XXXX���鿴ע���ʺ���Ϣ���ͣ��ʺ�");
        }
        else
        {
            strhtml.Append("��վ����Ա��û������΢�Ź��ʺš�");
        }
        strhtml.Append("</div>");
    }

    if (errorinfo == "config")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>������ǽ����¼���棬����ϵվ���ڡ���վĬ�����ơ���[55].�������淽ʽ��ѡ[1]</b></div>");

    }

    string isWebHtml = this.ShowWEB_view(this.classid); //���Ǵ���html��

    if (this.INFO != "OK")
    {
        strhtml.Append("<form name=\"f\" action=\"" + http_start + "waplogin.aspx\" method=\"post\">");

        strhtml.Append("<div class=\"line1\">");
        strhtml.Append(this.GetLang("�û�ID/�û���/�ֻ�����|�û�ID/�û���/�ֻ�����|userid/username/mobile") + "*:<br/>");

        strhtml.Append("<input type=\"text\" name=\"logname\" class=\"txt\" value=\"" + this.logname + "\"/><br/>");
        strhtml.Append("</div>");

        strhtml.Append("<div class=\"line2\">");
        strhtml.Append(this.GetLang("����|����|password") + "*:<br/>");
        strhtml.Append("<input type=\"password\" name=\"logpass\" class=\"txt\" value=\"" + this.logpass + "\"/><br/>");
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"line1\">");
        //strhtml.Append("<select name=\"savesid\">");       
        //strhtml.Append("<option value=\"0\">[1]�´��Զ���¼(�ƶ�����)</option>");
        //strhtml.Append("<option value=\"1\">[2]��ȫ��¼(WLan;��������)</option>");        
        //strhtml.Append("</select><br/>");

        strhtml.Append("<input type=\"checkbox\" name=\"savesid\" checked=\"checked\" value=\"0\" > �´��Զ���¼");
 
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"login\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + backurl + "\"/>");
        strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("�� ¼|�� ¼|Login") + "\"/><br/>");

        strhtml.Append("</div>");
        strhtml.Append("</form>");

       
        
       
        if (this.showQQLogin == "0")
        {
            strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
            strhtml.Append("<a href=\"http://" + http_start2 + "/oauth/qq/qqlogin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\"><img src=\"/oauth/qq/Connect_logo.png\" alt=\"QQ\" width=\"16\" height=\"16\"/> QQ�ʺŵ�¼</a><br/>");
            strhtml.Append("</div></div>");
        }
        if (this.showWXLogin == "0")
        {
            strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
            strhtml.Append("<a href=\"" + http_start + "waplogin.aspx?action=weixin&amp;siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\"><img src=\"/weixin/images/logo.png\" alt=\"WeiXin\" width=\"16\" height=\"16\"/> WX΢�ŵ�¼</a><br/>");
            strhtml.Append("</div></div>");
        }
        strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        strhtml.Append("<a href=\"" + http_start + "wapreg.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">���ע���Ա</a> ");
        strhtml.Append("<a href=\"" + http_start + "wapgetpw.aspx?siteid=" + siteid + "" + "\">ȡ����������</a><br/>");
        strhtml.Append("</div></div>");
        if (pd == false)
        {
            strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
            if(isWebHtml=="") strhtml.Append("<a href=\"" + http_start + "WapRegSite.aspx?siteid=" + siteid + "" + "\">����վ����վ</a><br/>");
            strhtml.Append("</div></div>");
        }
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + http_start + "wapindex.aspx?siteid=" + siteid + "" + "\">�����ϼ�ҳ��</a><br/>");
        strhtml.Append("</div></div>");
       

        //strhtml.Append("<div class=\"tip\">");
        //strhtml.Append("˵��:�����һ�ε�¼����վ����ѡ��\"���ע���Ա\"��ѡ���´ε�¼��������Ϣ����URL��ַ�е�sid=xxxxx����¼���������ǩ���´δ���ǩ�з��ʿ��Զ���¼����Ҫ������sid�ĵ�ַ�������ˣ����԰��¼��ѡ��ȫ��¼,sid������ʾ��");
        //strhtml.Append("</div>");

        
        
        //if (isWebHtml == "") strhtml.Append(WapTool.GetVS(wmlVo));
    }
   

    

    if (isWebHtml != "")
    {       

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }

    Response.Write(strhtml);
}
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); 
%>