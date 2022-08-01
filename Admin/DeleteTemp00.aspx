<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteTemp00.aspx.cs" Inherits="KeLin.WebSite.admin.DeleteTemp00" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("上传文件管理|上传文件管理|domain setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("操作成功！|操作成功！|Successfully Update"));
        Response.Write("</b><br/>");
        
    }





    Response.Write("一、上传文件管理请登录WEB后台操作。<br/>");
  
    Response.Write("二、删除临时temp目录下文件<br/>");
    Response.Write("<anchor><go href=\""+http_start+"admin/DeleteTemp00.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");    
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("确 定|确 定|submit") + "</anchor><br/>");


    Response.Write("说明:确保您具有足够的权限，否则对路径的访问将被拒绝！也可通过ftp软件进去删除根目录/Temp/目录下所有文件。 <br/>");

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("上传文件管理|上传文件管理|domain setup") + "</div>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("操作成功！|操作成功！|Successfully Update"));
        Response.Write("</b></div>");

    }

    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "admin/DeleteTemp00.aspx\" method=\"post\">");



    Response.Write("一、上传文件管理请登录WEB后台操作。<br/>");

    Response.Write("二、删除临时temp目录下文件<br/>");
   
    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"g\" value=\"" + this.GetLang("确 定|确 定|submit") + "\"/>");

    Response.Write("</form></div>");

    Response.Write("<div class=\"tip\">");
    Response.Write("说明:确保您具有足够的权限，否则对路径的访问将被拒绝！也可通过ftp软件进去删除根目录/Temp/目录下所有文件。 <br/>");

    Response.Write("</div>");
   
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


