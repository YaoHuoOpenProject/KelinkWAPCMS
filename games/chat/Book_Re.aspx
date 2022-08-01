<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Re.aspx.cs" Inherits="KeLin.WebSite.Games.chat.Book_Re" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("查看聊天|查看聊天|View Reply"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("发表成功！|发表成功！|Successfully add"));
        if (siteVo.isCheck == 1)
        {
            //strhtml.Append("审核后显示！");
        }     
        
        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "games/"+id+"/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;nid=" + id + "&amp;lpage=" + lpage + "" + "\">返回</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("内容不能为空！|內容不能爲空！|The content can not be empty!"));
        strhtml.Append("</b><br/>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        strhtml.Append("<b>请不要发重复内容！</b><br/>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    //显示输入框
  
    strhtml.Append("<input emptyok=\"true\" name=\"con" + r + "tent\" maxlength=\"300\"/><br/>");
    strhtml.Append("<anchor><go href=\""+http_start+"games/chat/book_re.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
    strhtml.Append("<postfield name=\"nid\" value=\""+id+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"lpage\" value=\""+lpage+"\"/>");
    strhtml.Append("<postfield name=\"content\" value=\"$(con"+r+"tent)\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
    strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("<postfield name=\"backurl\" value=\"" + HttpUtility.UrlEncode("games/chat/book_re.aspx?action=class&siteid="+siteid+"&classid="+classid+"&id="+id) + "\"/>");   
    strhtml.Append("</go>提交</anchor> ");
    
    strhtml.Append("<a href=\""+http_start+"games/chat/book_re.aspx?nid="+id+"&amp;classid="+classid+"&amp;siteid="+siteid+"&amp;lpage="+lpage+"&amp;rnd="+r+"&amp;sid="+sid+"\">刷新</a> ");
    if(userid=="0"){
        strhtml.Append("<a href=\""+http_start+"waplogin.aspx?siteid="+siteid+"&amp;sid="+sid+"&amp;backurl="+HttpUtility.UrlEncode("games/chat/book_re.aspx?action=class&siteid="+siteid+"&classid="+classid+"&id="+id)+"\">登录</a>");
    }
    strhtml.Append("<br/>");
 
    //显示列表

   /// kk = kk + ((CurrentPage - 1) * pageSize) -1 ;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        strhtml.Append("[<a href=\"" + this.http_start + "games/" + listVo[i].gameEn + "/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + listVo[i].gameCn + "</a>]<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + "\">" + listVo[i].nickName + "</a>(" + string.Format("{0:MM-dd HH:mm}", listVo[i].addtime) + ")说：<br/>" + listVo[i].content + "<br/>");
        //kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("暂无回复记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("<a href=\"" + this.http_start + "games/"+id+"/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id="+id+"&amp;lpage="+lpage+"" + "\">返回"+GamesClassManager.Tool.GetGameCN(id)+"游戏</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("查看回复|查看回複|View Reply") + "</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("发表成功！|发表成功！|Successfully add"));
        if (siteVo.isCheck == 1)
        {
            //strhtml.Append("审核后显示！");
        }


        strhtml.Append("</b> ");
        strhtml.Append("<a class=\"urlbtn\" href=\"" + this.http_start + "games/"+id+"/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;nid=" + id + "&amp;lpage=" + lpage + "" + "\">返回</a><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("内容不能为空！|內容不能爲空！|The content can not be empty!"));
        strhtml.Append("</b><br/>");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "REPEAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>请不要发重复内容！</b>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b>");
        strhtml.Append("</div>");

    }
    //显示输入框
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "games/chat/book_re.aspx\" method=\"post\">");

    strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");


    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"nid\" value=\"" + id + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + HttpUtility.UrlEncode("games/chat/book_re.aspx?actoin=class&siteid=" + siteid + "&classid=" + classid + "&id=" + id) + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" class=\"btn\" value=\"提交\"/></form> ");
   
    strhtml.Append("</div>");

    //显示列表

    //kk = kk + ((CurrentPage - 1) * pageSize) - 1;
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append("[<a href=\"" + this.http_start + "games/" + listVo[i].gameEn + "/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + listVo[i].gameCn + "</a>]<a href=\"" + http_start + "bbs/userinfo.aspx?siteid=" + siteid + "&amp;touserid=" + listVo[i].userid + "&amp;id=" + listVo[i].id + "&amp;backurl=" + "\">" + listVo[i].nickName + "</a> <span class=\"right\">" + string.Format("{0:MM-dd HH:mm}", listVo[i].addtime) + "</span><br/>" + listVo[i].content + "</div>");
        kk = kk + 1;
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">暂无聊天记录！</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/" + id + "/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回" + GamesClassManager.Tool.GetGameCN(id) + "游戏</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "games/gamesindex.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">游戏中心</a> ");


    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
