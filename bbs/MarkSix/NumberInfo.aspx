<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NumberInfo.aspx.cs" Inherits="KeLin.WebSite.bbs.marksix.NumberInfo" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop("对照表", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");


    strhtml.Append("<b>查询操作</b>");
    strhtml.Append("<br/>----------<br/>");
    strhtml.Append("输入要查询的号码：<input type=\"text\" name=\"num"+r+"\" size=\"3\" value=\"" + num + "\"/><br/>");
    
    strhtml.Append("<anchor><go href=\"" + http_start + "bbs/MarkSix/numberinfo.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<postfield name=\"num\" value=\"$(num" + r + ")\"/>");   
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("</go>查询</anchor>");
    
    
    
    

    strhtml.Append("<br/>----------<br/>");

    if (this.num != "")
    {
        strhtml.Append("<b>查看号码属性</b>");
        

        strhtml.Append("您查询的号码 <b>" + num + "</b> 属性如下： <br/>");
        strhtml.Append("所属单双：" + GamesClassManager.Tool.single_double_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("所属大小：" + GamesClassManager.Tool.big_small_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("所属波色：" + GamesClassManager.Tool.wave_color_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("所属生肖：" + GamesClassManager.Tool.Good_looking_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("所属家野：" + GamesClassManager.Tool.Poultry_beast_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("所属五行：" + GamesClassManager.Tool.five_elements_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("合数单双：" + GamesClassManager.Tool.Together_single_double_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("合数大小：" + GamesClassManager.Tool.Together_big_small_from_number(configVo.config, num) + " <br/>");

        strhtml.Append("<br/>----------<br/>");
    }


    //导航按钮

    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

   
    //显示内容
    strhtml.Append("<div class=\"subtitle\">查询操作</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"from1\" action=\""+this.http_start+"bbs/marksix/numberinfo.aspx\" method=\"get\">");
    strhtml.Append("输入要查询的号码：<input type=\"text\" name=\"num\" size=\"3\" value=\""+num+"\"/><br/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\"  value=\"" + this.siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\"  value=\"" + this.classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\"  value=\"" + this.sid + "\"/>");
    strhtml.Append("<input type=\"submit\"  value=\" 查 询 \"/>");
    strhtml.Append("</form>");

    strhtml.Append("</div>");

    if (this.num != "")
    {
        strhtml.Append("<div class=\"subtitle\">查看号码属性</div>");
        strhtml.Append("<div class=\"content\">");

        strhtml.Append("您查询的号码 <b>" + num + "</b> 属性如下： <br/>");
        strhtml.Append("所属单双：" + GamesClassManager.Tool.single_double_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("所属大小：" + GamesClassManager.Tool.big_small_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("所属波色：" + GamesClassManager.Tool.wave_color_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("所属生肖：" + GamesClassManager.Tool.Good_looking_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("所属家野：" + GamesClassManager.Tool.Poultry_beast_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("所属五行：" + GamesClassManager.Tool.five_elements_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("合数单双：" + GamesClassManager.Tool.Together_single_double_from_number(configVo.config, num) + " <br/>");
        strhtml.Append("合数大小：" + GamesClassManager.Tool.Together_big_small_from_number(configVo.config, num) + " <br/>");

        strhtml.Append("</div>");
    }
    
   
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "&amp;sid=" + sid + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">返回首页</a>");

    strhtml.Append("</div></div>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
