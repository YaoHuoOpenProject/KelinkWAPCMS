<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPaddFileDIR.aspx.cs" Inherits="KeLin.WebSite.article.admin_WAPaddFileDIR" %>

<%@ Import namespace="KeLin.ClassManager.Tool" %>
<%
    Response.Write(WapTool.showTop(this.GetLang("目录上传|目录上传|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);

    Response.Write("<a href=\"" + this.http_start + "article/admin_wapaddfileDIR.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面上传|进入WAP2.0界面上传|wap2.0 add upfile") + "</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "article/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("TXT上传|TXT上传|Add operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        if (num > 0)
        {
            Response.Write("<b>保存入库成功，一共成功读取" + num + "个TXT文件！</b> ");
        }
        else
        {
            Response.Write("<b>保存入库失败，一共成功读取" + num + "个TXT文件！</b> ");
        
        }
        if (siteVo.isCheck == 1)
        {
            Response.Write("<b>审核后显示！</b> ");
        }
        Response.Write("<br/><a href=\"" + this.http_start + "article/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "\">" + this.GetLang("返回|返回|Back to list") + "</a>");
    }
    
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>目录只能英文或数字，目录不存在！</b><br/>");

    }
    else if (this.INFO == "LOCK")
    {

        Response.Write("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
    }


    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    //选多少个
    
    Response.Write("<form name=\"g1\" action=\"" + http_start + "article/admin_wapaddfileDIR.aspx\" method=\"post\">");
    Response.Write( "输入目录名*：/<input type=\"text\" name=\"dir\" value=\"" + this.dir + "\" size=\"20\"/><br/>");
    Response.Write(this.GetLang("标题|標題|Title") + ":为TXT文件名。<br/>");


    Response.Write(this.GetLang("内容|内容|Introduction") + ":为TXT内容<br/>");

    Response.Write(this.GetLang("TXT编码|TXT编码|Code") + ":");
    Response.Write("<select name=\"encodetxt\">");
    Response.Write("<option value=\"" + this.encodetxt + "\">" + this.encodetxt + "</option>");
    Response.Write("<option value=\"GB2312\">GB2312</option>");
    Response.Write("<option value=\"Unicode\">Unicode</option>");
    Response.Write("<option value=\"UTF-8\">UTF-8</option>");
    Response.Write("</select><br/>");
    
    Response.Write(this.GetLang("栏目分类|栏目分类|Class") + "*:");
    Response.Write("<select name=\"toclassid\">");
    Response.Write("<option value=\"" + this.toclassid + "\">" + this.toclassid + "</option>");
    Response.Write("<option value=\"0\">0_默认</option>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

    }
    Response.Write("</select><br/>");

   
        
        Response.Write("作者:<input type=\"text\" name=\"book_author\" size=\"12\" value=\""+this.book_author+"\"/><br/>");
        Response.Write(this.GetLang("来源|來源|Source") + ":<input type=\"text\" name=\"book_pub\" value=\""+this.book_pub+"\"/><br/>");
        

    

    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"smalltypeid\" value=\"" + smalltypeid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write(" <input type=\"submit\" class=\"btn\" name=\"bt\" value=\"" + this.GetLang("确定|确定|GO") + "\"/></form>");
    
    Response.Write("<br/>说明：先通过ftp连接到服务器网站根目录下（与web.config同一级），新增目录，然后将TXT文件上传到此目录。文件名为标题，读取成功后会将txt文件删除。<br/>");
    
    

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "article/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>



