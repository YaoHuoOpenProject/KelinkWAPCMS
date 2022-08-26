<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_bet.aspx.cs" Inherits="KeLin.WebSite.Games.waBao.admin_bet" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("清理开奖记录|清理开奖记录|View Reply"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap\">参数配置</a>|开奖下注管理<br/>");
    strhtml.Append("--------<br/>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append("删除成功！");
     
        strhtml.Append("</b> <br/>");
    }

    strhtml.Append("【<a href=\"" + this.http_start + "games/waBao/admin_bet.aspx?action=godel&amp;siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;typeid=0&amp;sid="+this.sid+"\">清空所有开奖记录</a>】<br/>");
    strhtml.Append("【<a href=\"" + this.http_start + "games/waBao/admin_bet.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=1\">清空所有下注记录</a>】<br/>");
    strhtml.Append("【<a href=\"" + this.http_start + "games/waBao/admin_bet.aspx?action=godel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=2\">清空赌神榜单记录</a>】<br/>");
    strhtml.Append("--------<br/>");
    strhtml.Append("【<a href=\"" + this.http_start + "games/waBao/rank_list_back.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=2\">返利操作</a>】<br/>");


    strhtml.Append("--------<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
   

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\"><a href=\"" + this.http_start + "games/waBao/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap&amp;sid="+this.sid+"\">参数配置</a>|开奖下注管理</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append("删除成功！");
     

        strhtml.Append("</b> ");
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
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "games/waBao/admin_bet.aspx\" method=\"get\">");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"godel\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"typeid\" value=\"0\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" value=\"清空所有开奖记录\"/></form> ");
    strhtml.Append("<br/><br/>");
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "games/waBao/admin_bet.aspx\" method=\"get\">");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"godel\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"typeid\" value=\"1\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" value=\"清空所有下注记录\"/></form> ");
    strhtml.Append("<br/><br/>");
    strhtml.Append("<form name=\"re\" action=\"" + http_start + "games/waBao/admin_bet.aspx\" method=\"get\">");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"godel\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"typeid\" value=\"2\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"go\" value=\"清空赌神榜单记录\"/></form> ");
    strhtml.Append("<br/><br/>--------<br/>");
    strhtml.Append("【<a href=\"" + this.http_start + "games/waBao/rank_list_back.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=2\">返利操作</a>】<br/>");

    strhtml.Append("</div>");


    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/waBao/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
