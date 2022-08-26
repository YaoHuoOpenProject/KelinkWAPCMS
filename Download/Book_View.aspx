<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.download.Book_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(bookVo.book_title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   //显示广告
   if (adVo.threeShowTop != "")
   {
       strhtml.Append(adVo.threeShowTop + "<br/>");
   }
   strhtml.Append("<b>" + bookVo.book_title + "</b><br/>");




   if (this.showMySelectUA != "1")
   {
       strhtml.Append("机型:" + mobileVo.nameCN + " " + mobileVo.Mode + "");
       strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("download/book_view.aspx?sp=" + this.sp + "&amp;id=" + this.id + "&amp;siteid=" + siteid + "&amp;classid=" + classid) + "\">更改</a> ");
       strhtml.Append(mobileVo.remark);
       strhtml.Append("<br/>");
   }
    
   string strImg = ""; //图片链接
   StringBuilder strDown = new StringBuilder(); //文件下载

   for (int i = 0; (filelist != null && i < filelist.Count); i++)
   {
       if (".gif|.jpg|.jpeg|.png|.bmp|".IndexOf(filelist[i].book_ext.ToLower()) >= 0)
       {

           if (filelist[i].book_file.StartsWith("/") || filelist[i].book_file.ToLower().StartsWith("http://"))
           {
               strImg = strImg + ("<img src=\"" + filelist[i].book_file + "\" alt=\"load...\"/><br/>");
           }
           else
           {
               strImg = strImg + ("<a href=\"" + this.http_start + "download/picDIY.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(@"download\" + filelist[i].book_file) + "\"><img src=\"" + this.http_start + "download/" + filelist[i].book_file + "\" alt=\"load...\"/></a><br/>");
           }

           if (filelist[i].book_content != "")
           {
               strImg = strImg + (filelist[i].book_content + "<br/>");
           }
           ImgList.Add(strImg);
           strImg = "";
       }
       else
       {
           strDown.Append(filelist[i].book_title);
           strDown.Append("(" + filelist[i].book_ext.Replace(".", "") + "/" + filelist[i].book_size + ")<br/>");
           strDown.Append("<a href=\"" + this.http_start + "download/download.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;book_id=" + this.id + "&amp;id=" + filelist[i].ID + "&amp;RndPath=" + siteVo.SaveUpFilesPath + "&amp;n=" + HttpUtility.UrlEncode(filelist[i].book_title) + "." + filelist[i].book_ext.Replace(".", "") + "\">点击下载</a>(" + filelist[i].book_click + "次)<br/>");
           strDown.Append(filelist[i].book_content + "<br/>----------<br/>");
       }
   }
   if (ImgList != null && ImgList.Count > 0)
   {
       //对ImgList进行分页
       if (pview == 0)
       {
           for (int i = 0; i < ImgList.Count; i++)
           {
               strhtml.Append(ImgList[i]);
           }

       }
       else if (ImgList.Count > 1)
       {
           if (pview > ImgList.Count || pview < 1) pview = 1;
           strhtml.Append(ImgList[pview - 1]);
           //生成分页图链接
           strhtml.Append("<a href=\"" + this.http_start + "download/book_view.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;pview=0&amp;lpage=" + this.lpage + "" + "\">截图</a>:");
           for (int i = 1; i <= ImgList.Count; i++)
           {
               if (pview == i)
               {
                   strhtml.Append(i + " ");
               }
               else
               {
                   strhtml.Append("<a href=\"" + this.http_start + "download/book_view.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;pview=" + i + "&amp;lpage=" + this.lpage + "" + "\">" + i + "</a> ");
               }

           }
           strhtml.Append("<br/>");

       }
       else if (ImgList.Count == 1)
       {
           strhtml.Append(ImgList[0]);
       }

   }

   if (showMakerID == "1")
   {
       if (bookVo.MakerID == 0)
       {
           strhtml.Append("[上传会员]:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.MakerID + "&amp;backurl=" + HttpUtility.UrlEncode("download/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">" + siteVo.nickname + "(" + this.siteid + ")</a><br/>");

       }
       else
       {
           KeLin.ClassManager.Model.user_Model touserVo = new KeLin.ClassManager.Model.user_Model();
           touserVo = WapTool.getUserInfo(bookVo.MakerID.ToString(), this.siteid);
           strhtml.Append("[上传会员] <a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.MakerID + "&amp;backurl=" + HttpUtility.UrlEncode("download/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">" + touserVo.nickname + "(" + bookVo.MakerID + ")</a><br/>");
       }
   }
   strhtml.Append("[更新日期] " + string.Format("{0:yyyy-MM-dd}", bookVo.book_date) + "<br/>");
   if (bookVo.updateInfo != "")
   {
       strhtml.Append("[更新说明] " + bookVo.updateInfo + "<br/>");
   }

   if (bookVo.softMoney != "")
   {
       strhtml.Append("[资费说明] " + bookVo.softMoney + "<br/>");
   }

   if (bookVo.softSafe != "")
   {
       strhtml.Append("[安全说明] " + bookVo.softSafe + "<br/>");
   }
   if (bookVo.softVer != "")
   {
       strhtml.Append("[" + par25 + "版本] " + bookVo.softVer + "<br/>");
   }
   if (bookVo.softLtd != "")
   {
       strhtml.Append("[" + par25 + "厂商] " + bookVo.softLtd + "<br/>");
   }
   if (bookVo.softLang != "")
   {
       strhtml.Append("[界面语言] " + bookVo.softLang + "<br/>");
   }
   strhtml.Append("[浏览人气] " + bookVo.book_click + "<br/>");
   if (bookVo.money > 0)
   {
       strhtml.Append("[下载扣币] " + bookVo.money + "<br/>");

   }
   strhtml.Append("[所属分类] <a href=\"" + this.http_start + "download/book_list.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + classVo.classname + "</a><br/>");




   strhtml.Append("[客户评分] " + WapTool.getStart(bookVo.book_re, bookVo.book_score, "★", "☆", "1") + "<br/>");

   if (bookVo.book_lable != "")
   {
       strhtml.Append("[标签搜索] ");
       string[] arrylable = bookVo.book_lable.Split(' ');
       for (int i = 0; i < arrylable.Length; i++)
       {
           if (arrylable[i].Trim() != "")
           {
               strhtml.Append("<a href=\"" + this.http_start + "download/book_list.aspx?action=search&amp;key=" + HttpUtility.UrlEncode(arrylable[i]) + "&amp;type=lable&amp;siteid=" + this.siteid + "&amp;classid=0\">" + arrylable[i] + "</a> ");
           }

       }
       strhtml.Append("<br/>");

   }
    
   if (content != "")
   {
       strhtml.Append("[" + par21 + "] ");

       //if (view != "all" && this.content.Length > 100)
       //{
       //    strhtml.Append(content.Substring(0, 100) + "...");
       //    strhtml.Append("<a href=\"" + http_start_url + "&amp;id=" + this.id + "&amp;vpage=2&amp;view=all\">详细</a>");
       //}
      // else
       //{
           strhtml.Append(content);
      // }
       //显示内容列表
       strhtml.Append("<br/>----------<br/>");
   }

   strhtml.Append(strDown);

   if (filelist == null || filelist.Count < 1)
   {
       if (this.myua != "" && this.myua != "0")
       {
           strhtml.Append("没有找到最适合您的机型" + mobileVo.nameCN + " " + mobileVo.Mode + " 的下载！<br/>");
       }

   }

   if (dlist != null && filelist != null)
   {
       if (dlist.Count != filelist.Count)
       {
           strhtml.Append("<a href=\"" + this.http_start + "download/book_viewua.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">您的机型可能支持以下文件！</a><br/>");
       }

   }


   strhtml.Append("<a href=\"" + http_start + "download/book_view.aspx?sp=" + this.sp + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=1&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">顶一下!" + bookVo.ding + "</a>|<a href=\"" + http_start + "download/book_re.aspx?sp=" + this.sp + "&amp;pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">评论" + bookVo.book_re + "</a>|<a href=\"" + this.http_start + "download/Report_add.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "&amp;id=" + this.id + "\">报错</a><br/> ");
   if (showShare != "1")
   {
       strhtml.Append("<a href=\"" + this.http_start + "download/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">分享</a>|<a href=\"" + this.http_start + "download/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a>|");
       strhtml.Append("<a href=\"" + this.http_start + "download/user_wapadd.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">上传</a>|");
       strhtml.Append("<a href=\"" + this.http_start + "bbs/toDefine.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("download/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">设置</a><br/>");

   }
   strhtml.Append("----------<br/>");
  

  
    
    //显示评论
   if ("1".Equals(showRe))
   {
       
       //显示最新回复
       strhtml.Append(this.GetLang("评分|评分|评分 ") + "*:");
       strhtml.Append("<select name=\"book_score" + r + "\" value=\"" + this.book_score + "\">");
       strhtml.Append("<option value=\"5\">★★★★★</option>");
       strhtml.Append("<option value=\"4\">★★★★</option>");
       strhtml.Append("<option value=\"3\">★★★</option>");
       strhtml.Append("<option value=\"2\">★★</option>");
       strhtml.Append("<option value=\"1\">★</option>");
       strhtml.Append("</select><br/>");
       strhtml.Append("评语*:<input type=\"text\" name=\"con" + r + "tent\" value=\"\" maxlength=\"200\"/><br/>");
       strhtml.Append("<anchor><go href=\"" + http_start + "download/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
       strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
       strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
       strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
       strhtml.Append("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
       strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
       strhtml.Append("<postfield name=\"book_score\" value=\"$(book_score" + r + ")\"/>");
       strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
       strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
       strhtml.Append("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("download/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
       strhtml.Append("</go>发表评论</anchor><br/>");

       for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
       {
           strhtml.Append("[" + (bookVo.book_re - k) + "楼]<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + relistVo[i].userid + "&amp;id=" + relistVo[i].id + "&amp;backurl=" + "\">" + relistVo[i].nickname + "</a>:");
           if (relistVo[i].content.Length > 10)
           {
               strhtml.Append(relistVo[i].content.Substring(0, 9) + "...(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + ")<br/>");
           }
           else
           {
               strhtml.Append(relistVo[i].content + "(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + ")<br/>");
           }
           k = k + 1;
       }

       if (relistVo == null)
       {
           strhtml.Append("暂无评论！<br/>");
       }
       else
       {
           strhtml.Append("<a href=\"" + http_start + "download/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + bookVo.book_re + ")</a><br/>");
       }
   }

   strhtml.Append("----------<br/>");
   //显示上一页下一页，可关闭加速性能,web.config配置
   strhtml.Append(preNextTitle);
   

   //显示广告
   if (adVo.threeShowDown != "")
   {
       strhtml.Append(adVo.threeShowDown + "<br/>");
   }

   if (downLink != "")
   {
       strhtml.Append(downLink);
   }
   else
   {
       strhtml.Append("<a href=\"" + this.http_start + "download/book_list.aspx?sp=" + this.sp + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a>-");
       strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
   }
    strhtml.Append(WapTool.GetVS(wmlVo));
   //输出错误
   strhtml.Append(ERROR);
   strhtml.Append("</p>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
}else{ //2.0

    
    //显示广告
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop + "");
    }
    //strhtml.Append("<div class=\"title\">" + bookVo.book_title + "</div>");

    if (this.showMySelectUA != "1")
    {
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("机型:" + mobileVo.nameCN + " " + mobileVo.Mode + "");
        strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("download/book_view.aspx?sp=" + this.sp + "&amp;id=" + this.id + "&amp;siteid=" + siteid + "&amp;classid=" + classid) + "\">更改</a> ");
        strhtml.Append(mobileVo.remark);

        strhtml.Append("</div>");
    }
    
    
    string strImg = ""; //图片链接
    StringBuilder strDown = new StringBuilder(); //文件下载

    for (int i = 0; (filelist != null && i < filelist.Count); i++)
    {
        if (".gif|.jpg|.jpeg|.png|.bmp|".IndexOf(filelist[i].book_ext.ToLower()) >= 0)
        {

            if (filelist[i].book_file.StartsWith("/") || filelist[i].book_file.ToLower().StartsWith("http://"))
            {
                strImg = strImg+("<img src=\"" + filelist[i].book_file + "\" alt=\"load...\"/> ");
                if (filelist[i].book_content != "")
                {
                    strImg = strImg + "<br/>";
                }
            }
            else
            {
                strImg = strImg + ("<a href=\"" + this.http_start + "download/picDIY.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(@"download\" + filelist[i].book_file) + "\"><img src=\"" + this.http_start + "download/" + filelist[i].book_file + "\" alt=\"load...\"/></a> ");
                if (filelist[i].book_content != "")
                {
                    strImg = strImg + "<br/>";
                }
            }

            if (filelist[i].book_content != "")
            {
                strImg = strImg+(filelist[i].book_content + "<br/>");
            }
            ImgList.Add(strImg);
            strImg = "";
        }
        else
        {
            strDown.Append(filelist[i].book_title);
            strDown.Append("(" + filelist[i].book_ext.Replace(".", "") + "/" + filelist[i].book_size + ")<br/>");
            strDown.Append("<div class=\"btBox\"><div class=\"bt1\"><a href=\"" + this.http_start + "download/download.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;book_id=" + this.id + "&amp;id=" + filelist[i].ID + "&amp;RndPath=" + siteVo.SaveUpFilesPath + "&amp;n=" + HttpUtility.UrlEncode(filelist[i].book_title) + "." + filelist[i].book_ext.Replace(".", "") + "\">点击下载(" + filelist[i].book_click + "次)</a></div></div><br/>");
            strDown.Append(filelist[i].book_content + "<br/>");
        }
    }

    if (ImgList != null && ImgList.Count > 0)
    {
        strhtml.Append("<div class=\"subtitle\">" + par19 + "</div>");
        strhtml.Append("<div class=\"content\">");
        

        //对ImgList进行分页
        if (pview == 0)
        {
            for (int i = 0; i < ImgList.Count; i++)
            {
                strhtml.Append(ImgList[i]);
            }

        }
        else if (ImgList.Count > 1)
        {
            if (pview > ImgList.Count || pview < 1) pview = 1;
            strhtml.Append(ImgList[pview - 1]);
            //生成分页图链接
            strhtml.Append("<br/><a href=\"" + this.http_start + "download/book_view.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;pview=0&amp;lpage=" + this.lpage + "" + "\">所有截图</a>:");
            for (int i = 1; i <= ImgList.Count; i++)
            {
                if (pview == i)
                {
                    strhtml.Append(i + " ");
                }
                else
                {
                    strhtml.Append("<a href=\"" + this.http_start + "download/book_view.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;pview=" + i + "&amp;lpage=" + this.lpage + "" + "\">" + i + "</a> ");
                }

            }
            strhtml.Append("<br/>");

        }
        else if (ImgList.Count == 1)
        {
            strhtml.Append(ImgList[0]);
        }

        strhtml.Append("</div>");

    }
    strhtml.Append("<div class=\"subtitle\">" + par20 + "</div>");
    strhtml.Append("<div class=\"content\">");

    strhtml.Append("[" + par25 + "名称]" + bookVo.book_title + "<br/>");
    if (showMakerID == "1")
    {
        if (bookVo.MakerID == 0)
        {
            strhtml.Append("[上传会员] <a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.MakerID + "&amp;backurl=" + HttpUtility.UrlEncode("download/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">" + siteVo.nickname + "(" + this.siteid + ")</a><br/>");

        }
        else
        {
            KeLin.ClassManager.Model.user_Model touserVo = new KeLin.ClassManager.Model.user_Model();
            touserVo = WapTool.getUserInfo(bookVo.MakerID.ToString(), this.siteid);
            strhtml.Append("[上传会员] <a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.MakerID + "&amp;backurl=" + HttpUtility.UrlEncode("download/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">" + touserVo.nickname + "(" + bookVo.MakerID + ")</a><br/>");
        }
    }
    strhtml.Append("[更新日期] " + string.Format("{0:yyyy-MM-dd}", bookVo.book_date) + "<br/>");
    if (bookVo.updateInfo != "")
    {
        strhtml.Append("[更新说明] "+bookVo.updateInfo+"<br/>");
    }
    if (bookVo.softMoney != "")
    {
        strhtml.Append("[资费说明] " + bookVo.softMoney + "<br/>");
    }
    if (bookVo.softSafe != "")
    {
        strhtml.Append("[安全说明] " + bookVo.softSafe + "<br/>");
    }
    if (bookVo.softVer != "")
    {
        strhtml.Append("[" + par25 + "版本] " + bookVo.softVer + "<br/>");
    }
    if (bookVo.softLtd != "")
    {
        strhtml.Append("[" + par25 + "厂商] " + bookVo.softLtd + "<br/>");
    }
    if (bookVo.softLang != "")
    {
        strhtml.Append("[界面语言] " + bookVo.softLang + "<br/>");
    }
    
    strhtml.Append("[浏览人气] " + bookVo.book_click + "<br/>");
    if (bookVo.money > 0)
    {
        strhtml.Append("[下载扣币] " + bookVo.money + "<br/>");

    }
    strhtml.Append("[所属分类] <a class=\"urlbtn\" href=\"" + this.http_start + "download/book_list.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + classVo.classname + "</a><br/>");




    strhtml.Append("[客户评分] " + WapTool.getStart(bookVo.book_re, bookVo.book_score, "★", "☆", "1") + "<br/>");

    if (bookVo.book_lable != "")
    {
        strhtml.Append("[标签搜索] ");
        string[] arrylable = bookVo.book_lable.Split(' ');
        for (int i = 0; i < arrylable.Length; i++)
        {
            if (arrylable[i].Trim() != "")
            {
                strhtml.Append("<a class=\"urlbtn\" href=\"" + this.http_start + "download/book_list.aspx?action=search&amp;key=" + HttpUtility.UrlEncode(arrylable[i]) + "&amp;type=lable&amp;siteid=" + this.siteid + "&amp;classid=0\">" + arrylable[i] + "</a> ");
            }

        }
        strhtml.Append("<br/>");

    }
    strhtml.Append("</div>");

    
    
    if (content != "")
    {

        strhtml.Append("<div class=\"subtitle\">" + par21 + "</div>");
        strhtml.Append("<div class=\"content\">");

        //if (view != "all" && this.content.Length > 100)
        //{
        //    strhtml.Append(content.Substring(0, 100) + "...");
        //    strhtml.Append("<a href=\"" + http_start_url + "&amp;id=" + this.id + "&amp;vpage=2&amp;view=all\">详细</a>");
        //}
        //else
        //{
            strhtml.Append(content);
        //}

        strhtml.Append("</div>");
    }


    strhtml.Append("<div class=\"subtitle\">" + par22 + "</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append(strDown);


    if (filelist == null || filelist.Count <1)
    {
        if (this.myua != "" && this.myua != "0")
        {
            strhtml.Append("没有找到最适合您的机型" + mobileVo.nameCN + " " + mobileVo.Mode + " 的下载！<br/>");
        }

    }

    if (dlist != null && filelist != null)
    {
        if (dlist.Count != filelist.Count)
        {
            strhtml.Append("<a href=\"" + this.http_start + "download/book_viewua.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">您的机型可能支持以下文件！</a><br/>");
        }

    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">" + par24 + "</div>");
    strhtml.Append("<div class=\"content\">");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt3\">");
    strhtml.Append("<a href=\"" + http_start + "download/book_view.aspx?sp=" + this.sp + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=1&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">顶一下(" + bookVo.ding + ")</a> <a href=\"" + http_start + "download/book_re.aspx?sp=" + this.sp + "&amp;pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">评论(" + bookVo.book_re + ")</a> <a href=\"" + this.http_start + "download/Report_add.aspx?sp=" + this.sp + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "&amp;id=" + this.id + "\">报错</a>  ");
    strhtml.Append("</div></div>");
    if (showShare != "1")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
        strhtml.Append("<a href=\"" + this.http_start + "download/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">分享</a> <a href=\"" + this.http_start + "download/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "download/user_wapadd.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">上传</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/toDefine.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("download/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">设置</a>");
        strhtml.Append("</div></div>");
    }
    strhtml.Append("</div>");

  

    
    if ("1".Equals(this.showRe))
    {
        //显示最新回复
        strhtml.Append("<div class=\"subtitle\">" + par23 + "</div>");
        strhtml.Append("<div class=\"content\">");
        
        strhtml.Append("<form name=\"re\" action=\"" + http_start + "download/book_re.aspx\" method=\"post\">");
        strhtml.Append(this.GetLang("评分|评分|评分 ") + "*:");
        strhtml.Append("<select name=\"book_score\">");
        strhtml.Append("<option value=\"5\">★★★★★</option>");
        strhtml.Append("<option value=\"4\">★★★★</option>");
        strhtml.Append("<option value=\"3\">★★★</option>");
        strhtml.Append("<option value=\"2\">★★</option>");
        strhtml.Append("<option value=\"1\">★</option>");
        strhtml.Append("</select><br/>");
        
        strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");

        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("download/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
        strhtml.Append("<input type=\"submit\" name=\"go\" class=\"btn\" value=\"发表评论\"/></form><br/>");

        for (int i = 0; (relistVo != null && i < relistVo.Count); i++)
        {
            if (i % 2 == 0)
            {
                strhtml.Append("<div class=\"line1\">");
            }
            else
            {
                strhtml.Append("<div class=\"line2\">");
            }
            strhtml.Append("[" + (bookVo.book_re - k) + "楼] <a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + relistVo[i].userid + "&amp;id=" + relistVo[i].id + "&amp;backurl=" + "\">" + relistVo[i].nickname + "</a>:");
            if (relistVo[i].content.Length > 200)
            {
                strhtml.Append(relistVo[i].content.Substring(0, 200) + "...<span class=\"right\">(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + "</span>");
            }
            else
            {
                strhtml.Append(relistVo[i].content + " <span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + "</span>");
            }
            strhtml.Append("</div>");
            k = k + 1;
        }

        if (relistVo == null)
        {
            strhtml.Append("<div class=\"tip\">暂无评论！</div>");
        }
        else
        {
            strhtml.Append("<div class=\"bt1\"><a href=\"" + http_start + "download/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多评论(" + bookVo.book_re + ")</a></div>");
        }
        strhtml.Append("</div>");

    }

    //显示上一页下一页，可关闭加速性能,web.config配置
    strhtml.Append(preNextTitle);


    //显示电脑版
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<div class=\"title\">");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }

    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown + "");
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
            strhtml.Append("<a href=\"" + this.http_start + "downloadlist-" + classid + "-" + this.lpage + ".html?sp=" + this.sp  + "\">返回上级</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "wapindex-" + siteid + "-0.html" + "\">返回首页</a>");

        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "download/book_list.aspx?sp=" + this.sp + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
        }
        strhtml.Append("</div></div>");
    }
        
    //输出错误
    strhtml.Append(ERROR);
   

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
