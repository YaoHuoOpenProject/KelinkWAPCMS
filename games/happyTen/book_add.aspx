<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_add.aspx.cs" Inherits="KeLin.WebSite.Games.happyTen.book_add" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("手工添加期数|手工添加期数|View Reply"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);
    strhtml.Append("请进入彩版进行添加。");


    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">手工新增期数</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("发表成功！|发表成功！|Successfully add"));
       


        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/admin_bet.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;lpage=" + lpage + "" + "\">返回</a><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append("格式错误。");
        strhtml.Append("</b><br/>");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "EXIST")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>出错了：当前所有记录中已存在（下注）状态的记录，所以不能再新增。</b><br/>");
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
    if (this.INFO != "OK")
    {
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<form name=\"re\" action=\"" + http_start + "games/happyTen/book_add.aspx\" method=\"get\">");
        strhtml.Append("年份:<input type=\"text\" name=\"years\" size=\"4\" value=\"" + years + "\"/> ");
        strhtml.Append("期号:<input type=\"text\" name=\"period\" size=\"4\" value=\"" + period + "\"/><br/>");
        strhtml.Append("开奖时间:<input type=\"text\" name=\"opentime\" size=\"15\" value=\"" + opentime + "\"/><br/>");

        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"submit\" name=\"go\" value=\" 新 增 \"/></form> ");


        strhtml.Append("</div>");
    }
   
    strhtml.Append("<div class=\"tip\">");
   strhtml.Append("<b>手动添加条件</b>：当前所有记录中不存在（下注）状态时可新增。<br/>");
   strhtml.Append("<b>自动添加</b>：默认情况下，系统会自动向远程目标网站提取数据，并自动添加。请确保您好的主机或空间能支持小偷程序。<br/>");
    
    strhtml.Append("</div>");

    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/admin_bet.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
