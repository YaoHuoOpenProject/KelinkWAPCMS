<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showadmin.aspx.cs" Inherits="KeLin.WebSite.clan.showadmin" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("�������Ա", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");

    strhtml.Append("<b>�峤</b><br/>");
    int k = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].userid ==bookVo.createid)
        {

            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("clan/my.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
                strhtml.Append("<u>ǩ��:" + listVo[i].remark + "</u><br/>");
           
        }

    }
   
    
    strhtml.Append("<b>�������Ա</b><br/>");

    int y = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].userid != bookVo.createid)
        {
            
                y = y + 1;
                strhtml.Append(y + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("clan/my.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
                strhtml.Append("<u>ǩ��:" + listVo[i].remark + "</u><br/>");
            
        }

    }
    if (y ==0)
    {
        strhtml.Append("<b>����Ա��ļ��...</b><br/>");
    }

    strhtml.Append("------------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id="+this.id+"" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //���
    Response.Write(strhtml);
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    strhtml.Append("<div class=\"subtitle\">�����峤</div>");
    strhtml.Append("<div class=\"content\">");
    int k = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].userid==bookVo.createid)
        {

            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("clan/my.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
                strhtml.Append("<u>ǩ��:" + listVo[i].remark + "</u><br/>");
            
        }

    }

    strhtml.Append("</div>");
    
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("�������Ա");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    int y = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].userid !=bookVo.createid)
        {
       
                y = y + 1;
                strhtml.Append(y + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("clan/my.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
                strhtml.Append("<u>ǩ��:" + listVo[i].remark + "</u><br/>");
            
        }

    }
    if (y == 0)
    {
        strhtml.Append("<b>����Ա��ļ��...</b><br/>");
    }


    strhtml.Append("</div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "clan/my.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;id="+this.id+"" + "\">�����ϼ�</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    strhtml.Append("</div></div>");
    Response.Write(strhtml);
    
    //���
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
