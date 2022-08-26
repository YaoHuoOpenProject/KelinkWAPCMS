<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WapGetPW.aspx.cs" Inherits="KeLin.WebSite.WapGetPW" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
//显示头
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("取回密码|取回密码|Get Password"), wmlVo));//显示头
if (ver == "1")  //显示WAP1.0
{
    strhtml.Append("<p>");

    if (this.INFO == "NULL")
    {
        strhtml.Append("<b>* 所有输入项不能为空！</b><br/>");

    }
    else if (this.INFO == "NOTEXIST")
    {
        strhtml.Append("<b>* 查无记录！</b><br/>");

    }
    else if (this.INFO == "SENDOK")
    {
        strhtml.Append("<b>* 系统发送了一封邮件到：" + toemail + " ，请查收并按邮件说明完成操作！<br/>邮件发送状态：" + this.EMAIL_INFO + "</b><br/>");

    }
    else if (this.INFO == "SHOWNOTEXIT")
    {

        strhtml.Append("<b>* 此链接已失效了！</b><br/>");


    }
    else if (this.INFO == "SHOWOK")
    {
        strhtml.Append("<b>* 已成功重置密码，密码已发送至:" + toemail + "！请查收并按邮件说明完成操作！<br/>邮件发送状态：" + this.EMAIL_INFO + "</b><br/>");
    }

    if (this.INFO != "SENDOK" && this.INFO.IndexOf("SHOW") < 0 )
    {
        strhtml.Append("方法一：如果本站启用短信注册会员功能，重发短信指令即可重置密码。【<a href=\""+this.http_start +"wapreg.aspx?siteid="+this.siteid +"&amp;classid=0\">点击此查看</a>】<br/>");
        strhtml.Append("方法二：输入用户名或会员ID和电子邮件地址：<br/>");

        strhtml.Append("<select name=\"totype" + r + "\" value=\"" + this.totype + "\">");
        strhtml.Append("<option value=\"0\">用户ID</option>");
        strhtml.Append("<option value=\"1\">用户名</option>");
        strhtml.Append("</select>*<br/>");
        strhtml.Append("<input type=\"text\" name=\"toname" + r + "\" value=\"" + this.toname + "\"/><br/>");
        strhtml.Append(this.GetLang("邮箱地址|邮箱地址|email") + "*:<br/>");
        strhtml.Append("<input type=\"text\" name=\"toemail" + r + "\" value=\"" + this.toemail + "\"/><br/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "wapgetpw.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"toemail\" value=\"$(toemail" + r + ")\"/>");
        strhtml.Append("<postfield name=\"totype\" value=\"$(totype" + r + ")\"/>");
        strhtml.Append("<postfield name=\"toname\" value=\"$(toname" + r + ")\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>" + this.GetLang("下一步|下一步|Next") + "</anchor><br/>");
    }
    strhtml.Append("<a href=\"" + http_start + "waplogin.aspx?siteid=" + siteid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + http_start + "wapindex.aspx?siteid=" + siteid + "" + "\">返回首页</a> ");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);

}else{ //显示WAP2.0

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("取回密码|取回密码|Get Password") + "</div>");
    strhtml.Append("<div class=\"tip\">");
    if (this.INFO == "NULL")
    {
        strhtml.Append("<b>* 所有输入项不能为空！</b><br/>");

    }
    else if (this.INFO == "NOTEXIST")
    {
        strhtml.Append("<b>* 查无记录！</b><br/>");

    }
    else if (this.INFO == "SENDOK")
    {
        strhtml.Append("<b>* 系统发送了一封邮件到：" + toemail + " ，请查收并按邮件说明完成操作！<br/>邮件发送状态：" + this.EMAIL_INFO + "</b><br/>");

    }
    else if (this.INFO == "SHOWNOTEXIT")
    {

        strhtml.Append("<b>* 此链接已失效了！</b><br/>");


    }
    else if (this.INFO == "SHOWOK")
    {
        strhtml.Append("<b>* 已成功重置密码，密码已发送至:" + toemail + "！请查收并按邮件说明完成操作！<br/>邮件发送状态：" + this.EMAIL_INFO + "</b><br/>");
    }
    strhtml.Append("</div>");
    if (this.INFO != "SENDOK" && this.INFO.IndexOf("SHOW") < 0)
    {
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<strong>方法一：</strong>如果本站启用短信注册会员功能，重发短信指令即可重置密码。【<a href=\"" + this.http_start + "wapreg.aspx?siteid=" + this.siteid + "&amp;classid=0\">点击此查看</a>】<br/>");
        strhtml.Append("<strong>方法二：</strong>输入用户名或会员ID和电子邮件地址：<br/>");
        strhtml.Append("<form name=\"f\" aciton=\"" + http_start + "wapgetpw.aspx\" method=\"post\">");
        strhtml.Append("<select name=\"totype\" class=\"txt\">");
        strhtml.Append("<option value=\"0\">用户ID</option>");
        strhtml.Append("<option value=\"1\">用户名</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("<input type=\"text\" name=\"toname\" value=\"" + this.toname + "\" class=\"txt\"/><br/>");
        strhtml.Append(this.GetLang("邮箱地址|邮箱地址|email") + "*:<br/>");
        strhtml.Append("<input type=\"text\" name=\"toemail\" value=\"" + this.toemail + "\" class=\"txt\"/><br/>");
        
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("下一步|下一步|Next") + "\"/>");
        strhtml.Append("</div>");
    }
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + http_start + "waplogin.aspx?siteid=" + siteid + "" + "\">返回上级</a> ");
    if (isWebHtml == "")
    {
        strhtml.Append("<a href=\"" + http_start + "wapindex.aspx?siteid=" + siteid + "" + "\">返回首页</a> ");
       
    }
    strhtml.Append("</div></div>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    
    Response.Write(strhtml);
}
//显示底部
Response.Write(WapTool.showDown(wmlVo)); 
%>