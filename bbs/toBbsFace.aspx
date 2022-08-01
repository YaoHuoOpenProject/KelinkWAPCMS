<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toBbsFace.aspx.cs" Inherits="KeLin.WebSite.bbs.toBbsFace" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("表情设置|表情設置|facial setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        strhtml.Append("</b><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if(this.INFO!="")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang(this.INFO));
        strhtml.Append("</b><br/>");

    }

    strhtml.Append(classVo.classname+"_ID:"+classVo.classid + "<br/>");
    strhtml.Append("表情说明(多个用\"|\"区分)：<br/>");
    strhtml.Append("<input type=\"text\" name=\"top" + r + "\" value=\"" + this.top + "\"/><br/>");
    strhtml.Append("对应图片(多个用\"|\"区分)：<br/>");
    strhtml.Append("<input type=\"text\" name=\"down" + r + "\" value=\"" + this.down + "\"/><br/>");
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        strhtml.Append("<br/>------------<br/>");
        strhtml.Append("是否更新所有论坛栏目？");
        strhtml.Append("<br/><input type=\"text\"  name=\"chkall"+r+"\" size=\"3\" value=\"no\"/>如果是输入yes");
        strhtml.Append("<br/>------------<br />");
    }
    strhtml.Append("<anchor><go href=\""+http_start+"bbs/toBbsFace.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");    
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"page\" value=\""+page+"\"/>");
    strhtml.Append("<postfield name=\"top\" value=\"$(top" + r + ")\"/>");  
    strhtml.Append("<postfield name=\"down\" value=\"$(down" + r + ")\"/>");
    strhtml.Append("<postfield name=\"chkall\" value=\"$(chkall"+r+")\"/>"); 
    strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");
    strhtml.Append("<br/>------------<br/>");
    strhtml.Append(this.GetLang("说明：系统默认QQ表情。所有图片放至在/bbs/face目录下，由系统管理员配置，请复制以下配置。|說明：默認爲10|Note: The default is 10") + "<br/>");
       

    strhtml.Append("------------<br/>");
    strhtml.Append("1.QQ表情系列，<a href=\""+this.http_start+"bbs/toViewFace.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;facetype=1&amp;facesmall=1&amp;facebig=21&amp;sid="+this.sid+"\">查看</a><br/>");
    strhtml.Append("表情说明：<br/><input type=\"text\" name=\"s1"+r+"\" value=\"胜利|偷笑|送花|调皮|欢迎|微笑|暴汗|大笑|晕了|疑惑|别吵|流泪|脸红|色色|惊讶|上火|飞吻|摆酷|睡觉|闭嘴|再见\"/><br/>");
    strhtml.Append("对应图片：(1-21)<br/><input type=\"text\" name=\"f1"+r+"\" value=\"1.gif|2.gif|3.gif|4.gif|5.gif|6.gif|7.gif|8.gif|9.gif|10.gif|11.gif|12.gif|13.gif|14.gif|15.gif|16.gif|17.gif|18.gif|19.gif|20.gif|21.gif\"/>");
    strhtml.Append("<br/>------------<br/>");
    strhtml.Append("2.大图系列，<a href=\""+this.http_start+"bbs/toViewFace.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;facetype=2&amp;facesmall=22&amp;facebig=34&amp;sid="+this.sid+"\">查看</a><br/>");
    strhtml.Append("表情说明：<br/><input type=\"text\" name=\"s2"+r+"\" value=\"天啊|开心|大哭|欠揍|必胜|支持|收到|讨厌|怕怕|不解|我靠|傻了|大汗\"/><br/>");
    strhtml.Append("对应图片：(22-34)<br/><input type=\"text\" name=\"f2"+r+"\" value=\"22.gif|23.gif|24.gif|25.gif|26.gif|27.gif|28.gif|29.gif|30.gif|31.gif|32.gif|32.gif|34.gif\"/>");
    strhtml.Append("<br/>------------<br/>");
    strhtml.Append("3.其它表情系列：由系统管理员在此写说明。");
    strhtml.Append("<br/>------------<br/>");
    
    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("更新操作|更新操作|Update operation") + "</div>");
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang(this.INFO));
        strhtml.Append("</b>");

    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"go\" action=\"" + this.http_start + "bbs/toBbsFace.aspx\" method=\"post\">");
    strhtml.Append(classVo.classname+"_ID:"+classVo.classid + "<br/>");
    strhtml.Append("表情说明(多个用\"|\"区分)：");
    strhtml.Append("<input type=\"text\" name=\"top\" value=\"" + this.top + "\"/><br/>");
    strhtml.Append("对应图片(多个用\"|\"区分)：");
    strhtml.Append("<input type=\"text\" name=\"down\" value=\"" + this.down + "\"/><br/>");
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        strhtml.Append("<br/>------------<br/>");
        strhtml.Append("是否更新所有论坛栏目？");
        strhtml.Append("<br/><input type=\"text\"  name=\"chkall\" size=\"3\" value=\"no\"/>如果是输入yes");
        strhtml.Append("<br/>------------<br />");
    }
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");    
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("保 存|保 存|Update") + "\"/>");

    strhtml.Append("</form></div>");
    strhtml.Append("<div class=\"subtitle\">"+this.GetLang("说明：默认为10说明：系统默认QQ表情。所有图片放至在/bbs/face目录下，由系统管理员配置，请复制以下配置。|說明：默認爲10|Note: The default is 10"));
    strhtml.Append("<hr/>");
    strhtml.Append("1.QQ表情系列，<a href=\"" + this.http_start + "bbs/toViewFace.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;facetype=1&amp;facesmall=1&amp;facebig=21\">查看</a><br/>");
    strhtml.Append("表情说明：<br/><input type=\"text\" name=\"s1" + r + "\" value=\"胜利|偷笑|送花|调皮|欢迎|微笑|暴汗|大笑|晕了|疑惑|别吵|流泪|脸红|色色|惊讶|上火|飞吻|摆酷|睡觉|闭嘴|再见\"/><br/>");
    strhtml.Append("对应图片：(1-21)<br/><input type=\"text\" name=\"f1" + r + "\" value=\"1.gif|2.gif|3.gif|4.gif|5.gif|6.gif|7.gif|8.gif|9.gif|10.gif|11.gif|12.gif|13.gif|14.gif|15.gif|16.gif|17.gif|18.gif|19.gif|20.gif|21.gif\"/>");
    strhtml.Append("<hr/>");
    strhtml.Append("2.大图系列，<a href=\"" + this.http_start + "bbs/toViewFace.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;facetype=2&amp;facesmall=22&amp;facebig=34\">查看</a><br/>");
    strhtml.Append("表情说明：<br/><input type=\"text\" name=\"s2" + r + "\" value=\"天啊|开心|大哭|欠揍|必胜|支持|收到|讨厌|怕怕|不解|我靠|傻了|大汗\"/><br/>");
    strhtml.Append("对应图片：(22-34)<br/><input type=\"text\" name=\"f2" + r + "\" value=\"22.gif|23.gif|24.gif|25.gif|26.gif|27.gif|28.gif|29.gif|30.gif|31.gif|32.gif|32.gif|34.gif\"/>");
    strhtml.Append("<hr/>");
    strhtml.Append("3.其它表情系列：由系统管理员在此写说明。");
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
    strhtml.Append("<a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    strhtml.Append("</div></div>");

    Response.Write(strhtml);
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


