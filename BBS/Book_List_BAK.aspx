<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List_BAK.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_List_BAK" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
//��̳ר������
if(this.stype!=""){
    classVo.classname = this.stypename + "(" + classVo.classname+")";
    
}

Response.Write(WapTool.showTop("��ʷ����."+classVo.classname, wmlVo));//��ʾͷ                                                                                                                                                                       
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
    
    //��ʾ��ѯĳ�˵���������
    if (this.type == "pub")
    {
        if (this.CheckManagerLvl("04", "") == true)
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/Book_List_delmy.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + this.key + "\">���(" + this.key + ")����������</a><br/>");

        }
    }
    
    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }
    //��ʾ�̶���ť
    if ((this.action == "" || this.action == "class") && this.stype == "")
    {
        strhtml.Append("��ʷ����.<a href=\"" + this.http_start + "bbs/book_search_bak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>.<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=good&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">����</a>.<a href=\"" + this.http_start + "bbs/showTopic_bak.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">ר��</a><br/>");

    }
    
    strhtml.Append("------------<br/>");
    //��ʾ������ҳ
    strhtml.Append(linkTOP);
    //��ʾ�б�
    string isBR = "";
    if (classVo.articlenum == 1)
    {
        isBR = "<br/>";
    }
  
    //�ö��б�
    for (int i = 0; (listVoTop != null && i < listVoTop.Count); i++)
    {
        if (listVoTop[i].book_top == 1)
        {
            strhtml.Append("<b>[��]</b>");
        }
        else if (listVoTop[i].book_top == 2)
        {
            strhtml.Append("<b>[�ܶ�]</b>");
        }
        strhtml.Append("<a href=\"" + http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + listVoTop[i].book_classid + "&amp;id=" + listVoTop[i].id + "&amp;lpage=" + CurrentPage + stypelink + "" + "\">" + listVoTop[i].book_title + "</a>" + isBR + "[" + listVoTop[i].book_author + "/<a href=\"" + this.http_start + "bbs/book_re.aspx?actoin=class&amp;siteid=" + this.siteid + "&amp;classid=" + listVoTop[i].book_classid + "&amp;id=" + listVoTop[i].id + "&amp;getTotal=" + listVoTop[i].book_re + "&amp;lpage=" + this.CurrentPage + "\">" + listVoTop[i].book_re + "</a>��/" + listVoTop[i].book_click + "��]<br/>");
    }
    //�����б�
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index+".");
        //if (action != "" && action != "class")
        //{
         //   strhtml.Append(listVo[i].classname);
        //}
        
        //if (listVo[i].book_top == 1 && this.CurrentPage==1)
        //{
        //    strhtml.Append("<b>[��]</b>");
        //}
        if (listVo[i].book_good == 1)
        {
            strhtml.Append("<b>[��]</b>");

        }
        if (listVo[i].islock == 1)
        {
            strhtml.Append("<b>[��]</b>");

        }
        if (listVo[i].islock == 2)
        {
            strhtml.Append("<b>[��]</b>");

        }
        if (listVo[i].sendMoney >0)
        {
            strhtml.Append("<b>[��]</b>");

        }
        if (listVo[i].isVote > 0)
        {
            strhtml.Append("<b>[Ͷ]</b>");

        }
        if (listVo[i].isdown == 1)
        {
            strhtml.Append("<b>[��]</b>");

        }
        if (listVo[i].isdown == 2)
        {
            strhtml.Append("<b>[��]</b>");

        }
        strhtml.Append("<a href=\"" + http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage="+CurrentPage+stypelink+"" + "\">" + listVo[i].book_title +"</a>"+isBR+"["+listVo[i].book_author+"/<a href=\""+this.http_start+"bbs/book_re.aspx?actoin=class&amp;siteid="+this.siteid+"&amp;classid="+listVo[i].book_classid+"&amp;id="+listVo[i].id+"&amp;getTotal="+listVo[i].book_re+"&amp;lpage="+this.CurrentPage+"&amp;sid="+this.sid+"\">"+listVo[i].book_re+"</a>��/"+listVo[i].book_click+"��]<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    strhtml.Append("------------<br/>");
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    
    strhtml.Append("------------<br/>");
    
    
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }
    //������ť
    if (action == "search")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_search_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��������</a><br/>");
    }
    else if (action == "good" && this.classid!="0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=good&amp;siteid=" + siteid + "&amp;classid=0" + "\">ȫ������</a><br/>");
   
    }
    
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");
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
    
    string isWebHtml = this.ShowWEB_list(this.classid); //���Ǵ���html����
    StringBuilder strhtml_list = new StringBuilder(); //[view]UBB��Ӧ����

    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<div class=\"logo\"><img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/></div>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce );
    }
    
    //��ʾ��ѯĳ�˵���������
    if (this.type == "pub")
    {
        if (this.IsUserManager(this.userid, userVo.managerlvl, ""))
        {
            strhtml.Append("<div class=\"tip\"><a href=\"" + this.http_start + "bbs/Book_List_delmy.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + this.key + "\">���(" + this.key + ")����������</a></div>");

        }
    }
    
    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
    //��ʾ�̶���ť
    if ((this.action == "" || this.action == "class") && this.stype == "")
    {
        strhtml_list.Append("<div class=\"subtitle\">��ʷ����.<a href=\"" + this.http_start + "bbs/book_search_bak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>.<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=good&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">����</a>.<a href=\"" + this.http_start + "bbs/showTopic_bak.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">ר��</a></div>");

    }

    
    //��ʾ������ҳ
    strhtml_list.Append(linkTOP);
    //��ʾ�б�
    string isBR = "";
    if (classVo.articlenum == 1)
    {
        isBR = "<br/>";
    }

    //�ö��б�
    for (int i = 0; (listVoTop != null && i < listVoTop.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml_list.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml_list.Append("<div class=\"line2\">");
        }
        if (listVoTop[i].book_top == 1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/ding.gif\" alt=\"��\"/>");
        }
        else if (listVoTop[i].book_top == 2)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/top.gif\" alt=\"�ܶ�\"/>");
        }
        strhtml_list.Append("<a href=\"" + http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + listVoTop[i].book_classid + "&amp;id=" + listVoTop[i].id + "&amp;lpage=" + CurrentPage + stypelink + "" + "\">" + listVoTop[i].book_title + "</a>" + isBR + "[" + listVoTop[i].book_author + "/<a href=\"" + this.http_start + "bbs/book_re.aspx?actoin=class&amp;siteid=" + this.siteid + "&amp;classid=" + listVoTop[i].book_classid + "&amp;id=" + listVoTop[i].id + "&amp;getTotal=" + listVoTop[i].book_re + "&amp;lpage=" + this.CurrentPage + "\">" + listVoTop[i].book_re + "</a>��/" + listVoTop[i].book_click + "��]</div>");
    }
    //�����б�
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
        strhtml_list.Append(index + ".");
        
        //if (action != "" && action != "class")
        //{
        //   strhtml.Append(listVo[i].classname);
        //}

        //if (listVo[i].book_top == 1 && this.CurrentPage == 1)
        //{
        //    strhtml.Append("<img src=\""+this.http_start+"NetImages/ding.gif\" alt=\"��\"/>");
        //}
        if (listVo[i].book_good == 1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/jing.gif\" alt=\"��\"/>");

        }
        if (listVo[i].islock == 1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/suo.gif\" alt=\"��\"/>");

        }
        if (listVo[i].islock == 2)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/jie.gif\" alt=\"��\"/>");

        }
        if (listVo[i].sendMoney > 0)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/shang.gif\" alt=\"��\"/>");

        }
        if (listVo[i].isVote > 0)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/tuo.gif\" alt=\"Ͷ\"/>");

        }
        if (listVo[i].isdown ==1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/file.gif\" alt=\"��\"/>");

        }
        if (listVo[i].isdown == 2)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/d.gif\" alt=\"��\"/>");

        }

        strhtml_list.Append("<a href=\"" + http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + CurrentPage + stypelink + "" + "\">" + listVo[i].book_title + "</a>" + isBR + "[" + listVo[i].book_author + "/<a href=\"" + this.http_start + "bbs/book_re.aspx?actoin=class&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;getTotal=" + listVo[i].book_re + "&amp;lpage=" + this.CurrentPage + "\">" + listVo[i].book_re + "</a>��/" + listVo[i].book_click + "��]</div>");
    }
    if (listVo == null)
    {
        strhtml_list.Append("<div class=\"tip\">���޼�¼��</div>");
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
    
    //������ť
   
    if (action == "search")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_search_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��������</a></div></div>");
    }
    else if (action == "good" && this.classid != "0")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=good&amp;siteid=" + siteid + "&amp;classid=0" + "\">ȫ������</a></div></div>");

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
    

    
    strhtml.Append(classVo.sitedowntip);
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
