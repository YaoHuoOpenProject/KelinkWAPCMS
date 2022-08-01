<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Speak.aspx.cs" Inherits="KeLin.WebSite.chat.Speak" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("发言|发言|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);

    //选择栏目
    if (touserid != "")
    {
        Response.Write("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + this.touserid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + tonickname + "的资料</a><br/>");
    }
    Response.Write("对谁说:<br/>");
    Response.Write("<select name=\"tonickname" + r + "\">");
    if (touserid != "")
    {
        Response.Write("<option value=\"" + tonickname + "\">" + touserid + "_" + tonickname + "</option>");
    }
    Response.Write("<option value=\"大家\">大家</option>");
    for (int i = 0; (onList != null && i < onList.Count); i++)
    {

        Response.Write("<option value=\"" + onList[i].nickname + "\">" + onList[i].userid + "_" + onList[i].nickname + "</option>");

    }
    Response.Write("</select><br/>");


    Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
    Response.Write("<input type=\"text\"  name=\"content" + r + "\" value=\"\" /><br/>");
    Response.Write("表情");
    Response.Write("<select name=\"face" + r + "\" value=\"\">");
    Response.Write("<option value=\"\">无</option>");
    Response.Write("<option value=\"1.gif\">胜利</option>");
    Response.Write("<option value=\"2.gif\">偷笑</option>");
    Response.Write("<option value=\"3.gif\">送花</option>");
    Response.Write("<option value=\"4.gif\">调皮</option>");
    Response.Write("<option value=\"5.gif\">欢迎</option>");
    Response.Write("<option value=\"6.gif\">微笑</option>");
    Response.Write("<option value=\"7.gif\">暴汗</option>");
    Response.Write("<option value=\"8.gif\">大笑</option>");
    Response.Write("<option value=\"9.gif\">晕了</option>");
    Response.Write("<option value=\"10.gif\">疑惑</option>");
    Response.Write("<option value=\"11.gif\">别吵</option>");
    Response.Write("<option value=\"12.gif\">流泪</option>");
    Response.Write("<option value=\"13.gif\">脸红</option>");
    Response.Write("<option value=\"14.gif\">色色</option>");
    Response.Write("<option value=\"15.gif\">惊讶</option>");
    Response.Write("<option value=\"16.gif\">上火</option>");
    Response.Write("<option value=\"17.gif\">飞吻</option>");
    Response.Write("<option value=\"18.gif\">摆酷</option>");
    Response.Write("<option value=\"19.gif\">睡觉</option>");
    Response.Write("<option value=\"20.gif\">闭嘴</option>");
    Response.Write("<option value=\"21.gif\">再见</option>");
    Response.Write("</select><br/>");
    Response.Write("<anchor><go href=\"" + http_start + "chat/book_list.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"add\"/>");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");   
    Response.Write("<postfield name=\"tonickname\" value=\"$(tonickname" + r + ")\"/>");
    Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
    Response.Write("<postfield name=\"face\" value=\"$(face" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("</go>" + this.GetLang("发 送|发 送|submit") + "</anchor><br/><br/>");

    Response.Write("说明:[对谁说]下拉最大显示20位用户，想对其它人说，返回上级，点击对方的昵称进行发言。<br/>");
    Response.Write("<a href=\"" + this.http_start + "chat/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + this.r + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("发言|发言|Add operation") + "</div>");
    
    Response.Write(this.ERROR);
    
  
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"f\" action=\"" + http_start + "chat/book_list.aspx\" method=\"post\">");
        //选择栏目
        if (touserid != "")
        {
            Response.Write("<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid=" + this.touserid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">" + tonickname + "的资料</a><br/>");
        }
        Response.Write("对谁说:<br/>");
        Response.Write("<select name=\"tonickname\" class=\"KL_select\">");
        if (touserid != "")
        {
            Response.Write("<option value=\"" + tonickname + "\">" + touserid + "_" + tonickname + "</option>");
        }
        Response.Write("<option value=\"大家\">大家</option>");
        for (int i = 0; (onList != null && i < onList.Count); i++)
        {

            Response.Write("<option value=\"" + onList[i].nickname + "\">" + onList[i].userid + "_" + onList[i].nickname + "</option>");

        }
        Response.Write("</select><br/>");


        Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
        Response.Write("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");
     
        Response.Write("<select name=\"face\" class=\"KL_select\">");
        Response.Write("<option value=\"\">表情</option>");
        Response.Write("<option value=\"1.gif\">胜利</option>");
        Response.Write("<option value=\"2.gif\">偷笑</option>");
        Response.Write("<option value=\"3.gif\">送花</option>");
        Response.Write("<option value=\"4.gif\">调皮</option>");
        Response.Write("<option value=\"5.gif\">欢迎</option>");
        Response.Write("<option value=\"6.gif\">微笑</option>");
        Response.Write("<option value=\"7.gif\">暴汗</option>");
        Response.Write("<option value=\"8.gif\">大笑</option>");
        Response.Write("<option value=\"9.gif\">晕了</option>");
        Response.Write("<option value=\"10.gif\">疑惑</option>");
        Response.Write("<option value=\"11.gif\">别吵</option>");
        Response.Write("<option value=\"12.gif\">流泪</option>");
        Response.Write("<option value=\"13.gif\">脸红</option>");
        Response.Write("<option value=\"14.gif\">色色</option>");
        Response.Write("<option value=\"15.gif\">惊讶</option>");
        Response.Write("<option value=\"16.gif\">上火</option>");
        Response.Write("<option value=\"17.gif\">飞吻</option>");
        Response.Write("<option value=\"18.gif\">摆酷</option>");
        Response.Write("<option value=\"19.gif\">睡觉</option>");
        Response.Write("<option value=\"20.gif\">闭嘴</option>");
        Response.Write("<option value=\"21.gif\">再见</option>");
        Response.Write("</select><br/>");
        
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
        Response.Write("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("发 送|发 送|submit") + "\"/></form>");
        Response.Write("</div>");

        Response.Write("<div class=\"tip\">说明:[对谁说]下拉最大显示20位用户，想对其它人说，返回上级，点击对方的昵称进行发言。</div>");
        Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "chat/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


