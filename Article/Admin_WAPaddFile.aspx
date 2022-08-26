<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPaddFile.aspx.cs" Inherits="KeLin.WebSite.article.admin_WAPaddFile" %>

<%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
Response.Write(WapTool.showTop("图文展示上传", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);

    Response.Write("<a href=\"" + this.http_start + "article/admin_wapaddfile.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面上传|进入WAP2.0界面上传|wap2.0 add upfile") + "</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "article/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">图文展示上传</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {

        Response.Write("<b>上传成功！</b> ");
        if (siteVo.isCheck == 1)
        {
            Response.Write("<b>审核后显示！</b> ");
        }
        Response.Write(" <a href=\"" + this.http_start + "article/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "\">" + this.GetLang("返回|返回|Back to list") + "</a>");
    }
    else if (this.INFO == "EXTERR")
    {
        Response.Write("<b>上传文件格式错误，只允许上传：" + siteVo.UpFileType + "</b><br/>");

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
    Response.Write("<div class=\"content\">");
    //选多少个
    
    Response.Write("<form name=\"g1\" action=\"" + http_start + "article/admin_WAPaddfile.aspx\" method=\"get\">");
    Response.Write(this.GetLang("上传数量|上传数量|Upload Number") + " <input type=\"text\" name=\"num\" value=\"" + this.num + "\" size=\"2\"/>");   
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"go\"/>");
    Response.Write("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"smalltypeid\" value=\"" + smalltypeid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write(" <input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定|确定|GO") + "\"/></form>");
    
    Response.Write("<br/><br/>");
    
    
    //选择栏目
    Response.Write("<form name=\"gt\" action=\"" + http_start + "article/admin_WAPaddfile.aspx\" enctype=\"multipart/form-data\" method=\"post\">");
    Response.Write("栏目分类*:");
    Response.Write("<select name=\"toclassid\">");
    Response.Write("<option value=\"" + this.toclassid + "\">" + this.toclassid + "</option>");
    Response.Write("<option value=\"0\">0_默认</option>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

    }
    Response.Write("</select><br/>");    
    Response.Write(this.GetLang("标题|標題|Title") + "*:");
    Response.Write("<input type=\"text\" name=\"book_title\" value=\""+book_title+"\"/><br/>");

    Response.Write(this.GetLang("作者|作者|Author") + ":");
    Response.Write("<input type=\"text\" name=\"book_author\" value=\"\"/><br/>");
    Response.Write(this.GetLang("来源|來源|Source") + ":");
    Response.Write("<input type=\"text\" name=\"book_pub\" value=\"\"/><br/>");

    Response.Write(this.GetLang("内容|内容|Introduction") + ":<br/>");
    Response.Write("<textarea name=\"book_content\" rows=\"3\"style=\"width:100%\">" + book_content + "</textarea><hr/>");

    

  
    
    for (int i = 0; i < this.num; i++)
    {
        if (i == 0)
        {
            Response.Write("第一张图作为缩放图建议320*240：<br/>");

            Response.Write("<input type=\"file\" name=\"book_file\" value=\"\"/><br/>");
            Response.Write("<input type=\"hidden\" name=\"book_file_info\" value=\"\" />");
       
            Response.Write("缩放图宽:<input type=\"text\" name=\"swidth_small\" size=\"5\" value=\"" + swidth_small + "\"/>");
            Response.Write("缩放图高:<input type=\"text\" name=\"sheight_small\" size=\"5\" value=\"" + sheight_small + "\"/><br/>");
            Response.Write("(不缩放,请留空,只输入宽或高,不变型)<br/>");
            Response.Write("<hr/>");

        }
        else
        {
            Response.Write("---展示图" + (i) + "---<br/>");

            Response.Write("<input type=\"file\" name=\"book_file\" value=\"\"/><br/>");
            Response.Write("<textarea name=\"book_file_info\" rows=\"3\" style=\"width:100%\"></textarea><br/>");
        }
    }

    Response.Write("展示图宽:<input type=\"text\" name=\"swidth\" size=\"5\" value=\"" + swidth + "\"/>");
    Response.Write("展示图高:<input type=\"text\" name=\"sheight\" size=\"5\" value=\"" + sheight + "\"/><br/>");
    Response.Write("(不缩放,请留空,只输入宽或高,不变型)<br/>");
    Response.Write("<hr/>");  

    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"num\" value=\"" + num + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("上传|上传|submit") + "\"/></form>");
    Response.Write("</div>");

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "article/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
 
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>



