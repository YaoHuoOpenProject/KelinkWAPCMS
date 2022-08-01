<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_list.aspx.cs" Inherits="KeLin.WebSite.chat.book_list" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
wmlVo.timer=chattimes; //刷新时间
wmlVo.strUrl = "chat/book_list.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;r="+this.r;
Response.Write(WapTool.showTop(classVo.classname, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
      

    strhtml.Append("<p align=\"" + classVo.position + "\">");
    //strhtml.Append("时间:"+this.chattimes);
    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/><br/>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce + "<br/>");
    }
    
    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop+"<br/>");
    }

    if (this.classid == "0"&& this.action !="search")
    {
        strhtml.Append("<b>栏目ID为0了，请重新选择房间。</b><br/>");

    }else if (this.INFO == "WAITING")
    {
        strhtml.Append("<b>你发言太快了，请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
    }  
    else if (this.INFO == "LOCK")
    {

        strhtml.Append("<b>抱歉，你已经被禁言了！</b><br/>");
    }
    
    if (this.IsCheckManagerLvl("|00|01", classVo.adminusername) == true)
    {
        strhtml.Append("----------<br/>");
        if (par0 == "1")
        {
            strhtml.Append("【<a href=\"" + this.http_start + "chat/speak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">点击这里发言</a>】<br/>");
        }
        strhtml.Append("【<a href=\"" + this.http_start + "chat/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">栏目属性设置</a>】<br/>");
        strhtml.Append("----------<br/>");
    }
    
    if (par0 == "0")
    {
        strhtml.Append("<a href=\"" + this.http_start + "chat/speak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">发言</a>|<a href=\"" + this.http_start + "chat/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + r + "\">刷新</a>|<a href=\"" + this.http_start + "chat/config.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">设置</a>|<a href=\"" + this.http_start + "chat/showadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">聊管</a><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + classVo.childid + "&amp;r=" + r + "\">换房</a>|<a href=\"" + this.http_start + "bbs/ModifyNick.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">改名</a>|<a href=\"" + this.http_start + "chat/Exit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">退出</a>|<a href=\"" + this.http_start + "bbs/onlist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">在线</a><br/>");
        //显示列表
        strhtml.Append("----------<br/>");

        if (chatRob.ToString() != "")
        {
            strhtml.Append(chatRob);
            strhtml.Append("<br/>");
        }
        
    }
    else
    {

        strhtml.Append("<a href=\"" + this.http_start + "chat/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + r + "\">刷新</a>|<a href=\"" + this.http_start + "chat/config.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">设置</a>|");
        strhtml.Append("<a href=\"" + this.http_start + "chat/Exit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">退出</a><br/>");
       
      
    }
        
    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;


        strhtml.Append(string.Format("{0:HH:mm}", listVo[i].times) + "<a href=\"" + this.http_start + "chat/speak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;tonickname=" + HttpUtility.UrlEncode(listVo[i].nickname) + "\">" + ShowNickName_color(listVo[i].userid, listVo[i].nickname) + "</a>对[" + listVo[i].tonickname + "]说:" + WapTool.GetOnlyImg(listVo[i].content) + "<br/>");
    }
    if (listVo == null)
    {
        strhtml.Append("暂时无人发言！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    if (this.par0 == "0" || (this.par0 == "1" && this.IsCheckManagerLvl("|00|01", classVo.adminusername) == true))
    {

        strhtml.Append("<select name=\"face" + r + "\" value=\"\">");
        strhtml.Append("<option value=\"\">表情</option>");
        strhtml.Append("<option value=\"1.gif\">胜利</option>");
        strhtml.Append("<option value=\"2.gif\">偷笑</option>");
        strhtml.Append("<option value=\"3.gif\">送花</option>");
        strhtml.Append("<option value=\"4.gif\">调皮</option>");
        strhtml.Append("<option value=\"5.gif\">欢迎</option>");
        strhtml.Append("<option value=\"6.gif\">微笑</option>");
        strhtml.Append("<option value=\"7.gif\">暴汗</option>");
        strhtml.Append("<option value=\"8.gif\">大笑</option>");
        strhtml.Append("<option value=\"9.gif\">晕了</option>");
        strhtml.Append("<option value=\"10.gif\">疑惑</option>");
        strhtml.Append("<option value=\"11.gif\">别吵</option>");
        strhtml.Append("<option value=\"12.gif\">流泪</option>");
        strhtml.Append("<option value=\"13.gif\">脸红</option>");
        strhtml.Append("<option value=\"14.gif\">色色</option>");
        strhtml.Append("<option value=\"15.gif\">惊讶</option>");
        strhtml.Append("<option value=\"16.gif\">上火</option>");
        strhtml.Append("<option value=\"17.gif\">飞吻</option>");
        strhtml.Append("<option value=\"18.gif\">摆酷</option>");
        strhtml.Append("<option value=\"19.gif\">睡觉</option>");
        strhtml.Append("<option value=\"20.gif\">闭嘴</option>");
        strhtml.Append("<option value=\"21.gif\">再见</option>");
        strhtml.Append("</select>");
        strhtml.Append("<input type=\"text\"  name=\"content" + r + "\" value=\"\" size=\"10\"/><br/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "chat/book_list.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"tonickname\" value=\"大家\"/>");
        strhtml.Append("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
        strhtml.Append("<postfield name=\"face\" value=\"$(face" + r + ")\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>" + this.GetLang("快速发言|快速发言|submit") + "</anchor><br/>");
    }
    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown+"<br/>");
    }
    //导航按钮   
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{


    string isWebHtml = this.ShowWEB_list(this.classid); //看是存在html代码

    //显示广告
    if (adVo.secondShowTop != "")
    {
        strhtml.Append(adVo.secondShowTop);
    }
    strhtml.Append("<!--web-->");
    strhtml.Append("<div class=\"subtitle\">"+classVo.classname+"</div>");
    if (this.classid == "0" && this.action != "search")
    {
        strhtml.Append("<div class=\"tip\"><b>栏目ID为0了，请重新选择房间。</b></div>");

    }
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<div class=\"tip\"><b>你发言太快了，请再过" + this.KL_CheckIPTime + "秒后操作！</b></div>");

    }
    else if (this.INFO == "LOCK")
    {

        strhtml.Append("<div class=\"tip\"><b>抱歉，你已经被禁言了！</b></div>");
    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<div class=\"tip\"><b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b></div>");
    }
    
    if (classVo.siteimg != "UploadFiles/no.gif" && classVo.siteimg != "NetImages/no.gif")
    {
        strhtml.Append("<div class=\"logo\"><img src=\"" + http_start + classVo.siteimg + "\" alt=\"LOGO\"/></div>");
    }
    if (classVo.introduce != "")
    {
        strhtml.Append(classVo.introduce);
    }
    strhtml.Append("<div class=\"content\">");
    
    if (this.IsCheckManagerLvl("|00|01", classVo.adminusername) == true)
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        if (par0 == "1")
        {
            strhtml.Append("<a href=\"" + this.http_start + "chat/speak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">点击这里发言</a> ");
        }
        strhtml.Append("<a href=\"" + this.http_start + "chat/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">更多栏目属性设置</a>");
        strhtml.Append("</div></div>");
    }
    
    if (par0 == "0")
    {

        strhtml.Append("<div class=\"btBox\"><div class=\"bt4\">");
    strhtml.Append("<a href=\"" + this.http_start + "chat/speak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">发言</a> <a href=\"" + this.http_start + "chat/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + r + "\">刷新</a> <a href=\"" + this.http_start + "chat/config.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">设置</a> <a href=\"" + this.http_start + "chat/showadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">聊管</a>");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + classVo.childid + "&amp;r=" + r + "\">换房</a> <a href=\"" + this.http_start + "bbs/ModifyNick.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">改名</a> <a href=\"" + this.http_start + "chat/Exit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">退出</a> <a href=\"" + this.http_start + "bbs/onlist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">在线</a>");
    strhtml.Append("</div></div>");
   
   
    }
    else
    {
        strhtml.Append("<div class=\"bt3\">");
        strhtml.Append("<a href=\"" + this.http_start + "chat/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;r=" + r + "\">刷新</a> <a href=\"" + this.http_start + "chat/config.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">设置</a> ");
        strhtml.Append("<a href=\"" + this.http_start + "chat/Exit.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">退出</a>");
        strhtml.Append("</div>");
       
    }

    strhtml.Append("</div>");

    if (chatRob.ToString() != "")
    {
        strhtml.Append("<div class=\"line1\">");
        strhtml.Append(chatRob);
        strhtml.Append("</div>");
    }
    
    strhtml.Append("<!--listS-->"); 
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;
        
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append(string.Format("{0:HH:mm}", listVo[i].times) + "<a href=\"" + this.http_start + "chat/speak.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;touserid=" + listVo[i].userid + "&amp;tonickname=" + HttpUtility.UrlEncode(listVo[i].nickname) + "\">" + ShowNickName_color(listVo[i].userid, listVo[i].nickname) + "</a>对[" + listVo[i].tonickname + "]说:" + WapTool.GetOnlyImg(listVo[i].content) + "</div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无无人发言！</div>");
    }
    strhtml.Append("<!--listE-->"); 
    //显示导航分页
    strhtml.Append(linkURL);
    if (this.par0 == "0" || (this.par0 == "1" && this.IsCheckManagerLvl("|00|01", classVo.adminusername) == true))
    {
        strhtml.Append("<div class=\"subtitle\">我要发言</div>");
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form name=\"f\" action=\"" + http_start + "chat/book_list.aspx\" method=\"post\">");

        strhtml.Append("<select name=\"face\" class=\"KL_select\">");
        strhtml.Append("<option value=\"\">表情</option>");
        strhtml.Append("<option value=\"1.gif\">胜利</option>");
        strhtml.Append("<option value=\"2.gif\">偷笑</option>");
        strhtml.Append("<option value=\"3.gif\">送花</option>");
        strhtml.Append("<option value=\"4.gif\">调皮</option>");
        strhtml.Append("<option value=\"5.gif\">欢迎</option>");
        strhtml.Append("<option value=\"6.gif\">微笑</option>");
        strhtml.Append("<option value=\"7.gif\">暴汗</option>");
        strhtml.Append("<option value=\"8.gif\">大笑</option>");
        strhtml.Append("<option value=\"9.gif\">晕了</option>");
        strhtml.Append("<option value=\"10.gif\">疑惑</option>");
        strhtml.Append("<option value=\"11.gif\">别吵</option>");
        strhtml.Append("<option value=\"12.gif\">流泪</option>");
        strhtml.Append("<option value=\"13.gif\">脸红</option>");
        strhtml.Append("<option value=\"14.gif\">色色</option>");
        strhtml.Append("<option value=\"15.gif\">惊讶</option>");
        strhtml.Append("<option value=\"16.gif\">上火</option>");
        strhtml.Append("<option value=\"17.gif\">飞吻</option>");
        strhtml.Append("<option value=\"18.gif\">摆酷</option>");
        strhtml.Append("<option value=\"19.gif\">睡觉</option>");
        strhtml.Append("<option value=\"20.gif\">闭嘴</option>");
        strhtml.Append("<option value=\"21.gif\">再见</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("<textarea name=\"content\" rows=\"5\" class=\"KL_textarea\" style=\"width:100%\"></textarea><br/>");
     
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"tonickname\" value=\"大家\"/>");
        strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("发 送|发 送|submit") + "\"/></form>");
        strhtml.Append("</div>");
    }

    //显示电脑版
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<!--web-->");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }

    //显示广告
    if (adVo.secondShowDown != "")
    {
        strhtml.Append(adVo.secondShowDown );
    }
    //导航按钮
   
    if (action == "search")
    {
        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "chat/book_search.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回搜索</a> ");
        strhtml.Append("</div></div>");
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>

