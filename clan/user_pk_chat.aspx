<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_pk_chat.aspx.cs" Inherits="KeLin.WebSite.clan.user_pk_chat" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="������Ϣ";


Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    
    //��ʾ�б�
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("����ɹ���|����ɹ���|Successfully add"));
        strhtml.Append("</b> <br/>");
  
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("���ݲ���Ϊ�գ�|���ݲ��ܠ��գ�|The content can not be empty!"));
        strhtml.Append("</b><br/>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<b>ȡ���Ƿ�ֵ:��$$(��������ֻ�����������±༭��</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        strhtml.Append("<b>�벻Ҫ���ظ����ݣ�</b><br/>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b><br/>");

    }
    //��ʾ�б�
    
    strhtml.Append("<input emptyok=\"true\" name=\"con" + r + "tent\" maxlength=\"300\"/><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "clan/user_pk_chat.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>����</anchor>.");

    strhtml.Append("<a href=\"" + http_start + "clan/user_pk_list.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "&amp;rnd=" + r + "" + "\">��������</a> <br/>");
    
    
    strhtml.Append("---------<br/>");
    strhtml.Append("��:");
    strhtml.Append(chatRob);
    strhtml.Append("<br/>");

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");


       
            if (listVo[i].type == 1)
            {
                strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].douserid + "&amp;id=0" + "\">" + listVo[i].donickname + "</a>" + listVo[i].message);

            }
            else if (listVo[i].type == 2)
            {
                strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=0" + "\">" + listVo[i].nickname + "</a>" + listVo[i].message);
                strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].douserid + "&amp;id=0" + "\">" + listVo[i].donickname + "</a>");
            }
            else if (listVo[i].type == 3)
            {
                strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].douserid + "&amp;id=0" + "\">" + listVo[i].donickname + "</a>" + listVo[i].message);
            }
            else if (listVo[i].type == 5)
            {
                strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=0" + "\">" + listVo[i].nickname + "</a>�Դ��˵:" + listVo[i].message);
            }

            strhtml.Append("(" + string.Format("{0:HH:mm}", listVo[i].time) + ")<br/>");
        

        
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    if (this.id != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">���ؼ���</a>-");
    }
    strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">������ҳ</a>");
   
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{
   
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("����ɹ���|����ɹ���|Successfully add"));
        
        strhtml.Append("</b> ");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("���ݲ���Ϊ�գ�|���ݲ��ܠ��գ�|The content can not be empty!"));
        strhtml.Append("</b><br/>");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>ȡ���Ƿ�ֵ:��$$(��������ֻ�����������±༭��</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "REPEAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>�벻Ҫ���ظ����ݣ�</b>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>���ٹ�" + this.KL_CheckIPTime + "��������</b>");
        strhtml.Append("</div>");

    }
    strhtml.Append("<div class=\"subtitle\">������Ϣ</div>");

    //��ʾ�б�
    strhtml.Append("<div class=\"topre\">");
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "clan/user_pk_chat.aspx\" method=\"post\"><input type=\"text\" name=\"content\" value=\"\"/><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" value=\"����\"/></form> ");
    strhtml.Append("<a href=\"" + http_start + "clan/user_pk_list.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "&amp;rnd=" + r + "" + "\">��������</a> ");
    
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"content\">");
    strhtml.Append("��:");
    strhtml.Append(chatRob);
    strhtml.Append("</div>");

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
        index = index + kk;
        strhtml.Append(index + ".");
        if (listVo[i].type == 1)
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].douserid + "&amp;id=0" + "\">" + listVo[i].donickname + "</a>"+listVo[i].message);

        }
        else if (listVo[i].type == 2)
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=0" + "\">" + listVo[i].nickname + "</a>" + listVo[i].message);
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].douserid + "&amp;id=0" + "\">" + listVo[i].donickname + "</a>");
        }
        else if (listVo[i].type == 3)
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].douserid + "&amp;id=0" + "\">" + listVo[i].donickname + "</a>" + listVo[i].message);
        }
        else if (listVo[i].type == 5)
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=0" + "\">" + listVo[i].nickname + "</a>�Դ��˵:" + listVo[i].message);
        }

        strhtml.Append("(" + string.Format("{0:HH:mm}", listVo[i].time) + ")</div>");
    }
    
    
    
 
    //��ʾ�б�

    
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    if (this.id != "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">���ؼ���</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "clan/main.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">������ҳ</a>");


    strhtml.Append("</div></div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
