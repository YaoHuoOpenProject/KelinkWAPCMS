<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doit.aspx.cs" Inherits="KeLin.WebSite.Games.lucky28.doit" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title ="我要投注";
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
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
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }

    else if (this.INFO == "NUMBER")
    {

        Response.Write("<b>只能数值，或输入的的币，不在范围内！</b><br/>");
    }
    else if (this.INFO == "NOMONEY")
    {

        Response.Write("<b>抱歉，你的" + siteVo.sitemoneyname + "不够了！</b><br/>");
    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">压注成功，<a href=\"" + this.http_start + "games/lucky28/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返回</a></div>");

    }

    if (this.INFO != "OK")
    {




        Response.Write("您目前共有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");
        Response.Write("还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + "开奖！<br/>");
        Response.Write("批量投注方式一：<br/>");
        Response.Write("号码范围：<input type=\"text\" name=\"content2" + r + "\" value=\"" + content2 + "\"  size=\"6\"/><br/>(格式:最小值-最大值，如1-7)<br/>");
        Response.Write("每注金额:<input type=\"text\" name=\"mymoney2" + r + "\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");

        Response.Write("<anchor><go href=\"" + http_start + "games/lucky28/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<postfield name=\"types\" value=\"1\"/>");
        Response.Write("<postfield name=\"content2\" value=\"$(content2" + r + ")\"/>");
        Response.Write("<postfield name=\"mymoney2\" value=\"$(mymoney2" + r + ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("确定下注|确定下注|确定下注") + "</anchor><br/>");
           

        Response.Write("----------<br/>");
        Response.Write("批量投注方式二：<br/>");
        Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/lucky28/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + bookVo.periodID + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
            //Response.Write("----------<br/>");
            for (int i = 1; i < 29; i++)
            {
                
                   
                

                if (cou !=0 && this.num >= cou)
                {
                    Response.Write(i-1);
                }
                else
                {
                    Response.Write("<a href=\"" + this.http_start + "games/lucky28/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + bookVo.periodID + "&amp;selcontent=" + (i-1) + "&amp;selurl=" + selurl + "\">" + (i-1) + "</a>");

                }
                Response.Write("　");
                if (i % 4 == 0)
                {
                    Response.Write("<br/>");
                }
            }

            if (action == "sel")
            {
                Response.Write("<br/>我的选择：<input type=\"text\" name=\"content" + r + "\" value=\"" + selurl + "\"/><br/>");
                Response.Write("每注金额:<input type=\"text\" name=\"mymoney" + r + "\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");

                Response.Write("<anchor><go href=\"" + http_start + "games/lucky28/doit.aspx\" method=\"post\" accept-charset=\"utf-8\">");
                Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
                Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
                Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
                Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
                Response.Write("<postfield name=\"content\" value=\"$(content" + r + ")\"/>");
                Response.Write("<postfield name=\"mymoney\" value=\"$(mymoney" + r + ")\"/>");
                Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
                Response.Write("</go>" + this.GetLang("确定下注|确定下注|确定下注") + "</anchor><br/>");
            }
        Response.Write("<br/>投注提示: 幸运数字由三个0~27之间的随机数个位数相加产生,如10=1+2+7,请投注0~27之间的整数,可重复投注.");

        Response.Write("<br/>每期最多下" + cou + "注，如果您压中,您将获得奖金的" + per + "%<br/>");

    }
    

  Response.Write("<a href=\"" + this.http_start + "games/lucky28/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
  Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");
  Response.Write(WapTool.GetVS(wmlVo));
  Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + title + "</div>");
    
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
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        Response.Write("</div>");

    }
   
    else if (this.INFO == "NUMBER")
    {

        Response.Write("<div class=\"tip\"><b>只能录入数值！或输入的的币，不在范围内</b></div>");

    }
    else if (this.INFO == "NOMONEY")
    {

        Response.Write("<div class=\"tip\"><b>抱歉，你的" + siteVo.sitemoneyname + "不够了！</b></div>");
    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">压注成功，<a href=\"" + this.http_start + "games/lucky28/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">返回</a></div>");
    
    }

    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"gt\" action=\"" + http_start + "games/lucky28/doit.aspx\" method=\"post\">");
        Response.Write("您目前共有" + userVo.money + "个" + siteVo.sitemoneyname + "！<br/>");
        Response.Write("还有" + WapTool.DateToString(this.leftTime, base.lang, 0) + "开奖！<br/>");
        Response.Write("----------<br/>");
        Response.Write("投注方式一：<br/>");
        Response.Write("号码范围：<input type=\"text\" name=\"content2\" value=\"" + content2 + "\" size=\"6\"/><br/>(格式:最小值-最大值，如1-7)<br/>");
        Response.Write("每注金额:<input type=\"text\" name=\"mymoney2\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
        Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");

        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"types\" value=\"1\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</form><br/>----------<br/>");
        
        Response.Write("<form name=\"g2\" action=\"" + http_start + "games/lucky28/doit.aspx\" method=\"post\">");
        
        Response.Write("投注方式二：<br/>");
        Response.Write("已选号码" + this.num + "个，<a href=\"" + this.http_start + "games/lucky28/doit.aspx?action=&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + bookVo.periodID + "&amp;selcontent=&amp;selurl=\">重选</a><br/>");
       
        for (int i = 1; i < 29; i++)
        {
            

            if (cou != 0 && this.num >= cou)
            {
                Response.Write(i-1);
            }
            else
            {
                Response.Write("<a href=\"" + this.http_start + "games/lucky28/doit.aspx?action=sel&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + bookVo.periodID + "&amp;selcontent=" + (i-1) + "&amp;selurl=" + selurl + "\">" + (i-1) + "</a>");
            }
            
            Response.Write("　");
            if (i % 4 == 0)
            {
                Response.Write("<br/>");
            }
        }

        if (action == "sel")
        {
            Response.Write("<br/>我的选择：<input type=\"text\" name=\"content\" value=\"" + selurl + "\"/><br/>");
            Response.Write("每注金额:<input type=\"text\" name=\"mymoney\" value=\"" + min + "\" size=\"6\"/>个" + siteVo.sitemoneyname + "(" + min + "-" + max + ")<br/>");
            Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定投注|确定投注|确定投注") + "\"/>");

            Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
            Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
            Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        }
        Response.Write("</form>");
        Response.Write("<br/>投注提示: 幸运数字由三个0~27之间的随机数个位数相加产生,如10=1+2+7,请投注0~27之间的整数,可重复投注.");
        Response.Write("<br/>每期最多下"+cou+"注，如果您压中,您将获得奖金的" + per + "%");
        Response.Write("</div>");
    }
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "games/lucky28/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


