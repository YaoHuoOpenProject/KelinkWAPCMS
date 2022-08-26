﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_View_addfileAdd.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_View_addfileAdd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder();
Response.Write(WapTool.showTop(this.GetLang("续传文件|续传文件|add subject"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);

    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_addfileadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id="+this.id+"&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面续传文件|进入WAP2.0界面续传文件|wap2.0 add upfile") + "</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "bbs/Book_View_admin.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id="+this.id+"\">" + this.GetLang("返回上级|返回上级|add content") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id="+this.id+"\">" + this.GetLang("返回主题|返回主题|add vote") + "</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{
    if (num > 20) num = 20;

    strhtml.Append("<div class=\"btBox\">");
    strhtml.Append("<div class=\"bt2\">");
    strhtml.Append("<a  class=\"btSelect\" href=\"" + this.http_start + "bbs/book_view_addfileadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "&amp;id="+this.id+"\">本地续传文件</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view_addfileaddURL.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "&amp;id=" + this.id + "\">外站资源续传</a> ");

    strhtml.Append("</div></div>");
    strhtml.Append(this.ERROR);
    strhtml.Append("<div class=\"tip\">");
    if (this.INFO == "OK")
    {

        strhtml.Append("<b>上传成功！</b> ");
        if (siteVo.isCheck == 1)
        {
            strhtml.Append("<b>审核后显示！</b> ");
        }
        strhtml.Append("<a href=\"" + this.http_start + "bbs-" + id + ".html\">返回主题</a><br/>");
        
    }
    else if (this.INFO == "EXTERR")
    {
        strhtml.Append("<b>上传文件格式错误，只允许上传："+siteVo.UpFileType+"</b><br/>");

    }
    else if (this.INFO == "NOTSPACE")
    {
        strhtml.Append("<b>网站总空间已经大于系统分配给此网站的最大空间了，网站空间：" + siteVo.sitespace  + "M；此网站已使用：" + (siteVo.myspace) + "KB</b><br/>");

    }
    else if (this.INFO == "MAXFILE")
    {
        strhtml.Append("<b>你上传的单个文件总大小超出了最大限制" + siteVo.MaxFileSize + "KB</b><br/>");

    }


    else if (this.INFO == "LOCK")
    {

        strhtml.Append("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    if (this.INFO != "OK")
    {
        //选多少个
        strhtml.Append("<form name=\"g1\" action=\"" + http_start + "bbs/book_view_addfileadd.aspx\" method=\"get\">");
        strhtml.Append(this.GetLang("上传数量|上传数量|Upload Number") + " <input type=\"number\" name=\"num\" style=\"width:30px;text-align:center\" value=\"" + this.num + "\" size=\"2\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"lpage\" value=\"" + lpage + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append(" <input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定|确定|GO") + "\"/></form>");
        strhtml.Append("<br/>");
        strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/book_view_addfileadd.aspx\" enctype=\"multipart/form-data\" method=\"post\">");
        for (int i = 0; i < this.num; i++)
        {
            strhtml.Append("----- 上传文件" + (i + 1) + " -----<br/>");
            strhtml.Append("<input type=\"file\" style=\"border:0px;\" required=\"required\" name=\"book_file\" onchange=\"fileChange(this);\" accept=\".txt,.zip,.rar,.7z,.apk,.jpg,.jpeg,.png,.gif,.torrent,.mp3,.wma,.wav,.pdf,.xls,.doc,.docx\" value=\"\"/><br/>");
            strhtml.Append("<script charset=\"utf-8\" type=\"text/javascript\" src=\"/CSS/JS/upload.js\"></script>");
            strhtml.Append(this.GetLang("文件说明|文件说明|Source") + "<br/>");
            strhtml.Append("<textarea name=\"book_file_info\" rows=\"3\" style=\"width:97%\"></textarea><br/>");
            if (i == (this.num - 1))
            {
                strhtml.Append(" <input style=\"display:none;\" type=\"number\" min=\"300\" style=\"width:60px;text-align:center;\" name=\"book_width\" value=\"\" \"\"/>");
                //strhtml.Append(this.GetLang("图片宽度|图片宽度|Width") + " <input type=\"number\" min=\"300\" style=\"width:60px;text-align:center;\" name=\"book_width\" value=\"\" \"\"/> PX<br/>");
				}
        }
        //strhtml.Append("<anchor><go href=\"" + http_start + "bbs/book_view_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");        
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"num\" value=\"" + num + "\"/>");
        strhtml.Append("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("上传文件|上传文件|upload new subject") + "\"/>");
        strhtml.Append("</form>");
    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append("提示：严禁上传色情文件、病毒文件和恶意软件；<b>附件大小上限为1MB</b>，大文件建议传至网盘。");
    strhtml.Append("</div>");
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml,wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    
    strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/Book_View_admin.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id=" + this.id + "\">" + this.GetLang("返回上级|返回上级|add content") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs-" + id + ".html\">返回主题</a>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.lpage + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a> "); 
    
    strhtml.Append("</div></div>");
    Response.Write(strhtml);

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


