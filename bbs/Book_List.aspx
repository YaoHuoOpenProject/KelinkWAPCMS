<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
//��̳ר������
if(this.stype!=""){
    classVo.classname = this.stypename + "(" + classVo.classname+")";
    
}

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
        string addtypes = "bbs/book_view_add.aspx?";
        string ranktypes = "bbs/book_list_rank.aspx?";
        if (WapTool.getArryString(classVo.smallimg, '|', 39) != "")
        {
            addtypes = "bbs/marksix/doit.aspx?mymarksix=" + WapTool.getArryString(classVo.smallimg, '|', 39) + "&amp;";
            ranktypes = "bbs/marksix/rank.aspx?";
        }
        
         strhtml.Append("<a href=\"/wapindex.aspx?siteid=" + siteid + "&amp;classid=206\">����</a>.<a href=\"" + this.http_start + "bbs/showadmin.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">����</a>.<a href=\"" + this.http_start + "bbs/book_list.aspx?action=good&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">����</a>.<a href=\"" + this.http_start + "bbs/showTopic.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">ר��</a>.");
        
         strhtml.Append(" <a href=\"" + this.http_start + ranktypes + "classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">����</a><br/>");
       
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
        if (listVoTop[i].topic != 0 && this.stype == "")
        {
            strhtml.Append("<b>[ר]</b>");

        }
        if (listVoTop[i].book_click >= long.Parse(this.hots))
        {
            strhtml.Append("<b>[��]</b>");

        }
        
        if (listVoTop[i].book_good == 1)
        {
            strhtml.Append("<b>[��]</b>");

        }
        if (listVoTop[i].islock == 1)
        {
            strhtml.Append("<b>[��]</b>");

        }
        if (listVoTop[i].islock == 2)
        {
            strhtml.Append("<b>[��]</b>");

        }
        if (listVoTop[i].sendMoney > 0)
        {
            strhtml.Append("<b>[��]</b>");

        }
        if (listVoTop[i].isVote > 0)
        {
            strhtml.Append("<b>[Ͷ]</b>");

        }
        if (listVoTop[i].isdown == 1)
        {
            strhtml.Append("<b>[��]</b>");

        }
        if (listVoTop[i].isdown == 2)
        {
            strhtml.Append("<b>[��]</b>");

        }
        if (listVoTop[i].freeMoney > 0)
        {
            strhtml.Append("<b>[��]</b>");

        }
        if (listVoTop[i].MarkSixWin ==1)
        {
            strhtml.Append("<b>[��]</b>");

        }
        strhtml.Append("<a href=\"" + http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVoTop[i].book_classid + "&amp;id=" + listVoTop[i].id + "&amp;lpage=" + CurrentPage + stypelink + "" + "\">" + listVoTop[i].book_title + "</a>" + isBR + "[" + ShowNickName_color(long.Parse(listVoTop[i].book_pub), listVoTop[i].book_author) + "/<a href=\"" + this.http_start + "bbs/book_re.aspx?actoin=class&amp;siteid=" + this.siteid + "&amp;classid=" + listVoTop[i].book_classid + "&amp;id=" + listVoTop[i].id + "&amp;getTotal=" + listVoTop[i].book_re + "&amp;lpage=" + this.CurrentPage + "\">" + listVoTop[i].book_re + "</a>��/" + listVoTop[i].book_click + "��]<br/>");
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
        if (listVo[i].topic != 0 && this.stype == "")
        {
            strhtml.Append("<b>[ר]</b>");

        }
        if (listVo[i].book_click >= long.Parse(this.hots))
        {
            strhtml.Append("<b>[��]</b>");

        }
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
        if (listVo[i].freeMoney > 0)
        {
            strhtml.Append("<b>[��]</b>");

        }

        if (listVo[i].MarkSixWin ==1 )
        {
            strhtml.Append("<b>[��]</b>");

        }
        strhtml.Append("<a href=\"" + http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + CurrentPage + stypelink + "" + "\">" + listVo[i].book_title + "</a>" + isBR + "[" + ShowNickName_color(long.Parse(listVo[i].book_pub), listVo[i].book_author) + "/<a href=\"" + this.http_start + "bbs/book_re.aspx?actoin=class&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;getTotal=" + listVo[i].book_re + "&amp;lpage=" + this.CurrentPage + "\">" + listVo[i].book_re + "</a>��/" + listVo[i].book_click + "��]<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("���޼�¼��<br/>");
    }
    strhtml.Append("------------<br/>");
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    
    //��ʾ�̶���ť
    if ((this.action == "" || this.action == "class") && this.stype == "")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_search.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>.<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=days&amp;key=1\">����</a>.<a href=\"" + this.http_start + "bbs/Log_List.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��־</a>.<a href=\"" + this.http_start + "bbs/onlist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a>.<a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;backurlid=3&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a><br/>");
    strhtml.Append("------------<br/>");
    }
    
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }
    //������ť
    if (action == "search")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��������</a><br/>");
    }
    else if (action == "good" && this.classid!="0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=good&amp;siteid=" + siteid + "&amp;classid=0" + "\">ȫ������</a><br/>");
   
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
            strhtml.Append("<div class=\"tip\"><a class=\"urlbtn\" href=\"" + this.http_start + "bbs/Book_List_delmy.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;touserid=" + this.key + "\">���(" + this.key + ")����������</a></div>");

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
        string addtypes = "bbs/book_view_add.aspx?";
        string ranktypes = "bbs/book_list_rank.aspx?";
        if (WapTool.getArryString(classVo.smallimg, '|', 39) != "")
        {
            addtypes = "bbs/marksix/doit.aspx?mymarksix=" + WapTool.getArryString(classVo.smallimg, '|', 39) + "&amp;";
            ranktypes = "bbs/marksix/rank.aspx?";
        }
        strhtml_list.Append("<div class=\"btBox\"><div class=\"bt4\"><a href=\"/wapindex.aspx?siteid=" + siteid + "&amp;classid=206\">����</a> <a href=\"" + this.http_start + "bbs/showadmin.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "&amp;page=" + this.CurrentPage + "\">����</a> <a href=\"" + this.http_start + "bbs/book_list.aspx?action=good&amp;classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">����</a> <a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=days&amp;key=365\">����</a></div>");

        strhtml_list.Append("</div></div>");
    }

    
    //��ʾ������ҳ
    //strhtml_list.Append(linkTOP);
    //��ʾ�б�
    string isBR = "<br/>";
    //if (classVo.articlenum == 1)
    //{
     //   isBR = "<br/>";
    //}
    string lpagetemp = "";
    if (this.CurrentPage > 1)
    {
        if (WapTool.ISAPI_Rewrite3_Open == "1")
        {
            lpagetemp = "?lpage=" + CurrentPage;
       
        }
        else
        {
            lpagetemp = "&amp;lpage=" + CurrentPage;
        }
    }
    strhtml_list.Append("<!--listS-->"); 
    //�ö��б�
    for (int i = 0; (listVoTop != null && i < listVoTop.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml_list.Append("<div class=\"listdata line1\">");
        }
        else
        {
            strhtml_list.Append("<div class=\"listdata line2\">");
        }
        if (listVoTop[i].book_top == 1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/ding.gif\" alt=\"��\"/>");
        }
        else if (listVoTop[i].book_top == 2)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/top.gif\" alt=\"�ܶ�\"/>");
        }
        if (listVoTop[i].topic != 0 && this.stype == "")
        {

        }
        if (listVoTop[i].book_click >= long.Parse(this.hots))
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/huo.gif\" alt=\"��\"/>");

        }
        if (listVoTop[i].book_good == 1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/jing.gif\" alt=\"��\"/>");

        }
        if (listVoTop[i].islock == 1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/suo.gif\" alt=\"��\"/>");

        }
        if (listVoTop[i].islock == 2)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/jie.gif\" alt=\"��\"/>");

        }
        if (listVoTop[i].sendMoney > 0)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/shang.gif\" alt=\"��\"/>");

        }
        if (listVoTop[i].isVote > 0)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/tuo.gif\" alt=\"Ͷ\"/>");

        }
        if (listVoTop[i].isdown == 1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/file.gif\" alt=\"��\"/>");

        }
        if (listVoTop[i].isdown == 2)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/d.gif\" alt=\"��\"/>");

        }
        if (listVoTop[i].freeMoney > 0)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/li.gif\" alt=\"��\"/>");

        }
        if (listVoTop[i].MarkSixWin ==1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/zhong.gif\" alt=\"��\"/>");

        }
        if (titlecolor.Trim() != "")
        {
            listVoTop[i].book_title = "<font color=\"#" + titlecolor + "\">" + listVoTop[i].book_title + "</font>";
        }

        if (WapTool.ISAPI_Rewrite3_Open == "1")
        {
            strhtml_list.Append("<a href=\"" + http_start + "bbs-" + listVoTop[i].id +".html"+ lpagetemp + stypelink + "" + "\">" + listVoTop[i].book_title + "</a><br/>" + ShowNickName_color(long.Parse(listVoTop[i].book_pub), listVoTop[i].book_author) + "/<a href=\"" + this.http_start + "bbs/book_re.aspx?actoin=class&amp;siteid=" + this.siteid + "&amp;classid=" + listVoTop[i].book_classid + "&amp;id=" + listVoTop[i].id + "&amp;getTotal=" + listVoTop[i].book_re + "&amp;lpage=" + this.CurrentPage + "\">" + listVoTop[i].book_re + "</a>��/" + listVoTop[i].book_click + "�� <span class=\"right\">" + WapTool.ShowTime(listVoTop[i].book_date) + "<span></div>");
       
        }
        else
        {
            strhtml_list.Append("<a href=\"" + http_start + "bbs/view.aspx?id=" + listVoTop[i].id + lpagetemp + stypelink + "" + "\">" + listVoTop[i].book_title + "</a><br/>" + ShowNickName_color(long.Parse(listVoTop[i].book_pub), listVoTop[i].book_author) + "/<a href=\"" + this.http_start + "bbs/book_re.aspx?actoin=class&amp;siteid=" + this.siteid + "&amp;classid=" + listVoTop[i].book_classid + "&amp;id=" + listVoTop[i].id + "&amp;getTotal=" + listVoTop[i].book_re + "&amp;lpage=" + this.CurrentPage + "\">" + listVoTop[i].book_re + "</a>��/" + listVoTop[i].book_click + "�� <span class=\"right\">" + WapTool.ShowTime(listVoTop[i].book_date) + "<span></div>");
        }
    }
    //�����б�
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml_list.Append("<div class=\"listdata line1\">");
        }
        else
        {
            strhtml_list.Append("<div class=\"listdata line2\">");
        }
        
        index = index + kk;
        strhtml_list.Append(index + ".");
        //strhtml_list.Append("<span class=\"KL_num\">" +index + ".</span>");
        
     ;
      
        if (listVo[i].topic != 0 && this.stype == "")
        {

        }
        if (listVo[i].book_click  >= long.Parse(this.hots))
        {

        }
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
        if (listVo[i].freeMoney > 0)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/li.gif\" alt=\"��\"/>");

        }
        if (listVo[i].MarkSixWin ==1)
        {
            strhtml_list.Append("<img src=\"" + this.http_start + "NetImages/zhong.gif\" alt=\"��\"/>");

        }
        if (WapTool.ISAPI_Rewrite3_Open == "1")
        {
            strhtml_list.Append("<a href=\"" + http_start + "bbs-" + listVo[i].id +".html"+ lpagetemp + stypelink + "" + "\">" + listVo[i].book_title + "</a><br/>" + ShowNickName_color(long.Parse(listVo[i].book_pub), listVo[i].book_author) + "/<a href=\"" + this.http_start + "bbs/book_re.aspx?actoin=class&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;getTotal=" + listVo[i].book_re + "&amp;lpage=" + this.CurrentPage + "\">" + listVo[i].book_re + "</a>��/" + listVo[i].book_click + "�� <span class=\"right\">" + WapTool.ShowTime(listVo[i].book_date) + "<span></div>");
        
        }
        else
        {
            strhtml_list.Append("<a href=\"" + http_start + "bbs/view.aspx?id=" + listVo[i].id + lpagetemp + stypelink + "" + "\">" + listVo[i].book_title + "</a><br/>" + ShowNickName_color(long.Parse(listVo[i].book_pub), listVo[i].book_author) + "/<a href=\"" + this.http_start + "bbs/book_re.aspx?actoin=class&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;getTotal=" + listVo[i].book_re + "&amp;lpage=" + this.CurrentPage + "\">" + listVo[i].book_re + "</a>��/" + listVo[i].book_click + "�� <span class=\"right\">" + WapTool.ShowTime(listVo[i].book_date) + "<span></div>");
        }
    }
    if (listVo == null)
    {
        strhtml_list.Append("<div class=\"tip\">���޼�¼��</div>");
    }

    strhtml_list.Append("<!--listE-->");
    
    

    
        //��ʾ������ҳ
        strhtml_list.Append(linkURL);
    
    
    //��ʾ�̶���ť
    if ((this.action == "" || this.action == "class") && this.stype == "")
    {
        strhtml_list.Append("<div class=\"btBox\"><div class=\"bt4\"><a href=\"" + this.http_start + "bbs/book_search.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">����</a> <a href=\"" + this.http_start + "bbs/Log_List.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">��־</a> <a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;backurlid=3&amp;siteid=" + this.siteid + "&amp;classid=0\">����</a> <a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;type=days&amp;key=365\">����</a></div></div>");

    }

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
   
    if (action == "search")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��������</a> ");
        strhtml.Append("</div></div>");
    }
    else if (action == "good" && this.classid != "0")
    {
        strhtml.Append("<div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=good&amp;siteid=" + siteid + "&amp;classid=0" + "\">ȫ������</a> ");
        strhtml.Append("</div>");
    }

    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        if (WapTool.ISAPI_Rewrite3_Open == "1")
        {
        }
        else
        {
        }
    }
   
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }
    
    
    strhtml.Append(WapTool.GetVS(wmlVo));

    
    strhtml.Append(classVo.sitedowntip);
    
    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//��ʾ�ײ�
Response.Write(WapTool.showDown(wmlVo)); %>
