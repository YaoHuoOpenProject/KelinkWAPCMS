<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="showadmin.aspx.cs" Inherits="KeLin.WebSite.bbs.showadmin" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(classVo.classname + "版务", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    if (this.INFO == "REMOVEOK")
    {
        strhtml.Append("<b>清空缓存成功！</b><br/>");
    }
    strhtml.Append("<b>总版主列表</b><br/>");
    int k = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].managerlvl == "04")
        {
            if (i == 0 || (i > 0 && listVo[i].userid != listVo[i - 1].userid))
            {
                k = k + 1;
                strhtml.Append(k + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/showadmin.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
                strhtml.Append("<u>签名:" + listVo[i].remark + "</u><br/>");
            }
        }

    }
    if (k==0)
    {
        strhtml.Append("<b>总版主招募中...</b><br/>");
    }
    strhtml.Append("<b>本版(ID:" + this.classid + ")版主列表</b><br/>");

    int y = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].managerlvl != "04")
        {
            if (i == 0 || (i > 0 && listVo[i].userid != listVo[i - 1].userid))
            {
                y = y + 1;
                strhtml.Append(y + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/showadmin.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
                strhtml.Append("<u>签名:" + listVo[i].remark + "</u><br/>");
            }
        }

    }
    if (y ==0)
    {
        strhtml.Append("<b>版主招募中...</b><br/>");
    }

    strhtml.Append("注:版主排名不分先后<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toNotice.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[版规公告]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toDefineBBS.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[列表设置]</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;backurlid=1&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=0\">[禁言名单]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/Log_List.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[版务记录]</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_search.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[本坛搜索]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;type=days&amp;key=2&amp;siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[两天新贴]</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "bbs/toNewLine.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[列表换行]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toBbsFace.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[表情设置]</a><br/>");


    strhtml.Append("<a href=\"" + this.http_start + "bbs/toBbsType.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[类别和回复语设置]</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/showTopic_admin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[专题管理]</a> <a href=\"" + this.http_start + "bbs/Report_List.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[举报管理]</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toBbsAdmin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[版主设置]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_back.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[回收站←]</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/toBbsSecret.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[本版暗号设置]</a> ");
    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/classconfigall.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[更多属性设置]</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/showadmin.aspx?action=remove&amp;siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[更新本区缓存]</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/showadmin.aspx?action=removeall&amp;siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[更新本站缓存]</a>");
    if (KL_BAK_SQLCONN != "")
    {
        strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/book_list_bak.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[历史数据]</a>");

    } 
    else
    {
        strhtml.Append("<br/>[历史数据](暂时没有)");

    }
    strhtml.Append("<br/>------------<br/>");
    strhtml.Append("昵称：<input type=\"text\" title=\"昵称\" name=\"sname\" value=\"\" size=\"12\"/><br/>");
    strhtml.Append("用户ID：<input type=\"text\" format=\"*N\" title=\"用户ID\" name=\"suserid\" value=\"\" size=\"6\"/><br/>");
    strhtml.Append("<anchor><go href=\""+this.http_start+"search/book_list.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"search\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+this.siteid+"\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+this.classid+"\"/>");
    strhtml.Append("<postfield name=\"backurl\" value=\"" + this.GetUrlQueryString() + "\"/>");
    strhtml.Append("<postfield name=\"tonickname\" value=\"$(sname)\"/>");
    strhtml.Append("<postfield name=\"touserid\" value=\"$(suserid)\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\""+this.sid+"\"/>");
    strhtml.Append("</go>会 员 查 找</anchor><br/>");
    
    strhtml.Append("------------<br/>");
    strhtml.Append("提示:总版主清理刷贴：点击贴子进去，建议先加黑楼主，再[相关]位置点击贴子或回复，[清空所有]<br/>");
    strhtml.Append("------------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page="+this.page+"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{
    if (this.INFO == "REMOVEOK")
    {
        strhtml.Append("<div class=\"tip\">清空缓存成功！</div>");
    }
    strhtml.Append("<div class=\"subtitle\">总版主列表</div>");
    strhtml.Append("<div class=\"content\">");
    int k = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].managerlvl == "04")
        {
            if (i == 0 || (i > 0 && listVo[i].userid != listVo[i - 1].userid))
            {
                k = k + 1;
                strhtml.Append(k + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/showadmin.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
                strhtml.Append("<u>签名:" + listVo[i].remark + "</u><br/>");
            }
        }

    }
    if (k==0)
    {
        strhtml.Append("<b>总版主招募中...</b>");
    }
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("本版(ID:" + this.classid + ")版主列表<br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    int y = 0;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (listVo[i].managerlvl != "04")
        {
            if (i == 0 || (i > 0 && listVo[i].userid != listVo[i - 1].userid))
            {
                y = y + 1;
                strhtml.Append(y + ".<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + listVo[i].userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/showadmin.aspx?siteid=" + this.siteid + "&classid=" + this.classid) + "\">" + WapTool.GetColorNickName(listVo[i].idname, listVo[i].nickname, lang, ver) + "</a><br/>");
                strhtml.Append("<u>签名:" + listVo[i].remark + "</u><br/>");
            }
        }

    }
    if (y == 0)
    {
        strhtml.Append("<b>版主招募中...</b><br/>");
    }

    strhtml.Append("注:版主排名不分先后");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">本版设置</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toNotice.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page="+this.page+"" + "\">[版规公告]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toDefineBBS.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[列表设置]</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/lockuser_list.aspx?action=class&amp;backurlid=1&amp;siteid=" + this.siteid + "&amp;classid=0\">[禁言名单]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/Log_List.aspx?action=class&amp;siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[版务记录]</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"bt2\">");
    
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toNewLine.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[列表换行]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toBbsFace.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[表情设置]</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"bt2\">");

   
    strhtml.Append("<a href=\"" + this.http_start + "bbs/showTopic_admin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[专题管理]</a> <a href=\"" + this.http_start + "bbs/Report_List.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[举报管理]</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"bt2\">");
    
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toBbsAdmin.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[版主设置]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list_back.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[回 收 站]</a>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/toBbsType.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[类别和回复语设置]</a>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/classconfigall.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "" + "\">[更多属性设置]</a>");
    strhtml.Append("</div>");
    strhtml.Append("</div>"); 
    
    strhtml.Append("<div class=\"subtitle\">本版搜索</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_search.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[本坛搜索]</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=search&amp;type=days&amp;key=2&amp;siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">[两天新贴]</a><br/>");
    strhtml.Append("</div>");
    
    strhtml.Append("<form name=\"f\" action=\"" + this.http_start + "search/book_list.aspx\" method=\"get\">");    
    strhtml.Append("昵称：<input type=\"text\" title=\"昵称\" class=\"txt\" name=\"tonickname\" value=\"\" size=\"12\"/><br/>");
    strhtml.Append("用户ID：<input type=\"text\" format=\"*N\" class=\"txt\" title=\"用户ID\" name=\"touserid\" value=\"\" size=\"6\"/><br/>");
    
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"search\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + this.siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + this.classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + this.GetUrlQueryString() + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + this.sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" class=\"btn\" value=\"会 员 查 找\"/>");
    strhtml.Append("</form></div>");

    strhtml.Append("<div class=\"tip\">");
    strhtml.Append("提示:总版主清理刷贴：点击贴子进去，建议先加黑楼主，再[相关]位置点击贴子或回复，[清空所有]");
    strhtml.Append("</div>");

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">"); 
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;page="+this.page+"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</div></div>");
    Response.Write(strhtml);
    
    //输出
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
