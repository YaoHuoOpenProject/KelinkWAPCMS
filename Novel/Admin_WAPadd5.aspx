<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd5.aspx.cs" Inherits="KeLin.WebSite.novel.admin_WAPadd5" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
                                                                                                                                                                                     Response.Write(WapTool.showTop(this.dostate + this.GetLang("我要添加小说|我要添加小说|content"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    Response.Write("<a href=\"" + this.http_start + "novel/admin_WAPadd5.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面管理|进入WAP2.0界面管理|wap2.0 admin") + "</a><br/>");

    if (goback == "")
    {
        Response.Write("<a href=\"" + this.http_start + "novel/admin_userlistWAP3.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    }
    else
    {
        Response.Write("<a href=\"" + this.http_start + "novel/"+goback+".aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
   
    }
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"title\">" + this.dostate + this.GetLang("我要添加小说|我要添加小说|operation") + "</div>");
    Response.Write("<div class=\"subtitle\">一键上传书本/分卷/章节，章节内容存放TXT中</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("*项不能为空！  ");
        Response.Write("</div>");
    }     else if (this.INFO == "REPEAT")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>已存重复内容或存在同样的章节标题！</b><br/>");
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
        Response.Write("添加成功！  ");
        if (siteVo.isCheck == 1)
        {
            Response.Write(" 审核后显示！  ");
        }
        Response.Write("</div>");

    }
    else if (this.INFO == "UPOK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("修改成功！  ");
        if (siteVo.isCheck == 1)
        {
            Response.Write(" 审核后显示！  ");
        }
        Response.Write("</div>");

    }

    if (this.INFO != "ADDOK" && this.INFO != "UPOK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"gt\" action=\"" + http_start + "novel/admin_WAPadd5.aspx\" method=\"post\">");
        Response.Write(this.GetLang("URL图片地址|URL图片地址|Picture") + ":");
        Response.Write("<input type=\"text\" name=\"book_img\" value=\"\"/> <br/>");
        //选择栏目
        Response.Write("选择分类:");

        Response.Write("<select name=\"toclassid\">");
        Response.Write("<option value=\"" + this.classid + "\">" + this.classid + "_" + classVo.classname + "</option>");
        for (int i = 0; (classList != null && i < classList.Count); i++)
        {

            Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

        }
        Response.Write("</select><br/>");
        Response.Write(this.GetLang("书名|书名|BookName") + "*:");
        Response.Write("<input type=\"text\" name=\"book_title\" value=\"\"/><br/>");
        Response.Write(this.GetLang("作者|作者|author") + ":");
        Response.Write("<input type=\"text\" name=\"book_author\" value=\""+this.nickname+"\"/><br/>");

        Response.Write(this.GetLang("简介|简介|Info") + ":<br/>");
        Response.Write("<textarea name=\"book_info\" rows=\"3\" style=\"width:100%\"></textarea><br/>");
        Response.Write(this.GetLang("主角|主角|Protagonists") + ":");
        Response.Write("<input type=\"text\" name=\"Protagonists\" value=\"\"/><br/>");
        
        Response.Write(this.GetLang("写作进程|写作进程|写作进程") + ":");
        Response.Write("<select name=\"Process\">");
        Response.Write("<option value=\"连载中\">连载中</option>");
        Response.Write("<option value=\"完结\">完结</option>");
        Response.Write("<option value=\"出版中\">出版中</option>");
        Response.Write("</select><br/>");
        Response.Write(this.GetLang("作品性质|作品性质|作品性质") + ":");
        Response.Write("<select name=\"Nature\">");
        Response.Write("<option value=\"公共作品\">公共作品</option>");
        Response.Write("<option value=\"VIP作品\">VIP作品</option>");
        Response.Write("</select><br/>");
        Response.Write(this.GetLang("授权状态|授权状态|授权状态") + ":");
        Response.Write("<select name=\"Authorized\">");
        Response.Write("<option value=\"转载作品\">转载作品</option>");
        Response.Write("<option value=\"专属作品\">专属作品</option>");
        Response.Write("<option value=\"特约作品\">特约作品</option>");
        Response.Write("<option value=\"授权作品\">授权作品</option>");
        Response.Write("<option value=\"驻站作品\">驻站作品</option>");
        Response.Write("<option value=\"连载作品\">连载作品</option>");
        Response.Write("</select><br/>");

        Response.Write(this.GetLang("点击量|点击量|点击量") + "*:");
        Response.Write("<input type=\"text\" name=\"book_click\" size=\"5\" value=\"0\"/><br/>");

        Response.Write(this.GetLang("回复量|回复量|回复量") + "*:");
        Response.Write("<input type=\"text\" name=\"book_re\" size=\"5\" value=\"0\"/><br/>");

        Response.Write(this.GetLang("本月点击|本月点击|本月点击") + "*:");
        Response.Write("<input type=\"text\" name=\"MonthClick\" size=\"5\" value=\"0\"/><br/>");

        Response.Write(this.GetLang("本周点击|本周点击|本周点击") + "*:");
        Response.Write("<input type=\"text\" name=\"WeekClick\" size=\"5\" value=\"0\"/><br/>");

        Response.Write(this.GetLang("本日点击|本日点击|本日点击") + "*:");
        Response.Write("<input type=\"text\" name=\"DayClick\" size=\"5\" value=\"0\"/><br/>");

        Response.Write(this.GetLang("献花|献花|献花") + "*:");
        Response.Write("<input type=\"text\" name=\"FlowerClick\" size=\"5\" value=\"0\"/><br/>");

        Response.Write(this.GetLang("板砖|板砖|板砖") + "*:");
        Response.Write("<input type=\"text\" name=\"EggClick\" size=\"5\" value=\"0\"/><br/>");

        Response.Write(this.GetLang("本站首发|本站首发|本站首发") + ":");
        Response.Write("<select name=\"FirstIssue\">");
        Response.Write("<option value=\"0\">0_否</option>");
        Response.Write("<option value=\"1\">1_是</option>");
        Response.Write("</select><br/>");

        Response.Write(this.GetLang("推荐指数|推荐指数|推荐指数") + ":");
        Response.Write("<select name=\"Star\">");
        Response.Write("<option value=\"★★★★★\">★★★★★</option>");
        Response.Write("<option value=\"★★★★☆\">★★★★☆</option>");
        Response.Write("<option value=\"★★★☆☆\">★★★☆☆</option>");

        Response.Write("</select><br/>");
        Response.Write(this.GetLang("分卷名称|分卷名称|分卷名称") + ":");
        Response.Write("<input type=\"text\" name=\"volumename\" value=\"\"/><br/>");


        Response.Write(this.GetLang("章节标题|章节标题|章节标题") + "*:");
        Response.Write("<input type=\"text\" name=\"SectionTitle\" value=\"\"/><br/>");
        Response.Write(this.GetLang("小说内容|小说内容|小说内容") + "*:<br/>");
        Response.Write("<textarea name=\"book_content\" rows=\"8\" style=\"width:100%\"></textarea><br/>");
        Response.Write("需要扣" + siteVo.sitemoneyname + "*:");
        Response.Write("<input type=\"text\" name=\"needMoney\" value=\"0\" size=\"5\"/>个<br/>");
        Response.Write("排序号*:");
        Response.Write("<input type=\"text\" name=\"rank\" value=\"" + vo.rank + "\" size=\"5\"/><br/>");
        Response.Write("(0或空时，系统将自动生成排序号)<br/>");
        
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + this.id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"goback\" value=\"" + this.goback + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" value=\"" + this.GetLang("确 定|确 定|submit") + "\"/></form>");
        
        Response.Write("</div>");
    }

    Response.Write("<div class=\"tip\">假如同一本书有N章节，提交N次，书名要一样，自动识别。</div>");
    Response.Write("<div class=\"mylink\">");
    if (goback == "")
    {
        Response.Write("<a href=\"" + this.http_start + "novel/admin_userlistWAP3.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    }
    else
    {
        Response.Write("<a href=\"" + this.http_start + "novel/"+goback+".aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;bookid=" + this.bookid + "&amp;id=" + this.id + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    
    }
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


