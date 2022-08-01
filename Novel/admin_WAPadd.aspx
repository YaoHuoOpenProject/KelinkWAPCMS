<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd.aspx.cs" Inherits="KeLin.WebSite.novel.admin_WAPadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.dostate+this.GetLang("书本|书本|content"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    Response.Write("<a href=\"" + this.http_start + "novel/admin_wapadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面管理|进入WAP2.0界面管理|wap2.0 admin") + "</a><br/>");
    
    Response.Write("<a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"title\">" + this.dostate + this.GetLang("书本|书本|operation") + "</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("*项不能为空！  ");
        Response.Write("</div>");
    }     else if (this.INFO == "REPEAT")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>请不要发重复内容！</b><br/>");
        Response.Write("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        Response.Write("</div>");

    }    
   
    else if (this.INFO == "ADDOK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("添加书本成功！  ");
        if (siteVo.isCheck == 1)
        {
            Response.Write(" 审核后显示！  ");
        }
        Response.Write("</div>");

    }
    else if (this.INFO == "UPOK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("修改书本成功！  ");
        if (siteVo.isCheck == 1)
        {
            Response.Write(" 审核后显示！  ");
        }
        Response.Write("</div>");

    }

    if (this.INFO != "ADDOK" && this.INFO != "UPOK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"gt\" action=\"" + http_start + "novel/admin_WAPadd.aspx\" method=\"post\">");
        Response.Write(this.GetLang("图片地址|图片地址|Picture") + ":");
        Response.Write("<input type=\"text\" name=\"book_img\" value=\"" + vo.book_img + "\"/> [<a href=\""+this.http_start+"novel/upimage.aspx?siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;id="+this.id+"&amp;showimg="+vo.book_img+"&amp;sid="+this.sid+"\">上传</a>]<br/>");
        //选择栏目
        Response.Write("选择分类:");
        
        Response.Write("<select name=\"toclassid\">");
        Response.Write("<option value=\"" + this.classid  + "\">" + this.classid  + "</option>");
        if (this.id != "") Response.Write("<option value=\"" + vo.book_classid + "\">" + vo.book_classid + "</option>");
        for (int i = 0; (classList != null && i < classList.Count); i++)
        {

            Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

        }
        Response.Write("</select><br/>");
        Response.Write(this.GetLang("书名|书名|BookName") + "*:");
        Response.Write("<input type=\"text\" name=\"book_title\" value=\"" + vo.book_title + "\"/><br/>");
        Response.Write(this.GetLang("作者|作者|author") + "*:");
        Response.Write("<input type=\"text\" name=\"book_author\" value=\"" + vo.book_author + "\"/><br/>");        
        
        Response.Write(this.GetLang("简介|简介|Info") + "*:<br/>");
        Response.Write("<textarea name=\"book_info\" rows=\"3\" style=\"width:100%\">" + vo.book_info + "</textarea><br/>");
        Response.Write(this.GetLang("主角|主角|Protagonists") + "*:");
        Response.Write("<input type=\"text\" name=\"Protagonists\" value=\"" + vo.Protagonists + "\"/><br/>");
        Response.Write(this.GetLang("写作进程|写作进程|写作进程") + "*:");
        Response.Write("<select name=\"Process\">");
        if (this.id != "") Response.Write("<option value=\"" + vo.Process + "\">" + vo.Process + "</option>");
        Response.Write("<option value=\"连载中\">连载中</option>");
        Response.Write("<option value=\"完结\">完结</option>");
        Response.Write("<option value=\"出版中\">出版中</option>");
        Response.Write("</select><br/>");
        Response.Write(this.GetLang("作品性质|作品性质|作品性质") + "*:");
        Response.Write("<select name=\"Nature\">");
        if (this.id != "") Response.Write("<option value=\"" + vo.Nature + "\">" + vo.Nature + "</option>");
        Response.Write("<option value=\"公共作品\">公共作品</option>");
        Response.Write("<option value=\"VIP作品\">VIP作品</option>");        
        Response.Write("</select><br/>");
        Response.Write(this.GetLang("授权状态|授权状态|授权状态") + "*:");
        Response.Write("<select name=\"Authorized\">");
        if(this.id!="") Response.Write("<option value=\"" + vo.Authorized + "\">" + vo.Authorized + "</option>");
        Response.Write("<option value=\"转载作品\">转载作品</option>");
        Response.Write("<option value=\"专属作品\">专属作品</option>");
        Response.Write("<option value=\"特约作品\">特约作品</option>");
        Response.Write("<option value=\"授权作品\">授权作品</option>");
        Response.Write("<option value=\"驻站作品\">驻站作品</option>");
        Response.Write("<option value=\"连载作品\">连载作品</option>");        
        Response.Write("</select><br/>");

        Response.Write(this.GetLang("点击量|点击量|点击量") + "*:");
        Response.Write("<input type=\"text\" name=\"book_click\" size=\"5\" value=\"" + vo.book_click + "\"/><br/>");

        Response.Write(this.GetLang("回复量|回复量|回复量") + "*:");
        Response.Write("<input type=\"text\" name=\"book_re\" size=\"5\" value=\"" + vo.book_re + "\"/><br/>");

        Response.Write(this.GetLang("本月点击|本月点击|本月点击") + "*:");
        Response.Write("<input type=\"text\" name=\"MonthClick\" size=\"5\" value=\"" + vo.MonthClick + "\"/><br/>");
        
        Response.Write(this.GetLang("本周点击|本周点击|本周点击") + "*:");
        Response.Write("<input type=\"text\" name=\"WeekClick\" size=\"5\" value=\"" + vo.WeekClick + "\"/><br/>");

        Response.Write(this.GetLang("本日点击|本日点击|本日点击") + "*:");
        Response.Write("<input type=\"text\" name=\"DayClick\" size=\"5\" value=\"" + vo.DayClick + "\"/><br/>");

        Response.Write(this.GetLang("献花|献花|献花") + "*:");
        Response.Write("<input type=\"text\" name=\"FlowerClick\" size=\"5\" value=\"" + vo.FlowerClick + "\"/><br/>");

        Response.Write(this.GetLang("板砖|板砖|板砖") + "*:");
        Response.Write("<input type=\"text\" name=\"EggClick\" size=\"5\" value=\"" + vo.EggClick + "\"/><br/>");

        Response.Write(this.GetLang("本站首发|本站首发|本站首发") + "*:");
        Response.Write("<select name=\"FirstIssue\">");
        if (this.id != "") Response.Write("<option value=\"" + vo.FirstIssue + "\">" + vo.FirstIssue + "</option>");
        Response.Write("<option value=\"0\">0_否</option>");
        Response.Write("<option value=\"1\">1_是</option>");
        Response.Write("</select><br/>");

        Response.Write(this.GetLang("推荐指数|推荐指数|推荐指数") + "*:");
        Response.Write("<select name=\"Star\">");
        if (this.id != "") Response.Write("<option value=\"" + vo.Star + "\">" + vo.Star + "</option>");
        Response.Write("<option value=\"★★★★★\">★★★★★</option>");
        Response.Write("<option value=\"★★★★☆\">★★★★☆</option>");
        Response.Write("<option value=\"★★★☆☆\">★★★☆☆</option>");  
        
        Response.Write("</select><br/>");
        
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + this.id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" value=\"" + this.GetLang("确 定|确 定|submit") + "\"/></form>");
        
        Response.Write("</div>");
    }
 
    
    Response.Write("<div class=\"mylink\">");
    Response.Write("<a href=\"" + this.http_start + "novel/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


