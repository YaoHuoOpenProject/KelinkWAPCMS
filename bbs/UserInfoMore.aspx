<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfoMore.aspx.cs" Inherits="KeLin.WebSite.bbs.UserInfoMore" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("个人资料|個人資料|Personal Information"), wmlVo));//显示头                                                                                                                                                                       
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
    Response.Write("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + this.touserid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">返回上级</a><br/>");

    Response.Write(WapTool.ToWML(toUserVo.remark, wmlVo) + "<br/>");
    Response.Write(WapTool.GetHeadImgHTML(http_start, toUserVo.headimg) + "<br/>");
      



Response.Write("【用户ID】:"+toUserVo.userid+WapTool.GetOLtimePic(this.http_start,siteVo.lvlTimeImg,toUserVo.LoginTimes)+"<br/>");
Response.Write("【昵称】:"+toUserVo.nickname+"<br/>");
Response.Write("【" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, lang) + "】:" + toUserVo.money + "<br/>");
Response.Write("【经验】:"+toUserVo.expr+"<br/>");
Response.Write("【等级】:"+WapTool.GetLevl(siteVo.lvlNumer,toUserVo.expr,toUserVo.money,type)+"<br/>");
Response.Write("【头衔】:"+WapTool.GetHandle(siteVo.lvlNumer,toUserVo.expr,toUserVo.money,type)+"<br/>");
Response.Write("【身份】:"+WapTool.GetMyID(toUserVo.idname,this.lang)+"<br/>");    
Response.Write("【权限】:"+idtype+"<br/>");
Response.Write("【勋章】:"+WapTool.GetMedal(toUserVo.moneyname,this.http_start)+"<br/>");
Response.Write("【性别】:");
if (toUserVo.sex==1){Response.Write(this.GetLang("男|男|Male")); }else{ Response.Write(this.GetLang("女|女|Female"));}
Response.Write("<br/>");  
Response.Write("【年龄】:"+toUserVo.age+"<br/>");
Response.Write("【地区】:"+toUserVo.city+"<br/>");
Response.Write("【状态】:"+WapTool.GetOnline(this.http_start,toUserVo.isonline.ToString(),toUserVo.sex.ToString())+"<br/>");
Response.Write("【积时】:"+WapTool.DateToString(toUserVo.LoginTimes,this.lang,0)+"<br/>");
Response.Write("【注册时间】:" + toUserVo.RegTime + "<br/>");
Response.Write("【最后活动时间】:"+toUserVo.LastLoginTime+"<br/>");
    
toUserVo.aihao = toUserVo.aihao + "__";
string [] arryqq = toUserVo.aihao.Split('_');
Response.Write("【QQ】:");

if (seeRight.IndexOf(",0,") >= 0 || (seeRight.IndexOf("," + userVo.SessionTimeout + ",") >= 0 && WapTool.showIDEndTime(siteVo.siteid, userVo.userid, userVo.endTime) > 0))
{
    Response.Write( arryqq[1] + "<br/>");
}
else
{
    Response.Write("<a href=\"" + seeInfo + "\">升级VIP会员查看</a><br/>");
}
    
Response.Write("【身高】:"+toUserVo.shenggao+"<br/>");
Response.Write("【体重】:"+toUserVo.tizhong+"<br/>");
Response.Write("【星座】:"+toUserVo.xingzuo+"<br/>");
Response.Write("【爱好】:" + arryqq[0] + "<br/>");
Response.Write("【婚否】:"+toUserVo.fenfuo+"<br/>");
Response.Write("【职业】:"+toUserVo.zhiye+"<br/>");
Response.Write("【城市】:"+toUserVo.city+"<br/>");
Response.Write("【手机】:");
if (seeRight.IndexOf(",0,") >= 0 || (seeRight.IndexOf("," + userVo.SessionTimeout + ",") >= 0 && WapTool.showIDEndTime(siteVo.siteid, userVo.userid, userVo.endTime) > 0))
{
    Response.Write(toUserVo.mobile + "<br/>");
}
else
{
    Response.Write("<a href=\"" + seeInfo + "\">升级VIP会员查看</a><br/>");
}
   

Response.Write("【型号】:" + this.myua + "<br/>");
Response.Write("【Email】:");
if (seeRight.IndexOf(",0,") >= 0 || (seeRight.IndexOf("," + userVo.SessionTimeout + ",") >= 0 && WapTool.showIDEndTime(siteVo.siteid, userVo.userid, userVo.endTime) > 0))
{
    Response.Write(toUserVo.email + "<br/>");
}
else
{
    Response.Write("<a href=\"" + seeInfo + "\">升级VIP会员查看</a><br/>");
}
Response.Write("【状态】:");
    if (toUserVo.LockUser==1){ Response.Write(this.GetLang("锁定|鎖定|Locked"));}else{Response.Write(this.GetLang("正常|正常|normal"));}
    

    
Response.Write("<br/><a href=\""+this.http_start+"bbs/userinfo.aspx?siteid="+this.siteid+"&amp;touserid="+this.touserid+"&amp;backurl="+HttpUtility.UrlEncode(backurl)+"&amp;sid="+this.sid+"\">返回上级</a> ");

Response.Write("<a href=\""+http_start+"wapindex.aspx?siteid="+siteid+"&amp;sid="+sid+"\">返回首页</a>	");
Response.Write(WapTool.GetVS(wmlVo));
Response.Write("</p>");
    
 
}
else //2.0界面
{
    Response.Write("<div class=\"subtitle\">" + this.GetLang("个人资料|個人資料|Personal Information") + "</div>");
    //Response.Write("<div class=\"subtitle\">");
    //Response.Write("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + this.touserid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">返回上级</a><br/>");
    //Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write(WapTool.ToWML(toUserVo.remark, wmlVo) + "<br/>");
    Response.Write(WapTool.GetHeadImgHTML(http_start, toUserVo.headimg) + "<br/>");



    Response.Write("【用户ID】:" + toUserVo.userid + WapTool.GetOLtimePic(this.http_start, siteVo.lvlTimeImg, toUserVo.LoginTimes) + "<br/>");
    Response.Write("【昵称】:" + toUserVo.nickname + "<br/>");
    Response.Write("【" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, lang) + "】:" + toUserVo.money + "<br/>");
    Response.Write("【经验】:" + toUserVo.expr + "<br/>");
    Response.Write("【等级】:" + WapTool.GetLevl(siteVo.lvlNumer, toUserVo.expr,toUserVo.money,type) + "<br/>");
    Response.Write("【头衔】:" + WapTool.GetHandle(siteVo.lvlNumer, toUserVo.expr,toUserVo.money,type) + "<br/>");
    Response.Write("【身份】:" + WapTool.GetMyID(toUserVo.idname, this.lang) + "<br/>");
    Response.Write("【权限】:" + idtype + "<br/>");
    Response.Write("【勋章】:" + WapTool.GetMedal(toUserVo.moneyname, this.http_start) + "<br/>");
    Response.Write("【性别】:");
    if (toUserVo.sex == 1) { Response.Write(this.GetLang("男|男|Male")); } else { Response.Write(this.GetLang("女|女|Female")); }
    Response.Write("<br/>");
    Response.Write("【年龄】:" + toUserVo.age + "<br/>");
    Response.Write("【地区】:" + toUserVo.city + "<br/>");
    Response.Write("【状态】:" + WapTool.GetOnline(this.http_start, toUserVo.isonline.ToString(), toUserVo.sex.ToString()) + "<br/>");
    Response.Write("【积时】:" + WapTool.DateToString(toUserVo.LoginTimes, this.lang,0) + "<br/>");
    Response.Write("【注册时间】:" + toUserVo.RegTime + "<br/>");
    Response.Write("【最后活动时间】:" + toUserVo.LastLoginTime + "<br/>");
    

    toUserVo.aihao = toUserVo.aihao + "__";
    string[] arryqq = toUserVo.aihao.Split('_');

    Response.Write("【QQ】:");
    if (seeRight.IndexOf(",0,") >= 0 || (seeRight.IndexOf("," + userVo.SessionTimeout + ",") >= 0 && WapTool.showIDEndTime(siteVo.siteid ,userVo.userid, userVo.endTime) > 0))
    {
        
        Response.Write(arryqq[1] + "<br/>");
    }
    else
    {
        Response.Write("<a href=\"" + seeInfo + "\">升级VIP会员查看</a><br/>");
    }
   
    Response.Write("【身高】:" + toUserVo.shenggao + "<br/>");
    Response.Write("【体重】:" + toUserVo.tizhong + "<br/>");
    Response.Write("【星座】:" + toUserVo.xingzuo + "<br/>");
    Response.Write("【爱好】:" + arryqq[0] + "<br/>");
    Response.Write("【婚否】:" + toUserVo.fenfuo + "<br/>");
    Response.Write("【职业】:" + toUserVo.zhiye + "<br/>");
    Response.Write("【城市】:" + toUserVo.city + "<br/>");
    Response.Write("【手机】:");
    if (seeRight.IndexOf(",0,") >= 0 || (seeRight.IndexOf("," + userVo.SessionTimeout + ",") >= 0 && WapTool.showIDEndTime(siteVo.siteid, userVo.userid, userVo.endTime) > 0))
    {
        Response.Write(toUserVo.mobile + "<br/>");
    }
    else
    {
        Response.Write("<a href=\"" + seeInfo + "\">升级VIP会员查看</a><br/>");
    }
   

    Response.Write("【型号】:" + this.myua + "<br/>");
    Response.Write("【Email】:");
    if (seeRight.IndexOf(",0,") >= 0 || (seeRight.IndexOf("," + userVo.SessionTimeout + ",") >= 0 && WapTool.showIDEndTime(siteVo.siteid, userVo.userid, userVo.endTime) > 0))
    {
        Response.Write(toUserVo.email + "<br/>");
    }
    else
    {
        Response.Write("<a href=\"" + seeInfo + "\">升级VIP会员查看</a><br/>");
    }
    Response.Write("【状态】:");
    if (toUserVo.LockUser == 1) { Response.Write(this.GetLang("锁定|鎖定|Locked")); } else { Response.Write(this.GetLang("正常|正常|normal")); }


    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + this.touserid + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "\">返回上级</a> ");

    Response.Write("<a href=\"" + http_start + "wapindex.aspx?siteid=" + siteid + "" + "\">返回首页</a>	");

    Response.Write("</div></div>");

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


