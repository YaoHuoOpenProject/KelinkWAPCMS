<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userinfoFriends.aspx.cs" Inherits="KeLin.WebSite.bbs.userinfoFriends" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("交友资料|交友资料|Change My Card"), wmlVo));//显示头 
string seeRight = WapTool.GetSiteDefault(siteVo.Version, 35);
string seeInfo = this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "&amp;sid=" + this.sid ;
if (this.userid == this.touserid || this.IsCheckManagerLvl("|00|01|","")==true)
{
    seeRight = "0," + seeRight;
}
seeRight = "," + seeRight+",";

    if (ver == "1")
    {
        Response.Write("<p>");
        if (ERROR != "")
        {
           
            Response.Write(ERROR);
            Response.Write("<br/>");
        }
        Response.Write("【交友目的】:" + this.purpost + "<br/>");
        Response.Write("【姓名】:" + this.name + "<br/>");
        Response.Write("【性别】:" + this.sex + "<br/>");
        Response.Write("【年龄】:" + this.age + "<br/>");
        Response.Write("【身高】:" + this.cm + "CM<br/>");
        Response.Write("【体重】:" + this.kg + "KG<br/>");
        Response.Write("【城市】:" + this.city + "<br/>");
        Response.Write("【生日】:" + this.Y + "-" + M + "-" + D + "<br/>");
        Response.Write("【民族】:" + this.nation + "<br/>");
        Response.Write("【星座】:" + this.star + "<br/>");
        Response.Write("【血型】:" + this.blood + "型<br/>");
        Response.Write("【学历】:" + this.education + "<br/>");
        Response.Write("【职业】:" + this.profession + "<br/>");
        Response.Write("【月薪】:" + this.monthpay + "<br/>");
        Response.Write("【宗教】:" + this.religion + "<br/>");
        Response.Write("【爱好】:" + this.love + "<br/>");
        Response.Write("【性格】:" + this.nature + "<br/>");
        Response.Write("【外貌】:" + this.looks + "<br/>");
        Response.Write("【婚姻】:" + this.marriage + "<br/>");

        Response.Write("【ＱＱ】:");
        if (seeRight.IndexOf(",0,") >= 0 || (seeRight.IndexOf("," + userVo.SessionTimeout + ",") >= 0 && WapTool.showIDEndTime(siteVo.siteid, userVo.userid, userVo.endTime) > 0))
        {
            Response.Write(this.qq + "<br/>");
        }
        else
        {
            Response.Write("<a href=\"" + seeInfo + "\">升级VIP会员查看</a><br/>");
        }
        
        Response.Write("【邮箱】:");
        if (seeRight.IndexOf(",0,") >= 0 || (seeRight.IndexOf("," + userVo.SessionTimeout + ",") >= 0 && WapTool.showIDEndTime(siteVo.siteid, userVo.userid, userVo.endTime) > 0))
        {
            Response.Write(this.email + "<br/>");
        }
        else
        {
            Response.Write("<a href=\"" + seeInfo + "\">升级VIP会员查看</a><br/>");
        }
        Response.Write("【特长】:" + this.speciality + "<br/>");
        Response.Write("【择友条件】:" + this.condition + "<br/>");
        Response.Write("【人生格言】:" + this.aphorism + "<br/>");
        Response.Write("【喜欢服饰】:" + this.loveclothes + "<br/>");
        Response.Write("【喜欢明星】:" + this.lovestar + "<br/>");
        Response.Write("【喜欢动物】:" + this.loveanimal + "<br/>");
        Response.Write("【喜欢食物】:" + this.lovefood + "<br/>");
        Response.Write("【喜欢颜色】:" + this.lovecolor + "<br/>");
        Response.Write("【喜欢音乐】:" + this.lovemusic + "<br/>");
        Response.Write("【其它】:" + WapTool.ToWML(this.other, wmlVo) + "<br/>");
        

        Response.Write("<br/><a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + this.touserid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">返回上级</a> ");

        Response.Write("<a href=\"" + http_start + "wapindex.aspx?siteid=" + siteid + "" + "\">返回首页</a>	");

        Response.Write(WapTool.GetVS(wmlVo));
        Response.Write("</p>");
    }
    else
    {
        Response.Write("<div class=\"subtitle\">TA的交友资料</div>");
        if (ERROR != "")
        {
            Response.Write("<div class=\"tip\">");
            Response.Write(ERROR);
            Response.Write("</div>");
        }
        
        Response.Write("<div class=\"content\">");

        Response.Write("【交友目的】:" + this.purpost + "<br/>");
        Response.Write("【姓名】:" + this.name + "<br/>");
        Response.Write("【性别】:" + this.sex + "<br/>");
        Response.Write("【年龄】:" + this.age + "<br/>");
        Response.Write("【身高】:" + this.cm + "CM<br/>");
        Response.Write("【体重】:" + this.kg + "KG<br/>");
        Response.Write("【城市】:" + this.city + "<br/>");
        Response.Write("【生日】:" + this.Y + "-" + M + "-" + D + "<br/>");
        Response.Write("【民族】:" + this.nation + "<br/>");
        Response.Write("【星座】:" + this.star + "<br/>");
        Response.Write("【血型】:" + this.blood + "型<br/>");
        Response.Write("【学历】:" + this.education + "<br/>");
        Response.Write("【职业】:" + this.profession + "<br/>");
        Response.Write("【月薪】:" + this.monthpay + "<br/>");
        Response.Write("【宗教】:" + this.religion + "<br/>");
        Response.Write("【爱好】:" + this.love + "<br/>");
        Response.Write("【性格】:" + this.nature + "<br/>");
        Response.Write("【外貌】:" + this.looks + "<br/>");
        Response.Write("【婚姻】:" + this.marriage + "<br/>");
        Response.Write("【ＱＱ】:");
        if (seeRight.IndexOf(",0,") >= 0 || (seeRight.IndexOf("," + userVo.SessionTimeout + ",") >= 0 && WapTool.showIDEndTime(siteVo.siteid, userVo.userid, userVo.endTime) > 0))
        {
            Response.Write(this.qq + "<br/>");
        }
        else
        {
            Response.Write("<a href=\"" + seeInfo + "\">升级VIP会员查看</a><br/>");
        }

        Response.Write("【邮箱】:");
        if (seeRight.IndexOf(",0,") >= 0 || (seeRight.IndexOf("," + userVo.SessionTimeout + ",") >= 0 && WapTool.showIDEndTime(siteVo.siteid, userVo.userid, userVo.endTime) > 0))
        {
            Response.Write(this.email + "<br/>");
        }
        else
        {
            Response.Write("<a href=\"" + seeInfo + "\">升级VIP会员查看</a><br/>");
        }
        Response.Write("【特长】:" + this.speciality + "<br/>");
        Response.Write("【择友条件】:" + this.condition + "<br/>");
        Response.Write("【人生格言】:" + this.aphorism + "<br/>");
        Response.Write("【喜欢服饰】:" + this.loveclothes + "<br/>");
        Response.Write("【喜欢明星】:" + this.lovestar + "<br/>");
        Response.Write("【喜欢动物】:" + this.loveanimal + "<br/>");
        Response.Write("【喜欢食物】:" + this.lovefood + "<br/>");
        Response.Write("【喜欢颜色】:" + this.lovecolor + "<br/>");
        Response.Write("【喜欢音乐】:" + this.lovemusic + "<br/>");
        Response.Write("【其它】:"+WapTool.ToWML(this.other,wmlVo) + "<br/>");
        
        Response.Write("</div>");
        Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
        Response.Write("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + this.touserid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">返回上级</a> ");

        Response.Write("<a href=\"" + http_start + "wapindex.aspx?siteid=" + siteid + "" + "\">返回首页</a>	"); Response.Write(WapTool.GetVS(wmlVo));
        Response.Write("</div></div>");
    }

Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>