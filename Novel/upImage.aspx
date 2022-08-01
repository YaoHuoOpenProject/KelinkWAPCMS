<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="upimage.aspx.cs" Inherits="KeLin.WebSite.novel.upimage" %>

<%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
Response.Write(WapTool.showTop(this.GetLang("上传图片|上传图片|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);

    Response.Write("<a href=\"" + this.http_start + "novel/upimage.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面上传|进入WAP2.0界面上传|wap2.0 add upfile") + "</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "novel/admin_wapadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;showimg=" + this.showimg + "&amp;id="+this.id+"\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a><br/>");

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">图片显示</div>");
    Response.Write("<div class=\"content\">");
    if (showimg != "")
    {
        Response.Write("<br/><img src=\"" + this.showimg + "\" alt=\"pic\"/>");
        Response.Write("<br/><a href=\"" + this.http_start + "novel/admin_wapadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;showimg=" + this.showimg + "&amp;id="+this.id+"\">" + this.GetLang("确定插入|确定插入|确定插入") + "</a>");
    
    }
    Response.Write("</div>");
    Response.Write("<div class=\"title\">" + this.GetLang("上传图片|上传图片|Add operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {

        Response.Write("<b>上传成功！</b> ");
        if (siteVo.isCheck == 1)
        {
            Response.Write("<b>审核后显示！</b> ");
        }
        
        Response.Write(" <a href=\"" + this.http_start + "novel/admin_wapadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;showimg=" + this.showimg + "&amp;id="+this.id+"\">" + this.GetLang("确定插入|确定插入|确定插入") + "</a>");
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
    
    
    

    Response.Write("</div>");
    
    Response.Write("<div class=\"content\">");
    
    //选择栏目
    Response.Write("<form name=\"gt\" action=\"" + http_start + "novel/upimage.aspx\" enctype=\"multipart/form-data\" method=\"post\">");
    
  
    Response.Write(this.GetLang("图宽|图宽|Width") + ":<input type=\"text\" name=\"swidth\" size=\"5\" value=\"" + swidth + "\"/>");
    Response.Write(this.GetLang("图高|图高|Height") + ":<input type=\"text\" name=\"sheight\" size=\"5\" value=\"" + sheight + "\"/><br/>");
    Response.Write("(不缩放,请留空,只输入宽或高,不变型)<br/>");

    Response.Write(this.GetLang("图片|图片|Source") + "<br/>");
    Response.Write("<input type=\"file\" name=\"book_file\" value=\"\"/><br/>");  
      

    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"showimg\" value=\"" + showimg + "\"/>");   
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("上传|上传|submit") + "\"/></form>");
    Response.Write("</div>");
    
    Response.Write("<div class=\"mylink\">");
    Response.Write("<br/><a href=\"" + this.http_start + "novel/admin_wapadd.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;showimg=" + this.showimg + "&amp;id="+this.id+"\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>



