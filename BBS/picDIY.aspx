<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="picDIY.aspx.cs" Inherits="KeLin.WebSite.bbs.picDIY" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop("自定义图片下载", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   strhtml.Append(ERROR);
   if (this.INFO == "NULL")
    {
        strhtml.Append("<b>图片长和宽不能同时为空！可只输入一项值！</b><br/>");

    }
   else if (this.INFO == "WAITING")
   {
       strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

   }
   if (this.downloadpath != "" )
   {
       strhtml.Append("<a href=\"" + downloadpath + "\">生成成功，点击此下载</a><br/>");
       strhtml.Append("----------<br/>");
   }
   strhtml.Append("<img src=\"" + this.http_start + this.path + "\" alt=\"PIC\"/><br/><br/>");
   strhtml.Append("<a href=\"" + this.http_start + this.path + "\">原始(" + ext + ")下载</a><br/>");

    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id="+this.id+"&amp;lpage="+this.lpage+"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    Response.Write(strhtml);
}else{ //2.0



    strhtml.Append("<div class=\"subtitle\">自定义图片下载</div>");
    strhtml.Append(ERROR);
    if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>图片长和宽不能同时为空！可只输入一项值！</b></div>");

    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b></div>");

    }
    if (this.downloadpath != "")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<a href=\"" + downloadpath + "\">生成成功，点击此下载</a><br/>");
        strhtml.Append("</div>");
    }
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<img src=\"" + this.http_start + this.path + "\" alt=\"PIC\"/><br/>");
    strhtml.Append("<a href=\"" + this.http_start + this.path + "\">原始(" + ext + ")下载</a><br/><br/>");

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml.ToString()), wmlVo));
        Response.End();
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");
    Response.Write(strhtml);
    
    



}
Response.Write(WapTool.showDown(wmlVo)); %>
