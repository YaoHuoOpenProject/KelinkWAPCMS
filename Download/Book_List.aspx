<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_List.aspx.cs" Inherits="KeLin.WebSite.download.Book_List" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//��ʾͷ                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/><br/>");
    }
    if (classVo.introduce != "" && action != "search")
    {
        strhtml.Append(classVo.introduce + "<br/>");
    }
    
    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }
    //��ʾ����
    if (this.showMySelectUA != "1")
    {
        strhtml.Append("����:" + mobileVo.nameCN + " " + mobileVo.Mode + "");
        strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("download/book_list.aspx?sp=" + this.sp + "&amp;siteid=" + siteid + "&amp;classid=" + classid) + "\">����</a> ");
        strhtml.Append(mobileVo.remark);
        strhtml.Append("<br/>");
    }

    if (this.showAdapter != "1")
    {
        strhtml.Append("<select name=\"sp" + r + "\" value=\"" + sp + "\">");
        strhtml.Append("<option value=\"0\">0_�ر��Զ�����</option>");
        strhtml.Append("<option value=\"1\">1_��ƽ̨����</option>");
        strhtml.Append("<option value=\"2\">2_���ֱ�������</option>");
        strhtml.Append("<option value=\"3\">3_����Ϸϵ������</option>");
        strhtml.Append("<option value=\"4\">4_��ƽ̨+�ֱ�������</option>");
        strhtml.Append("<option value=\"5\">5_��1,2,3����������</option>");
        strhtml.Append("<option value=\"6\">6_��1,2,3����������</option>");
        strhtml.Append("</select>");
        strhtml.Append("<anchor><go href=\"" + http_start + "download/book_list.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"sp\" value=\"$(sp" + r + ")\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + this.siteid + "\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + this.classid + "\"/>");
        strhtml.Append("<postfield name=\"action\" value=\"" + this.action + "\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + this.sid + "\"/>");
        strhtml.Append("</go>ȷ��</anchor>");
        strhtml.Append("<br/>");
    }
    
    //��ʾ�б�
    strhtml.Append(linkTOP);
    string book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (this.action == "hot")
        {
            book_click = "("+listVo[i].book_click.ToString()+")";
        }

        strhtml.Append(index + ".<a href=\"" + http_start + "download/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + CurrentPage + "&amp;sp=" + this.sp + "" + "\">");
        if (classVo.articlenum == 1 || (this.action != "class" && this.action != ""))
        {
            strhtml.Append("["+listVo[i].classname+"]"); 
        }
        strhtml.Append( listVo[i].book_title + book_click+"</a><br/>");
        if (listVo[i].book_imgTrue != "" && showimg!="1")
        {
            if (listVo[i].book_imgTrue.StartsWith("/") || listVo[i].book_imgTrue.ToLower().StartsWith("http://"))
            {
                strhtml.Append("<img src=\"" + listVo[i].book_imgTrue + "\" alt=\"load...\"/><br/>");
            }
            else
            {
                strhtml.Append("<img src=\"" + this.http_start + "download/" + listVo[i].book_imgTrue + "\" alt=\"load...\"/><br/>");
            }
        }
    }
    if (listVo == null)
    {
        if (sp == "0")
        {
            strhtml.Append("�����κμ�¼��<br/>");
        }
        else
        {
            strhtml.Append("�����ʺϴ˻��͵ļ�¼��<br/>");
        }

    }
    //��ʾ������ҳ
    strhtml.Append(linkURL);
    
    //��ʾ���
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }
    //������ť
    if (action == "search")
    {
        strhtml.Append("<a href=\"" + this.http_start + "download/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��������</a> ");
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
        strhtml.Append("<br/>"+classVo.sitedowntip);
    }
    strhtml.Append("</p>");

    //���
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0����
{



    string isWebHtml = this.ShowWEB_list(this.classid); //���Ǵ���html����
   

    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<div class=\"logo\"><img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/></div>");
    }
    if (classVo.introduce != "" && action != "search")
    {
        strhtml.Append(classVo.introduce);
    }

    //��ʾ���
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
    //��ʾ����
    strhtml.Append("<!--web-->"); 
    if (this.showMySelectUA != "1")
    {
        strhtml.Append("<div class=\"subtitle\">");
        strhtml.Append("����:" + mobileVo.nameCN + " " + mobileVo.Mode + "");
        strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("download/book_list.aspx?sp=" + this.sp + "&amp;siteid=" + siteid + "&amp;classid=" + classid) + "\">����</a> ");
        strhtml.Append(mobileVo.remark);
     
        strhtml.Append("</div>");
    }

    if (this.showAdapter != "1")
    {
        strhtml.Append("<div class=\"content\">");
       
        strhtml.Append("<form name=\"f\" action=\"" + this.http_start + "download/book_list.aspx\" method=\"get\">");
        strhtml.Append("<select name=\"sp\">");
        strhtml.Append("<option value=\"0\"");
        if (sp == "0") strhtml.Append(" selected ");
        strhtml.Append(">0_�ر��Զ�����</option>");
        strhtml.Append("<option value=\"1\"");
        if (sp == "1") strhtml.Append(" selected ");
        strhtml.Append(">1_��ƽ̨����</option>");
        strhtml.Append("<option value=\"2\"");
        if (sp == "2") strhtml.Append(" selected ");
        strhtml.Append(">2_���ֱ�������</option>");
        strhtml.Append("<option value=\"3\"");
        if (sp == "3") strhtml.Append(" selected ");
        strhtml.Append(">3_����Ϸϵ������</option>");
        strhtml.Append("<option value=\"4\"");
        if (sp == "4") strhtml.Append(" selected ");
        strhtml.Append(">4_��ƽ̨+�ֱ�������</option>");
        strhtml.Append("<option value=\"5\"");
        if (sp == "5") strhtml.Append(" selected ");
        strhtml.Append(">5_��1,2,3����������</option>");
        strhtml.Append("<option value=\"6\"");
        if (sp == "6") strhtml.Append(" selected ");
        strhtml.Append(">6_��1,2,3����������</option>");
        strhtml.Append("</select>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + this.siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + this.classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"" + this.action + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + this.sid + "\"/>");
        strhtml.Append("<input type=\"submit\"  value=\"ȷ��\"/>");
        strhtml.Append("</form>");
        strhtml.Append("</div>");
    }
    
    //��ʾ�б�
    string lpagetemp = "";
    if (this.CurrentPage > 1)
    {        
            lpagetemp = "&amp;lpage=" + CurrentPage;
        
    }
   // strhtml.Append(linkTOP);
    strhtml.Append("<!--listS-->"); 
    if (int.Parse(buju) > 5)
    {
        System.Collections.Generic.List<KeLin.ClassManager.Model.Page_Layout_Model> pList = new System.Collections.Generic.List<KeLin.ClassManager.Model.Page_Layout_Model>();
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            KeLin.ClassManager.Model.Page_Layout_Model vo = new KeLin.ClassManager.Model.Page_Layout_Model();
            vo.title = listVo[i].book_title;
            vo.content = listVo[i].book_content;
            if (listVo[i].book_img.StartsWith("/") || listVo[i].book_img.ToLower().StartsWith("http://"))
            {
                vo.imageURL = listVo[i].book_img;
            }
            else
            {
                vo.imageURL = this.http_start + "download/" + listVo[i].book_img;
            }
            if (WapTool.ISAPI_Rewrite3_Open == "1")
            {
                vo.linkURL = http_start + "download-" + listVo[i].id + ".html" + "?sp=" + this.sp + lpagetemp;
            
            }
            else
            {
                vo.linkURL = http_start + "download/view.aspx?id=" + listVo[i].id + lpagetemp + "&amp;sp=" + this.sp + "";
            }
            vo.time = listVo[i].book_date.ToString();
            pList.Add(vo);
        }
        strhtml.Append(Page_Layout.GetListLayout(pList, buju + "*" + buju_width + "*" + buju_height, wmlVo, "download"));
  

    }
    else
    {
        string book_click = "";
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            index = index + kk;
            if (this.action == "hot")
            {
                book_click = "(" + listVo[i].book_click.ToString() + ")";
            }
            if (i % 2 == 0)
            {
                strhtml.Append("<div class=\"line\">");
            }
            else
            {
                strhtml.Append("<div class=\"line\">");
            }

            if (showAndroid == "1")
            {
                if (WapTool.ISAPI_Rewrite3_Open == "1")
                {
                    strhtml.Append(index + ".<a href=\"" + http_start + "download-" + listVo[i].id+".html?siteid="+ siteid + "&amp;classid=" + listVo[i].book_classid  + "&amp;lpage=" + CurrentPage + "&amp;sp=" + this.sp + "" + "\">");
                
                }
                else
                {
                    strhtml.Append(index + ".<a href=\"" + http_start + "download/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + CurrentPage + "&amp;sp=" + this.sp + "" + "\">");
                }
                if (classVo.articlenum == 1 || (this.action != "class" && this.action != ""))
                {
                    strhtml.Append("[" + listVo[i].classname + "]");
                }
                strhtml.Append(listVo[i].book_title + book_click + "</a>");
                if (listVo[i].book_imgTrue != "" && showimg != "1")
                {
                    if (listVo[i].book_imgTrue.StartsWith("/") || listVo[i].book_imgTrue.ToLower().StartsWith("http://"))
                    {
                        strhtml.Append("<br/><img src=\"" + listVo[i].book_imgTrue + "\" alt=\"load...\"/>");
                    }
                    else
                    {
                        strhtml.Append("<br/><img src=\"" + this.http_start + "download/" + listVo[i].book_imgTrue + "\" alt=\"load...\"/>");
                    }
                }
            }
            else
            {
                string lineLink = "";
                if (WapTool.ISAPI_Rewrite3_Open == "1")
                {
                    lineLink = "<a href=\"" + http_start + "download-" + listVo[i].id + ".html" + "?sp=" + this.sp + lpagetemp + "\">";
                
                }
                else
                {
                    lineLink = "<a href=\"" + http_start + "download/view.aspx?id=" + listVo[i].id + lpagetemp + "&amp;sp=" + this.sp + "" + "\">";
                }
                //��ʾ����������ʽ���ñ���
                strhtml.Append("<table border=\"0\" cellpadding=\"5\" cellspacing=\"0\"><tr><td width=\"30%\" rowspan=\"3\" align =\"center\">");
                if (listVo[i].book_imgTrue != "" && showimg != "1")
                {
                    strhtml.Append(lineLink);
                    if (listVo[i].book_imgTrue.StartsWith("/") || listVo[i].book_imgTrue.ToLower().StartsWith("http://"))
                    {
                        strhtml.Append("<img border=\"0\" src=\"" + listVo[i].book_imgTrue + "\" alt=\"ICO\" width=\"58\" height=\"58\"/>");
                    }
                    else
                    {
                        strhtml.Append("<img border=\"0\" src=\"" + this.http_start + "download/" + listVo[i].book_imgTrue + "\" alt=\"ICO\" width=\"60\" height=\"60\"/>");
                    }
                    strhtml.Append("</a>");
                }
                string istop = "";
                if (listVo[i].book_top == 1)
                {
                    istop = "�۶���";
                }
                if (listVo[i].book_good == 1)
                {
                    istop = istop + "�۾���";
                }
                if (listVo[i].book_recommend == 1)
                {
                    istop = istop + "�ۼ���";
                }
                strhtml.Append("</td><td width=\"70%\" align =\"left\">" + lineLink + istop + listVo[i].book_title + "</a></td><td width=\"30%\" rowspan=\"3\" align =\"center\">");
                strhtml.Append("<a href=\"" + this.http_start + "download/download.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;book_id=" + listVo[i].id + "&amp;id=" + listVo[i].attachementID + "&amp;RndPath=" + siteVo.SaveUpFilesPath + "&amp;n=" + HttpUtility.UrlEncode(listVo[i].book_title) + "." + listVo[i].book_ext.Replace(".", "") + "\" class=\"urlbtn\"><span class=\"KL_down_img\">�� ��</span></a><br/>" + WapTool.getStart(listVo[i].book_re, listVo[i].book_score, "��", "��", "1"));
                strhtml.Append("</td></tr><tr><td width=\"70%\" align =\"left\"><a href=\"" + this.http_start + "download/book_list.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + listVo[i].book_classid + "\">" + listVo[i].classname + "</a></td></tr><tr><td width=\"70%\" align =\"left\">" + string.Format("{0:yyy-MM-dd}", listVo[i].book_date) + " | " + listVo[i].book_size + "</td>");
                strhtml.Append("</tr></table>");


            }


            strhtml.Append("</div>");
        }
    }
    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">");

        if (sp == "0")
        {
            strhtml.Append("�����κμ�¼��");
        }
        else
        {
            strhtml.Append("�����ʺϴ˻��͵ļ�¼��");
        }
        
        strhtml.Append("</div>");
    }

    strhtml.Append("<!--listE-->");
    
    //��ʾ������ҳ
    strhtml.Append(linkURL);


    //��ʾ���԰�
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<!--web-->");
        if (s >= 0)
        {
            strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);
        }
        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
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
        strhtml.Append("<a href=\"" + this.http_start + "download/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">��������</a> ");
        strhtml.Append("</div></div>");
    }
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        if (WapTool.ISAPI_Rewrite3_Open == "1")
        {
            strhtml.Append("<a href=\"" + this.http_start + "wapindex-" + siteid + "-" + classVo.childid + ".html" + "\">�����ϼ�</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "wapindex-" + siteid + "-0.html" + "\">������ҳ</a>");

        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">�����ϼ�</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">������ҳ</a>");
        }
        strhtml.Append("</div></div>");
    }
   
    
    
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
