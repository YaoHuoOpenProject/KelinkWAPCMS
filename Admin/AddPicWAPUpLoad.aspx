<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPicWAPUpLoad.aspx.cs" Inherits="KeLin.WebSite.admin.AddPicWAPUpLoad" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
Response.Write(WapTool.showTop(this.GetLang("上传LOGO|上传LGOG|upload logo"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);

    Response.Write("<a href=\"" + this.http_start + "admin/addpicwapupload.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面上传|进入WAP2.0界面上传|wap2.0 add upfile") + "</a><br/>");

    Response.Write("<a href=\"" + this.http_start + "admin/addpicwap.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "admin/wapindexeditwap.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回排版页面|返回排版页面|Back to list") + "</a><br/>");
    
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("上传LOGO|上传LOGO|upload logo") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {

        Response.Write("<b>上传成功！</b> ");

       
    }
    else if (this.INFO == "EXTERR")
    {
        Response.Write("<b>上传文件格式错误，只允许上传：PNG|GIF|JPG|JPEG</b><br/>");

    }
    else if (this.INFO == "NOTSPACE")
    {
        Response.Write("<b>网站总空间已经大于系统分配给此网站的最大空间了，网站空间：" + siteVo.sitespace + "M；此网站已使用：" + (siteVo.myspace) + "KB</b><br/>");

    }
    else if (this.INFO == "MAXFILE")
    {
        Response.Write("<b>你上传的单个文件总大小超出了最大限制" + siteVo.MaxFileSize + "KB</b><br/>");

    }
   
    else if (this.INFO == "ERR_FORMAT")
    {
        Response.Write("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
    }
    


    Response.Write("</div>");
    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");


        //选择栏目
        Response.Write("<form name=\"gt\" action=\"" + http_start + "admin/addpicwapupload.aspx\" enctype=\"multipart/form-data\" method=\"post\">");


        
        Response.Write(this.GetLang("选择图片|选择图片|select pic"));
        Response.Write("<input type=\"file\" name=\"book_file\" value=\"\"/><br/>");
        Response.Write(this.GetLang("图宽|图宽|Width") + ":<input type=\"text\" name=\"swidth\" size=\"5\" value=\"" + swidth + "\"/>");
        Response.Write(this.GetLang("图高|图高|Height") + ":<input type=\"text\" name=\"sheight\" size=\"5\" value=\"" + sheight + "\"/><br/>");
        Response.Write("(不缩放,请留空,只输入宽或高,不变型)<br/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("上传|上传|submit") + "\"/></form>");
        Response.Write("</div>");
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "admin/addpicwap.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "admin/wapindexeditwap.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回排版页面|返回排版页面|Back to list") + "</a> ");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>



