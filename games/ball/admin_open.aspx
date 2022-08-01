<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_open.aspx.cs" Inherits="KeLin.WebSite.Games.ball.admin_open" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="开奖设置";


Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

    Response.Write("<br/><a href=\"" + this.http_start + "games/ball/admin_open.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;ptype="+this.ptype+"&amp;id="+this.id+"&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">进入WAP2.0界面操作</a> <br/>");
   
    
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_book_list.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype="+ptype+"" + "\">返回上级</a> ");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append(title);
    strhtml.Append("</div>");
    if (ERROR != "")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append(ERROR);
        strhtml.Append("</div>");
    }
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("设置成功！");
        strhtml.Append("</div>");
    }
    
    
    
    if (this.INFO != "OK")
    {
    strhtml.Append("<div class=\"subtitle\">");
    strhtml.Append(bookVo.p_one + "VS" + bookVo.p_two);
    strhtml.Append("</div>");
    
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("开赛:"+bookVo.p_TPRtime);
        
        strhtml.Append("<form name=\"f\" aciont=\"" + http_start + "games/ball/admin_open.aspx\" method=\"post\">");

        strhtml.Append("<br/>*填写比分<br/><input  type=\"text\" emptyok=\"flase\" name=\"resultone\" value=\"0\"  /><br/>");
        strhtml.Append("比<br/><input  type=\"text\" emptyok=\"false\" name=\"resulttwo\" value=\"0\"  /><br/>");
        strhtml.Append("开奖模式<br/>");
        strhtml.Append("<select name=\"iType\"><option selected=\"true\" value=\"1\">正常模式</option><option  value=\"2\">平盘模式</option><option  value=\"3\">截时模式</option></select><br/>");
        strhtml.Append("截止时间<input type=\"text\" name=\"oTime\" value=\""+DateTime.Now+"\" /><br/>");
        strhtml.Append("操作原因<input type=\"text\" name=\"pSms\" value=\"\" /><br/>");
        if (bookVo.p_ison == 1)
        {
            strhtml.Append("走地比分时间(格式2010-10-7 1:00:00#2010-10-7 1:20:00)<br /><textarea  name=\"onceTime\"></textarea>");
        }
        strhtml.Append("<br/><input type=\"submit\" name=\"b\" value=\"确定开奖\" />");

        strhtml.Append("<br/><br/>提示：非正常模式开奖时请输入操作原因；当选择截时模式时，即该时间前的作正常开奖，时间后的作平盘返还；当你选择平盘模式时，比分写成0:0即可<br/>");

        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\" />");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\" />");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
        strhtml.Append("</form>");
        strhtml.Append("</div>");
    }
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + ptype + "&amp;id="+this.id+"" + "\">返回上级</a> ");

    strhtml.Append("</div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
