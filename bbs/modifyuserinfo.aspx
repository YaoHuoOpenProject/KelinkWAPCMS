<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modifyuserinfo.aspx.cs" Inherits="KeLin.WebSite.bbs.modifyuserinfo" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("修改我的资料|修改我的資料|Modify my information"), wmlVo));//显示头   


if (ver == "1")
{
strhtml.Append("<p align=\"left\">");

strhtml.Append("<a href=\""+this.http_start +"bbs/ModifyPW.aspx?siteid="+this.siteid +"\">01.修改我的密码</a> <br/>");
strhtml.Append("<a href=\""+this.http_start +"bbs/ModifyNick.aspx?siteid="+this.siteid +"&amp;sid="+this.sid+"\">02.修改我的昵称</a><br/>");
strhtml.Append("<a href=\""+this.http_start +"bbs/ModifyHead.aspx?siteid="+this.siteid +"&amp;sid="+this.sid+"\">03.修改我的头像</a><br/>");
strhtml.Append("<a href=\""+this.http_start +"bbs/ModifyRemark.aspx?siteid="+this.siteid +"&amp;sid="+this.sid+"\">04.修改个性签名</a><br/>");
strhtml.Append("<a href=\""+this.http_start +"bbs/ModifyInfo.aspx?siteid="+this.siteid +"&amp;sid="+this.sid+"\">05.修改详细资料</a><br/>");
strhtml.Append("<a href=\""+this.http_start +"bbs/ModifyCard.aspx?siteid="+this.siteid +"&amp;sid="+this.sid+"\">06.修改我的名片</a><br/>");
strhtml.Append("<a href=\""+this.http_start +"bbs/ModifyUserFriends.aspx?siteid="+this.siteid +"&amp;sid="+this.sid+"\">07.修改交友资料</a><br/>");
strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/modifyuserinfo.aspx?siteid=" + siteid) + "\">08.修改手机型号</a>"); 
strhtml.Append("<br />"+ WapTool.ToWML(WapTool.GetUAUBB(this.myua,ver,lang,this.sid,1),wmlVo ));
strhtml.Append("<br/>----------<br/>");
strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfomore.aspx?siteid=" + this.siteid + "&amp;touserid=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/modifyuserinfo.aspx?siteid=" + siteid)+"\">浏览我的个人资料</a>");
strhtml.Append("<br/>----------<br/>");
strhtml.Append("<a href=\""+this.http_start +"myfile.aspx?siteid="+this.siteid +"" + "\">返回上级</a> ");
strhtml.Append("<a href=\""+this.http_start +"wapindex.aspx?siteid="+this.siteid +"" + "\">返回首页</a>	");
strhtml.Append(WapTool.GetVS(wmlVo)); 
strhtml.Append("</p>");
Response.Write(strhtml);

}else{ 

strhtml.Append("<div class=\"subtitle\">修改我的资料</div>");
strhtml.Append("<div class=\"content\">");
strhtml.Append("<a href=\""+this.http_start +"bbs/ModifyPW.aspx?siteid="+this.siteid +"\">01.修改我的密码</a> <br/>");
strhtml.Append("<a href=\""+this.http_start +"bbs/ModifyNick.aspx?siteid="+this.siteid +"&amp;sid="+this.sid+"\">02.修改我的昵称</a><br/>");
strhtml.Append("<a href=\""+this.http_start +"bbs/ModifyHead.aspx?siteid="+this.siteid +"&amp;sid="+this.sid+"\">03.修改我的头像</a><br/>");
strhtml.Append("<a href=\""+this.http_start +"bbs/ModifyRemark.aspx?siteid="+this.siteid +"&amp;sid="+this.sid+"\">04.修改个性签名</a><br/>");
strhtml.Append("<a href=\""+this.http_start +"bbs/ModifyInfo.aspx?siteid="+this.siteid +"&amp;sid="+this.sid+"\">05.修改详细资料</a><br/>");
strhtml.Append("<a href=\""+this.http_start +"bbs/ModifyCard.aspx?siteid="+this.siteid +"&amp;sid="+this.sid+"\">06.修改我的名片</a><br/>");
strhtml.Append("<a href=\""+this.http_start +"bbs/ModifyUserFriends.aspx?siteid="+this.siteid +"&amp;sid="+this.sid+"\">07.修改交友资料</a><br/>");
strhtml.Append("<a href=\"" + http_start + "wapstyle/mobileua.aspx?siteid=" + siteid + "" + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/modifyuserinfo.aspx?siteid=" + siteid) + "\">08.修改手机型号</a>"); 
strhtml.Append(" "+ WapTool.ToWML(WapTool.GetUAUBB(this.myua,ver,lang,this.sid,1),wmlVo ));



strhtml.Append("<div class=\"bt1\">");
strhtml.Append("<a href=\"" + this.http_start + "bbs/userinfomore.aspx?siteid=" + this.siteid + "&amp;touserid=" + this.userid + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/modifyuserinfo.aspx?siteid=" + siteid)+"\">浏览我的个人资料</a>");
strhtml.Append("</div>");

strhtml.Append("</div>");

string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码  

strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
strhtml.Append("<a href=\""+this.http_start +"myfile.aspx?siteid="+this.siteid +"" + "\">返回上级</a> ");

    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "" + "\">返回首页</a>	");

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