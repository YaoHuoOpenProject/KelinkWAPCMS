<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_list.aspx.cs" Inherits="KeLin.WebSite.shop.book_list" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//显示头                                                                                                                                                                       
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
    
    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }
    strhtml.Append("<a href=\"" + this.http_start + "shop/book_view_add.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">购物车(" + this.shopNum + ")</a>|<a href=\"" + http_start + "shop/orderlistmy.aspx?lpage=" + this.CurrentPage + "&amp;id=0&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我的订单</a>|<a href=\""+this.http_start  +"shop/book_search.aspx?siteid="+this.siteid +"&amp;classid="+this.classid +"\">搜索</a><br/>");
    if (this.action == "" || this.action == "class")
    {
        strhtml.Append("按.");

        if (this.sort == "1-desc")
        {

            strhtml.Append("<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;sort=1-asc" + "\">*价格↓  </a>");

        }
        else
        {

            strhtml.Append("<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;sort=1-desc" + "\">");
            if (this.sort == "1-asc") strhtml.Append("*");
            strhtml.Append("价格↑ </a>");

        }
        if (this.sort == "2-desc")
        {
            strhtml.Append("|<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;sort=2-asc" + "\">*销量↓  </a>");

        }
        else
        {

            strhtml.Append("|<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;sort=2-desc" + "\">");
            if (this.sort == "2-asc") strhtml.Append("*");
            strhtml.Append("销量↑ </a>");

        }
        if (this.sort == "4-desc")
        {
            strhtml.Append("|<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;sort=4-asc" + "\">*人气↓  </a>");

        }
        else
        {

            strhtml.Append("|<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;sort=4-desc" + "\">");
            if (this.sort == "4-asc") strhtml.Append("*");
            strhtml.Append("人气↑ </a>");

        }
        if (this.sort == "3-desc")
        {
            strhtml.Append("|<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;sort=3-asc" + "\">*新上架↓  </a>");

        }
        else
        {

            strhtml.Append("|<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;sort=3-desc" + "\">");
            if (this.sort == "3-asc") strhtml.Append("*");
            strhtml.Append("新上架↑ </a>");

        }

        strhtml.Append("<br/>--------<br/>");
    }
    //显示列表
    String book_click = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        strhtml.Append(index + ".");
        if (listVo[i].book_top == 1)
        {
            strhtml.Append("<b>[顶]</b>");

        }
        if (listVo[i].book_good == 1)
        {
            strhtml.Append("<b>[精]</b>");

        }
        if (this.action == "hot")
        {
            book_click = "("+listVo[i].book_click.ToString()+")";
        }


        strhtml.Append("<a href=\"" + http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + CurrentPage + "" + "\">" + listVo[i].book_title + "</a><br/>");

        if (listVo[i].book_file.Trim () != "")
        {
            listVo[i].book_file = listVo[i].book_file + "|";
        }
        else
        {
            listVo[i].book_file = listVo[i].book_smallimg  + "|";
        }
        if (showImgType == "1")
        {
            listVo[i].book_file = listVo[i].book_smallimg + "|";
        }
        string img = listVo[i].book_file.Split('|')[0];
        if (img != "")
        {
            strhtml.Append("<a href=\"" + http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + CurrentPage + "" + "\">");
            if (img.StartsWith("/") || img.ToLower().StartsWith("http://"))
            {
                strhtml.Append("<img src=\"" + listVo[i].book_smallimg + "\" alt=\"load...\"/>");
            }
            else
            {
                strhtml.Append("<img src=\"" + this.http_start + "shop/" + img + "\" alt=\"load...\"/>");
            }
            strhtml.Append("</a><br/>");
        }
        if (listVo[i].book_tip != "") strhtml.Append(listVo[i].book_tip + "<br/>");


        strhtml.Append("今日特价:" + listVo[i].book_yhjiage.ToString("f2") + "元(" + WapTool.OnSale(listVo[i].book_jiage, listVo[i].book_yhjiage) + "折)<br/>");
       string[] xinghaolist = listVo[i].book_xinghao.Split('/');
       if (xinghaolist.Length > 1)
       {
           strhtml.Append(orderStr+":");
           for (int k = 0; k < xinghaolist.Length; k++)
           {

               strhtml.Append("<a href=\"" + http_start + "shop/book_view_add.aspx?id=" + listVo[i].id + "&amp;classid=" + listVo[i].book_classid + "&amp;siteid=" + siteid + "&amp;xinghaoid=" + k + "" + "\">" + xinghaolist[k] + "</a>");
               if (k != xinghaolist.Length - 1)
               {
                   strhtml.Append("/");
               }
           }
           strhtml.Append("<br/><a href=\"" + http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + listVo[i].book_classid + "&amp;id=" + listVo[i].id + "&amp;lpage=" + CurrentPage + "" + "\">立即查看</a>");
       }
       else
       {
           strhtml.Append("<a href=\"" + http_start + "shop/book_view_add.aspx?id=" + listVo[i].id + "&amp;classid=" + listVo[i].book_classid + "&amp;siteid=" + siteid + "" + "\">" + orderStr + "</a>");
       }
        strhtml.Append ("|<a href=\"" + http_start + "shop/book_re.aspx?pageback=&amp;getTotal=" + listVo[i].book_re + "&amp;id=" + listVo[i].id + "&amp;classid=" + listVo[i].book_classid + "&amp;siteid=" + siteid + "" + "\">顾客热评(" + listVo[i].book_re.ToString() + ")</a>");
        strhtml.Append("<br/>--------<br/>");

    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }
    //导航按钮
    if (action == "search")
    {
        strhtml.Append("<a href=\"" + this.http_start + "shop/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
    }
    if (downLink != "")
    {
        strhtml.Append(downLink);
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    }
    strhtml.Append(WapTool.GetVS(wmlVo));
    if (classVo.sitedowntip != "")
    {
        strhtml.Append("<br/>" + classVo.sitedowntip);
    }
    Response.Write(ERROR);  
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{



    

    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<div class=\"logo\"><img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/></div>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce);
    }

    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
   // strhtml.Append("<div class=\"subtitle\">" + classVo.classname + "</div>");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt3\"><a href=\"" + this.http_start + "shop/book_view_add.aspx?classid=" + this.classid + "&amp;siteid=" + this.siteid + "\">购物车(" + this.shopNum + ")</a> <a href=\"" + http_start + "shop/orderlistmy.aspx?lpage=" + this.CurrentPage + "&amp;id=0&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">我的订单</a> <a href=\"" + this.http_start + "shop/book_search.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">搜索</a></div></div>");

    if (this.action == "" || this.action == "class")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
       
        if (this.sort == "1-desc")
        {
            
            strhtml.Append("<a class=\"btSelect\" href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;sort=1-asc" + "\">价格</a> ");

        }
        else
        {

            strhtml.Append("<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;sort=1-desc" + "\">");
            //if (this.sort == "1-asc") strhtml.Append("*");
            strhtml.Append("价格</a> ");
     
        }
        if (this.sort == "2-desc")
        {
            strhtml.Append("<a class=\"btSelect\"  href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;sort=2-asc" + "\">销量</a> ");
            
        }
        else
        {
            
            strhtml.Append("<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;sort=2-desc" + "\">");
            //if (this.sort == "2-asc")  strhtml.Append("*");
            strhtml.Append("销量</a> ");
        
        }
        if (this.sort == "4-desc")
        {
            strhtml.Append("<a class=\"btSelect\"  href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;sort=4-asc" + "\">人气</a> ");

        }
        else
        {

            strhtml.Append("<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;sort=4-desc" + "\">");
            //if (this.sort == "4-asc") strhtml.Append("*");
            strhtml.Append("人气</a> ");

        }
        if (this.sort == "3-desc")
        {
            strhtml.Append("<a class=\"btSelect\"  href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;sort=3-asc" + "\">新上架</a> ");
            
        }
        else
        {
  
            strhtml.Append("<a href=\"" + this.http_start + "shop/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;sort=3-desc" + "\">");
            //if (this.sort == "3-asc") strhtml.Append("*");
            strhtml.Append("新上架</a> ");
       
        }

        strhtml.Append("</div></div>");
    }
    //显示列表
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
    strhtml.Append("<!--listS-->"); 
    String book_click = "";

    string whtemps = "";
    if (this.towidht != "0")
    {
        whtemps = " width=\"" + this.towidht+"px\"";
    }
    if (this.toheight != "0")
    {
        whtemps = whtemps + " height=\"" + this.toheight + "px\"";
    }
    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        if (this.action == "hot")
        {
            book_click = "(" + listVo[i].book_click.ToString() + ")";
        }
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }

        //strhtml.Append(index + ".");
        if (listVo[i].book_top == 1)
        {
            strhtml.Append("<img src=\"" + this.http_start + "NetImages/ding.gif\" alt=\"顶\"/>");

        }
        if (listVo[i].book_good == 1)
        {
            strhtml.Append("<img src=\"" + this.http_start + "NetImages/jing.gif\" alt=\"精\"/>");

        }
      

        if (listVo[i].book_file.Trim() != "")
        {
            listVo[i].book_file = listVo[i].book_file + "|";
        }
        else
        {
            listVo[i].book_file = listVo[i].book_smallimg + "|";
        }
        if (showImgType == "1")
        {
            listVo[i].book_file = listVo[i].book_smallimg + "|";
        }
        string img = listVo[i].book_file.Split('|')[0];
        if (img != "")
        {
            strhtml.Append("<p align=\"center\">");
            if (WapTool.ISAPI_Rewrite3_Open == "1")
            {
                strhtml.Append("<a href=\"" + http_start + "shop-" + listVo[i].id +".html"+ lpagetemp + "\">");
          
            }
            else
            {
                strhtml.Append("<a href=\"" + http_start + "shop/view.aspx?id=" + listVo[i].id + lpagetemp + "\">");
            }
            string tempimg = "";
            if (img.StartsWith("/") || img.ToLower().StartsWith("http://"))
            {
                //strhtml.Append("<img src=\"" + listVo[i].book_smallimg + "\"  alt=\"load...\"/>");
                img = listVo[i].book_smallimg;
            }
            else
            {
                //strhtml.Append("<img src=\"" + this.http_start + "shop/" + img + "\"  alt=\"load...\"/>");
                img = this.http_start + "shop/" + img;
            }


            strhtml.Append("<img src=\"" + img + "\" " + whtemps + " alt=\"" + listVo[i].book_title + "\"/>");
            //strhtml.Append("<div style=\"margin-left: auto;margin-right: auto;width:"+towidht+"px;height:"+toheight+"px;border-width: 0px;-moz-border-radius: 5px;-khtml-border-radius: 5px;-webkit-border-radius: 5px;border-radius: 5px;padding:0px;background:url(" + img + "); background-size:100% 100%\"></div>");
            strhtml.Append("</a></p>");
        }
        if (WapTool.ISAPI_Rewrite3_Open == "1")
        {
            strhtml.Append("<a href=\"" + http_start + "shop-" + listVo[i].id +".html"+ lpagetemp + "\">" + listVo[i].book_title + "</a><br/>");
       
        }
        else
        {
            strhtml.Append("<a href=\"" + http_start + "shop/view.aspx?id=" + listVo[i].id + lpagetemp + "\">" + listVo[i].book_title + "</a><br/>");
        }
        if (listVo[i].book_tip != "") strhtml.Append("<span class=\"gray\">" + listVo[i].book_tip + "</span><br/>");

        strhtml.Append("今日特价:￥" + listVo[i].book_yhjiage.ToString("f2") + " (" + WapTool.OnSale(listVo[i].book_jiage, listVo[i].book_yhjiage) + "折) ￥<span  class=\"gray\" style=\"text-decoration:line-through\">" + listVo[i].book_jiage.ToString("f2") + "</span><br/>");
        string[] xinghaolist = listVo[i].book_xinghao.Split('/');
        if (xinghaolist.Length > 1)
        {
            strhtml.Append(orderStr+":");
            for (int k = 0; k < xinghaolist.Length; k++)
            {

                strhtml.Append("<a class=\"urlbtn\" href=\"" + http_start + "shop/book_view_add.aspx?id=" + listVo[i].id + "&amp;classid=" + listVo[i].book_classid  + "&amp;siteid=" + siteid + "&amp;xinghaoid=" + k + "" + "\">" + xinghaolist[k] + "</a>");
                if (k != xinghaolist.Length - 1)
                {
                    strhtml.Append("/");
                }
            }
            
            
        }
        strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        if (xinghaolist.Length > 1)
        {
            if (WapTool.ISAPI_Rewrite3_Open == "1")
            {
                strhtml.Append("<a  href=\"" + http_start + "shop-" + listVo[i].id+".html" + lpagetemp + "\">查看详情</a> ");
            }
            else
            {
                strhtml.Append("<a  href=\"" + http_start + "shop/view.aspx?id=" + listVo[i].id + lpagetemp + "\">查看详情</a> ");
            }
        }
        else
        {
            strhtml.Append("<a  href=\"" + http_start + "shop/book_view_add.aspx?id=" + listVo[i].id + "&amp;classid=" + listVo[i].book_classid + "&amp;siteid=" + siteid + "" + "\">" + orderStr + "</a> ");
        }

        strhtml.Append(" <a  href=\"" + http_start + "shop/book_re.aspx?pageback=&amp;getTotal=" + listVo[i].book_re + "&amp;id=" + listVo[i].id + "&amp;classid=" + listVo[i].book_classid + "&amp;siteid=" + siteid + "" + "\">顾客热评(" + listVo[i].book_re.ToString() + ")</a>");
        strhtml.Append("</div></div>");
     
        
        strhtml.Append("</div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }

    strhtml.Append("<!--listE-->");

   
    //显示导航分页
    
        strhtml.Append(linkURL);
    

    //显示电脑版
    string isWebHtml = this.ShowWEB_list(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<div class=\"subtitle\">");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }

    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }
    //导航按钮
   
    if (action == "search")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\"><a href=\"" + this.http_start + "shop/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a></div> </div>");
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
            strhtml.Append("<a href=\"" + this.http_start + "wapindex-" + siteid + "-" + classVo.childid + ".html" + "\">返回上级</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "wapindex-" + siteid + "-0.html" + "\">返回首页</a>");

        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
        }
        strhtml.Append("</div></div>");
    }
    
    
    
    
    //strhtml.Append("</div>");
    if (classVo.sitedowntip != "")
    {
        strhtml.Append( classVo.sitedowntip);
    }
    Response.Write(ERROR);  
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
