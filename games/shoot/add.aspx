<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="KeLin.WebSite.Games.shoot.add" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("公开挑战|公开挑战|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write("只能数值且不能为0！");
        Response.Write("</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        Response.Write("<b>请不要发重复内容！</b><br/>");
    }
    else if (this.INFO == "WAITING")
    {
        Response.Write("<b>今天您发布挑战已超过" + this.cou + "个了，请明天再来！</b><br/>");

    }

    else if (this.INFO == "NUMBER")
    {

        Response.Write("<b>只能数值，或不在范围内！</b><br/>");
    }
    else if (this.INFO == "NOMONEY")
    {

        Response.Write("<b>抱歉，你的"+siteVo.sitemoneyname+"不够了！</b><br/>");
    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write("您已经成功创建了对所有友友的公开挑战！请耐心等待其它友友来应战吧! ");
        
        Response.Write("</b><br/>");

    }
   


  if (this.INFO != "OK"){
      Response.Write("您目前共有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");
      Response.Write("请输入您的赌注(最少" + min + "个金币,最多" + max + "个金币)*:<br/>");
      Response.Write("<input type=\"text\" name=\"mymoney" + r + "\" size=\"8\" value=\"" + min + "\"/><br/>");
      Response.Write("请选择你的射门方向:<br/>");
      Response.Write("<img src=\"door.gif\" alt=\"PIC\"/><br/>"); 
      Response.Write("<select name=\"myshoot" + r + "\" value=\"1\">");
      Response.Write("<option value=\"1\">左</option>");
      Response.Write("<option value=\"2\">中</option>");
      Response.Write("<option value=\"3\">右</option>");
      Response.Write("</select><br/>");
      Response.Write("<anchor><go href=\"" + http_start + "games/shoot/add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
      Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
      Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
      Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");


      Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
      Response.Write("<postfield name=\"myshoot\" value=\"$(myshoot" + r + ")\"/>");

      Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
      Response.Write("</go>" + this.GetLang("确 定|确 定|submit") + "</anchor><br/>");
      Response.Write("<br/>说明:如果其它友友获胜,您的赌注就要输光哦,如果您获胜,您将获得您赌注的" + per + "%金币,如果平局则退回挑战金币。");
        

    }

  Response.Write("<a href=\"" + this.http_start + "games/shoot/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
  Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");
  Response.Write(WapTool.GetVS(wmlVo));
  Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("公开挑战|公开挑战|Add operation") + "</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("只能数值且不能为0！  ");
        Response.Write("</div>");
    }  
    else if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>今天您发布挑战已超过" + this.cou + "个了，请明天再来！</b><br/>");
        Response.Write("</div>");

    }
   
    else if (this.INFO == "NUMBER")
    {

        Response.Write("<div class=\"tip\"><b>只能录入数值！或不在范围内</b></div>");

    }
    else if (this.INFO == "NOMONEY")
    {

        Response.Write("<div class=\"tip\"><b>抱歉，你的" + siteVo.sitemoneyname + "不够了！</b></div>");
    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("您已经成功创建了对所有友友的公开挑战！请耐心等待其它友友来应战吧! ");
        
        Response.Write("</div>");

    }

    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"gt\" action=\"" + http_start + "games/shoot/add.aspx\" method=\"post\">");
        Response.Write("您目前共有" + userVo.money + "个"+siteVo.sitemoneyname + "！<br/>");
        Response.Write("请输入您的赌注(最少"+min+"个金币,最多"+max+"个金币)*:<br/>");
        Response.Write("<input type=\"text\" name=\"mymoney\" size=\"8\" value=\"" + min + "\"/><br/>");
        Response.Write("请选择你的射门方向:<br/>");
        Response.Write("<img src=\"door.gif\" alt=\"PIC\"/><br/>");    
        Response.Write("<select name=\"myshoot\">");
        Response.Write("<option value=\"1\">左</option>");
        Response.Write("<option value=\"2\">中</option>");
        Response.Write("<option value=\"3\">右</option>");
        Response.Write("</select><br/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");       
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确 定|确 定|submit") + "\"/></form>");
        Response.Write("<br/>说明:如果其它友友获胜,您的赌注就要输光哦,如果您获胜,您将获得您赌注的"+per+"%金币,如果平局则退回挑战金币。");
        Response.Write("</div>");
    }
    
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "games/shoot/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


