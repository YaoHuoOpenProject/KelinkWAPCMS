<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Search.aspx.cs" Inherits="KeLin.WebSite.search.Book_Search" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("��Ա����|��Ա����|Search"), wmlVo));//��ʾͷ 
StringBuilder strhtml=new StringBuilder ();
if(ver=="1"){


strhtml.Append("<p>");
strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[����Դ��ҳ]</a><br/>");
strhtml.Append("<br />");
strhtml.Append("���:<select name=\"sessiontimeout\" value=\"\">");
strhtml.Append("<option value=\"\">���л�Ա</option>");
strhtml.Append("<option value=\"0\">��ͨ��Ա</option>");

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].subclassName.IndexOf("http")>=0)
        {
            listVo[i].subclassName = "(ͼƬ)";
        }
       strhtml.Append("<option value=\""+listVo[i].id+"\">"+listVo[i].subclassName+"</option>");
    }

strhtml.Append("</select><br/>");
strhtml.Append("����:<select name=\"order\" value=\"\">");
strhtml.Append("<option value=\"\">����ע��</option>");
strhtml.Append("<option value=\"0\">����ֵ</option>");
strhtml.Append("<option value=\"1\">����ֵ</option>");
strhtml.Append("</select><br/>");
strhtml.Append("״̬:<select name=\"isonline\" value=\"\">");
strhtml.Append("<option value=\"\">Ĭ��</option>");
strhtml.Append("<option value=\"1\">����</option>");
strhtml.Append("<option value=\"0\">����</option>");
strhtml.Append("</select><br/>");
strhtml.Append("�Ա�:<select name=\"sex\" value=\"\">");
strhtml.Append("<option value=\"\">Ĭ��</option>");
strhtml.Append("<option value=\"0\">Ů</option>");
strhtml.Append("<option value=\"1\">��</option>");
strhtml.Append("</select><br />");
strhtml.Append("����:<input type=\"text\" name=\"city\" value=\"\" size=\"8\"/><br/>");
strhtml.Append("�ǳ�:<input type=\"text\" name=\"tonickname\" value=\"\" size=\"8\"/><br/>");
strhtml.Append("��ԱID:<input type=\"text\" name=\"touserid\" value=\"\" size=\"8\"/><br/>");

strhtml.Append("<anchor><go href=\""+this.http_start +"search/book_list.aspx\" method=\"get\" accept-charset=\"utf-8\">");
strhtml.Append("<postfield name=\"action\" value=\"search\"/>");
strhtml.Append("<postfield name=\"siteid\" value=\""+this.siteid +"\"/>");
strhtml.Append("<postfield name=\"classid\" value=\""+this.classid +"\"/>");
strhtml.Append("<postfield name=\"sessiontimeout\" value=\"$(sessiontimeout)\"/>");
strhtml.Append("<postfield name=\"order\" value=\"$(order)\"/>");
strhtml.Append("<postfield name=\"isonline\" value=\"$(isonline)\"/>");
strhtml.Append("<postfield name=\"sex\" value=\"$(sex)\"/>");
strhtml.Append("<postfield name=\"city\" value=\"$(city)\"/>");
strhtml.Append("<postfield name=\"tonickname\" value=\"$(tonickname)\"/>");
strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid)\"/>");
strhtml.Append("<postfield name=\"backurl\" value=\""+backurl +"\"/>");
strhtml.Append("<postfield name=\"sid\" value=\""+this.sid +"\"/>");
strhtml.Append("</go>��������</anchor><br/>");

strhtml.Append("--------<br/>");
strhtml.Append("<a href=\""+this.http_start +"wapindex.aspx?siteid="+this.siteid +"&amp;classid="+classVo.childid+"&amp;sid="+this.sid  +"\">�����ϼ�</a> ");
strhtml.Append("<a href=\""+this.http_start +"wapindex.aspx?siteid="+this.siteid +"&amp;sid="+this.sid  +"\">������ҳ</a>");
strhtml.Append(WapTool.GetVS(wmlVo));
strhtml.Append("</p>");
Response.Write(strhtml);

}else{ //2.0����

strhtml.Append("<div class=\"subtitle\">"+ this.GetLang("��Ա����|��Ա����|Search")+"</div>");
strhtml.Append("<div class=\"content\">");
//strhtml.Append("<a href=\"" + this.http_start + (backurl) + "" + "\">[����Դ��ҳ]</a><br/>");
//strhtml.Append("<br />");
strhtml.Append("<form id=\"form1\" action=\""+this.http_start +"search/book_list.aspx\" method=\"get\">");
strhtml.Append("״̬��<select name=\"isonline\">");
strhtml.Append("<option value=\"\">Ĭ��</option>");
strhtml.Append("<option value=\"1\">����</option>");
strhtml.Append("<option value=\"0\">����</option>");
strhtml.Append("</select><br/>");
strhtml.Append("�Ա�<select name=\"sex\">");
strhtml.Append("<option value=\"\">Ĭ��</option>");
strhtml.Append("<option value=\"0\">Ů</option>");
strhtml.Append("<option value=\"1\">��</option>");
strhtml.Append("</select>");
//strhtml.Append("<br />����<select name=\"order\">");
strhtml.Append("<select name=\"order\" style=\"display:none;\">");
strhtml.Append("<option value=\"1\">����ֵ</option>");
strhtml.Append("<option value=\"2\">����ֵ</option>");
strhtml.Append("<option value=\"3\">����ע��</option>");
strhtml.Append("</select><br/>");
strhtml.Append("���У�<input type=\"text\" style=\"width:50%;max-width:200px;\" name=\"city\" value=\"\" size=\"8\"/><br/>");
strhtml.Append("�ǳƣ�<input type=\"text\" style=\"width:50%;max-width:200px;\" name=\"tonickname\" value=\"\" size=\"8\"/><br/>");
strhtml.Append("ID�ţ�<input type=\"text\" style=\"width:50%;max-width:200px;\" name=\"touserid\" value=\"\" size=\"8\"/><br/>");
//strhtml.Append("��ݣ�<select name=\"sessiontimeout\">");
//strhtml.Append("<option value=\"\">���л�Ա</option>");
//strhtml.Append("<option value=\"0\">��ͨ��Ա</option>");

    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].subclassName.IndexOf("http") >= 0)
        {
            listVo[i].subclassName = "(ͼƬ)";
        }
   //strhtml.Append("<option value=\""+listVo[i].id+"\">"+listVo[i].subclassName+"</option>");
    }

//strhtml.Append("</select><br/>");

strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\""+this.siteid +"\"/>");
strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\""+this.classid +"\"/>");
strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\""+this.backurl +"\"/>");
strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\""+this.sid +"\"/>");
strhtml.Append("<input type=\"submit\" name=\"g\" value=\"��������\" class=\"btn\"/>");
strhtml.Append("</form>");
strhtml.Append("</div>");
string isWebHtml = this.ShowWEB_view(this.classid); //���Ǵ���html��
strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");

strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "" + "\">������ҳ</a>");

strhtml.Append("</div></div>");

if (isWebHtml != "")
{
    string strhtml_list = strhtml.ToString();
    //int s = strhtml_list.IndexOf("<div class=\"title\">");
    //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

    Response.Clear();
    Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml_list));
    Response.End();
}
Response.Write(strhtml);
    
}
    
                                                                                                                                                                           
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); 
 %>