<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WapReg.aspx.cs" Inherits="KeLin.WebSite.WapReg" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
//柯林短信中心号码
string m1,m2,m3;
m1 = "13556000271";
m2 = "13556000271";
m3 = "13119529349";
StringBuilder strhtml = new StringBuilder();
//显示头
Response.Write(WapTool.showTop(this.GetLang("注册普通会员|注册普通会员|Reg"), wmlVo));//显示头
if (ver == "1")  //显示WAP1.0
{

    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        //发送邮件
        string title = "恭喜您注册会员成功！";
        string content = "我的用户名：" + tousername + "\n我的会员ID：" + this.userid + "\n我的密码：" + topassword + "\n请保管好以上帐号信息！\n" + siteVo.sitename + "欢迎您 " + this.http_start + "\n";
        string content2 = "";
        if (this.isclose == "5")
        {
            content2 = content2 + "\n\n 请点击以下地址进行激活帐号:" + this.http_start + "wapreg.aspx?action=checkuser&siteid=" + this.siteid + "&touserid=" + this.userid + "&checkcode=" + checkcode_lockuser + "";
        }

        EMAIL_INFO = WapTool.SendEmail(toemail, tonickname, siteVo.sitename, title, content + content2, false);        
        strhtml.Append("<b>" + title + "</b><br/>");
        strhtml.Append("<b>" + content.Replace("\n","<br/>") + "</b><br/>");
        strhtml.Append("系统已将以上信息发到电子邮箱" + toemail + "：" + this.EMAIL_INFO + "<br/>");
        if (this.isclose == "5")
        {
            strhtml.Append("请登录您的邮箱进行激活帐号。<br/>");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "myfile.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("马上登录|马上登录|Please Login") + "</a><br/>");
        }
    }   
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
    }
    else if (this.INFO == "REGCODEERR")
    {
        strhtml.Append("<b>邀请码无效！</b><br/>");
        if (this.regcodeUserid > 0)
        {
            strhtml.Append("<b>已被会员：<a href=\""+this.http_start +"bbs/userinfo.aspx?siteid="+this.siteid +"&amp;touserid="+this.regcodeUserid +"\">" + this.regcodeUserid + "</a>使用！</b><br/>");
        }
        else if (this.regcodeUserid==-1)
        {
            strhtml.Append("<b>此邀请码不存！</b><br/>");
        }
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>" + this.GetLang("所有项不能为空！|所有项不能为空！|not null!") + "</b><br/>");
    }
    else if (this.INFO == "MAILERR")
    {
        strhtml.Append("<b>邮箱格式错误！</b><br/>");
    }
    else if (this.INFO == "CHECKERR")
    {
        strhtml.Append("<b>" + this.GetLang("校验码错误！(如果一直这样请联系管理员启用文本数字)|校验码错误！|checkcode error!") + "</b><br/>");
    }
    else if (this.INFO == "NOTENORNUM")
    {
        strhtml.Append("<b>" + this.GetLang("用户名只能是英文或数字！|用户名只能是英文或数字！|username need en or num!") + "</b><br/>");
    }
    else if (this.INFO == "MAXLEN")
    {
        strhtml.Append("<b>" + this.GetLang("用户名长度要大于" + this.len + "位！|用户名长度要大于" + this.len + "位！|username to more than " + this.len + " words!") + "</b><br/>");
    }
    else if (this.INFO == "HASEXISTUSERNAME")
    {
        strhtml.Append("<b>" + this.GetLang("用户名已存在！|用户名已存在！|username exist!") + "</b><br/>");
    }
    else if (this.INFO == "HASEXISTNICKNAME")
    {
        strhtml.Append("<b>" + this.GetLang("昵称已存在！|昵称已存在2字！|nickname exist!") + "</b><br/>");
    }
    else if (this.INFO == "HASEXISTEMAIL")
    {
        strhtml.Append("<b>邮箱地址已存在，请更换一个。</b><br/>");
    }

    //开始显示
    if (this.isclose == "2")
    {
        strhtml.Append("<b>" + this.GetLang("网站暂时关闭注册！|网站暂时关闭注册！|Close reg!") + "</b><br/>");
       

    }
    else if (this.INFO != "OK")
    {
        //手动注册
        if ((this.isclose == "0" || this.isclose == "3" || this.isclose == "4" || this.isclose == "5") && KL_SMS_ALLREG == "")
        {

            strhtml.Append(this.GetLang("用户名或手机号码|用户名或手机号码|username or mobile") + "*:<br/>");
            strhtml.Append("<input type=\"text\" name=\"tousername" + r + "\" value=\""+this.tousername+"\"/><br/>");
            
            strhtml.Append(this.GetLang("昵称|昵称|nickname") + "*:<br/>");
            strhtml.Append("<input type=\"text\" name=\"tonickname" + r + "\" value=\""+this.tonickname+"\"/><br/>");
            

            strhtml.Append(this.GetLang("密码|密码|password") + "*:<br/>");
            strhtml.Append("<input type=\"text\" name=\"topassword" + r + "\" value=\"" + this.topassword + "\"/><br/>");

            strhtml.Append(this.GetLang("邮箱,用于取回密码|邮箱,用于取回密码|email"));
            if (this.isclose == "5")
            {
                strhtml.Append(",邮箱验证才能激活帐户");
            }
            strhtml.Append("*:<br/>");
            strhtml.Append("<input type=\"text\" name=\"toemail" + r + "\" value=\"" + this.toemail + "\"/><br/>");
           

            strhtml.Append(this.GetLang("性别|性别|sex ") + "*:");
            strhtml.Append("<select name=\"tosex" + r + "\" value=\"" + this.tosex + "\">");
            strhtml.Append("<option value=\"0\">女</option>");
            strhtml.Append("<option value=\"1\">男</option>");
            strhtml.Append("</select><br/>");
            if (this.isclose == "4")
            {
                strhtml.Append(this.GetLang("邀请码|邀请码|邀请码") + "*:");
                strhtml.Append("<input type=\"text\" name=\"regcode" + r + "\" value=\"" + this.regcode + "\" size=\"8\"/><br/>");
            
            }

            strhtml.Append(this.GetLang("验证码|验证码|code check") + "*:");
            strhtml.Append("<input type=\"text\" name=\"codecheck" + r + "\" value=\"" + this.codecheck + "\" size=\"4\"/> " + this.checkcodeinfo + "<br/>");
            if (this.TJ != "")
            {
                strhtml.Append("推荐人:" + this.TJ + "<br/>");
            }
            strhtml.Append("<a href=\"" + http_start + "wapreg.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lice=view\">" + this.GetLang("[√我同意本站协议]|[√我同意本站协议]|[√ ok]") + "</a><br/>");
            if (this.lice == "view")
            {
                strhtml.Append("欢迎您加入本站点参加交流和讨论，为维护网上公共秩序和社会稳定，请您自觉遵守以下条款：<br/>");
                strhtml.Append("一、 不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益，不得利用本站制作、复制和传播非法信息！<br/>");
                strhtml.Append("二、互相尊重，对自己的言论和行为负责。<br/>");
                strhtml.Append("三、您必需同意不发表带有辱骂,淫秽,粗俗,诽谤,带有仇恨性,恐吓的,不健康的或是任何违反法律的内容！<br/>");
            }
            
            strhtml.Append("<anchor><go href=\"" + http_start + "wapreg.aspx\" method=\"post\" accept-charset=\"utf-8\">");
            strhtml.Append("<postfield name=\"action\" value=\"goadd\"/>");
            strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
            strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
            strhtml.Append("<postfield name=\"codechecks\" value=\"" + r + "\"/>");
            strhtml.Append("<postfield name=\"tousername\" value=\"$(tousername" + r + ")\"/>");
            strhtml.Append("<postfield name=\"tonickname\" value=\"$(tonickname" + r + ")\"/>");   
            strhtml.Append("<postfield name=\"topassword\" value=\"$(topassword" + r + ")\"/>");
            strhtml.Append("<postfield name=\"toemail\" value=\"$(toemail" + r + ")\"/>");            
            strhtml.Append("<postfield name=\"tosex\" value=\"$(tosex" + r + ")\"/>");
            strhtml.Append("<postfield name=\"tomobile\" value=\"13\"/>");
            strhtml.Append("<postfield name=\"codecheck\" value=\"$(codecheck" + r + ")\"/>");
            if (this.isclose == "4")
            {
                strhtml.Append("<postfield name=\"regcode\" value=\"$(regcode" + r + ")\"/>");
            }           
            strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
            strhtml.Append("</go>" + this.GetLang("提 交 注 册|提 交 注 册|reg submit") + "</anchor><br/>");



            
        }
        
        //短信注册
        if (this.isclose == "1" || this.isclose == "3" || KL_SMS_ALLREG != "")
        {
            string myorder=smsVo.myorder;
            string myorderid=smsVo.myorderid.ToString();
            string t = "";
            if(long.Parse(r) % 2==0 ){
                t=m1;
                m1 = m3;
                m3 = t;
            }

            if (KL_SMS_ALLREG != "")
            {
                
                string[] mobiles = KL_SMS_ALLREG.Split('|');
                if (mobiles.Length == 1)
                {
                    m1 = mobiles[0];
                    m2 = m1;
                    m3 = m1;
                }
                else if (mobiles.Length == 2)
                {
                    m1 = mobiles[0];
                    m2 = mobiles[1];
                    m3 = m1;
                }
                else if (mobiles.Length == 3)
                {
                    m1 = mobiles[0];
                    m2 = mobiles[1];
                    m3 = mobiles[2];
                }
                
                myorder = this.siteid;
                myorderid = KL_SMS_ALLREG_ID;
            }
            
            if (this.TJ != "")
            {
                myorder = myorder + "#" + this.TJ+"#";
            }


            strhtml.Append("<b>发短信免费注册、取回密码：</b><br/>编辑短信 <b>" + myorder + "</b> 发送至以下任意一个通道:<br/>");
            strhtml.Append("<b>通道一:</b><a href=\"sms:" + m1 + "?body=" + myorder + "\">" + m1 + "</a><br/>");
            strhtml.Append("<b>通道二:</b><a href=\"sms:" + m2 + "?body=" + myorder + "\">" + m2 + "</a><br/>");
            strhtml.Append("<b>通道三:</b><a href=\"sms:" + m3 + "?body=" + myorder + "\">" + m3 + "</a><br/>");
           if(KL_SMS_ALLREG=="") strhtml.Append("实时状态:<img src=\"http://sms.kelink.com/smsstate/img.asp?id=" + myorderid + "\" alt=\"" + m1 + "\"/><br/>");

            strhtml.Append("<b>用户名:</b>为你的手机号码，境外号码用后11位<br/>");
            strhtml.Append("<b>密码:</b>为手机号码后四位。<br/>");
            strhtml.Append("短信内容写错将无法注册成功或更新密码，如果受移动短信中心延迟发送，请耐心等待，或<b>向不同通道号码发信息</b>。");
            strhtml.Append("<br/>系统不会回复你任何信息，注册不收取任何费用！请放心！");
            strhtml.Append("<br/>");
            //显示前8位
            strhtml.Append("<a href=\""+http_start+"wapreg.aspx?siteid="+siteid+"&amp;go="+r+"&amp;sid="+this.sid+"\">刷新</a>-<a href=\"http://sms.kelink.com/showError.asp?id="+myorderid+"\">查看错误</a><br/><b>本站最新注册前8位：</b><br/>");
            for (int i = 0; (listVo != null && i < listVo.Count); i++)
            {
                if (listVo[i].username.Length > 7)
                {
                    strhtml.Append(listVo[i].username.Substring(0,6) + "*****<br/>");
                }
                else
                {
                    strhtml.Append(listVo[i].username + "****<br/>");
                }
            }

        }



    }

    if (this.remark != "")
    {
        strhtml.Append(WapTool.ToWML(this.remark,wmlVo) + "<br/>");
    }
    strhtml.Append("<a href=\"" + this.http_start + "waplogin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回登录|返回登录|Please Login") + "</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=0\">" + this.GetLang("返回首页|返回首页|back home") + "</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);

}else{ //显示WAP2.0


    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("注册普通会员|注册普通会员|Reg") + "</div>");
    strhtml.Append(this.ERROR);
    
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        //发送邮件
        string title = "恭喜您注册会员成功！";
        string content = "我的用户名：" + tousername + "\n我的会员ID：" + this.userid + "\n我的密码：" + topassword + "\n请保管好以上帐号信息！\n" + siteVo.sitename + "欢迎您 " + this.http_start + "\n";
        string content2 = "";
        if (this.isclose == "5")
        {
            content2 = content2 + "\n\n 请点击以下地址进行激活帐号:" + this.http_start + "wapreg.aspx?action=checkuser&siteid=" + this.siteid + "&touserid=" + this.userid + "&checkcode=" + checkcode_lockuser + "";
        }


        EMAIL_INFO = WapTool.SendEmail(toemail, tonickname, siteVo.sitename, title, content + content2, false);        
        strhtml.Append("<b>" + title + "</b><br/>");
        strhtml.Append("<b>" + content.Replace("\n","<br/>") + "</b><br/>");
        strhtml.Append("系统已将以上信息发到电子邮箱" + toemail + "：" + this.EMAIL_INFO + "<br/>");
        if (this.isclose == "5")
        {
            strhtml.Append("请登录您的邮箱进行激活帐号。<br/>");
        }
        else
        {
            strhtml.Append("<a href=\"" + this.http_start + "myfile.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("马上登录|马上登录|Please Login") + "</a><br/>");
        }
        strhtml.Append("</div>");


    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b></div>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("所有项不能为空！|所有项不能为空！|not null!") + "</b></div>");
    }
    else if (this.INFO == "REGCODEERR")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>邀请码无效！</b><br/>");
        if (this.regcodeUserid > 0)
        {
            strhtml.Append("<b>已被会员：<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + this.regcodeUserid + "\">" + this.regcodeUserid + "</a>使用！</b><br/>");
        }
        else if (this.regcodeUserid == -1)
        {
            strhtml.Append("<b>此邀请码不存！</b><br/>");
        }
        strhtml.Append("</div>");
    }
    else if (this.INFO == "CHECKERR")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("校验码错误！(如果一直这样请联系管理员启用文本数字)|校验码错误！|checkcode error!") + "</b></div>");
    }
    else if (this.INFO == "NOTENORNUM")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("用户名只能是英文或数字！|用户名只能是英文或数字！|username need en or num!") + "</b></div>");
    }
    else if (this.INFO == "MAXLEN")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("用户名长度要大于" + this.len + "位！|用户名长度要大于" + this.len + "位！|username to more than " + this.len + " words!") + "</b></div>");
    }
    else if (this.INFO == "HASEXISTUSERNAME")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("用户名已存在！|用户名已存在！|username exist!") + "</b></div>");
    }
    else if (this.INFO == "HASEXISTNICKNAME")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("昵称已存在！|昵称已存在2字！|nickname exist!") + "</b></div>");
    }
    else if (this.INFO == "HASEXISTEMAIL")
    {
        strhtml.Append("<div class=\"tip\"><b>邮箱地址已存在，请更换一个。</b></div>");
    }
    else if (this.INFO == "MAILERR")
    {
        strhtml.Append("<div class=\"tip\"><b>邮箱格式错误！</b></div>");
    }

    //开始显示
    if (this.isclose == "2")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>" + this.GetLang("网站暂时关闭注册！|网站暂时关闭注册！|Close reg!") + "</b></div>");


    }
    else if (this.INFO != "OK")
    {
        strhtml.Append("<div class=\"content\">");
        //手动注册
        if ((this.isclose == "0" || this.isclose == "3" || this.isclose == "4" || this.isclose == "5") && KL_SMS_ALLREG == "")
        {
            strhtml.Append("<form name=\"f\" action=\"" + http_start + "wapreg.aspx\" method=\"post\">");
            strhtml.Append(this.GetLang("用户名或手机号码|用户名或手机号码|username or mobile") + "*:<br/>");
            strhtml.Append("<input type=\"text\" name=\"tousername\" class=\"txt\" value=\"" + this.tousername + "\"/><br/>");

            strhtml.Append(this.GetLang("昵称|昵称|nickname") + "*:<br/>");
            strhtml.Append("<input type=\"text\" name=\"tonickname\" class=\"txt\" value=\"" + this.tonickname + "\"/><br/>");


            strhtml.Append(this.GetLang("密码|密码|password") + "*:<br/>");
            strhtml.Append("<input type=\"text\" name=\"topassword\" class=\"txt\" value=\"" + this.topassword + "\"/><br/>");

            strhtml.Append(this.GetLang("邮箱,用于取回密码|邮箱,用于取回密码|email"));
            if (this.isclose == "5")
            {
                strhtml.Append(",邮箱验证才能激活帐户");
            }
            strhtml.Append("*:<br/>");
            strhtml.Append("<input type=\"text\" name=\"toemail\" class=\"txt\" value=\"" + this.toemail + "\"/><br/>");
            


            strhtml.Append(this.GetLang("性别|性别|sex ") + "*:<br/>");
            strhtml.Append("<select name=\"tosex\" class=\"txt\" >");
            strhtml.Append("<option value=\"0\">女</option>");
            strhtml.Append("<option value=\"1\">男</option>");
            strhtml.Append("</select><br/>");
            if (this.isclose == "4")
            {
                strhtml.Append(this.GetLang("邀请码|邀请码|邀请码") + "*:<br/>");
                strhtml.Append("<input type=\"text\" name=\"regcode\" class=\"txt\"  value=\"" + this.regcode + "\" size=\"8\"/><br/>");

            }
            strhtml.Append(this.GetLang("验证码|验证码|code check") + "输入*:" + checkcodeinfo + "<br/>");
            strhtml.Append("<input type=\"text\" name=\"codecheck\" class=\"txt\" value=\"" + this.codecheck + "\" size=\"4\"/> <br/>");
            if (this.TJ!="")
            {
                strhtml.Append("推荐人:" + this.TJ + "<br/>");
            }
            strhtml.Append("<a href=\""+http_start+"wapreg.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;lice=view&amp;sid="+this.sid+"\">"+this.GetLang("[√我同意本站协议]|[√我同意本站协议]|[√ ok]") + "</a><br/>");
            if (this.lice == "view")
            {
                strhtml.Append("欢迎您加入本站点参加交流和讨论，为维护网上公共秩序和社会稳定，请您自觉遵守以下条款：<br/>");
                strhtml.Append("一、 不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益，不得利用本站制作、复制和传播非法信息！<br/>");
                strhtml.Append("二、互相尊重，对自己的言论和行为负责。<br/>");
                strhtml.Append("三、您必需同意不发表带有辱骂,淫秽,粗俗,诽谤,带有仇恨性,恐吓的,不健康的或是任何违反法律的内容！<br/>");
            }

            
            strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"goadd\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"codechecks\" value=\"" + r + "\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"tomobile\" value=\"13\"/>");
            strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
            strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("提 交 注 册|提 交 注 册|reg submit") + "\"/><br/>");
            strhtml.Append("</form>");



        }

        //短信注册
        if (this.isclose == "1" || this.isclose == "3" ||  KL_SMS_ALLREG!="")
        {
            
            string myorder = smsVo.myorder;
            string myorderid = smsVo.myorderid.ToString();
            string t = "";
            if (long.Parse(r) % 2 == 0)
            {
                t = m1;
                m1 = m3;
                m3 = t;
            }
            if (KL_SMS_ALLREG != "")
            {
                
                string[] mobiles = KL_SMS_ALLREG.Split('|');
                if (mobiles.Length == 1)
                {
                    m1 = mobiles[0];
                    m2 = m1;
                    m3 = m1;
                }
                else if (mobiles.Length == 2)
                {
                    m1 = mobiles[0];
                    m2 = mobiles[1];
                    m3 = m1;
                }
                else if (mobiles.Length == 3)
                {
                    m1 = mobiles[0];
                    m2 = mobiles[1];
                    m3 = mobiles[2];
                }
                 
                myorder = this.siteid;
                myorderid = KL_SMS_ALLREG_ID;
            }
            if (this.TJ !="")
            {
                myorder = myorder + "#" + this.TJ  + "#";
            }


            strhtml.Append("<b>发短信免费注册、取回密码：</b><br/>编辑短信 <b>" + myorder + "</b> 发送至以下任意一个通道:<br/>");
            strhtml.Append("<b>通道一:</b><a href=\"sms:" + m1 + "?body=" + myorder + "\">" + m1 + "</a><br/>");
            strhtml.Append("<b>通道二:</b><a href=\"sms:" + m2 + "?body=" + myorder + "\">" + m2 + "</a><br/>");
            strhtml.Append("<b>通道三:</b><a href=\"sms:" + m3 + "?body=" + myorder + "\">" + m3 + "</a><br/>");
            if (KL_SMS_ALLREG == "") strhtml.Append("实时状态:<img src=\"http://sms.kelink.com/smsstate/img.asp?id=" + myorderid + "\" alt=\"" + m1 + "\"/><br/>");

            strhtml.Append("<b>用户名:</b>为你的手机号码，境外号码用后11位<br/>");
            strhtml.Append("<b>密码:</b>为手机号码后四位。<br/>");
            strhtml.Append("短信内容写错将无法注册成功或更新密码，如果受移动短信中心延迟发送，请耐心等待，或<b>向不同通道号码发信息</b>。");
            strhtml.Append("<br/>系统不会回复你任何信息，注册不收取任何费用！请放心！");
            strhtml.Append("<br/>");
            //显示前8位
            strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
            strhtml.Append("<a href=\"" + http_start + "wapreg.aspx?siteid=" + siteid + "&amp;go=" + r + "\">刷新</a> <a href=\"http://sms.kelink.com/showError.asp?id=" + myorderid + "\">查看错误</a></div></div><b>本站最新注册前8位：</b><br/>");
            strhtml.Append("");
            for (int i = 0; (listVo != null && i < listVo.Count); i++)
            {
                if (listVo[i].username.Length > 7)
                {
                    strhtml.Append(listVo[i].username.Substring(0, 6) + "*****<br/>");
                }
                else
                {
                    strhtml.Append(listVo[i].username + "****<br/>");
                }
            }

        }

        strhtml.Append("</div>");

    }

    if (this.remark != "")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append(WapTool.ToWML(this.remark,wmlVo) + "</div>");
    }

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "waplogin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回登录|返回登录|Please Login") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=0\">" + this.GetLang("返回首页|返回首页|back home") + "</a>");

    strhtml.Append("</div></div>");
    if (isWebHtml == "") strhtml.Append(WapTool.GetVS(wmlVo));


    
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