<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="user_pk_List.aspx.cs" Inherits="KeLin.WebSite.clan.user_pk_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="����PK";


Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    if (this.INFO != "")
    {
        strhtml.Append(this.INFO+"<br/>");
    }
   
    //��ʾ�б�
    strhtml.Append("<b>������Ϣ</b><br/>");

    //��ʾ�б�


    for (int i = 0; (msgVo != null && i < msgVo.Count); i++)
    {

        if (i % 2 == 0)
        {
            //strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            //strhtml.Append("<div class=\"line2\">");
        }
        index = index + kk;
        strhtml.Append(index + ".");
        if (msgVo[i].type == 1)
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + msgVo[i].douserid + "&amp;id=0" + "\">" + msgVo[i].donickname + "</a>" + msgVo[i].message);

        }
        else if (msgVo[i].type == 2)
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + msgVo[i].userid + "&amp;id=0" + "\">" + msgVo[i].nickname + "</a>" + msgVo[i].message);
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + msgVo[i].douserid + "&amp;id=0" + "\">" + msgVo[i].donickname + "</a>");
        }
        else if (msgVo[i].type == 3)
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + msgVo[i].douserid + "&amp;id=0" + "\">" + msgVo[i].donickname + "</a>" + msgVo[i].message);
        }
        else if (msgVo[i].type == 5)
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + msgVo[i].userid + "&amp;id=0" + "\">" + msgVo[i].nickname + "</a>�Դ��˵:" + msgVo[i].message);
        }

        strhtml.Append("(" + string.Format("{0:HH:mm}", msgVo[i].time) + ")<br/>");
    }
    strhtml.Append("<input emptyok=\"true\" name=\"con" + r + "tent\" maxlength=\"300\"/><br/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "clan/user_pk_chat.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>����</anchor>.");

    strhtml.Append("<a href=\"" + http_start + "clan/user_pk_chat.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "&amp;rnd=" + r + "" + "\">����...</a> <br/>");
    
    
    strhtml.Append("---------<br/>");
    strhtml.Append("<b>����PK</b> ��<a href=\"" + this.http_start + "clan/user_pk_List.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;type=" + type + "&amp;getTotal=" + total + "" + "&amp;page=" + (CurrentPage + 1) + "\">��һ��</a>��<br/>");
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");


        strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=0" + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a>[<a href=\"" + this.http_start + "clan/attack.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + listVo[i].userid + "\">����</a>]<br/>");
     

        
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
    if (this.INFO != "")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append(this.INFO + "</div>");
    }
    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">������Ϣ</div>");

    //��ʾ�б�


    for (int i = 0; (msgVo != null && i < msgVo.Count); i++)
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
        if (msgVo[i].type == 1)
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + msgVo[i].douserid + "&amp;id=0" + "\">" + msgVo[i].donickname + "</a>"+msgVo[i].message);

        }
        else if (msgVo[i].type == 2)
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + msgVo[i].userid + "&amp;id=0" + "\">" + msgVo[i].nickname + "</a>" + msgVo[i].message);
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + msgVo[i].douserid + "&amp;id=0" + "\">" + msgVo[i].donickname + "</a>");
        }
        else if (msgVo[i].type == 3)
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + msgVo[i].douserid + "&amp;id=0" + "\">" + msgVo[i].donickname + "</a>" + msgVo[i].message);
        }
        else if (msgVo[i].type == 5)
        {
            strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + msgVo[i].userid + "&amp;id=0" + "\">" + msgVo[i].nickname + "</a>�Դ��˵:" + msgVo[i].message);
        }

        strhtml.Append("(" + string.Format("{0:HH:mm}", msgVo[i].time) + ")</div>");
    }
    strhtml.Append("<div class=\"topre\">");
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "clan/user_pk_chat.aspx\" method=\"post\"><input type=\"text\" name=\"content\" value=\"\"/><br/>");

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" value=\"����\"/></form> ");
    strhtml.Append("<a href=\"" + http_start + "clan/user_pk_chat.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "&amp;rnd=" + r + "" + "\">����...</a> ");
    
    strhtml.Append("</div>");


    strhtml.Append("<div class=\"subtitle\">" + title + " ��<a href=\"" + this.http_start + "clan/user_pk_List.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;type=" + type + "&amp;getTotal=" + total + "" + "&amp;page=" + (CurrentPage + 1) + "\">��һ��</a>��</div>");   

    //��ʾ�б�

    
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

        strhtml.Append("<a href=\"" + http_start + "clan/myinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;id=0" + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a>[<a href=\"" + this.http_start + "clan/attack.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + listVo[i].userid + "\">����</a>]");
       
        
        strhtml.Append("</div>");
    }
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
