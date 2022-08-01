<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WapRegSite.aspx.cs" Inherits="KeLin.WebSite.WapRegSite" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("注册站长|注册站长|Reg webMaster"), wmlVo));//显示头
if (ver == "1")  //显示WAP1.0
{

    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        string title = "恭喜您注册站长成功！";
        string content = "你的用户名：" + tousername + "\n你的网站ID和会员ID：" + this.userid + "\n你的密码：" + topassword + "\n你的网站域名:" + tousername + "." + DomainVo.domain + "\n请保管好以上帐号信息！\n";
        //发送邮件
        EMAIL_INFO = WapTool.SendEmail(toemail, tonickname, tositename, title, content,false);
        Response.Write("<b>" + title + "<br/>" + content.Replace("\n", "<br/>") + "</b><br/>");
        Response.Write("系统已将以上信息发到电子邮箱" + toemail + "：" + this.EMAIL_INFO + "<br/>");
        

    }   
    else if (this.INFO == "WAITING")
    {
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>" + this.GetLang("所有项不能为空！|所有项不能为空！|not null!") + "</b><br/>");
    }
    else if (this.INFO == "CHECKERR")
    {
        Response.Write("<b>" + this.GetLang("校验码错误！|校验码错误！|checkcode error!") + "</b><br/>");
    }
    else if (this.INFO == "NOTENORNUM")
    {
        Response.Write("<b>" + this.GetLang("用户名只能是英文或数字！|用户名只能是英文或数字！|username need en or num!") + "</b><br/>");
    }
    else if (this.INFO == "MAXLEN")
    {
        Response.Write("<b>" + this.GetLang("用户名长度要大于" + DomainVo.length + "位！|用户名长度要大于" + DomainVo.length + "位！|username to more than " + DomainVo.length + " words!") + "</b><br/>");
    }
    else if (this.INFO == "HASEXISTUSERNAME")
    {
        Response.Write("<b>" + this.GetLang("用户名已存在！|用户名已存在！|username exist!") + "</b><br/>");
    }
   

    //开始显示
    if (DomainVo.isclose == 1)
    {
        Response.Write("<b>" + this.GetLang("系统暂时关闭注册站长！|系统暂时关闭注册站长！|Close reg!") + "</b><br/>");
       

    }
    else if (this.INFO != "OK")
    {
        

            Response.Write(this.GetLang("用户名|用户名|username ") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"tousername" + r + "\" value=\""+this.tousername+"\"/><br/>");
            Response.Write("您的域名:<u>用户名."+DomainVo.domain+"</u><br/>");
        
            Response.Write(this.GetLang("网站名称|网站名称|webSite name") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"tositename" + r + "\" value=\""+this.tositename+"\"/><br/>");
            
        
            Response.Write(this.GetLang("昵称|昵称|nickname") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"tonickname" + r + "\" value=\""+this.tonickname+"\"/><br/>");
            

            Response.Write(this.GetLang("密码|密码|password") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"topassword" + r + "\" value=\"" + this.topassword + "\"/><br/>");

            Response.Write(this.GetLang("邮箱(很重要取回密码用)|邮箱|email") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"toemail" + r + "\" value=\"" + this.toemail + "\"/><br/>");
           

            Response.Write(this.GetLang("性别|性别|sex ") + "*:");
            Response.Write("<select name=\"tosex" + r + "\" value=\"" + this.tosex + "\">");
            Response.Write("<option value=\"0\">女</option>");
            Response.Write("<option value=\"1\">男</option>");
            Response.Write("</select><br/>");

            Response.Write(this.GetLang("验证码|验证码|code check") + ":");
            Response.Write("<input type=\"text\" name=\"codecheck" + r + "\" value=\"" + this.codecheck + "\" size=\"4\"/> " + this.checkcodeinfo + "<br/>");
            if (Session["TJ"] != null)
            {
                Response.Write("推荐人:" + Session["TJ"] + "<br/>");
            }
            Response.Write("<a href=\"" + http_start + "wapregsite.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lice=view\">" + this.GetLang("[√我同意本站协议]|[√我同意本站协议]|[√ ok]") + "</a><br/>");
            if (this.lice == "view")
            {
                Response.Write("欢迎您申请建站，为维护网上公共秩序和社会稳定，请您自觉遵守以下条款：<br/>");
                Response.Write("一、 不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益，不得利用本站制作、复制和传播非法信息！<br/>");
                Response.Write("二、互相尊重，对自己的言论和行为负责。<br/>");
                Response.Write("三、您必需同意不发表带有辱骂,淫秽,粗俗,诽谤,带有仇恨性,恐吓的,不健康的或是任何违反法律的内容！<br/>");
            }

            Response.Write("<anchor><go href=\"" + http_start + "WapRegSite.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            Response.Write("<postfield name=\"action\" value=\"goadd\"/>");
            Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<postfield name=\"codechecks\" value=\"" + r + "\"/>");
            Response.Write("<postfield name=\"tousername\" value=\"$(tousername" + r + ")\"/>");
            Response.Write("<postfield name=\"tonickname\" value=\"$(tonickname" + r + ")\"/>");  
            Response.Write("<postfield name=\"tositename\" value=\"$(tositename" + r + ")\"/>");   
            Response.Write("<postfield name=\"topassword\" value=\"$(topassword" + r + ")\"/>");
            Response.Write("<postfield name=\"toemail\" value=\"$(toemail" + r + ")\"/>");            
            Response.Write("<postfield name=\"tosex\" value=\"$(tosex" + r + ")\"/>");
            Response.Write("<postfield name=\"tomobile\" value=\"13\"/>");
            Response.Write("<postfield name=\"codecheck\" value=\"$(codecheck" + r + ")\"/>");            
            Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("</go>" + this.GetLang("提 交 注 册|提 交 注 册|reg submit") + "</anchor><br/>");



            
        

        }






    if (this.INFO != "OK")
    {
        if (DomainVo.remark != "")
        {
            Response.Write(WapTool.ToWML(DomainVo.remark,wmlVo) + "<br/>");
        }
        Response.Write("<a href=\"" + this.http_start + "waplogin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回登录|返回登录|Please Login") + "</a>-");
        Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|back home") + "</a>");

        Response.Write(WapTool.GetVS(wmlVo));
    }
    else
    {

        Response.Write("<a href=\"http://" + this.tousername + "." + DomainVo.domain + "\">" + this.GetLang("进入我的网站|进入我的网站|click my WebSite") + "</a>");

    }
    Response.Write("</p>");

}else{ //显示WAP2.0


    Response.Write("<div class=\"subtitle\">" + this.GetLang("注册站长|注册站长|Reg webMaster") + "</div>");
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
    if (DomainVo.isclose == 1)
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>" + this.GetLang("系统暂时关闭注册站长！|系统暂时关闭注册站长！|Close reg!") + "</b></div>");


    }
    else if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"f\" action=\"" + http_start + "WapRegSite.aspx\" method=\"post\">");
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
        Response.Write("<a href=\"" + http_start + "wapregsite.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lice=view\">" + this.GetLang("[√我同意本站协议]|[√我同意本站协议]|[√ ok]") + "</a><br/>");
        if (this.lice == "view")
        {
            Response.Write("欢迎您申请建站，为维护网上公共秩序和社会稳定，请您自觉遵守以下条款：<br/>");
            Response.Write("一、 不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益，不得利用本站制作、复制和传播非法信息！<br/>");
            Response.Write("二、互相尊重，对自己的言论和行为负责。<br/>");
            Response.Write("三、您必需同意不发表带有辱骂,淫秽,粗俗,诽谤,带有仇恨性,恐吓的,不健康的或是任何违反法律的内容！<br/>");
        }


        Response.Write("<input type=\"hidden\" name=\"action\" value=\"goadd\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"codechecks\" value=\"" + r + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"tomobile\" value=\"13\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("提 交 注 册|提 交 注 册|reg submit") + "\"/><br/>");
        Response.Write("</form></div>");





    }





    if (this.INFO != "OK"&&DomainVo.remark !=null && DomainVo.remark != "")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write(WapTool.ToWML(DomainVo.remark,wmlVo) + "</div>");
        
    }
    
    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
        Response.Write("<a href=\"" + this.http_start + "waplogin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回登录|返回登录|Please Login") + "</a> ");
        Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|back home") + "</a>");
        Response.Write("</div></div>");
         
    }
    else
    {
        Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
        Response.Write("<a href=\"http://" + this.tousername + "." + DomainVo.domain + "\">" + this.GetLang("进入我的网站|进入我的网站|click my WebSite") + "</a>");
        Response.Write("</div></div>");
    }

   
                                                                                                                                                                         



}
//显示底部
Response.Write(WapTool.showDown(wmlVo)); 
%>