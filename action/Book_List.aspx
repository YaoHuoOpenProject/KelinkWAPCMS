<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.action.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
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
    if (this.INFO == "DAORUNULL")
    {
       
        strhtml.Append("��Ǹ��վ����û����������Ŷ��");
        strhtml.Append("<br/>");

    }
    else if (this.INFO == "DAORUOK")
    {
        
        strhtml.Append("��������������ȥ���Ŷ��");
        strhtml.Append("<br/>");

    }
    else if (this.INFO == "TODAY_HAS")
    {

        strhtml.Append("����������Ѿ���������ȥ���Ŷ��������ɣ����������ɡ�");
        strhtml.Append("<br/>");

    }
    else if (this.INFO == "CONFIG_ERROR")
    {
        
        strhtml.Append("��Ǹ��վ����û����������Ŷ��");
        strhtml.Append("<br/>");

    }
    
    strhtml.Append("��ʾ:���" + WapTool.getArryString(siteVo.Version, '|', 36) + "��������" + siteVo.sitemoneyname + WapTool.getArryString(siteVo.Version, '|', 37) + "�����;���:" + WapTool.getArryString(siteVo.Version, '|', 38) + "����<br/>");
    strhtml.Append("----------<br/>");
    
    //��ʾ�б�
    //strhtml.Append(linkTOP);
   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        
        strhtml.Append("����"+index + ":"+ listVo[i].actionName +"("+listVo[i].num+"/"+listVo[i].numFinish+"),");
        if (listVo[i].state == 1)
        {
            strhtml.Append("�����");
        }
        else
        {
            strhtml.Append("<a href=\"" + listVo[i].actionPath  + "\">ȥ���</a>");
            
        }

        strhtml.Append("<br/>");
    }
    if (listVo == null)
    {
        if (string.Format("{0:yyyy-MM-dd}", userVo.actionTime) == string.Format("{0:yyyy-MM-dd}", DateTime.Now) && userVo.actionState == "1")
        {
            strhtml.Append("��ϲ���������������������������������ɡ�<br/>");

        }
        else
        {
            strhtml.Append("���컹û��������Ŷ��<a href=\"" + this.http_start + "action/book_list.aspx?action=daorumy&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�����������</a>��<br/>");
        }
    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }

    if (this.IsCheckManagerLvl("|00|01|03|", classVo.adminusername) == true)
    {
        //��ʾ����ť
        strhtml.Append("----------<br/>");
        strhtml.Append("<a href=\"" + this.http_start + "action/admin_userlistWAP.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">����������̨��</a>");
        strhtml.Append("<br/>----------<br/>");
    }
    
    //������ť
    if (action == "search")
    {
        strhtml.Append("<a href=\"" + this.http_start + "action/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��������</a> <br/>");
    }
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a>-");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    }
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

    string isWebHtml = this.ShowWEB_list(this.classid ); //���Ǵ���html����
    StringBuilder strhtml_list = new StringBuilder(); //[view]UBB��Ӧ����

    

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
    if (this.INFO == "DAORUNULL")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("��Ǹ��վ����û����������Ŷ��");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "DAORUOK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("��������������ȥ���Ŷ��");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "TODAY_HAS")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("����������Ѿ���������ȥ���Ŷ��������ɣ����������ɡ�");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "CONFIG_ERROR")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("��Ǹ��վ����û����������Ŷ��");
        strhtml.Append("</div>");

    }


    strhtml.Append("<div class=\"line\">");
    strhtml.Append("��ʾ:���" + WapTool.getArryString(siteVo.Version, '|', 36) + "��������"+siteVo.sitemoneyname + WapTool.getArryString(siteVo.Version, '|', 37) + "�����;���:" + WapTool.getArryString(siteVo.Version, '|', 38) + "����<br/>");
    strhtml.Append("</div>");
    //��ʾ�б�
    //strhtml.Append(linkTOP);


    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (i % 2 == 0)
        {
            strhtml_list.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml_list.Append("<div class=\"line2\">");
        }
        
        strhtml_list.Append("����"+index + ":" + listVo[i].actionName + "(" + listVo[i].num + "/" + listVo[i].numFinish + "),");
        if (listVo[i].state == 1)
        {
            strhtml_list.Append("�����");
        }
        else
        {
            strhtml_list.Append("<a href=\"" + listVo[i].actionPath + "\">ȥ���</a><br/>");
        }

        strhtml_list.Append("</div>");
    }
    if (listVo == null)
    {
        if (string.Format("{0:yyyy-MM-dd}", userVo.actionTime) == string.Format("{0:yyyy-MM-dd}", DateTime.Now) && userVo.actionState == "1")
        {
            strhtml_list.Append("<div class=\"line\">��ϲ���������������������������������ɡ�</div>");

        }
        else
        {
            strhtml_list.Append("<div class=\"line\">���컹û��������Ŷ��<a href=\"" + this.http_start + "action/book_list.aspx?action=daorumy&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">�����������</a>��</div>");

        }
    }
    else
    {
        strhtml_list.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml_list.Append("<a href=\"" + this.http_start + "action/user_WAPdel.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">ɾ���ҵ�ǰ������</a>");
        strhtml_list.Append("</div></div>");
    }
    
    //��ʾ������ҳ
    strhtml_list.Append(linkURL);

    if (isWebHtml == "")
    {
        strhtml.Append(strhtml_list);

    }
    else  //��ʾ����html
    {
        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list.ToString()), wmlVo));
        Response.End();
    }

    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }

    if (this.IsCheckManagerLvl("|00|01|03|", classVo.adminusername) == true)
    {
     //��ʾ����ť
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<a href=\"" + this.http_start + "action/admin_userlistWAP.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">����������̨��</a>");
        strhtml.Append("</div>");
    }
    //������ť
   
    if (action == "search")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "action/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��������</a>");
        strhtml.Append("</div></div>");
    }
 
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
        strhtml.Append("</div></div>");
    }
 
    strhtml.Append("</div>");
    if (classVo.sitedowntip != "")
    {
        strhtml.Append(classVo.sitedowntip);
    }
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
