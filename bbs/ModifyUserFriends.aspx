<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyUserFriends.aspx.cs" Inherits="KeLin.WebSite.bbs.ModifyUserFriends" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("修改交友资料|修改交友资料|Change My Card"), wmlVo));//显示头 
StringBuilder strhtml = new StringBuilder();
    if (ver == "1")
    {
        strhtml.Append("<p>");
        if (ERROR != "")
        {
           
            strhtml.Append(ERROR);
            strhtml.Append("<br/>");
        }
        if (INFO == "ADDOK")
        {
           
            strhtml.Append("<b>保存成功！</b>");
            strhtml.Append("<br/>");
        }
        else if (INFO == "UPOK")
        {
           
            strhtml.Append("<b>更新成功！</b>");
            strhtml.Append("<br/>");
        }


        strhtml.Append("<a href=\"" + this.http_start + "bbs/modifyuserfriends.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面设置|进入WAP2.0界面设置|wap2.0 config") + "</a><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/modifyuserinfo.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
        strhtml.Append(WapTool.GetVS(wmlVo));
        strhtml.Append("</p>");
        Response.Write(strhtml);
    }
    else
    {
        strhtml.Append("<div class=\"subtitle\">修改交友资料</div>");
        if (ERROR != "")
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append(ERROR);
            strhtml.Append("</div>");
        }
        if (INFO == "ADDOK")
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append("<b>保存成功！</b>");
            strhtml.Append("</div>");
        }
        else if (INFO == "UPOK")
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append("<b>更新成功！</b>");
            strhtml.Append("</div>");
        }   
        strhtml.Append("<div class=\"content\">");        
        strhtml.Append("<form name =\"f\" action=\"" + http_start + "bbs/modifyuserfriends.aspx\" method=\"post\">");
        strhtml.Append("交友目的:<select name=\"purpost\">");
        strhtml.Append("<option value=\"" + this.purpost + "\">" + this.purpost + "</option>");
        strhtml.Append("<option value=\"求幸福\">求幸福</option>");
        strhtml.Append("<option value=\"求疼爱\">求疼爱</option>");
        strhtml.Append("<option value=\"求交往\">求交往</option>");
        strhtml.Append("<option value=\"求帅哥\">求帅哥</option>");
        strhtml.Append("<option value=\"求美女\">求美女</option>");
        strhtml.Append("<option value=\"求逛街\">求逛街</option>");
        strhtml.Append("<option value=\"求关注\">求关注</option>");
        strhtml.Append("<option value=\"求打击\">求打击</option>");
        strhtml.Append("<option value=\"求关注\">求关注</option>");
        strhtml.Append("<option value=\"求粉丝\">求粉丝</option>");
        strhtml.Append("<option value=\"求同城\">求同城</option>");
        strhtml.Append("<option value=\"求约会\">求约会</option>");
        strhtml.Append("<option value=\"求聊天\">求聊天</option>");       
        strhtml.Append("</select><br/>");
        strhtml.Append("姓名:");
        strhtml.Append("<input type=\"text\" name=\"name\" value=\"" + this.name + "\"/><br/>");
        strhtml.Append("性别:<select name=\"sex\">");
        strhtml.Append("<option value=\"" + this.sex + "\">" + this.sex + "</option>");
        strhtml.Append("<option value=\"美女\">美女</option>");
        strhtml.Append("<option value=\"帅哥\">帅哥</option>");       
        strhtml.Append("</select><br/>");
        strhtml.Append("年龄:");
        strhtml.Append("<input type=\"text\" name=\"age\" value=\"" + this.age + "\"/><br/>");
        strhtml.Append("身高(CM):");
        strhtml.Append("<input type=\"text\" name=\"cm\" value=\"" + this.cm + "\"/><br/>");
        strhtml.Append("体重(KG):");
        strhtml.Append("<input type=\"text\" name=\"kg\" value=\"" + this.kg + "\"/><br/>");
        strhtml.Append("城市:");
        strhtml.Append("<input type=\"text\" name=\"city\" value=\"" + this.city + "\"/><br/>");
        strhtml.Append("生日:");
        strhtml.Append("<select name=\"Y\">");
        strhtml.Append("<option value=\"" + this.Y + "\">" + this.Y + "</option>");
        for (int i = 2011; i > 1960; i--)
        {
            strhtml.Append("<option value=\""+i+"\">"+i+"</option>");
        }
        strhtml.Append("</select>");
        strhtml.Append("<select name=\"M\">");
        strhtml.Append("<option value=\"" + this.M + "\">" + this.M + "</option>");
        for (int i = 1; i <13; i++)
        {
            strhtml.Append("<option value=\"" + i + "\">" + i + "</option>");
        }
        strhtml.Append("</select>月");
        strhtml.Append("<select name=\"D\">");
        strhtml.Append("<option value=\"" + this.D + "\">" + this.D + "</option>");
        for (int i = 1; i < 32; i++)
        {
            strhtml.Append("<option value=\"" + i + "\">" + i + "</option>");
        }
        strhtml.Append("</select>日<br/>");
        strhtml.Append("民族:<select name=\"nation\">");
        strhtml.Append("<option value=\"" + this.nation + "\">" + this.nation + "</option>");
        strhtml.Append("<option value=\"汉族\">汉族</option>");
        strhtml.Append("<option value=\"壮族\">壮族</option>");
        strhtml.Append("<option value=\"满族\">满族</option>");
        strhtml.Append("<option value=\"回族\">回族</option>");
        strhtml.Append("<option value=\"苗族\">苗族</option>");
        strhtml.Append("<option value=\"其他民族\">其他民族</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("星座:<select name=\"star\">");
        strhtml.Append("<option value=\"" + this.star + "\">" + this.star + "</option>");
        strhtml.Append("<option value=\"水瓶\">水瓶</option>");
        strhtml.Append("<option value=\"双鱼\">双鱼</option>");
        strhtml.Append("<option value=\"白羊\">白羊</option>");
        strhtml.Append("<option value=\"双子\">双子</option>");
        strhtml.Append("<option value=\"巨蟹\">巨蟹</option>");
        strhtml.Append("<option value=\"狮子\">狮子</option>");
        strhtml.Append("<option value=\"金牛\">金牛</option>");
        strhtml.Append("<option value=\"处女\">处女</option>");
        strhtml.Append("<option value=\"天枰\">天枰</option>");
        strhtml.Append("<option value=\"天蝎\">天蝎</option>");
        strhtml.Append("<option value=\"射手\">射手</option>");
        strhtml.Append("<option value=\"摩羯\">摩羯</option>");     
        strhtml.Append("</select>座<br/>");
        strhtml.Append("血型:<select name=\"blood\">");
        strhtml.Append("<option value=\"" + this.blood + "\">" + this.blood + "</option>");
        strhtml.Append("<option value=\"A\">A</option>");
        strhtml.Append("<option value=\"B\">B</option>");
        strhtml.Append("<option value=\"O\">O</option>");
        strhtml.Append("<option value=\"AB\">AB</option>");
        strhtml.Append("<option value=\"未知\">未知</option>");
        strhtml.Append("</select>型<br/>");
        strhtml.Append("学历:<select name=\"education\">");
        strhtml.Append("<option value=\"" + this.education + "\">" + this.education + "</option>");
        strhtml.Append("<option value=\"小学\">小学</option>");
        strhtml.Append("<option value=\"初中\">初中</option>");
        strhtml.Append("<option value=\"高中\">高中</option>");
        strhtml.Append("<option value=\"中专\">中专</option>");
        strhtml.Append("<option value=\"大专\">大专</option>");
        strhtml.Append("<option value=\"本科\">本科</option>");
        strhtml.Append("<option value=\"本科以上\">本科以上</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("职业:<select name=\"profession\">");
        strhtml.Append("<option value=\"" + this.profession + "\">" + this.profession + "</option>");
        strhtml.Append("<option value=\"在校学生\">在校学生</option>");
        strhtml.Append("<option value=\"自由职业者\">自由职业者</option>");
        strhtml.Append("<option value=\"生产/加工/制造\">生产/加工/制造</option>");
        strhtml.Append("<option value=\"机械/化工/能源\">机械/化工/能源</option>");
        strhtml.Append("<option value=\"销售/商务/采购\">销售/商务/采购</option>");
        strhtml.Append("<option value=\"武警/警察/军人\">武警/警察/军人</option>");
        strhtml.Append("<option value=\"餐饮/旅游\">餐饮/旅游</option>");
        strhtml.Append("<option value=\"医疗/保健/美容\">医疗/保健/美容</option>");
        strhtml.Append("<option value=\"计算机/通信/电子\">计算机/通信/电子</option>");
        strhtml.Append("<option value=\"仓储/物流\">仓储/物流</option>");
        strhtml.Append("<option value=\"私营业主\">私营业主</option>");
        strhtml.Append("<option value=\"客户服务\">客户服务</option>");
        strhtml.Append("<option value=\"人事/行政/财会\">人事/行政/财会</option>");
        strhtml.Append("<option value=\"文艺/体育/传媒\">文艺/体育/传媒</option>");        
        strhtml.Append("<option value=\"金融/证券/保险\">金融/证券/保险</option>");
        strhtml.Append("<option value=\"农/林/牧/渔业\">农/林/牧/渔业</option>");
        strhtml.Append("<option value=\"教育/科研/法律\">教育/科研/法律</option>");
        strhtml.Append("<option value=\"创意/文学/翻译\">创意/文学/翻译</option>");
        strhtml.Append("<option value=\"公务员/国家干部\">公务员/国家干部</option>");
        strhtml.Append("<option value=\"航空服务业\">航空服务业</option>");
        strhtml.Append("<option value=\"待业/无业/失业\">待业/无业/失业</option>");        
        strhtml.Append("</select><br/>");
        strhtml.Append("月薪:<select name=\"monthpay\">");
        strhtml.Append("<option value=\"" + this.monthpay+ "\">" + this.monthpay + "</option>");
        strhtml.Append("<option value=\"1500以下\">1500以下</option>");
        strhtml.Append("<option value=\"1500-3000\">1500-3000</option>");
        strhtml.Append("<option value=\"3000-5000\">3000-5000</option>");
        strhtml.Append("<option value=\"5000-8000\">5000-8000</option>");
        strhtml.Append("<option value=\"8000-10000\">8000-10000</option>");
        strhtml.Append("<option value=\"10000以上\">10000以上</option>");        
        strhtml.Append("</select><br/>");
        strhtml.Append("宗教:<select name=\"religion\">");
        strhtml.Append("<option value=\"" + this.religion + "\">" + this.religion + "</option>");
        strhtml.Append("<option value=\"无神论\">无神论</option>");
        strhtml.Append("<option value=\"佛教\">佛教</option>");
        strhtml.Append("<option value=\"伊斯兰教\">伊斯兰教</option>");
        strhtml.Append("<option value=\"基督教\">基督教</option>");
        strhtml.Append("<option value=\"道教\">道教</option>");
        strhtml.Append("<option value=\"天主教\">天主教</option>");
        strhtml.Append("<option value=\"其他宗教\">其他宗教</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("爱好:");
        strhtml.Append("<input type=\"text\" name=\"love\" value=\"" + this.love + "\"/><br/>");
        strhtml.Append("性格:<select name=\"nature\">");
        strhtml.Append("<option value=\"" + this.nature + "\">" + this.nature + "</option>");
        strhtml.Append("<option value=\"热情阳光\">热情阳光</option>");
        strhtml.Append("<option value=\"多愁善感\">多愁善感</option>");
        strhtml.Append("<option value=\"成熟稳重\">成熟稳重</option>");
        strhtml.Append("<option value=\"温柔感性\">温柔感性</option>");
        strhtml.Append("<option value=\"幽默开朗\">幽默开朗</option>");
        strhtml.Append("<option value=\"外冷内热\">外冷内热</option>");
        strhtml.Append("<option value=\"活泼可爱\">活泼可爱</option>");
        strhtml.Append("<option value=\"小孩子气\">小孩子气</option>");        
        strhtml.Append("</select><br/>");
        strhtml.Append("外貌:<select name=\"looks\">");
        strhtml.Append("<option value=\"" + this.looks + "\">" + this.looks + "</option>");
        strhtml.Append("<option value=\"眉清目秀\">眉清目秀</option>");
        strhtml.Append("<option value=\"虎背熊腰\">虎背熊腰</option>");
        strhtml.Append("<option value=\"帅(美)得不明显\">帅(美)得不明显</option>");
        strhtml.Append("<option value=\"青春无敌\">青春无敌</option>");
        strhtml.Append("<option value=\"明眸皓齿\">明眸皓齿</option>");
        strhtml.Append("<option value=\"獐头鼠目\">獐头鼠目</option>");
        strhtml.Append("<option value=\"窈窕淑女\">窈窕淑女</option>");
        strhtml.Append("<option value=\"披头散发\">披头散发</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("婚姻状况:<select name=\"marriage\">");
        strhtml.Append("<option value=\"" + this.marriage + "\">" + this.marriage + "</option>");
        strhtml.Append("<option value=\"未婚\">未婚</option>");
        strhtml.Append("<option value=\"已婚\">已婚</option>");
        strhtml.Append("<option value=\"离异\">离异</option>");
        strhtml.Append("<option value=\"丧偶\">丧偶</option>");        
        strhtml.Append("</select><br/>");
        strhtml.Append("QQ:");
        strhtml.Append("<input type=\"text\" name=\"qq\" value=\"" + this.qq + "\"/><br/>");
        strhtml.Append("邮箱:");
        strhtml.Append("<input type=\"text\" name=\"email\" value=\"" + this.email + "\"/><br/>");
        strhtml.Append("特长:");
        strhtml.Append("<input type=\"text\" name=\"speciality\" value=\"" + this.speciality + "\"/><br/>");
        strhtml.Append("择友条件:");
        strhtml.Append("<input type=\"text\" name=\"condition\" value=\"" + this.condition + "\"/><br/>");
        strhtml.Append("人生格言:");
        strhtml.Append("<input type=\"text\" name=\"aphorism\" value=\"" + this.aphorism + "\"/><br/>");
        strhtml.Append("喜欢服饰:");
        strhtml.Append("<input type=\"text\" name=\"loveclothes\" value=\"" + this.loveclothes + "\"/><br/>");
        strhtml.Append("喜欢明星:");
        strhtml.Append("<input type=\"text\" name=\"lovestar\" value=\"" + this.lovestar + "\"/><br/>");
        strhtml.Append("喜欢动物:");
        strhtml.Append("<input type=\"text\" name=\"loveanimal\" value=\"" + this.loveanimal + "\"/><br/>");
        strhtml.Append("喜欢食物:");
        strhtml.Append("<input type=\"text\" name=\"lovefood\" value=\"" + this.lovefood + "\"/><br/>");
        strhtml.Append("喜欢颜色:");
        strhtml.Append("<input type=\"text\" name=\"lovecolor\" value=\"" + this.lovecolor + "\"/><br/>");
        strhtml.Append("喜欢音乐:");
        strhtml.Append("<input type=\"text\" name=\"lovemusic\" value=\"" + this.lovemusic + "\"/><br/>");
        strhtml.Append("其它(支持UBB):<br/>");
        strhtml.Append("<textarea name=\"other\" rows=\"5\" style=\"width:100%\" >" + this.other + "</textarea><br/>");
        
        
        
        
        strhtml.Append("<input name=\"action\"  type=\"hidden\" value=\"gomod\" />");
        strhtml.Append("<input name=\"siteid\"  type=\"hidden\" value=\"" + this.siteid + "\"  />");
        strhtml.Append("<input name=\"classid\"  type=\"hidden\" value=\"" + this.classid + "\"  />");
        strhtml.Append("<input name=\"sid\"  type=\"hidden\" value=\"" + this.sid + "\"  />");       
        strhtml.Append("<input type=\"submit\" id=\"submit\" name=\"submit\" class=\"btn\" value=\"更新保存\" /><br/>");
        strhtml.Append("</form>");
        strhtml.Append("</div>");

        string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码  

        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/modifyuserinfo.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");

        strhtml.Append("</div></div>");
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

Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>