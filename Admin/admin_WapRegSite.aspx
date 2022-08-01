<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WapRegSite.aspx.cs" Inherits="KeLin.WebSite.admin_WapRegSite" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("注册站长|注册站长|Reg webMaster"), wmlVo));//显示头
if (ver == "1")  //显示WAP1.0
{

    

}else{ //显示WAP2.0


    Response.Write("<div class=\"btBox\"><div class=\"bt2\"><a href=\"#\" class=\"btSelect\">注册站长</a> <a href=\"admin_wapreg.aspx?siteid=" + this.siteid + "\">注册普通会员</a></div></div>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        string title = "恭喜您注册站长成功！";
        string content = "你的用户名：" + tousername + "\n你的网站ID和会员ID：" + this.userid + "\n你的密码：" + topassword + "\n你的网站域名:" + tousername + "." + DomainVo.domain + "\n请保管好以上帐号信息！\n";
        //发送邮件
        EMAIL_INFO = WapTool.SendEmail(toemail, tonickname, tositename, title, content,false);
        Response.Write("<b>" + title + "<br/>" + content.Replace("\n", "<br/>") + "</b><br/>");        
        Response.Write("系统已将以上信息发到电子邮箱" + toemail + "：" + this.EMAIL_INFO + "<br/>");
        
        Response.Write("</div>");

    }
    else if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b></div>");
        
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("所有项不能为空！|所有项不能为空！|not null!") + "</b></div>");
    }
    else if (this.INFO == "CHECKERR")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("校验码错误！|校验码错误！|checkcode error!") + "</b></div>");
    }
    else if (this.INFO == "NOTENORNUM")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("用户名只能是英文或数字！|用户名只能是英文或数字！|username need en or num!") + "</b></div>");
    }
    else if (this.INFO == "MAXLEN")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("用户名长度要大于" + DomainVo.length + "位！|用户名长度要大于" + DomainVo.length + "位！|username to more than " + DomainVo.length + " words!") + "</b></div>");
    }
    else if (this.INFO == "HASEXISTUSERNAME")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("用户名已存在！|用户名已存在！|username exist!") + "</b></div>");
    }


    //开始显示
    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"f\" action=\"" + http_start + "admin/admin_WapRegSite.aspx\" method=\"post\">");
        Response.Write(this.GetLang("用户名|用户名|username ") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"tousername\" value=\"" + this.tousername + "\"/><br/>");
        Response.Write("您的域名:<u>用户名." + DomainVo.domain + "</u><br/>");

        Response.Write(this.GetLang("网站名称|网站名称|webSite name") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"tositename\" value=\"" + this.tositename + "\"/><br/>");


        Response.Write(this.GetLang("昵称|昵称|nickname") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"tonickname\" value=\"" + this.tonickname + "\"/><br/>");


        Response.Write(this.GetLang("密码|密码|password") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"topassword\" value=\"" + this.topassword + "\"/><br/>");

        Response.Write(this.GetLang("邮箱(很重要取回密码用)|邮箱|email") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"toemail\" value=\"" + this.toemail + "\"/><br/>");


        Response.Write(this.GetLang("性别|性别|sex ") + "*:");
        Response.Write("<select name=\"tosex" + r + "\">");
        Response.Write("<option value=\"0\">女</option>");
        Response.Write("<option value=\"1\">男</option>");
        Response.Write("</select><br/>");

        Response.Write(this.GetLang("验证码|验证码|code check") + ":");
        Response.Write("<input type=\"text\" name=\"codecheck\" value=\"" + this.codecheck + "\" size=\"4\"/> " + this.checkcodeinfo + "<br/>");
        if (Session["TJ"] != null)
        {
            Response.Write("推荐人:" + Session["TJ"] + "<br/>");
        }
        

        Response.Write("<input type=\"hidden\" name=\"action\" value=\"goadd\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"codechecks\" value=\"" + r + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"tomobile\" value=\"13\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("提 交 注 册|提 交 注 册|reg submit") + "\"/><br/>");
        Response.Write("</form></div>");





    }





 
    
                                                                                                                                                                         



}
//显示底部
Response.Write(WapTool.showDown(wmlVo)); 
%>