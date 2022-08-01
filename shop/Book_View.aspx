<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.shop.Book_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><% 
Response.Write(WapTool.showTop(bookVo.book_title, wmlVo));//显示头  
string[] xinghaolist = bookVo.book_xinghao.Split('/');  //商品型号多种 
                                                                                                                                                             
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");

   //显示广告
   if(adVo.threeShowTop!=""){
      strhtml.Append(adVo.threeShowTop+"<br/>");
   }

   

   if (bookVo.book_top == 1)
   {
       strhtml.Append("<img src=\"" + this.http_start + "NetImages/ding.gif\" alt=\"顶\"/>");

   }
   if (bookVo.book_good == 1)
   {
       strhtml.Append("<img src=\"" + this.http_start + "NetImages/jing.gif\" alt=\"精\"/>");

   }
   strhtml.Append(bookVo.book_title + "<br/>");

   
   strhtml.Append("电话订购请记商品编号:" + bookVo.id + "<br/>");


   if (bookVo.book_xinghao != "")
   {
       strhtml.Append("型号:" + bookVo.book_xinghao + "<br/>");
   }

   if (bookVo.book_jiage.ToString("f2") != "0.00")
   {
       strhtml.Append("市场价格:￥" + bookVo.book_jiage.ToString("f2") + "元<br/>");
   }
   if (bookVo.book_yhjiage.ToString("f2") != "0.00")
   {
       strhtml.Append("会员价格:￥" + bookVo.book_yhjiage.ToString("f2") + "元(" + WapTool.OnSale (bookVo.book_jiage ,bookVo.book_yhjiage ) + "折)<br/>");
   }
   if (bookVo.book_charge.ToString("f2") != "0.00")
   {
       strhtml.Append("运费:<select name=\"book_charge" + r + "\">");
       for (int i = 0; (idlistVo != null && i < idlistVo.Count); i++)
       {
           strhtml.Append("<option value=\"" + idlistVo[i].rank + "\">" + idlistVo[i].subclassName + ":￥" + idlistVo[i].rank + ".00</option>");
       }
       strhtml.Append("</select><br/>");
   }
   strhtml.Append("库存:" + bookVo.book_hottel+ "<br/>");
   if (xinghaolist.Length > 1)
   {
       strhtml.Append(orderStr + "&gt;&gt;");
       for (int i = 0; i < xinghaolist.Length; i++)
       {

           strhtml.Append("<a href=\"" + http_start + "shop/book_view_add.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "&amp;xinghaoid=" + i + "" + "\">" + xinghaolist[i] + "</a>");
           if (i != xinghaolist.Length - 1)
           {
               strhtml.Append("/");
           }
       }
       strhtml.Append("<br/>");
   }
   else
   {
       strhtml.Append("<a href=\"" + http_start + "shop/book_view_add.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">" + orderStr + "&gt;&gt;</a>");


   }


   if (hottel != "")
   {
       if (xinghaolist.Length == 1) strhtml.Append("|");

       strhtml.Append("<a href=\"wtai://wp/mc;" + hottel.Replace("-", "") + "\">电话订购</a>");
   }
   if (smstel  != "")
   {
       strhtml.Append("|<a href=\"sms:" + smstel.Replace("-", "") + "\">短信订购</a>");
   }
   strhtml.Append("<br/>--------<br/>");

   if (viewtype == "1")
   {
       strhtml.Append("产品介绍");
   }
   else
   {
       strhtml.Append("<a href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo.id + "&amp;viewtype=1" + "\">产品介绍</a>");
   }

   if (viewtype == "2")
   {
       strhtml.Append("|参数");
   }
   else
   {
       strhtml.Append("|<a href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo.id + "&amp;viewtype=2" + "\">参数</a>");
   }

   if (viewtype == "3")
   {
       strhtml.Append("|实拍图");
   }
   else
   {
       strhtml.Append("|<a href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo.id + "&amp;viewtype=3" + "\">实拍图</a>");
   }
   strhtml.Append("|<a href=\"" + http_start + "shop/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">热评</a>");
   strhtml.Append("<br/>");
    //显示自己定义标题
   if (bookVo.book_otherTitle != "")
   {
       //strhtml.Append("<div class=\"content\">");
       for (int i = 0; book_otherTitle != null && i < book_otherTitle.Length; i++)
       {
           strhtml.Append("<a href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "&amp;viewtype=" + this.viewtype + "&amp;other=" + i + "" + "\">");
           strhtml.Append(book_otherTitle[i]);
           strhtml.Append("</a><br/>");
       }

       //strhtml.Append("</div>");
   }

  
   
    
   /*
   string strImg = ""; //图片链接
   StringBuilder strDown = new StringBuilder(); //文件下载
   string[] filelist = bookVo.book_file.Split('|');
   string[] fileINFO = (bookVo.book_fileINFO + WapTool.GetRepeatString("|", filelist.Length)).Split('|');
   for (int i = 0; (i < filelist.Length); i++)
   {
       if (filelist[i].IndexOf(".") > 0)
       {
           String[] temp = filelist[i].Split('.');
           if (".gif|.jpg|.jpeg|.png|.bmp|".IndexOf(temp[1].ToLower()) >= 0)
           {

               if (filelist[i].StartsWith("/") || filelist[i].ToLower().StartsWith("http://"))
               {
                   strImg = strImg + ("<img src=\"" + filelist[i] + "\" alt=\"load...\"/><br/>");
               }
               else
               {
                   strImg = strImg + ("<a href=\"" + this.http_start + "shop/picDIY.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(@"shop\" + filelist[i]) + "\"><img src=\"" + this.http_start + "shop/" + filelist[i] + "\" alt=\"load...\"/></a><br/>");
               }
               if (fileINFO[i] != "")
               {
                   strImg = strImg + (fileINFO[i] + "<br/>");
               }
               ImgList.Add(strImg);
               strImg = "";
           }
           else
           {

               strDown.Append("<a href=\"" + this.http_start + "shop/" + filelist[i] + "\">点击下载(" + temp[1] + ")</a><br/>");
               strDown.Append(fileINFO[i] + "<br/>");
               strDown.Append("----------<br/>");
           }
       }
   }

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
       strhtml.Append("<a href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;pview=0&amp;view=" + this.view + "&amp;lpage=" + this.lpage + "" + "\">全图</a>:");
       for (int i = 1; i <= ImgList.Count; i++)
       {
           if (pview == i)
           {
               strhtml.Append(i + " ");
           }
           else
           {
               strhtml.Append("<a href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;pview=" + i + "&amp;view=" + this.view + "&amp;lpage=" + this.lpage + "" + "\">" + i + "</a> ");
           }

       }
       strhtml.Append("<br/>");

   }
   else if (ImgList.Count == 1)
   {
       strhtml.Append(ImgList[0]);
   }

   strhtml.Append(strDown);
  */


   //显示内容
   if (this.viewtype == "2" && bookVo.book_tishi.Trim() != "")
   {
       strhtml.Append(content + "<br/>--------<br/>温馨提示：<br/>" + bookVo.book_tishi);
   }
   else if (this.viewtype == "3" && content == "") //实拍图，兼容旧的
   {

       if (bookVo.book_file.Trim() == "") bookVo.book_file = bookVo.book_smallimg;
       string[] filelist = bookVo.book_file.Split('|');
       for (int i = 0; (i < filelist.Length); i++)
       {
           if (filelist[i] != "")
           {
               if (filelist[i].StartsWith("/") || filelist[i].ToLower().StartsWith("http://"))
               {
                   strhtml.Append("<img src=\"" + filelist[i] + "\" alt=\"load...\"/><br/><br/>");
               }
               else
               {
                   strhtml.Append("<img src=\"" + this.http_start + "shop/" + filelist[i] + "\" alt=\"load...\"/><br/><br/>");
               }
           }

       }


   }
   else
   {
       strhtml.Append(content);
   }

   strhtml.Append("<br/>");
   strhtml.Append(linkURL);


   
   strhtml.Append("--------<br/>【商品好坏,顾客说了算】<br/>");
  
   strhtml.Append("顾客推荐指数:" + bookVo.book_xingxing + "<br/>");
   strhtml.Append("人气:" + bookVo.book_click + ";已售" + bookVo.saleCount + "件<br/>");
   //strhtml.Append("-----------<br/>");
   strhtml.Append("共有<a href=\"" + http_start + "shop/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">热评" + bookVo.book_re.ToString() + "条</a>|<a href=\"" + http_start + "shop/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我要评论</a><br/>");
   strhtml.Append("<a href=\"" + http_start + "shop/orderlistmy.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我的订单&gt;&gt;</a>|<a href=\"" + this.http_start + "shop/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">收藏</a>|<a href=\"" + this.http_start + "shop/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">分享</a><br/> ");

   
   if (xinghaolist.Length > 1)
   {
       strhtml.Append(orderStr + "&gt;&gt;");
       for (int i = 0; i < xinghaolist.Length; i++)
       {

           strhtml.Append("<a href=\"" + http_start + "shop/book_view_add.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "&amp;xinghaoid="+i+"" + "\">" + xinghaolist[i] + "</a>");
           if (i != xinghaolist.Length - 1)
           {
               strhtml.Append("/");
           }
       }
       strhtml.Append("<br/>");
   }
   else
   {
       strhtml.Append("<a href=\"" + http_start + "shop/book_view_add.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">" + orderStr + "&gt;&gt;</a>");
   

   }
 
   if (hottel != "")
   {
       if (xinghaolist.Length == 1) strhtml.Append("|");

       strhtml.Append("<a href=\"wtai://wp/mc;" + hottel.Replace("-", "") + "\">电话订购</a>");
   }
   if (smstel != "")
   {
       strhtml.Append("|<a href=\"sms:" + smstel.Replace("-", "") + "\">短信订购</a>");
   }
   strhtml.Append("<br/>--------<br/>");

    //显示上一页下一页
    strhtml.Append(preNextTitle);
    //显示最新回复

    //购买此商品的人还购买
    //strhtml.Append("--------<br/>");
    //strhtml.Append("购买此商品的人还购买：<br/>");
    //strhtml.Append("[shop=0_5_0_0]");
      
    strhtml.Append("--------<br/>");
   
    
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
        strhtml.Append("<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
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
        strhtml.Append(adVo.threeShowTop );
    }
    strhtml.Append("<!--web-->");
    strhtml.Append("<div class=\"subtitle\">");

    if (bookVo.book_top == 1)
    {
        strhtml.Append("<img src=\"" + this.http_start + "NetImages/ding.gif\" alt=\"顶\"/>");

    }
    if (bookVo.book_good == 1)
    {
        strhtml.Append("<img src=\"" + this.http_start + "NetImages/jing.gif\" alt=\"精\"/>");

    }
    strhtml.Append(bookVo.book_title +"</div>" );
    
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("电话订购请记商品编号:<b>"+bookVo.id+"</b><br/>");
       

    if (bookVo.book_xinghao != "")
    {
        strhtml.Append("型号:" + bookVo.book_xinghao + "<br/>");
    }
   
    if (bookVo.book_jiage.ToString("f2") != "0.00")
    {
        strhtml.Append("市场价格:￥<span  class=\"gray\" style=\"text-decoration:line-through\">" + bookVo.book_jiage.ToString("f2") + "</span><br/>");
    }
    if (bookVo.book_yhjiage.ToString("f2") != "0.00")
    {
        strhtml.Append("会员价格:￥" + bookVo.book_yhjiage.ToString("f2") + "(" + WapTool.OnSale(bookVo.book_jiage, bookVo.book_yhjiage) + "折)<br/>");
    }
    if (bookVo.book_charge.ToString("f2") != "0.00")
    {
        strhtml.Append("运费:<select name=\"book_charge" + r + "\">");
        for (int i = 0; (idlistVo != null && i < idlistVo.Count); i++)
        {
            strhtml.Append("<option value=\"" + idlistVo[i].rank + "\">" + idlistVo[i].subclassName + ":￥" + idlistVo[i].rank + ".00</option>");
        }
        strhtml.Append("</select><br/>");
    }
    strhtml.Append("库存:" + bookVo.book_hottel + "<br/>");
    if (xinghaolist.Length > 1)
    {
        strhtml.Append(orderStr + "&gt;&gt;");
        for (int i = 0; i < xinghaolist.Length; i++)
        {

            strhtml.Append("<a class=\"urlbtn\" href=\"" + http_start + "shop/book_view_add.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "&amp;xinghaoid=" + i + "" + "\">" + xinghaolist[i] + "</a>");
            if (i != xinghaolist.Length - 1)
            {
                strhtml.Append("&nbsp;&nbsp;");
            }
        }
        strhtml.Append("<br/>");
    }
    else
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\"><a href=\"" + http_start + "shop/book_view_add.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">" + orderStr + "&gt;&gt;</a></div></div>");


    }

    if (hottel != "")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\"><a href=\"wtai://wp/mc;" + hottel.Replace("-", "") + "\">电话订购</a></div></div>");
    }
    if (smstel != "")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\"><a href=\"sms:" + smstel.Replace("-", "") + "\">短信订购</a></div></div>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
    
    strhtml.Append("<a");
    if (viewtype == "1")
    {
        strhtml.Append(" class=\"btSelect\"");
    }
    strhtml.Append(" href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo.id + "&amp;viewtype=1" + "\">产品介绍</a>");



    strhtml.Append("<a");
    if (viewtype == "2")
    {
        strhtml.Append(" class=\"btSelect\"");
    }
    strhtml.Append(" href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo.id + "&amp;viewtype=2" + "\">参数</a>");

    strhtml.Append("<a");
    if (viewtype == "3")
    {
        strhtml.Append(" class=\"btSelect\"");
    }
    strhtml.Append(" href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + bookVo.id + "&amp;viewtype=3" + "\">实拍图</a>");
       
    strhtml.Append("<a href=\"" + http_start + "shop/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">热评</a>");
    strhtml.Append("</div></div>");


    strhtml.Append("<div class=\"content\">");
    if (bookVo.book_otherTitle != "")
    {
        //strhtml.Append("<div class=\"content\">");
        for (int i = 0; book_otherTitle != null && i < book_otherTitle.Length; i++)
        {
            strhtml.Append("<a href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "&amp;viewtype=" + this.viewtype + "&amp;other=" + i + "" + "\">");
            strhtml.Append(book_otherTitle[i]);
            strhtml.Append("</a><br/>");
        }

        //strhtml.Append("</div>");
    }

    
  
    
    //显示内容
    if (this.viewtype == "2" && bookVo.book_tishi.Trim() != "")
    {
        strhtml.Append(content + "</div><div class=\"subtitle\">温馨提示</div><div class=\"content\">" + bookVo.book_tishi);
    }
    else if (this.viewtype == "3" && content=="") //实拍图，兼容旧的
    {

        if (bookVo.book_file.Trim() == "") bookVo.book_file = bookVo.book_smallimg;    
        string[] filelist = bookVo.book_file.Split('|');
        for (int i = 0; (i < filelist.Length); i++)
        {
            if (filelist[i] != "")
            {
                if (filelist[i].StartsWith("/") || filelist[i].ToLower().StartsWith("http://"))
                {
                    strhtml.Append("<img src=\"" + filelist[i] + "\" alt=\"load...\"/><br/><br/>");
                }
                else
                {
                    strhtml.Append("<img src=\"" + this.http_start + "shop/" + filelist[i] + "\" alt=\"load...\"/><br/><br/>");
                }
            }      

        }
        

    }else 
    {
        strhtml.Append( content );
    }
    

    strhtml.Append("</div>");
    strhtml.Append(linkURL);

    
    
    strhtml.Append("<div class=\"subtitle\">【商品好坏,顾客说了算】</div>");
    strhtml.Append("<div class=\"line1\">");
    strhtml.Append("顾客推荐指数:" + bookVo.book_xingxing + "<br/>");
    strhtml.Append("人气:" + bookVo.book_click + ";已售" + bookVo.saleCount + "件<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + http_start + "shop/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我要评论</a> <a href=\"" + http_start + "shop/book_re.aspx?pageback=&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">热评" + bookVo.book_re.ToString() + "条</a>");
    strhtml.Append("</div></div>");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "shop/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">收藏</a> <a href=\"" + this.http_start + "shop/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">分享</a><br/> ");
    strhtml.Append("</div></div>");
      
    //strhtml.Append("</div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + http_start + "shop/orderlistmy.aspx?id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我的订单&gt;&gt;</a>");
    strhtml.Append("</div></div>"); 

    

   

    //显示上一页下一页
    if (WapTool.getArryString(classVo.smallimg, '|', 16) != "1")
    {
        strhtml.Append(preNextTitle);
    }

    
    //购买此商品的人还购买
    //strhtml.Append("<div class=\"topre\">");
    //strhtml.Append("购买此商品的人还购买：<br/>");
    //strhtml.Append("[shop=0_5_0_0]");    
    //strhtml.Append("</div>");
    

    //显示电脑版
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<!--web-->");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }
    
    //显示广告
    if (adVo.threeShowDown != "")
    {
        strhtml.Append(adVo.threeShowDown);
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
            strhtml.Append("<a href=\"" + this.http_start + "shoplist-" + classid + "-" + this.lpage + ".html" + "\">返回上级</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "wapindex-" + siteid + "-0.html" + "\">返回首页</a>");

        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + "" + "\">返回上级</a> ");
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
