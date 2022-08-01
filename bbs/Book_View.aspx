<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_View" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(bookVo.book_title, wmlVo));//显示头
if (toUserVo!=null && toUserVo.city.Trim() == "")
{
    toUserVo.city = "交友"; //会员城市
}
if (bookVo.islock == 1)
{
    content = ""; //锁贴后不显示内容
}                                                                                                                                                                       
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   if (bookVo.ischeck == 2)
   {
       strhtml.Append("<b>此贴已在回收站！<br/></b>");
   }
   //显示广告
   if(adVo.threeShowTop!=""){
       strhtml.Append(adVo.threeShowTop+"<br/>");
   }
    
    //顶部按钮
   strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + this.stypelink + "" + "\">返回</a>.");
   strhtml.Append("<a href=\""+this.http_start+"bbs/book_view_add.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;sid="+this.sid+"\">发贴</a>.");
   strhtml.Append("<a href=\"" + this.http_start + "bbs/toDefine.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id+"&amp;lpage="+this.lpage) + "\">设置</a>.");
   strhtml.Append("<a href=\"" + this.http_start + "bbs/Book_View_admin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id="+this.id+"&amp;lpage=" + this.lpage + "" + "\">管理</a><br/>");
  
    
   if (bookVo.sendMoney > 0)
   {
       strhtml.Append("悬赏:" + bookVo.sendMoney + " 已赏:" + bookVo.hasMoney + "<br/>");

   }
   if (bookVo.freeMoney  > 0)
   {
       strhtml.Append("总礼金:" + bookVo.freeMoney + " 已派:" + (bookVo.freeMoney - bookVo.freeLeftMoney) + "(余" + bookVo.freeLeftMoney + ")<br/>");
       strhtml.Append("方式:");
       string[] freerule = bookVo.freeRule.Split('_');
       string[] free1 = freerule[0].Split('|');
       string[] free2 = freerule[1].Split('|');
       if (free1.Length == 1)
       {
           strhtml.Append("每人每日一次派礼:"+free2[0]);

       }
       else
       {
           for (int y = 0; y < free1.Length; y++)
           {

               strhtml.Append("<br/>楼层:" + free1[y] + "派礼:"+free2[y]);
           }

       }
       
       
       
       strhtml.Append("<br/>--------<br/>");

   }
   if (this.threePageType == "1")
   {
       strhtml.Append("[标题]:" + bookVo.book_title + "-阅(" + bookVo.book_click + ")<br/>");
       strhtml.Append("[时间]:" + bookVo.book_date + "<br/>");
       //显示专题
       if (bookVo.topic > 0)
       {
           strhtml.Append("[专题]:<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;stype=" + bookVo.topic + "" + "\">" + WapTool.getSmallTypeName(this.siteid, bookVo.topic.ToString()) + "</a><br/>");

       }
       strhtml.Append("[版块]:<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;" + "\">" + classVo.classname + "</a>");
       //显示得到金币
       if (bookVo.myGetMoney > 0)
       {
           strhtml.Append("<br/>[奖励]: <b>" + bookVo.myGetMoney + " " + siteVo.sitemoneyname + "</b>");
       }
       
     
       strhtml.Append("<br/>----------<br/>");
       strhtml.Append(content + "<br/>");
       strhtml.Append(linkURL);
       //显示投票选项
       if (bookVo.isVote == 1)
       {
           strhtml.Append("----------<br/>");
           strhtml.Append("投票选项：<br/>");
           for (int i = 0; (vlistVo != null && i < vlistVo.Count); i++)
           {
               strhtml.Append("[<a href=\"" + http_start + "bbs/book_view_toVote.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;vid=" + vlistVo[i].vid + "&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">投</a>]" + (i + 1) + "." + vlistVo[i].voteTitle + "(" + vlistVo[i].voteClick + ")<br/>");
           }
           strhtml.Append("----------<br/>");

       }       
       if (bookVo.whylock != "")
       {
           bookVo.whylock = bookVo.whylock.Replace("<br/>", "|");
           string[] arry = bookVo.whylock.Split('|');
           bookVo.whylock = arry[0];
           //strhtml.Append("<div class=\"tip\">");
           strhtml.Append(bookVo.whylock);
           strhtml.Append("<br/>");
           if (arry.Length > 2)
           {
               strhtml.Append("<a href=\"" + this.http_start + "bbs/Book_View_log.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">更多&gt;&gt;</a><br/>");
           }
       }
       strhtml.Append("[楼主]:<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + WapTool.GetColorNickName(toUserVo.idname, toUserVo.nickname, lang, ver) + "(" + WapTool.GetHandle(siteVo.lvlNumer, toUserVo.expr, toUserVo.money, type) + ")</a>" + WapTool.GetOnline(http_start, toUserVo.isonline, toUserVo.sex.ToString()) + WapTool.GetOLtimePic(this.http_start, siteVo.lvlTimeImg, toUserVo.LoginTimes) + "<br/>");
       strhtml.Append("[等级]:" + WapTool.GetLevl(siteVo.lvlNumer, toUserVo.expr, toUserVo.money, type) + "<br/>");
       strhtml.Append("[荣誉]:" + WapTool.GetMedal(toUserVo.userid.ToString(), toUserVo.moneyname, WapTool.GetSiteDefault(siteVo.Version, 47), wmlVo) + "<br/>");
       strhtml.Append("[身份]:" + WapTool.GetMyID(toUserVo.idname, lang) + "<br/>");
       strhtml.Append("[地区]:<a href=\"" + this.http_start + "search/book_search.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + toUserVo.city + "</a><br/>");
       strhtml.Append("[相关]:<a href=\"" + this.http_start + "rizhi/myrizhi.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub + "\">博客</a>.<a href=\"" + this.http_start + "album/myalbum.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub + "\">相册</a>.<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid="+this.siteid+"&amp;classid=0&amp;type=pub&amp;key=" + bookVo.book_pub + "\">贴子</a>.<a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub + "\">回复</a><br/>");
       strhtml.Append("[操作]:<a href=\"" + this.http_start + "bbs/Book_View_admin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">管理</a>.<a href=\"" + this.http_start + "bbs/Report_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "&amp;id=" + this.id + "\">举报</a>.<a href=\"" + this.http_start + "bbs/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">下载</a>.<a href=\"" + this.http_start + "bbs/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a><br/> ");
       strhtml.Append("[分享]:<a href=\"http://v.t.sina.com.cn/share/share.php?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">新浪</a>.<a href=\"http://v.t.qq.com/share/share.php?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">腾讯</a>.<a href=\""+this.http_start+"bbs/share.aspx?action=goclan&amp;siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;id="+this.id+"&amp;sid="+this.sid+"\">家族</a>.<a href=\"" + this.http_start + "bbs/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">更多</a><br/>");
        
       strhtml.Append("[签名]:<u>" + toUserVo.remark + "</u><br/>");
       strhtml.Append("<a href=\"" + http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=1&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">送<img src=\"" + this.http_start + "NetImages/flower.gif\" alt=\"花\"/></a>(" + bookVo.suport + ") <a href=\"" + http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=2&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">扔<img src=\"" + this.http_start + "NetImages/egg.gif\" alt=\"蛋\"/></a>(" + bookVo.oppose + ") ");
       if (this.IsCheckManagerLvl("|00|01|03|04|", classVo.adminusername))
       {
           strhtml.Append("[<a href=\"" + this.http_start + "bbs/SendMoney_freeMain.aspx?action=sendmoney&amp;classid=" + classid + "&amp;id=" + id + "&amp;touserid=" + bookVo.book_pub + "&amp;siteid=" + this.siteid + "\">奖励送币</a>]");
       }
       strhtml.Append("<br/>");
      

   }
   else
   {
       strhtml.Append("标题:" + bookVo.book_title + "-阅(" + bookVo.book_click + ")<br/>");
       strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + bookVo.book_author + "(" + WapTool.GetHandle(siteVo.lvlNumer, toUserVo.expr, toUserVo.money, type) + ")</a>" + WapTool.GetOnline(http_start, toUserVo.isonline, toUserVo.sex.ToString()) + WapTool.GetOLtimePic(this.http_start, siteVo.lvlTimeImg, toUserVo.LoginTimes) + "<br/>");
       strhtml.Append("等级:" + WapTool.GetLevl(siteVo.lvlNumer, toUserVo.expr, toUserVo.money, type) + " 勋章:" + WapTool.GetMedal(toUserVo.moneyname, this.http_start) + "<br/>");

       strhtml.Append(WapTool.GetMyID(toUserVo.idname, lang) + " 地区: <a href=\"" + this.http_start + "search/book_search.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + toUserVo.city + "</a><br/>");

       strhtml.Append("" + bookVo.book_date + "<br/>");

       strhtml.Append(content + "<br/>");
       strhtml.Append(linkURL);

       //显示专题
       if (bookVo.topic > 0)
       {
           strhtml.Append("专题:<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;stype=" + bookVo.topic + "" + "\">" + WapTool.getSmallTypeName(this.siteid, bookVo.topic.ToString()) + "</a><br/>");

       }
       strhtml.Append("所属:<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;" + "\">" + classVo.classname + "</a><br/>");


       //显示投票选项
       if (bookVo.isVote == 1)
       {
           strhtml.Append("----------<br/>");
           strhtml.Append("投票选项：<br/>");
           for (int i = 0; (vlistVo != null && i < vlistVo.Count); i++)
           {
               strhtml.Append("[<a href=\"" + http_start + "bbs/book_view_toVote.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;vid=" + vlistVo[i].vid + "&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">投</a>]" + (i + 1) + "." + vlistVo[i].voteTitle + "(" + vlistVo[i].voteClick + ")<br/>");
           }
           strhtml.Append("----------<br/>");

       }


       if (bookVo.whylock != "")
       {
           bookVo.whylock = bookVo.whylock.Replace("<br/>", "|");
           string[] arry = bookVo.whylock.Split('|');
           bookVo.whylock = arry[0];
           //strhtml.Append("<div class=\"tip\">");
           strhtml.Append(bookVo.whylock);
           strhtml.Append("<br/>");
           if (arry.Length > 2)
           {
               strhtml.Append("<a href=\"" + this.http_start + "bbs/Book_View_log.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">更多&gt;&gt;</a><br/>");
           }


       }


       //显示最新回复
       strhtml.Append("<a href=\"" + http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=1&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">送<img src=\"" + this.http_start + "NetImages/flower.gif\" alt=\"花\"/></a>(" + bookVo.suport + ") <a href=\"" + http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=2&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">扔<img src=\"" + this.http_start + "NetImages/egg.gif\" alt=\"蛋\"/></a>(" + bookVo.oppose + ") ");
       if (this.IsCheckManagerLvl("|00|01|03|04|", classVo.adminusername))
       {
           strhtml.Append("[<a href=\"" + this.http_start + "bbs/SendMoney_freeMain.aspx?action=sendmoney&amp;classid=" + classid + "&amp;id=" + id + "&amp;touserid=" + bookVo.book_pub + "&amp;siteid=" + this.siteid + "\">奖励送币</a>]");
       }
       strhtml.Append("<br/>");
       strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_View_admin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">管理</a>/<a href=\"" + this.http_start + "bbs/Report_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "&amp;id=" + this.id + "\">举报</a>/<a href=\"" + this.http_start + "bbs/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">分享/下载</a>/<a href=\"" + this.http_start + "bbs/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a>]<br/> ");
       strhtml.Append("------------<br/>");
       strhtml.Append("楼主:<a href=\"" + this.http_start + "rizhi/myrizhi.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub + "\">博客</a>.<a href=\"" + this.http_start + "album/myalbum.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub + "\">相册</a>.<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid="+this.siteid+"&amp;classid=0&amp;type=pub&amp;key=" + bookVo.book_pub + "\">贴子</a>.<a href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub +  "\">回复</a><br/>");
       strhtml.Append("<u>签名:" + toUserVo.remark + "</u><br/>");
   }
   strhtml.Append("------------<br/>");
   //显示上一页下一页
   strhtml.Append(preNextTitle);
   if (preNextTitle.ToString() != "")
   {
       strhtml.Append("------------<br/>");
   }
   if (bookVo.islock == 0)
   {
       strhtml.Append("<select name=\"face\">");
       strhtml.Append("<option value=\"\">表情</option>");
       for (int i = 0; (facelistImg != null && i < this.facelistImg.Length); i++)
       {
           strhtml.Append("<option value=\"" + this.facelistImg[i] + "\">" + this.facelist[i] + "</option>");
       }
       strhtml.Append("</select>");
       strhtml.Append("<select name=\"sendmsg" + r + "\" value=\"\">");
       strhtml.Append("<option value=\"0\">通知楼主？</option>");
       strhtml.Append("<option value=\"0\">否</option>");
       strhtml.Append("<option value=\"1\">是</option>");
       strhtml.Append("</select><br/>");
       strhtml.Append("<input type=\"text\" name=\"con" + r + "tent\" value=\"" + this.reShowInfo + "\" maxlength=\"200\"/><br/>");
       if (this.isNeedSecret == true)
       {
           strhtml.Append("本版暗号*:<input type=\"text\" name=\"secret\" value=\"\" size=\"10\" /><br/>");

       }
       strhtml.Append("<anchor><go href=\"" + http_start + "bbs/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
       strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
       strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
       strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
       strhtml.Append("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
       strhtml.Append("<postfield name=\"content\" value=\"$(con" + r + "tent)\"/>");
       strhtml.Append("<postfield name=\"sendmsg\" value=\"$(sendmsg" + r + ")\"/>");
       strhtml.Append("<postfield name=\"face\" value=\"$(face)\"/>");
       strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
       if (this.isNeedSecret == true)
       {
           strhtml.Append("<postfield name=\"secret\" value=\"$(secret)\"/>");
       }
       strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
       //strhtml.Append("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("bbs/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
       strhtml.Append("</go>快速回复</anchor> <a href=\"" + this.http_start + "bbs/book_re_addfile.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">" + this.GetLang("文件回贴|文件回贴|upload file") + "</a><br/>");
   
       strhtml.Append("------------<br/>");
   }
       for (int i = 0; (relistVo != null && i < relistVo.Count && i < 5); i++)
       {
           if (relistVo[i].book_top == 1)
           {
               strhtml.Append("[顶楼]");
           }
           else
           {
               if (bookVo.book_re - k == 1)
                {
                    strhtml.Append("[沙发]");
                }
                else if (bookVo.book_re - k == 2)
                {
                    strhtml.Append("[椅子]");
                }
               else if (bookVo.book_re - k == 3)
               {
                   strhtml.Append("[板凳]");
               }
               else
               {
                   strhtml.Append("[" + (bookVo.book_re - k) + "楼]");
               }
               
           }
           if (relistVo[i].myGetMoney > 0)
           {
               strhtml.Append("[<b>得金:" + relistVo[i].myGetMoney + "</b>]");
           }
           strhtml.Append("[<a href=\"" + this.http_start + "bbs/Book_re.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;vpage=" + this.CurrentPage + "&amp;reply=" + (bookVo.book_re - k) + "&amp;id=" + this.id + "&amp;touserid=" + relistVo[i].userid + "\">回</a>]");

           strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + relistVo[i].userid + "&amp;backurl=" + "\">" + ShowNickName_color(relistVo[i].userid, relistVo[i].nickname) + "</a>");

           if (relistVo[i].reply != 0)
           {
               strhtml.Append("回复" + relistVo[i].reply + "楼");
           }
           strhtml.Append(":");
           strhtml.Append(relistVo[i].content);

           if (relistVo[i].isdown > 0)
           {
               strhtml.Append("{<a href=\"" + this.http_start + "bbs/book_re_addfileshow.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;reid=" + relistVo[i].id + "&amp;lpage=" + this.lpage + "\">查看" + relistVo[i].isdown + "个附件</a>}");
           }
           strhtml.Append("(" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + ")<br/>");
           k = k + 1;
       }

       if (relistVo == null)
       {
           strhtml.Append("暂无回复！<br/>");
       }
       else
       {
           strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=&amp;mainuserid=" + bookVo.book_pub + "&amp;go=" + this.r + "\">楼主回复</a>.");
       
           strhtml.Append("<a href=\"" + http_start + "bbs/book_re.aspx?lpage=" + this.lpage + "&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多回贴(" + bookVo.book_re + ")</a><br/>");
       }
       strhtml.Append("------------<br/>");
   
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
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + this.stypelink + "" + "\">返回上级</a>-");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    }
    strhtml.Append(WapTool.GetVS(wmlVo));
    //输出错误
    strhtml.Append(ERROR);
    strhtml.Append("</p>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}else{ //2.0

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码
    
     
    //显示广告
    if (adVo.threeShowTop != "")
    {
        strhtml.Append(adVo.threeShowTop );
    }
    strhtml.Append("<!--web-->");
    if (bookVo.ischeck == 2)
    {
        strhtml.Append("<div class=\"tip\"><b>此贴已在回收站！</b></div>");
    }
    //顶部按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
    if (WapTool.ISAPI_Rewrite3_Open == "1")
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbslist-" + classid + "-" + this.lpage +".html"+ this.stypelink.Replace("&amp;","?") + "" + "\">返回</a> ");
   
    }
    else
    {
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + this.stypelink + "" + "\">返回</a> ");
    }
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">发贴</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toDefine.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage) + "\">设置</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/Book_View_admin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">管理</a>");
    strhtml.Append("</div></div>");
    //strhtml.Append("<div class=\"subtitle\">" + this.GetLang("查看贴子|查看贴子|查看贴子") + "</div>");
   
    if (this.threePageType == "1")
    {
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<h2 class=\"titleview\">" + bookVo.book_title + "</h2> ");
        strhtml.Append("<span class=\"subtitleview\">" + bookVo.book_date + "&nbsp;&nbsp;(" + bookVo.book_click + ")&nbsp;&nbsp;&nbsp;&nbsp;");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;" + "\">" + classVo.classname + "</a>&nbsp;&nbsp;");
       
        //显示专题
        if (bookVo.topic > 0)
        {
            strhtml.Append("<br/>专题：<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;stype=" + bookVo.topic + "" + "\">" + WapTool.getSmallTypeName(this.siteid, bookVo.topic.ToString()) + "</a> ");

        }
        strhtml.Append("</span>");

        
        if (bookVo.sendMoney > 0)
        {
            strhtml.Append("<div class=\"line1\">");
            strhtml.Append("悬赏:" + bookVo.sendMoney + " 已赏:" + bookVo.hasMoney + "<br/>");
            strhtml.Append("</div>");
        }
        if (bookVo.freeMoney > 0)
        {
            strhtml.Append("<div class=\"line1\">");
            strhtml.Append("总礼金:" + bookVo.freeMoney + " 已派:" + (bookVo.freeMoney - bookVo.freeLeftMoney) + "(余" + bookVo.freeLeftMoney + ")<br/>");
            strhtml.Append("方式:");
            string[] freerule = bookVo.freeRule.Split('_');
            string[] free1 = freerule[0].Split('|');
            string[] free2 = freerule[1].Split('|');
            if (free1.Length == 1)
            {
                strhtml.Append("每人每日一次派礼:" + free2[0]);

            }
            else
            {
                for (int y = 0; y < free1.Length; y++)
                {

                    strhtml.Append("<br/>楼层:" + free1[y] + "派礼:" + free2[y]);
                }

            }



            strhtml.Append("</div>");

        }
        if (bookVo.myGetMoney > 0)
        {
            strhtml.Append("<div class=\"line1\">");
            strhtml.Append("<br/>[奖励]: <b>" + bookVo.myGetMoney + " " + siteVo.sitemoneyname + "</b>");
            strhtml.Append("</div>");
        }

        strhtml.Append("<div id=\"KL_margin\"style=\"margin:8px;\"></div>");

        strhtml.Append(content);
        
        strhtml.Append(linkURL);
        strhtml.Append("</div>");

       
        //显示投票选项
        if (bookVo.isVote == 1)
        {
            strhtml.Append("<div class=\"content\">");
            strhtml.Append("----------<br/>");
            strhtml.Append("投票选项：<br/>");
            for (int i = 0; (vlistVo != null && i < vlistVo.Count); i++)
            {
                strhtml.Append("[<a href=\"" + http_start + "bbs/book_view_toVote.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;vid=" + vlistVo[i].vid + "&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">投</a>]" + (i + 1) + "." + vlistVo[i].voteTitle + "(" + vlistVo[i].voteClick + ")<br/>");
            }
            strhtml.Append("----------<br/>");
            strhtml.Append("</div>");

        }
        
        if (bookVo.whylock != "")
        {
            strhtml.Append("<div class=\"tip\">");
            bookVo.whylock = bookVo.whylock.Replace("<br/>", "|");
            string[] arry = bookVo.whylock.Split('|');
            bookVo.whylock = arry[0];
            //strhtml.Append("<div class=\"tip\">");
            strhtml.Append(bookVo.whylock);
            strhtml.Append("");
            if (arry.Length > 2)
            {
                strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/Book_View_log.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">更多&gt;&gt;</a>");
            }
            strhtml.Append("</div>");
        }

        strhtml.Append("<div class=\"subtitle\">");
        strhtml.Append("楼主信息");
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"content\">");

        strhtml.Append("<table><tr><td valign=\"top\">");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\"><div style=\"width:80px;height:80px;border-width: 0px;-moz-border-radius: 5px;-khtml-border-radius: 5px;-webkit-border-radius: 5px;border-radius: 5px;padding:0px;background:url(" + WapTool.GetHeadImgURL(http_start, toUserVo.headimg) + "); background-size:100% 100%\"></div></a>");
        strhtml.Append("</td><td >");
        strhtml.Append("&nbsp;<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + WapTool.GetColorNickName(toUserVo.idname, toUserVo.nickname, lang, ver) + "("+toUserVo.userid+")</a>&nbsp;" + WapTool.GetOnline(http_start, toUserVo.isonline, toUserVo.sex.ToString())  + "<br/>");
        strhtml.Append("&nbsp;<a href=\"" + this.http_start + "bbs/tolvlinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + WapTool.GetHandle(siteVo.lvlNumer, toUserVo.expr, toUserVo.money, type) + "&nbsp;" + WapTool.GetLevl(siteVo.lvlNumer, toUserVo.expr, toUserVo.money, type) + "</a>&nbsp;" + WapTool.GetOLtimePic(this.http_start, siteVo.lvlTimeImg, toUserVo.LoginTimes) + "<br/>");
        strhtml.Append("&nbsp;" );
        if (WapTool.GetMyID(toUserVo.idname, this.lang).IndexOf('/') < 0)
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + WapTool.GetMyID(toUserVo.idname, lang) + "</a>&nbsp;");
        }
        strhtml.Append("来自:<a href=\"" + this.http_start + "search/book_search.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + WapTool.left(toUserVo.city, 6) + "</a><br/>");
        string tempmedal = WapTool.GetMedal(toUserVo.userid.ToString(), toUserVo.moneyname, WapTool.GetSiteDefault(siteVo.Version, 47), wmlVo);
        if (tempmedal != "")
        {
            strhtml.Append("&nbsp;" + WapTool.GetMedal(toUserVo.userid.ToString(), toUserVo.moneyname, WapTool.GetSiteDefault(siteVo.Version, 47), wmlVo) + "<br/>");
        }
        
        strhtml.Append("</td></tr></table>");

        strhtml.Append("<div class=\"linkbtn\">");
        strhtml.Append("[楼主]:<a href=\"" + this.http_start + "rizhi/myrizhi.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub + "\">博客</a> <a  href=\"" + this.http_start + "album/myalbum.aspx?siteid=" + this.siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub + "\">相册</a> <a  href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=0&amp;type=pub&amp;key=" + bookVo.book_pub + "\">贴子</a> <a  href=\"" + this.http_start + "bbs/book_re_my.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=0&amp;touserid=" + bookVo.book_pub +  "\">回复</a><br/> ");
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"linkbtn\">");
        strhtml.Append("[操作]:<a  href=\"" + this.http_start + "bbs/Book_View_admin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">管理</a> <a  href=\"" + this.http_start + "bbs/Report_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "&amp;id=" + this.id + "\">举报</a> <a  href=\"" + this.http_start + "bbs/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">下载</a> <a  href=\"" + this.http_start + "bbs/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a><br/> ");
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"linkbtn\">");
        strhtml.Append("[分享]:<a href=\"http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "&amp;pic_url=&amp;burl=" + HttpUtility.UrlEncode(this.http_start) + "&amp;g_ut=2\">空间</a> <a  href=\"http://v.t.sina.com.cn/share/share.php?url=" + HttpUtility.UrlEncode(this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id) + "&amp;title=" + HttpUtility.UrlEncode(bookVo.book_title) + "\">微博</a> <a  href=\"" + this.http_start + "bbs/share.aspx?action=goclan&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "\">家族</a> <a  href=\"" + this.http_start + "bbs/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">更多</a><br/>");
        strhtml.Append("</div>");

        strhtml.Append("<div class=\"linkbtn\">");
        strhtml.Append("[签名]:<u>" + toUserVo.remark + "</u><br/>");
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"linkbtn\">");
        strhtml.Append("<a href=\"" + http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=1&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\"><img src=\"" + this.http_start + "NetImages/good.gif\" width=\"17px\" height=\"17px\"  alt=\"赞\"/> (" + bookVo.suport + ")</a> <a href=\"" + http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=2&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\"><img src=\"" + this.http_start + "NetImages/bad.gif\" width=\"17px\" height=\"17px\"  alt=\"倒\"/> (" + bookVo.oppose + ")</a> ");
        if (this.IsCheckManagerLvl("|00|01|03|04|", classVo.adminusername))
        {
            strhtml.Append(" <a href=\"" + this.http_start + "bbs/SendMoney_freeMain.aspx?action=sendmoney&amp;classid=" + classid + "&amp;id=" + id + "&amp;touserid=" + bookVo.book_pub + "&amp;siteid=" + this.siteid + "\">对TA奖励送币</a> ");
        }
        strhtml.Append("<br/>");
        strhtml.Append("</div>");
        strhtml.Append("</div>");

    }
    else
    {

        strhtml.Append("<div class=\"content\">");
        

        strhtml.Append("<h2 class=\"titleview\">" + bookVo.book_title + "</h2> ");
        strhtml.Append("<span class=\"subtitleview\">" + string.Format("{0:MM-dd HH:mm}", bookVo.book_date) + "&nbsp;&nbsp;(" + bookVo.book_click + ")&nbsp;&nbsp;");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;" + "\">" + classVo.classname + "</a>&nbsp;&nbsp;");
        if (bookVo.topic > 0)
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;stype=" + bookVo.topic + "" + "\">" + WapTool.getSmallTypeName(this.siteid, bookVo.topic.ToString()) + "</a>&nbsp;&nbsp;");

        }

        strhtml.Append("<span class=\"right\"><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + bookVo.book_pub + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + bookVo.book_author + "(" + WapTool.GetHandle(siteVo.lvlNumer, toUserVo.expr, toUserVo.money, type) + ")</a>" + WapTool.GetOnline(http_start, toUserVo.isonline, toUserVo.sex.ToString())  );
      

        strhtml.Append("</span></span>");
        if (bookVo.sendMoney > 0)
        {
            strhtml.Append("悬赏:" + bookVo.sendMoney + " 已赏:" + bookVo.hasMoney + "<br/>");

        }
        strhtml.Append("<div id=\"KL_margin\"style=\"margin:8px;\"></div>");
        strhtml.Append(content);

        strhtml.Append(linkURL);

        strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
        strhtml.Append("<a href=\"" + http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=1&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\"><img src=\"" + this.http_start + "NetImages/good.gif\" width=\"17px\" height=\"17px\"  alt=\"赞\"/> (" + bookVo.suport + ")</a> <a href=\"" + http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;state=2&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\"><img src=\"" + this.http_start + "NetImages/bad.gif\" width=\"17px\" height=\"17px\"  alt=\"倒\"/> (" + bookVo.oppose + ")</a> ");
        strhtml.Append("</div></div>");

        strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/Book_View_admin.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">管理</a> <a href=\"" + this.http_start + "bbs/Report_add.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "&amp;id=" + this.id + "\">举报</a>");
        strhtml.Append(" <a href=\"" + this.http_start + "bbs/share.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "" + "\">分享/下载</a> <a href=\"" + this.http_start + "bbs/Share.aspx?action=fav&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;vpage=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "\">收藏</a>  ");
        strhtml.Append("</div></div>");

        if (this.IsCheckManagerLvl("|00|01|03|04|", classVo.adminusername))
        {
            strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
            strhtml.Append(" <a href=\"" + this.http_start + "bbs/SendMoney_freeMain.aspx?action=sendmoney&amp;classid=" + classid + "&amp;id=" + id + "&amp;touserid=" + bookVo.book_pub + "&amp;siteid=" + this.siteid + "\">对TA奖励送币</a> ");
            strhtml.Append("</div></div>");
        }
        
        
        strhtml.Append("</div>");

      

       

        //显示投票选项
        if (bookVo.isVote == 1)
        {
            strhtml.Append("<div class=\"content\">");
            strhtml.Append("----------<br/>");
            strhtml.Append("投票选项：<br/>");
            for (int i = 0; (vlistVo != null && i < vlistVo.Count); i++)
            {
                strhtml.Append("[<a href=\"" + http_start + "bbs/book_view_toVote.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;vid=" + vlistVo[i].vid + "&amp;vpage=" + CurrentPage + "&amp;lpage=" + lpage + "&amp;id=" + id + "" + "\">投</a>]" + (i + 1) + "." + vlistVo[i].voteTitle + "(" + vlistVo[i].voteClick + ")<br/>");
            }
            strhtml.Append("----------<br/>");

            strhtml.Append("</div>");
        }




        if (bookVo.whylock != "")
        {
            bookVo.whylock = bookVo.whylock.Replace("<br/>", "|");
            string[] arry = bookVo.whylock.Split('|');
            bookVo.whylock = arry[0];
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append(bookVo.whylock);
            if (arry.Length > 2)
            {
                strhtml.Append("<a href=\"" + this.http_start + "bbs/Book_View_log.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">更多&gt;&gt;</a>");
            }
            strhtml.Append("</div>");
        }


       
        
        
    }
    //显示上一页下一页
        strhtml.Append(preNextTitle);
        
        //显示最新回复
        strhtml.Append("<div class=\"subtitle\">");
        strhtml.Append("发表回复");
        strhtml.Append("</div>");
        strhtml.Append("<div class=\"content\">");
        if (bookVo.islock == 0)
        {
        strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/book_re.aspx" + "\" method=\"post\">");
        //strhtml.Append("<hr/>");
        strhtml.Append("<select name=\"face\">");
        strhtml.Append("<option value=\"\">表情</option>");
        for (int i = 0; (facelistImg != null && i < this.facelistImg.Length); i++)
        {
            strhtml.Append("<option value=\"" + this.facelistImg[i] + "\">" + this.facelist[i] + "</option>");
        }
        strhtml.Append("</select>");
        strhtml.Append("<select name=\"sendmsg\">");
        strhtml.Append("<option value=\"0\">通知楼主？</option>");
        strhtml.Append("<option value=\"0\">否</option>");
        strhtml.Append("<option value=\"1\">是</option>");
        strhtml.Append("</select><br/>");
        //strhtml.Append("<input type=\"text\" name=\"content\" value=\"" + this.reShowInfo + "\" maxlength=\"200\"/><br/>");
        strhtml.Append("<textarea name=\"content\"  rows=\"5\" class=\"KL_textarea\" style=\"width:100%\">" + this.reShowInfo + "</textarea><br/>");
        if (this.isNeedSecret == true)
        {
            strhtml.Append("本版暗号*:<input type=\"text\" name=\"secret\" value=\"\" size=\"10\" /><br/>");

        }
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"lpage\" value=\"" + lpage + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
        //strhtml.Append("<input type=\"hidden\"  name=\"backurl\" value=\"" + HttpUtility.UrlEncode("bbs/book_view.aspx?siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
        strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"快速回复\"/>");
        strhtml.Append("<div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re_addfile.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "\">" + this.GetLang("文件回贴|文件回贴|upload file") + "</a><br/>");
        strhtml.Append("</div>");
            strhtml.Append("</form></div>");
    }
        long index = 0;
        
        for (int i = 0; (relistVo != null && i < relistVo.Count && i < 5); i++)
        {
            if (i % 2 == 0)
            {
                strhtml.Append("<div class=\"line1\">");
            }
            else
            {
                strhtml.Append("<div class=\"line2\">");
            }

            strhtml.Append("<table><tr><td valign=\"top\" align=\"center\" style=\"width:50px;\">");
            if (showhead != "1")
            {
                strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + relistVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\"><div style=\"width:50px;height:50px;border-width: 0px;-moz-border-radius: 5px;-khtml-border-radius: 5px;-webkit-border-radius: 5px;border-radius: 5px;padding:0px;background:url(" + WapTool.GetHeadImgURL(http_start, relistVo[i].headimg) + "); background-size:100% 100%\"></div></a>");
            }
            strhtml.Append("<p align=\"center\">");


            index = (bookVo.book_re - k);
           

            if (relistVo[i].book_top == 1 && this.CurrentPage == 1)
            {
                strhtml.Append("[顶楼]");
            }
            else
            {
                if (index == 1)
                {
                    strhtml.Append("[沙发]");
                }
                else if (index == 2)
                {
                    strhtml.Append("[椅子]");
                }
                else if (index == 3)
                {
                    strhtml.Append("[板凳]");
                }
                else
                {
                    strhtml.Append("[" + index + "楼]");
                }
            }

            

            strhtml.Append("</p></td><td style=\"width:100%;padding-left:5px\">");

            strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + relistVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "" + "\">" + ShowNickName_color(relistVo[i].userid, relistVo[i].nickname) + "(" + relistVo[i].userid + ")</a>&nbsp;" + WapTool.GetOnline(http_start, relistVo[i].isonline, relistVo[i].sex.ToString()) + " <span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", relistVo[i].redate) + "</span><br/>");
            string type = WapTool.GetSiteDefault(siteVo.Version, 27);
            strhtml.Append(WapTool.GetHandle(siteVo.lvlNumer, relistVo[i].expr, relistVo[i].money, type) );
            strhtml.Append("." + WapTool.GetLevl(siteVo.lvlNumer, relistVo[i].expr, relistVo[i].money, type) );

            if (WapTool.GetMyID(relistVo[i].idname, this.lang).IndexOf('/') < 0)
            {
                strhtml.Append("." + WapTool.GetMyID(relistVo[i].idname, this.lang));
            }
            
            strhtml.Append("<br/>");
            //----------------------
            if (relistVo[i].reply != 0)
            {
                strhtml.Append("回复" + relistVo[i].reply + "楼:");
            }
            strhtml.Append(relistVo[i].content);
            if (relistVo[i].isdown > 0)
            {
                strhtml.Append("{<a href=\"" + this.http_start + "bbs/book_re_addfileshow.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;reid=" + relistVo[i].id + "&amp;lpage=" + this.lpage + "\">查看" + relistVo[i].isdown + "个附件</a>}");
            }

            strhtml.Append("<br/>&nbsp;<p align=\"right\">");
            if (this.userid == bookVo.book_pub && bookVo.sendMoney > 0 && relistVo[i].myGetMoney == 0)
            {
                strhtml.Append("<a href=\"" + this.http_start + "bbs/SendMoney.aspx?action=sendmoney&amp;classid=" + classid + "&amp;id=" + id + "&amp;reid=" + relistVo[i].id + "&amp;siteid=" + this.siteid + "\">赏分</a>");
            }

            if (relistVo[i].myGetMoney > 0)
            {
                strhtml.Append("&nbsp;<b>得金:" + relistVo[i].myGetMoney + "</b>");
            }

            //--------------------管理员
            if (this.IsCheckManagerLvl("|00|01|03|04|", classVo.adminusername))
            {
                strhtml.Append("&nbsp;<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/SendMoney_free.aspx?action=sendmoney&amp;classid=" + classid + "&amp;id=" + id + "&amp;reid=" + relistVo[i].id + "&amp;touserid=" + relistVo[i].userid + "&amp;siteid=" + this.siteid + "\">送币</a>");

                strhtml.Append("&nbsp;<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/Book_re_del.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + relistVo[i].id + "&amp;id=" + this.id + "&amp;ot=0\">删除</a>");
                strhtml.Append("&nbsp;<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/Book_re_mod.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + relistVo[i].id + "&amp;id=" + this.id + "&amp;ot=0\">审核</a>");

                if (relistVo[i].book_top == 1)
                {
                    strhtml.Append("&nbsp;<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/Book_re_top.aspx?action=go&amp;tops=0&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + relistVo[i].id + "&amp;id=" + this.id + "&amp;ot=0\">消顶</a>");
                }
                else
                {
                    strhtml.Append("&nbsp;<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/Book_re_top.aspx?action=go&amp;tops=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + relistVo[i].id + "&amp;id=" + this.id + "&amp;ot=0\">置顶</a>");
                }
            }
            else if (this.userid == relistVo[i].userid.ToString())  //自己删除自己的贴子
            {
                strhtml.Append("&nbsp;<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/Book_re_del.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reid=" + relistVo[i].id + "&amp;id=" + this.id + "&amp;ot=0\">删我</a>");
            }
            strhtml.Append("&nbsp;<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/Book_re.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;page=" + this.CurrentPage + "&amp;reply=" + index + "&amp;id=" + this.id + "&amp;touserid=" + relistVo[i].userid + "&amp;ot=0\">回复</a>");
            strhtml.Append("&nbsp;<a class=\"urlbtn\" href=\"" + this.http_start + "bbs/book_re.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;mainuserid=" + relistVo[i].userid + "&go=" + r + "&sid=" + this.sid + "\">只看TA</a>");
            


            k = k + 1;
            strhtml.Append("</p>");
           
            strhtml.Append("</td></tr></table>");
            strhtml.Append("</div>");
        }




        
        if (relistVo == null)
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append("暂无回复！ ");
            strhtml.Append("</div>");
        }
        else
        {
            strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
            
            strhtml.Append("<a href=\"" + http_start + "bbs/book_re.aspx?lpage=" + this.lpage + "&amp;getTotal=" + bookVo.book_re + "&amp;id=" + id + "&amp;classid=" + classid + "&amp;siteid=" + siteid + "" + "\">更多回贴(" + bookVo.book_re + ")</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_re.aspx?action=class&amp;id=" + this.id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "&amp;lpage=" + this.lpage + "&amp;ot=&amp;mainuserid=" + bookVo.book_pub + "&amp;go=" + this.r + "\">楼主回复</a> ");
       
            strhtml.Append("</div></div>");
        }

       

        //显示电脑版
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
            strhtml.Append("<a href=\"" + this.http_start + "bbslist-" + classid + "-" + this.lpage + ".html?siteid=" + this.siteid + this.stypelink + "\">返回上级</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "wapindex-" + siteid + "-0.html" + "\">返回首页</a>");

        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;page=" + this.lpage + this.stypelink + "" + "\">返回上级</a> ");
            strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
        }
        strhtml.Append("</div></div>");
    }
    strhtml.Append(WapTool.GetVS(wmlVo));
    

    //输出错误
    strhtml.Append(ERROR);
    

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));


}
Response.Write(WapTool.showDown(wmlVo)); %>
