<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="picDIY.aspx.cs" Inherits="KeLin.WebSite.shop.picDIY" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("自定义图片下载", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
   Response.Write("<p align=\"" + classVo.position + "\">");
   Response.Write(ERROR);
   if (this.INFO == "NULL")
    {
        Response.Write("<b>图片长和宽不能同时为空！可只输入一项值！</b><br/>");

    }
   else if (this.INFO == "WAITING")
   {
       Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

   }
   if (this.shoppath != "" )
   {
       Response.Write("<a href=\"" + shoppath + "\">生成成功，点击此下载</a><br/>");
       Response.Write("----------<br/>");
   }
   Response.Write("<img src=\"" + this.http_start + this.path + "\" alt=\"PIC\"/><br/><br/>");
   Response.Write("<a href=\"" + this.http_start + this.path + "\">原始(" + ext + ")下载</a><br/>");
   Response.Write("自定义图片:<br/>");
   Response.Write(this.GetLang("图宽|图宽|Width") + ":<input type=\"text\" name=\"swidth" + r + "\" size=\"3\" value=\"\"/>px<br/> ");
   Response.Write(this.GetLang("图高|图高|Height") + ":<input type=\"text\" name=\"sheight" + r + "\" size=\"3\" value=\"\"/>px<br/>");
   Response.Write("(建议只输入其中一项保持不变形)<br/>");

   Response.Write("<anchor><go href=\"" + http_start + "shop/picDIY.aspx\" method=\"post\" accept-charset=\"utf-8\">");
   Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
   Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
   Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
   Response.Write("<postfield name=\"lpage\" value=\"" + lpage + "\"/>");
   Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
   Response.Write("<postfield name=\"path\" value=\"" + path + "\"/>");
   Response.Write("<postfield name=\"swidth\" value=\"$(swidth" + r + ")\"/>");
   Response.Write("<postfield name=\"sheight\" value=\"$(sheight" + r + ")\"/>");
   Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
   Response.Write("</go>" + this.GetLang("生成下载|生成下载|submit") + "</anchor><br/>");
   Response.Write("其它:<br/>");


   Response.Write("<a href=\"" + this.http_start + "shop/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=128&amp;sheight=128\">128*128</a><br/>");
   Response.Write("<a href=\"" + this.http_start + "shop/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=128&amp;sheight=160\">128*160</a><br/>");
   Response.Write("<a href=\"" + this.http_start + "shop/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=208&amp;sheight=208\">208*208</a><br/>");
   Response.Write("<a href=\"" + this.http_start + "shop/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=220&amp;sheight=176\">220*176</a><br/>");
   Response.Write("<a href=\"" + this.http_start + "shop/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=240&amp;sheight=320\">240*320</a><br/>");
   Response.Write("<a href=\"" + this.http_start + "shop/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=480&amp;sheight=800\">480*800</a><br/>");
   Response.Write("<a href=\"" + this.http_start + "shop/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=640&amp;sheight=800\">640*800</a><br/>"); 
    Response.Write("----------<br/>");
    Response.Write("<a href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id="+this.id+"&amp;lpage="+this.lpage+"" + "\">返回上级</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
    

}else{ //2.0



    Response.Write("<div class=\"subtitle\">自定义图片下载</div>");
    Response.Write(ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>图片长和宽不能同时为空！可只输入一项值！</b></div>");

    }
    else if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b></div>");

    }
    if (this.shoppath != "")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<a href=\"" + shoppath + "\">生成成功，点击此下载</a><br/>");
        Response.Write("</div>");
    }
    Response.Write("<div class=\"content\">");
    Response.Write("<img src=\"" + this.http_start + this.path + "\" alt=\"PIC\"/><br/>");
    Response.Write("<a href=\"" + this.http_start + this.path + "\">原始(" + ext + ")下载</a><br/><br/>");
    Response.Write("自定义图片:<br/>");
    Response.Write("<form name=\"f\" action=\"" + http_start + "shop/picDIY.aspx\" method=\"post\">");
    Response.Write(this.GetLang("图宽|图宽|Width") + ":<input type=\"text\" name=\"swidth\" size=\"3\" value=\"\"/>px<br/> ");
    Response.Write(this.GetLang("图高|图高|Height") + ":<input type=\"text\" name=\"sheight\" size=\"3\" value=\"\"/>px<br/>");
    Response.Write("(建议只输入其中一项保持不变形)<br/>");

    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"path\" value=\"" + path + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("生成下载|生成下载|submit") + "\"/>");
    Response.Write("</div>");
    Response.Write("<div class=\"subtitle\">");
    Response.Write("其它:</div>");
    Response.Write("<div class=\"bt1\">");

    Response.Write("<a href=\"" + this.http_start + "shop/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=128&amp;sheight=128\">128*128</a> ");
    Response.Write("<a href=\"" + this.http_start + "shop/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=128&amp;sheight=160\">128*160</a> ");
    Response.Write("<a href=\"" + this.http_start + "shop/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=208&amp;sheight=208\">208*208</a> ");
    Response.Write("<a href=\"" + this.http_start + "shop/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=220&amp;sheight=176\">220*176</a> ");
    Response.Write("<a href=\"" + this.http_start + "shop/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=240&amp;sheight=320\">240*320</a> ");
    Response.Write("<a href=\"" + this.http_start + "shop/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=480&amp;sheight=800\">480*800</a> ");
    Response.Write("<a href=\"" + this.http_start + "shop/picDIY.aspx?action=gomod&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;path=" + HttpUtility.UrlEncode(path) + "&amp;swidth=640&amp;sheight=800\">640*800</a> "); 
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "shop/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage=" + this.lpage + "" + "\">返回上级</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
 
    Response.Write("</div></div>");
    
    



}
Response.Write(WapTool.showDown(wmlVo)); %>
