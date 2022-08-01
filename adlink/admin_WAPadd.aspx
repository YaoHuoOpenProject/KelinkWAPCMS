<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd.aspx.cs" Inherits="KeLin.WebSite.adlink.admin_WAPadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("添加广告|添加广告|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write("广告语和地址不能小于2个字符！  ");
        Response.Write("</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        Response.Write("<b>请不要发重复内容！</b><br/>");
    }

    else if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write("新增成功！  ");
        if (siteVo.isCheck == 1)
        {
            Response.Write(" 审核后显示！  ");
        }
        Response.Write("</b><br/>");

    }
   


  if (this.INFO != "OK"){
        //选择栏目
        Response.Write("选择分类:<br/>");
        Response.Write("<select name=\"toclassid" + r + "\" value=\"" + this.toclassid + "\">");
        for (int i = 0; (classList != null && i < classList.Count); i++)
        {

            Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

        }
        Response.Write("</select><br/>");
        Response.Write(this.GetLang("广告语|*广告语|Title") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"book_title" + r + "\" value=\"" + book_title + "\"/><br/>");
        Response.Write("(可用图片地址，如:http://abc.com/ad/1.jpg) <br/>");
        Response.Write(this.GetLang("广告地址|广告地址|URL address") + "*:<br/>");
        Response.Write("<input type=\"text\"  name=\"book_content" + r + "\" value=\"" + book_content + "\" /><br/>");
        Response.Write("(&amp;不用写成&amp;amp; 链接本站地址后面加入可防掉线！)<br/>");
        Response.Write("显示跳转提示:<select name=\"hasmoney" + r + "\" value=\"" + this.hasmoney + "\">");
        Response.Write("<option value=\"0\">0_否</option>");
        Response.Write("<option value=\"1\">1_是</option>");
        Response.Write("</select><br/>");
        Response.Write(this.GetLang("点击送币|点击送币|send money") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"sendmoney" + r + "\" value=\"" + sendmoney + "\"/><br/>");
        Response.Write(this.GetLang("送币相隔时间|送币相隔时间|送币相隔时间") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"book_pub" + r + "\" value=\"" + book_pub + "\"/><br/>");
        Response.Write("(单位小时,0为不送)<br/>");
        Response.Write("<anchor><go href=\"" + http_start + "adlink/admin_WAPadd.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<postfield name=\"toclassid\" value=\"$(toclassid" + r + ")\"/>");
        Response.Write("<postfield name=\"book_title\" value=\"$(book_title" + r + ")\"/>");
        Response.Write("<postfield name=\"book_content\" value=\"$(book_content" + r + ")\"/>");
        Response.Write("<postfield name=\"book_pub\" value=\"$(book_pub" + r + ")\"/>");
        Response.Write("<postfield name=\"hasmoney\" value=\"$(hasmoney" + r + ")\"/>");
        Response.Write("<postfield name=\"sendmoney\" value=\"$(sendmoney" + r + ")\"/>");
     
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("提 交|提 交|submit") + "</anchor><br/><br/>");

    }
    Response.Write("<a href=\"" + this.http_start + "adlink/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("添加广告|添加广告|Add operation") + "</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("广告语和地址不能小于2个字符！  ");
        Response.Write("</div>");
    }     else if (this.INFO == "REPEAT")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>请不要发重复内容！</b><br/>");
        Response.Write("</div>");
 
    
    }else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("新增成功！  ");
        if (siteVo.isCheck == 1)
        {
            Response.Write(" 审核后显示！  ");
        } 
        Response.Write("</div>");

    }

    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        //选择栏目
        Response.Write("选择栏目分类:<br/>");
        Response.Write("<form name=\"gt\" action=\"" + http_start + "adlink/admin_WAPadd.aspx\" method=\"post\">");
        Response.Write("<select name=\"toclassid\">");
        Response.Write("<option value=\"" + toclassid + "\">" + toclassid + "</option>");
        for (int i = 0; (classList != null && i < classList.Count); i++)
        {

            Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

        }
        Response.Write("</select><br/>");
        Response.Write(this.GetLang("广告语|*广告语|Title") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"book_title\" value=\"" + book_title + "\"/><br/>");
        Response.Write("(可用图片地址，如:http://abc.com/ad/1.jpg) <br/>");
        Response.Write(this.GetLang("广告地址|广告地址|URL address") + "*:<br/>");
        Response.Write("<input type=\"text\"  name=\"book_content\" value=\"" + book_content + "\" /><br/>");
        Response.Write("(&amp;不用写成&amp;amp; 链接本站地址后面加入可防掉线！)<br/>");
        Response.Write("显示跳转提示:<select name=\"hasmoney\">");
        Response.Write("<option value=\"" + hasmoney + "\">" + hasmoney + "</option>");
        Response.Write("<option value=\"0\">0_否</option>");
        Response.Write("<option value=\"1\">1_是</option>");
        Response.Write("</select><br/>");
        Response.Write(this.GetLang("点击送多少币|点击送多少币|send money") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"sendmoney\" value=\"" + sendmoney + "\"/><br/>");
        Response.Write(this.GetLang("送币相隔时间|送币相隔时间|送币相隔时间") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"book_pub\" value=\"" + book_pub + "\"/><br/>");
        Response.Write("(单位小时,0为不送)<br/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("提 交|提 交|submit") + "\"/></form>");
        Response.Write("</div>");
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "adlink/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


