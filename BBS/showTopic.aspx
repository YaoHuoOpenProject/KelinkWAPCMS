<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showTopic.aspx.cs" Inherits="KeLin.WebSite.bbs.showTopic" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname + "ר��", wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p align=\"" + classVo.position + "\">");

   
    //��ʾ�б�
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        Response.Write(index + ".");
        Response.Write("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;stype=" + listVo[i].id + "" + "\">" + listVo[i].subclassName + "</a><br/>");

    }
    if (listVo == null)
    {
        Response.Write("û�н�ר�⣡<br/>");
    }
    //��ʾ������ҳ
    Response.Write(linkURL);
 
    
    Response.Write("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">�����ϼ�</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0����
{

    Response.Write("<div class=\"subtitle\">"+classVo.classname + "ר��</div>");
 
    //��ʾ�б�
    Response.Write("<!--listS-->"); 
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (i % 2 == 0)
        {
            Response.Write("<div class=\"line1\">");
        }
        else
        {
            Response.Write("<div class=\"line2\">");
        }
        Response.Write(index+".<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;stype=" + listVo[i].id + "" + "\">" + listVo[i].subclassName + "</a></div>");

    }
    if (listVo == null)
    {
        Response.Write("<div class=\"tip\">û�н�ר�⣡</div>");
    }
    Response.Write("<!--listE-->");
    
  
        //��ʾ������ҳ
        Response.Write(linkURL);
   
    Response.Write("<div class=\"btBox\">");
    Response.Write("<div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">�����ϼ�</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
   
    Response.Write("</div></div>");


}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
