<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Re_BAK.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_Re_BAK" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
if(this.INFO == "OK"){
    if ("1".Equals(WapTool.getArryString(classVo.smallimg, '|', 1)))
    {
        wmlVo.timer = "3";
        wmlVo.strUrl = "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage;
    }
    else
    {
        wmlVo.timer = "3";
        wmlVo.strUrl = "bbs/book_re_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage;

    }
}
Response.Write(WapTool.showTop("历史数据."+this.GetLang("查看回复|查看回複|View Reply"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        
        strhtml.Append("<b>回复成功！</b> ");
        if (siteVo.isCheck == 1)
        {
            strhtml.Append("<b>审核后显示！</b> ");
        }
        strhtml.Append("获得" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + ":" + allMoney + "，获得经验:" + getexpr + "<br/> ");
        strhtml.Append("跳转中...<a href=\"" + this.http_start + wmlVo.strUrl + "" + "\">返回</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>回复内容最少" + contentmax + "字！</b><br/>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        strhtml.Append("<b>请不要发重复内容！</b><br/>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    else if (this.INFO == "MAX")
    {

        strhtml.Append("<b>今天你已超过回贴限制：" + this.KL_CheckBBSreCount + " 个回贴子，请明天再来！</b><br/>");
    }
    else if (this.INFO == "LOCK")
    {

        strhtml.Append("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
    }
    if (this.INFO == "")
    {
        //顶部链接
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=" + this.ot + "&amp;go=" + this.r + "\">刷新</a> ");
        if (this.ot == "1")
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=0&amp;go=" + this.r + "\">按最新回复</a> ");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=1&amp;go=" + this.r + "\">按最早回复</a> ");
        }
        strhtml.Append("<br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回主题</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">返回列表</a> ");
        strhtml.Append("<br/>");
        if (bookVo.islock == 0)
        {
            if (this.reply != "")
            {
                strhtml.Append("<b>回复" + this.reply + "楼:</b><br/>");
            }
            //显示输入框
            
            strhtml.Append("历史数据，不能回复<br/>");
        }

        

        //显示列表

        kk = kk + ((CurrentPage - 1) * pageSize) - 1;
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            if (ot == "1")
            {
                index = (kk + 1);
            }
            else
            {
                index = (total - kk);
            }

            if (listVo[i].book_top == 1 && this.CurrentPage == 1)
            {
                strhtml.Append("[顶楼]");
            }
            else
            {
                strhtml.Append("[" + index + "楼]");
            }

            if (this.userid == bookVo.book_pub && bookVo.sendMoney > 0 && listVo[i].myGetMoney == 0)
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/SendMoney.aspx?action=sendmoney&amp;classid=" + classid + "&amp;id=" + id + "&amp;reid=" + listVo[i].id + "&amp;siteid=" + this.siteid + "\">赏分</a>]");
            }

            if (listVo[i].myGetMoney > 0)
            {
                strhtml.Append("[<b>得分:" + listVo[i].myGetMoney + "</b>]");
            }

            //--------------------管理员
            if (this.IsCheckManagerLvl("|00|01|03|04|", classVo.adminusername))
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_del.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">删</a>]");
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_mod.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">审</a>]");

                if (listVo[i].book_top == 1)
                {
                    strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_top.aspx?action=go&amp;tops=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">消顶</a>]");
                }
                else
                {
                    strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_top.aspx?action=go&amp;tops=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">顶</a>]");
                }
            }
            else if (this.userid == listVo[i].userid.ToString())  //自己删除自己的贴子
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_del.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">删</a>]");
            }
            strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reply=" + index + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">回</a>]");
            //----------------------
            if (listVo[i].reply != 0)
            {
                strhtml.Append("回复" + listVo[i].reply + "楼:");
            }
            strhtml.Append(listVo[i].content);
            if (listVo[i].isdown > 0)
            {
                strhtml.Append("{<a href=\"" + this.http_start + "bbs/book_re_addfileshow_bak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;reid=" + listVo[i].id + "&amp;lpage=" + this.lpage + "\">查看" + listVo[i].isdown + "个附件</a>}");
            }

            strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + "\">" + listVo[i].nickname + "(" + listVo[i].userid + ")</a> " + string.Format("{0:MM-dd HH:mm}", listVo[i].redate) + "<br/>");
            kk = kk + 1;
        }
        if (listVo == null)
        {
            strhtml.Append("暂无回复记录！<br/>");
        }
        //显示导航分页
        strhtml.Append(linkURL);
    }
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id="+id+"&amp;lpage="+lpage+"" + "\">返回主题</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page="+lpage+"" + "\">返回列表</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("查看回复|查看回複|View Reply") + "</div>");
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>回复成功！</b> ");
        if (siteVo.isCheck == 1)
        {
            strhtml.Append("<b>审核后显示！</b> ");
        }
        strhtml.Append("获得" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + ":" + allMoney + "，获得经验:" + getexpr + "<br/> ");
        strhtml.Append("跳转中...<a href=\"" + this.http_start + wmlVo.strUrl + "" + "\">返回</a><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>回复内容最少" + contentmax + "字！</b><br/>");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "REPEAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>请不要发重复内容！</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "MAX")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>今天你已超过回贴限制：" + this.KL_CheckBBSreCount + " 个回贴了，请明天再来！</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "LOCK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
        strhtml.Append("</div>");
    }
    if (this.INFO == "")
    {
        //顶部链接
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=" + this.ot + "&amp;go=" + this.r + "\">刷新</a> ");
        if (this.ot == "1")
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=0&amp;go=" + this.r + "\">按最新回复</a> ");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=1&amp;go=" + this.r + "\">按最早回复</a> ");
        }
        strhtml.Append("<br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回主题</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">返回列表</a> ");
        strhtml.Append("<br/>");
        if (bookVo.islock == 0)
        {
            if (this.reply != "")
            {
                strhtml.Append("<b>回复" + this.reply + "楼:</b><br/>");
            }
            strhtml.Append("历史数据，不能回复<br/>");
        }
        strhtml.Append("</div>");

        //显示列表

        kk = kk + ((CurrentPage - 1) * pageSize) - 1;
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            if (i % 2 == 0)
            {
                strhtml.Append("<div class=\"line1\">");
            }
            else
            {
                strhtml.Append("<div class=\"line2\">");
            }
            if (ot == "1")
            {
                index = (kk + 1);
            }
            else
            {
                index = (total - kk);
            }

            if (listVo[i].book_top == 1 && this.CurrentPage == 1)
            {
                strhtml.Append("[顶楼]");
            }
            else
            {
                strhtml.Append("[" + index + "楼]");
            }

            if (this.userid == bookVo.book_pub && bookVo.sendMoney > 0 && listVo[i].myGetMoney == 0)
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/SendMoney.aspx?action=sendmoney&amp;classid=" + classid + "&amp;id=" + id + "&amp;reid=" + listVo[i].id + "&amp;siteid=" + this.siteid + "\">赏分</a>]");
            }

            if (listVo[i].myGetMoney > 0)
            {
                strhtml.Append("[<b>得分:" + listVo[i].myGetMoney + "</b>]");
            }

            //--------------------管理员
            if (this.IsCheckManagerLvl("|00|01|03|04|", classVo.adminusername))
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_del.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">删</a>]");
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_mod.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">审</a>]");

                if (listVo[i].book_top == 1)
                {
                    strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_top.aspx?action=go&amp;tops=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">消顶</a>]");
                }
                else
                {
                    strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_top.aspx?action=go&amp;tops=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">顶</a>]");
                }
            }
            else if (this.userid == listVo[i].userid.ToString())  //自己删除自己的贴子
            {
                strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re_del.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + listVo[i].id + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">删</a>]");
            }
            strhtml.Append("[<a href=\"" + this.http_start + "bbs/book_re_bak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reply=" + index + "&amp;id=" + this.id + "&amp;ot=" + this.ot + "\">回</a>]");
            //----------------------
            if (listVo[i].reply != 0)
            {
                strhtml.Append("回复" + listVo[i].reply + "楼:");
            }
            strhtml.Append(listVo[i].content);
            if (listVo[i].isdown > 0)
            {
                strhtml.Append("{<a href=\"" + this.http_start + "bbs/book_re_addfileshow_bak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;reid=" + listVo[i].id + "&amp;lpage=" + this.lpage + "\">查看" + listVo[i].isdown + "个附件</a>}");
            }

            strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + "\">" + listVo[i].nickname + "(" + listVo[i].userid + ")</a> " + string.Format("{0:MM-dd HH:mm}", listVo[i].redate) + "</div>");
            kk = kk + 1;
        }
        if (listVo == null)
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append("暂无回复记录！");
            strhtml.Append("</div>");
        }
        //显示导航分页
        strhtml.Append(linkURL);
    }

    //显示电脑版
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<div class=\"subtitle\">");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_bak.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回主题</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_bak.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + lpage + "" + "\">返回列表</a> ");
   
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
