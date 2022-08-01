<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyDomain00.aspx.cs" Inherits="KeLin.WebSite.admin.ModifyDomain00" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("主域名设置|主域名设置|domain setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b><br/>");
        
    }





    Response.Write("顶级域名：<br/>");
    Response.Write("<input type=\"text\" name=\"par0" + r + "\" value=\"" + this.par0 + "\"/><br/>");
    Response.Write("(修改域名需要重新授权！)<br/>");
    Response.Write("<anchor><go href=\""+http_start+"admin/modifydomain00.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");    
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"par0\" value=\"$(par0" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor><br/>");
    Response.Write("说明：<br/>(1)如果是多用户建站系统，如你的顶级域名为<u>abc.com</u>，那么站长得到免费的二级域名为：<u>用户名.abc.com</u> <br/>(2)如果你的是单用户系统，请输入你的域名，不一定要顶级域名。<br/>(3)会员的空间地址为:<u>会员ID.zone.abc.com</u><br/>(4)以上前提是域名和主机支持泛解析！<br/>(5)请不要随意更改，否则授权失效！<br/><br/>");
       
    Response.Write("------------<br/>");

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("主域名设置|主域名设置|domain setup") + "</div>");
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b></div>");

    }

    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "admin/modifydomain00.aspx\" method=\"post\">");



    Response.Write("顶级域名：<br/>");
    Response.Write("<input type=\"text\" name=\"par0\" value=\"" + this.par0 + "\"/><br/>");
    Response.Write("(修改域名需要重新授权！)<br/>");
    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"g\" value=\"" + this.GetLang("保 存|保 存|Save") + "\"/>");

    Response.Write("</form></div>");

    Response.Write("<div class=\"tip\">");
    Response.Write("说明：<br/>(1)如果是多用户建站系统，如你的顶级域名为<u>abc.com</u>，那么站长得到免费的二级域名为：<u>用户名.abc.com</u> <br/>(2)如果你的是单用户系统，请输入你的域名,不一定要顶级域名。<br/>(3)会员的空间地址为:<u>会员ID.zone.abc.com</u><br/>(4)以上前提是域名和主机支持泛解析！<br/>(5)请不要随意更改，否则授权失效！<br/>");
    Response.Write("</div>");

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


