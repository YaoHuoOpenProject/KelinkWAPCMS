<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List_Rank.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_List_Rank" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
//��̳ר������
if(this.stype =="0"){
    classVo.classname = "��������";
}
else if (this.stype == "1")
{
    classVo.classname = "��������";
}
else if (this.stype == "2")
{
    classVo.classname = "�������";
}
else if (this.stype == "3")
{
    classVo.classname = "��������";
}
else if (this.stype == "4")
{
    classVo.classname = "��������";
}
else if (this.stype == "5")
{
    classVo.classname = "�Ƽ�����";
}

Response.Write(WapTool.showTop(classVo.classname, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    if (WapTool.getArryString(classVo.smallimg, '|', 39) != "")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/marksix/rank.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�������а�</a>|");
    }
    strhtml.Append("��Ա���а�<br/>��");
    if (this.stype == "0")
    {
         strhtml.Append("����");
    }else{
         strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=0\">����</a>");
    }
    
    if (this.stype == "1")
    {
         strhtml.Append(".����");
    }else{
         strhtml.Append(".<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=1\">����</a>");
    } 
        
    if (this.stype == "2")
    {
         strhtml.Append("."+siteVo.sitemoneyname);
    }else{
         strhtml.Append(".<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=2\">"+siteVo.sitemoneyname+"</a>");
    } 
        
     if (this.stype == "3")
    {
         strhtml.Append(".����");
    }else{
         strhtml.Append(".<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=3\">����</a>");
    } 
    if (this.stype == "4")
    {
         strhtml.Append(".����");
    }else{
         strhtml.Append(".<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=4\">����</a>");
    }
    if (this.stype == "5")
    {
        strhtml.Append(".�Ƽ�");
    }
    else
    {
        strhtml.Append(".<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=5\">�Ƽ�</a>");
    } 
    
    
  
    strhtml.Append("<br/>------------<br/>");
    //��ʾ������ҳ
    strhtml.Append(linkTOP);
    //��ʾ�б�
   
  
   
    //�����б�
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append("TOP"+index+".");

        strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a>(ID" + listVo[i].userid + ")");
        if (this.stype == "0")
        {
            strhtml.Append("������(<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=0&amp;key=" + listVo[i].userid + "&amp;type=pub\">" + listVo[i].bbsCount + "</a>)");
        }
        else if (this.stype == "1")
        {
            strhtml.Append("������(<a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + listVo[i].userid + "\">" + listVo[i].bbsReCount + "</a>)");
        }
        else if (this.stype == "2")
        {
            strhtml.Append("��"+siteVo.sitemoneyname+"(" + listVo[i].money + ")");
        }
        else if (this.stype == "3")
        {
            strhtml.Append("������(" + listVo[i].expr + ")");
      
        }
        else if (this.stype == "4")
        {
            strhtml.Append("���ռ�����(" + listVo[i].zoneCount + ")");
        }
        else if (this.stype == "5")
        {
            strhtml.Append("�����Ƽ�" + listVo[i].TJCount + "����Ա");
        }
        strhtml.Append("<br/>"); 
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    strhtml.Append("------------<br/>");
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    
   
   
    //������ť
    
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a>-");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
    }
    strhtml.Append(WapTool.GetVS(wmlVo));
    
    
 
    
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{

    string isWebHtml = this.ShowWEB_list(this.classid); //���Ǵ���html����
    StringBuilder strhtml_list = new StringBuilder(); //[view]UBB��Ӧ����
    strhtml_list.Append("<div class=\"subtitle\">");
    if (WapTool.getArryString(classVo.smallimg, '|', 39) != "")
    {
        strhtml_list.Append("<a href=\"" + this.http_start + "bbs/marksix/rank.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�������а�</a>|");
    }
    strhtml_list.Append("��Ա���а�");
    strhtml_list.Append("</div>");
    strhtml_list.Append("<div class=\"content\">");
    strhtml_list.Append("<div class=\"linkbtn\">");
    
    if (this.stype == "0")
    {
        strhtml_list.Append("����");
    }
    else
    {
        strhtml_list.Append("<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=0\">����</a>");
    }

    if (this.stype == "1")
    {
        strhtml_list.Append("����");
    }
    else
    {
        strhtml_list.Append("<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=1\">����</a>");
    }

    if (this.stype == "2")
    {
        strhtml_list.Append(""+siteVo.sitemoneyname);
    }
    else
    {
        strhtml_list.Append("<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=2\">" + siteVo.sitemoneyname + "</a>");
    }

    if (this.stype == "3")
    {
        strhtml_list.Append("����");
    }
    else
    {
        strhtml_list.Append("<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=3\">����</a>");
    }
    if (this.stype == "4")
    {
        strhtml_list.Append("����");
    }
    else
    {
        strhtml_list.Append("<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=4\">����</a>");
    }
    if (this.stype == "5")
    {
        strhtml_list.Append("�Ƽ�");
    }
    else
    {
        strhtml_list.Append("<a href=\"" + this.http_start + "bbs/book_list_rank.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;stype=5\">�Ƽ�</a>");
    }
    strhtml_list.Append("</div>");
    strhtml_list.Append("</div>");
    //��ʾ������ҳ
    //strhtml_list.Append(linkTOP);
    
    //�����б�
    strhtml_list.Append("<!--listS-->"); 
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml_list.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml_list.Append("<div class=\"line2\">");
        }
        
        index = index + kk;
        strhtml_list.Append("TOP"+index + ".");


        strhtml_list.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a>(ID" + listVo[i].userid + ")");
        if (this.stype == "0")
        {
            strhtml_list.Append("������(<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid="+this.siteid+"&amp;classid=0&amp;key="+listVo[i].userid+"&amp;type=pub&amp;sid="+this.sid+"\">" + listVo[i].bbsCount + "</a>)");
        }
        else if (this.stype == "1")
        {
            strhtml_list.Append("������(<a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid="+this.siteid+"&amp;classid=0&amp;touserid="+listVo[i].userid+"&amp;sid="+this.sid+"\">" + listVo[i].bbsReCount + "</a>)");
        }
        else if (this.stype == "2")
        {
            strhtml_list.Append("��" + siteVo.sitemoneyname + "(" + listVo[i].money + ")");
        }
        else if (this.stype == "3")
        {
            strhtml_list.Append("������(" + listVo[i].expr + ")");

        }
        else if (this.stype == "4")
        {
            strhtml_list.Append("���ռ�����(" + listVo[i].zoneCount + ")");
        }
        else if (this.stype == "5")
        {
            strhtml_list.Append("�����Ƽ�" + listVo[i].TJCount + "����Ա");
        }

        strhtml_list.Append("</div>");
  
    }
    if (listVo == null)
    {
        strhtml_list.Append("<div class=\"tip\">���޼�¼��</div>");
    }
    
    strhtml_list.Append("<!--listE-->");
    
  
   
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

    

    
    //������ť
   
   

    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">�����ϼ�</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
        strhtml.Append("</div></div>");
    }
  
   

    
    //strhtml.Append(classVo.sitedowntip);
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
