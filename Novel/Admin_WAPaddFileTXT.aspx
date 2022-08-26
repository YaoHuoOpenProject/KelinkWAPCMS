<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_wapaddfileTXT.aspx.cs" Inherits="KeLin.WebSite.novel.admin_wapaddfileTXT" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
Response.Write(WapTool.showTop(this.GetLang("TXT上传|TXT上传|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);

    Response.Write("<a href=\"" + this.http_start + "novel/admin_wapaddfileTXT.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面上传|进入WAP2.0界面上传|wap2.0 add upfile") + "</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/admin_userlistWAP3.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"title\">" + this.GetLang("TXT上传|TXT上传|Add operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {

        Response.Write("<b>上传成功！</b> ");
        if (siteVo.isCheck == 1)
        {
            Response.Write("<b>审核后显示！</b> ");
        }
        Response.Write("<br/><a href=\"" + this.http_start + "novel/admin_userlistWAP3.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">" + this.GetLang("返回|返回|Back to list") + "</a>");
    }
    else if (this.INFO == "EXTERR")
    {
        Response.Write("<b>上传文件格式错误，只允许上传：TXT</b><br/>");

    }
    else if (this.INFO == "NOTSPACE")
    {
        Response.Write("<b>网站总空间已经大于系统分配给此网站的最大空间了，网站空间：" + siteVo.sitespace + "M；此网站已使用：" + (siteVo.myspace) + "KB</b><br/>");

    }
    else if (this.INFO == "MAXFILE")
    {
        Response.Write("<b>你上传的单个文件总大小超出了最大限制" + siteVo.MaxFileSize + "KB</b><br/>");

    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>标题不能小于2个字符！</b><br/>");

    }
    else if (this.INFO == "LOCK")
    {

        Response.Write("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
    }


    Response.Write("</div>");
    Response.Write("<div class=\"title\">");
    //选多少个
    
    Response.Write("<form name=\"g1\" action=\"" + http_start + "novel/admin_wapaddfileTXT.aspx\" method=\"get\">");
    Response.Write(this.GetLang("上传数量|上传数量|Upload Number") + " <input type=\"text\" name=\"num\" value=\"" + this.num + "\" size=\"2\"/>");   
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"go\"/>");
    Response.Write("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"bookid\" value=\"" + bookid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write(" <input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定|确定|GO") + "\"/></form>");
    
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    
    //选择栏目
    Response.Write("<form name=\"gt\" action=\"" + http_start + "novel/admin_wapaddfileTXT.aspx\" enctype=\"multipart/form-data\" method=\"post\">");
    Response.Write(this.GetLang("书名|书名|BookName") + ":" + bookVo.book_title + "<br/>");
    Response.Write(this.GetLang("书名ID|书名ID|ID") + ":");
    Response.Write("<input type=\"text\" name=\"bookid\" size=\"6\" value=\"" + bookVo.id + "\"/><br/>");
    Response.Write(this.GetLang("分卷|分卷|分卷") + "*:");
    Response.Write("<select name=\"VolumeId\">");
    Response.Write("<option value=\"" + vo.VolumeId + "\">" + vo.VolumeId + "</a>");
    Response.Write("<option value=\"0\">0_无分卷</a>");
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        Response.Write("<option value=\"" + listVo[i].VolumeId + "\">" + listVo[i].VolumeId + "_" + listVo[i].VolumeName + "</a>");
    }
    Response.Write("</select><br/>");
    Response.Write("需要扣" + siteVo.sitemoneyname + "*:");
    Response.Write("<input type=\"text\" name=\"needMoney\" value=\"0\" size=\"5\"/>个<br/>");
        

    Response.Write(this.GetLang("小说标题|小说标题|小说标题") + ":为TXT文件名。<br/>");
    

    Response.Write(this.GetLang("内容|内容|Introduction") + ":为TXT内容<br/>");

    Response.Write(this.GetLang("TXT编码|TXT编码|Code") + "*:");
    Response.Write("<select name=\"encodetxt\">");
    Response.Write("<option value=\"" + this.encodetxt + "\">" + this.encodetxt + "</option>");
    Response.Write("<option value=\"GB2312\">GB2312</option>");
    Response.Write("<option value=\"Unicode\">Unicode</option>");
    Response.Write("<option value=\"UTF-8\">UTF-8</option>");
    Response.Write("</select><br/>");
    Response.Write("先上传一个测试，如果报错或乱码，请尝试另一个编码！<br/>");
   

      
    
    for (int i = 0; i < this.num; i++)
    {
        Response.Write("---" + this.GetLang("TXT|TXT|TXT") + (i + 1) + "---<br/>");
       
        Response.Write("<input type=\"file\" name=\"book_file\" value=\"\"/><br/>");
    }

       

    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"num\" value=\"" + num + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("上传|上传|submit") + "\"/></form>");
    Response.Write("</div>");
   
    Response.Write("<div class=\"mylink\">");
    Response.Write("<br/><a href=\"" + this.http_start + "novel/admin_userlistWAP3.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>



