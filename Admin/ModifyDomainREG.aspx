<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyDomainREG.aspx.cs" Inherits="KeLin.WebSite.admin.ModifyDomainREG" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("注册软件|注册软件|soft reg"), wmlVo));//显示头                                                                                                                                                                       
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

    Response.Write("<anchor><go href=\""+http_start+"admin/modifydomainreg.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");    
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"par0\" value=\"$(par0" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保存生成机器码|保存生成机器码|Save") + "</anchor><br/>");
    Response.Write("------------<br/>");
    Response.Write("<b>机器码：</b><br/><input type=\"text\" name=\"reg"+r+"\" value=\""+this.regcode+"\" size=\"20\" /><br /><b>"+ this.isReg+"</b><br/>");
   
    
    Response.Write("说明：机器码将绑定您的域名，请确保你的域名正确！将机器码填入授权中心<a href=\"http://sms.kelink.com\">http://sms.kelink.com</a>(注册会员，添加我的网站)，然后联系柯林客服QQ85403498/企业QQ:800007757/Tel:<a href=\"wtai://wp/mc;13048036868\">13048036868</a>进行授权，并取得授权码，配置到Web.Config中，完成注册软件！<br/>");
 
    Response.Write("------------<br/>");

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("注册软件|注册软件|soft reg") + "</div>");
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b></div>");

    }

    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "admin/modifydomainreg.aspx\" method=\"post\">");



    Response.Write("顶级域名：<br/>");
    Response.Write("<input type=\"text\" name=\"par0\" value=\"" + this.par0 + "\"/><br/>");

    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"g\" value=\"" + this.GetLang("保存生成机器码|保存生成机器码|Save") + "\"/>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<b>机器码：</b><br/><input type=\"text\" name=\"reg"+r+"\" value=\""+this.regcode+"\" size=\"20\" /><br /><b>"+ this.isReg+"</b><br/>");
    Response.Write("</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write("说明：机器码将绑定您的域名，请确保你的域名正确！将机器码填入授权中心<a href=\"http://sms.kelink.com\">http://sms.kelink.com</a>(注册会员，添加我的网站)，然后联系柯林客服QQ85403498/企业QQ:800007757/Tel:<a href=\"wtai://wp/mc;13048036868\">13048036868</a>进行授权，并取得授权码，配置到Web.Config中，完成注册软件！<br/>");
    Response.Write("</div>");
   
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


