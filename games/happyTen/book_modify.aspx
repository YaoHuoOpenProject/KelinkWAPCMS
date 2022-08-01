<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_modify.aspx.cs" Inherits="KeLin.WebSite.Games.happyTen.book_modify" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("修改期数|修改期数|View Reply"), wmlVo));//显示头                                                                                                                                                                       
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
        strhtml.Append("<a href=\"" + this.http_start + "games/"+id+"/index.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + id + "&amp;lpage=" + lpage + "" + "\">返回</a><br/>");
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

    strhtml.Append("<b>请进入彩版操作！</b><br/>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">修改期数</div>");
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\"><b>");
        strhtml.Append(this.GetLang("修改成功！|修改成功！|Successfully add"));
       


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
        strhtml.Append("<b>出错了：状态在0.下注(可修改) 或 1.待返奖励(可兑奖) 可以修改操作。</b><br/>");
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
        strhtml.Append("<form name=\"re\" action=\"" + http_start + "games/happyTen/book_modify.aspx\" method=\"get\">");
        strhtml.Append("年份:<input type=\"text\" name=\"years\" size=\"4\" value=\"" + bookVo.years + "\"/> ");
        strhtml.Append("期号:<input type=\"text\" name=\"period\" size=\"4\" value=\"" + bookVo.period + "\"/><br/>");
        strhtml.Append("号码1:<input type=\"text\" name=\"ball1\" size=\"4\" value=\"" + bookVo.ball1 + "\"/><br/>");
        strhtml.Append("号码2:<input type=\"text\" name=\"ball2\" size=\"4\" value=\"" + bookVo.ball2 + "\"/><br/>");
        strhtml.Append("号码3:<input type=\"text\" name=\"ball3\" size=\"4\" value=\"" + bookVo.ball3 + "\"/><br/>");
        strhtml.Append("号码4:<input type=\"text\" name=\"ball4\" size=\"4\" value=\"" + bookVo.ball4 + "\"/><br/>");
        strhtml.Append("号码5:<input type=\"text\" name=\"ball5\" size=\"4\" value=\"" + bookVo.ball5 + "\"/><br/>");
        strhtml.Append("号码6:<input type=\"text\" name=\"ball6\" size=\"4\" value=\"" + bookVo.ball6 + "\"/><br/>");
        strhtml.Append("号码7:<input type=\"text\" name=\"ball7\" size=\"4\" value=\"" + bookVo.ball7 + "\"/><br/>");
        strhtml.Append("号码8:<input type=\"text\" name=\"ball8\" size=\"4\" value=\"" + bookVo.ball8 + "\"/><br/>");
        
        strhtml.Append("开奖时间:<input type=\"text\" name=\"opentime\" size=\"15\" value=\"" + bookVo.OpenTime + "\"/><br/>");
        strhtml.Append("状态：<select name=\"state\">");
        strhtml.Append("<option value=\"" + bookVo.state + "\">" + bookVo.state + "</option>");
        strhtml.Append("<option value=\"0\">0_下注中</option>");
        strhtml.Append("<option value=\"1\">1_待开奖</option>");
        strhtml.Append("</select>");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"submit\" name=\"go\" value=\" 修 改 \"/></form> ");


        strhtml.Append("</div>");
    }



    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/happyTen/admin_bet.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
