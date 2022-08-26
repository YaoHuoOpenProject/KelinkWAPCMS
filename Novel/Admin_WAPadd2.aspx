<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd2.aspx.cs" Inherits="KeLin.WebSite.novel.admin_WAPadd2" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.dostate+this.GetLang("分卷|分卷|content"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    Response.Write("<a href=\"" + this.http_start + "novel/admin_WAPadd2.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面管理|进入WAP2.0界面管理|wap2.0 admin") + "</a><br/>");

    Response.Write("<a href=\"" + this.http_start + "novel/admin_userlistWAP2.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"title\">" + this.dostate + this.GetLang("分卷|分卷|operation") + "</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("*项不能为空！  ");
        Response.Write("</div>");
    }     else if (this.INFO == "REPEAT")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>请不要发重复内容！</b><br/>");
        Response.Write("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        Response.Write("</div>");

    }    
   
    else if (this.INFO == "ADDOK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("添加分卷成功！  ");
        if (siteVo.isCheck == 1)
        {
            //Response.Write(" 审核后显示！  ");
        }
        Response.Write("</div>");

    }
    else if (this.INFO == "UPOK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("修改分卷成功！  ");
        if (siteVo.isCheck == 1)
        {
            //Response.Write(" 审核后显示！  ");
        }
        Response.Write("</div>");

    }

    if (this.INFO != "ADDOK" && this.INFO != "UPOK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"gt\" action=\"" + http_start + "novel/admin_WAPadd2.aspx\" method=\"post\">");
        Response.Write(this.GetLang("书名|书名|BookName") + ":" + bookVo.book_title+"<br/>");
        Response.Write(this.GetLang("书名ID|书名ID|ID") + ":" + bookVo.id+"<br/>");
        Response.Write(this.GetLang("分卷名|分卷名|分卷名") + "*:");
        Response.Write("<input type=\"text\" name=\"VolumeName\" value=\"" + vo.VolumeName + "\"/><br/>");
        Response.Write(this.GetLang("排序号|排序号|排序号") + "*:");
        Response.Write("<input type=\"text\" name=\"orderNum\" value=\"" + vo.OrderNum + "\"/><br/>");
       
        
        
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + this.id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"bookid\" value=\"" + this.bookid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" value=\"" + this.GetLang("确 定|确 定|submit") + "\"/></form>");
        
        Response.Write("</div>");
    }
 
    
    Response.Write("<div class=\"mylink\">");
    Response.Write("<a href=\"" + this.http_start + "novel/admin_userlistWAP2.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


