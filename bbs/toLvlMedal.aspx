<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toLvlMedal.aspx.cs" Inherits="KeLin.WebSite.bbs.toLvlMedal" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("经验头衔等级设置|经验头衔等级设置|Content of the guessbook"), wmlVo));//显示头                                                                                                                                                                       
string MoneyOrLvl = "经验";
if (WapTool.GetSiteDefault(siteVo.Version, 27) == "1")
{
    MoneyOrLvl = siteVo.sitemoneyname;
}

if (ver == "1")
{
    Response.Write("<p>");
    if (ERROR != "")
    {
        
        Response.Write(ERROR);
        Response.Write("<br/>");
    }
    if (INFO == "OK")
    {
       
        Response.Write("<b>更新成功！</b>");
        Response.Write("<br/>");
    }
    else if (INFO == "NUMERR")
    {
       
        Response.Write("<b>字符 | 数量不一样！</b>");
        Response.Write("<br/>");
    }





    Response.Write("<b>" + MoneyOrLvl + "头衔等级设置：</b><br/>");
    Response.Write(MoneyOrLvl+"(用\" | \"区分)：<br /><input type=\"text\" name=\"top"+r+"\" value=\"" + top + "\" size=\"25\"/><br/>");
    Response.Write("对应头衔(用\" | \"区分)：<br /><input type=\"text\" name=\"cen" + r + "\" value=\"" + cen + "\" size=\"25\"/><br/>");
    Response.Write("对应等级(用\" | \"区分)：<br /><input type=\"text\" name=\"down" + r + "\" value=\"" + down + "\" size=\"25\"/><br/>");
    Response.Write("<anchor><go href=\"" + http_start + "bbs/toLvlMedal.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield  name=\"action\"  value=\"gomod\" />");
    Response.Write("<postfield  name=\"siteid\" value=\"" + this.siteid + "\"  />");
    Response.Write("<postfield  name=\"classid\"  value=\"" + this.classid + "\"  />");
    Response.Write("<postfield  name=\"sid\"  value=\"" + this.sid + "\"  />");
    Response.Write("<postfield name=\"top\" value=\"$(top" + r + ")\"/>");
    Response.Write("<postfield name=\"cen\" value=\"$(cen" + r + ")\"/>");
    Response.Write("<postfield name=\"down\" value=\"$(down" + r + ")\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");
    Response.Write("【<a href=\"" + this.http_start + "bbs/tolvlinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">查看效果</a>】");


    //显示导航分页

    Response.Write("<br/>------------<br/>");
    Response.Write("参考如下<br/>");
    Response.Write(MoneyOrLvl+"：<br/><input type=\"text\" format=\"*m\" name=\"t1\" value=\"0|500|1000|5000|50000|100000|200000|500000|1000000\" /><br/>");
    Response.Write("对应头衔：<br/><input type=\"text\" format=\"*m\" name=\"c1\" value=\"新手|入门|初级|中级|高级|高手|顾问|侠客|精灵\" /><br/>");
    Response.Write("对应等级：<br/><input type=\"text\" format=\"*m\" name=\"d1\" value=\"一级|二级|三级|四级|五级|六级|七级|八级|九级\" /><br/>");
    Response.Write("说明:" + MoneyOrLvl + ",头衔,等级<br/>");
    Response.Write("1-500,新手,一级<br/>");
    Response.Write("501-1000,入门,二级<br/>");
    Response.Write("1001-5000,初级,三级<br/>");
    Response.Write("5001-50000,中级,四级<br/>");
    Response.Write("50001-100000,高级,五级<br/>");
    Response.Write("100001-200000,高手,六级<br/>");
    Response.Write("200001-500000,顾问,七级<br/>");
    Response.Write("500001-1000000,侠客,八级<br/>");
    Response.Write("1000001以上,精灵,九级<br/>");
    Response.Write("<br/>");
    //导航按钮

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
    
}
else //2.0界面
{
    Response.Write("<div class=\"subtitle\">" + "经验头衔等级设置" + "</div>");
    if (ERROR != "")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write(ERROR);
        Response.Write("</div>");
    }
    if (INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>更新成功！</b>");
        Response.Write("</div>");
    }
    else if (INFO == "NUMERR")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>字符 | 数量不一样！</b>");
        Response.Write("</div>");
    }
    
    
    Response.Write("<div class=\"content\">");
    Response.Write("<form id=\"form1\" action=\"" + http_start + "bbs/toLvlMedal.aspx\" method=\"post\">");        
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\" />");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    
    
    Response.Write("<b>经验头衔等级设置：</b><br/>");
    Response.Write(MoneyOrLvl+"(用\" | \"区分)：<br /><input type=\"text\" name=\"top\" value=\"" + top + "\" size=\"25\"/><br/>");
    Response.Write("对应头衔(用\" | \"区分)：<br /><input type=\"text\" name=\"cen\" value=\"" + cen + "\" size=\"25\"/><br/>");
    Response.Write("对应等级(用\" | \"区分)：<br /><input type=\"text\" name=\"down\" value=\"" + down + "\" size=\"25\"/><br/>");
    

    Response.Write("<input type=\"submit\" value=\"确定更新\" />");
    Response.Write("【<a href=\"" + this.http_start + "bbs/tolvlinfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode(this.GetUrlQueryString()) + "\">查看效果</a>】");

    Response.Write("</form>");
    
    
    //显示导航分页
    
    Response.Write("<br/>------------<br/>");
    Response.Write("参考如下<br/>");
    Response.Write(MoneyOrLvl+"：<br/><input type=\"text\" format=\"*m\" name=\"t1\" value=\"0|500|1000|5000|50000|100000|200000|500000|1000000\" /><br/>");
    Response.Write("对应头衔：<br/><input type=\"text\" format=\"*m\" name=\"c1\" value=\"新手|入门|初级|中级|高级|高手|顾问|侠客|精灵\" /><br/>");
    Response.Write("对应等级：<br/><input type=\"text\" format=\"*m\" name=\"d1\" value=\"一级|二级|三级|四级|五级|六级|七级|八级|九级\" /><br/>");
    Response.Write("说明:" + MoneyOrLvl + ",头衔,等级<br/>");
    Response.Write("1-500,新手,一级<br/>");
    Response.Write("501-1000,入门,二级<br/>");
    Response.Write("1001-5000,初级,三级<br/>");
    Response.Write("5001-50000,中级,四级<br/>");
    Response.Write("50001-100000,高级,五级<br/>");
    Response.Write("100001-200000,高手,六级<br/>");
    Response.Write("200001-500000,顾问,七级<br/>");
    Response.Write("500001-1000000,侠客,八级<br/>");
    Response.Write("1000001以上,精灵,九级<br/>");
    Response.Write("</div>");
    //导航按钮
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");

    Response.Write("</div></div>");

                                                                                                                                                                           
}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
