<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WapReg.aspx.cs" Inherits="KeLin.WebSite.admin_WapReg" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
//柯林短信中心号码
string m1,m2,m3;
m1 = "13556000271";
m2 = "13725199063";
m3 = "13119529349";
    
//显示头
Response.Write(WapTool.showTop(this.GetLang("注册普通会员|注册普通会员|Reg"), wmlVo));//显示头
if (ver == "1")  //显示WAP1.0
{

    

}else{ //显示WAP2.0

    if (userVo.managerlvl == "00" && ( this.KL_VERSION == "0" || this.KL_VERSION == "1"))
    {
        Response.Write("<div class=\"btBox\"><div class=\"bt2\"><a href=\"admin_wapregsite.aspx?siteid=" + this.siteid + "\">注册站长</a> <a href=\"#\" class=\"btSelect\">注册普通会员</a></div></div>");
    }
    Response.Write(this.ERROR);
    
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        //发送邮件
        string title = "恭喜您注册会员成功！";
        string content = "我的用户名：" + tousername + "\n我的会员ID：" + this.userid + "\n我的密码：" + topassword + "\n请保管好以上帐号信息！\n" + siteVo.sitename + "欢迎您 " + this.http_start + "\n";
        EMAIL_INFO = WapTool.SendEmail(toemail, tonickname, siteVo.sitename, title, content,false);        
        Response.Write("<b>" + title + "</b><br/>");
        Response.Write("<b>" + content.Replace("\n","<br/>") + "</b><br/>");
        Response.Write("系统已将以上信息发到电子邮箱" + toemail + "：" + this.EMAIL_INFO + "<br/>");
        //Response.Write("<a href=\"" + this.http_start + "waplogin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("马上登录|马上登录|Please Login") + "</a><br/>");      
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
        Response.Write("<b>" + this.GetLang("校验码错误！(如果一直这样请联系管理员启用文本数字)|校验码错误！|checkcode error!") + "</b></div>");
    }
    else if (this.INFO == "NOTENORNUM")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("用户名只能是英文或数字！|用户名只能是英文或数字！|username need en or num!") + "</b></div>");
    }
    else if (this.INFO == "MAXLEN")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("用户名长度要大于" + this.len + "位！|用户名长度要大于" + this.len + "位！|username to more than " + this.len + " words!") + "</b></div>");
    }
    else if (this.INFO == "HASEXISTUSERNAME")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("用户名已存在！|用户名已存在！|username exist!") + "</b></div>");
    }
    else if (this.INFO == "HASEXISTNICKNAME")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("昵称已存在！|昵称已存在2字！|nickname exist!") + "</b></div>");
    }

    //开始显示
    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        //手动注册
       
            Response.Write("<form name=\"f\" action=\"" + http_start + "admin/admin_wapreg.aspx\" method=\"post\">");
            Response.Write(this.GetLang("所在网站ID|所在网站ID|siteID") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"tositeid\" value=\"" + this.siteid + "\"/><br/>");
    
           Response.Write(this.GetLang("用户名或手机号码|用户名或手机号码|username or mobile") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"tousername\" value=\"" + this.tousername + "\"/><br/>");

            Response.Write(this.GetLang("昵称|昵称|nickname") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"tonickname\" value=\"" + this.tonickname + "\"/><br/>");


            Response.Write(this.GetLang("密码|密码|password") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"topassword\" value=\"" + this.topassword + "\"/><br/>");

            Response.Write(this.GetLang("邮箱(很重要取回密码)|邮箱(很重要取回密码)|email") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"toemail\" value=\"" + this.toemail + "\"/><br/>");


            Response.Write(this.GetLang("性别|性别|sex ") + "*:");
            Response.Write("<select name=\"tosex\">");
            Response.Write("<option value=\"0\">女</option>");
            Response.Write("<option value=\"1\">男</option>");
            Response.Write("</select><br/>");

            Response.Write(this.GetLang("验证码|验证码|code check") + ":");
            Response.Write("<input type=\"text\" name=\"codecheck\" value=\"" + this.codecheck + "\" size=\"4\"/> " + checkcodeinfo + "<br/>");
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
            Response.Write("</form>");



       

       
        

        Response.Write("</div>");

    }

   



}
//显示底部
Response.Write(WapTool.showDown(wmlVo)); 
%>