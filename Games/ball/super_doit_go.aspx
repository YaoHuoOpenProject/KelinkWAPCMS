<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="super_doit_go.aspx.cs" Inherits="KeLin.WebSite.Games.ball.super_doit_go" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="������������";
if (this.INFO == "OK")
{
    wmlVo.timer = "1";
    wmlVo.strUrl = "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype ;

}

Response.Write(WapTool.showTop(title, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(this.ERROR);
     if (this.INFO == "OK")
    {
        strhtml.Append("��ע�ɹ���<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "\">����</a><br/>");

    }

    
    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "" + "\">�����ϼ�</a> ");
   
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append(title);
    strhtml.Append("</div>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("��ע�ɹ���<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "\">����</a><br/>");
        strhtml.Append("</div>");
    }
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/super_index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;page=" + this.page + "&amp;ptype=" + this.ptype + "" + "\">�����ϼ�</a> ");
    strhtml.Append("</div>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
