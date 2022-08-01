<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpLoadPic.aspx.cs" Inherits="KeLin.WebSite.shop.UpLoadPic" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
Response.Write(WapTool.showTop("上传图片", wmlVo));//显示头        
                                                                                                                                                                   
if (1 == 2)
{
    
}
else //2.0界面
{
    Response.Write(strJS);
    Response.Write("<div class=\"subtitle\">上传图片</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {

        Response.Write("<b>上传成功！</b>  <a href=\"javascript:window.close();\">关闭窗口</a>");

       
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
    if (1==1)
    {
        Response.Write("<div class=\"content\">");


        //选择栏目
        Response.Write("<form name=\"gt\" action=\"" + http_start + "shop/UpLoadPic.aspx\" enctype=\"multipart/form-data\" method=\"post\">");


        
        Response.Write(this.GetLang("选择图片|选择图片|select pic"));
        Response.Write("<input type=\"file\" name=\"book_file\" value=\"\"/><br/>");
        Response.Write(this.GetLang("图宽|图宽|Width") + ":<input type=\"text\" name=\"swidth\" size=\"5\" value=\"" + swidth + "\"/>");
        Response.Write(this.GetLang("图高|图高|Height") + ":<input type=\"text\" name=\"sheight\" size=\"5\" value=\"" + sheight + "\"/><br/>");
        Response.Write("(不缩放,请留空,只输入宽或高,不变型)<br/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"typeid\" value=\"" + typeid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("上传|上传|submit") + "\"/></form>");
        Response.Write("</div>");
    }
    

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>



