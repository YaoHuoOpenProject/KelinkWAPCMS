<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="picDIY.aspx.cs" Inherits="KeLin.WebSite.album.picDIY" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("自定义相片下载", wmlVo));//显示头  
StringBuilder strhtml = new StringBuilder();                                                                                                                                                               
if (ver == "1")
{
   strhtml.Append("<p align=\"" + classVo.position + "\">");
   strhtml.Append(ERROR);
   if (this.INFO == "NULL")
    {
        strhtml.Append("<b>相片长和宽不能同时为空！可只输入一项值！</b><br/>");

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
   strhtml.Append("自定义相片:<br/>");
   strhtml.Append(this.GetLang("图宽|图宽|Width") + ":<input type=\"text\" name=\"swidth" + r + "\" size=\"3\" value=\"\"/>px<br/> ");
   strhtml.Append(this.GetLang("图高|图高|Height") + ":<input type=\"text\" name=\"sheight" + r + "\" size=\"3\" value=\"\"/>px<br/>");
   strhtml.Append("(建议只输入其中一项保持不变形)<br/>");

   strhtml.Append("<anchor><go href=\"" + http_start + "album/picDIY.aspx\" method=\"post\" accept-charset=\"utf-8\">");
   strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");
   strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
   strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
   strhtml.Append("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
   strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
   strhtml.Append("<postfield name=\"path\" value=\"" + path + "\"/>");
   strhtml.Append("<postfield name=\"swidth\" value=\"$(swidth" + r + ")\"/>");
   strhtml.Append("<postfield name=\"sheight\" value=\"$(sheight" + r + ")\"/>");
   strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
   strhtml.Append("</go>" + this.GetLang("生成下载|生成下载|submit") + "</anchor><br/>");
   strhtml.Append("其它:<br/>");


   strhtml.Append("<a href=\"" + this.http_start + "album/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=128&amp;sheight=128\">128*128</a><br/>");
   strhtml.Append("<a href=\"" + this.http_start + "album/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=128&amp;sheight=160\">128*160</a><br/>");
   strhtml.Append("<a href=\"" + this.http_start + "album/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=208&amp;sheight=208\">208*208</a><br/>");
   strhtml.Append("<a href=\"" + this.http_start + "album/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=220&amp;sheight=176\">220*176</a><br/>");
   strhtml.Append("<a href=\"" + this.http_start + "album/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=240&amp;sheight=320\">240*320</a><br/>");
   strhtml.Append("<a href=\"" + this.http_start + "album/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=480&amp;sheight=800\">480*800</a><br/>");
   strhtml.Append("<a href=\"" + this.http_start + "album/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=640&amp;sheight=800\">640*800</a><br/>"); 
    strhtml.Append("----------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "album/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id="+this.id+"&amp;lpage="+this.lpage+"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);

}else{ //2.0



    strhtml.Append("<div class=\"subtitle\">自定义相片下载</div>");
    strhtml.Append(ERROR);
    if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>相片长和宽不能同时为空！可只输入一项值！</b></div>");

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
    strhtml.Append("<div class=\"bt1\"><a href=\"" + this.http_start + this.path + "\">原始(" + ext + ")下载</a></div>");
    strhtml.Append("自定义相片:<br/>");
    strhtml.Append("<form name=\"f\" action=\"" + http_start + "album/picDIY.aspx\" method=\"post\">");
    strhtml.Append(this.GetLang("图宽|图宽|Width") + ":<input type=\"text\" name=\"swidth\" size=\"3\" value=\"\"/>px  ");
    strhtml.Append(this.GetLang("图高|图高|Height") + ":<input type=\"text\" name=\"sheight\" size=\"3\" value=\"\"/>px<br/>");
    strhtml.Append("(建议只输入其中一项保持不变形)<br/>");
    
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"path\" value=\"" + path + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("生成下载|生成下载|submit") + "\"/>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append("其它格式:</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "album/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=128&amp;sheight=128\">128*128</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "album/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=128&amp;sheight=160\">128*160</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "album/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=208&amp;sheight=208\">208*208</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "album/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=220&amp;sheight=176\">220*176</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "album/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=240&amp;sheight=320\">240*320</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "album/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=480&amp;sheight=800\">480*800</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "album/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=640&amp;sheight=800\">640*800</a><br/>"); 
    strhtml.Append("</div>");
    strhtml.Append("</div>");
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "album/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">返回上级</a> ");

    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div>");
    strhtml.Append("</div>");

     
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml.ToString()), wmlVo));
        Response.End();
    }

    Response.Write(strhtml);


}
Response.Write(WapTool.showDown(wmlVo)); %>
