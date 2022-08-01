<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Book_Re_addfile.aspx.cs" Inherits="KeLin.WebSite.bbs.Book_Re_addfile" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("文件回复贴|文件回复贴|add subject"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);

    Response.Write("<a href=\"" + this.http_start + "bbs/book_re_addfile.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage=" + this.lpage + "&amp;id="+this.id+"&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面文件回复贴|进入WAP2.0界面文件回复贴|wap2.0 add upfile") + "</a><br/>");


    Response.Write("<a href=\"" + this.http_start + "bbs/book_view_ubb.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/book_re_addfile.aspx?siteid=" + this.siteid + "&classid=" + this.classid+"&id="+this.id) + "\">" + this.GetLang("查看UBB方法|查看UBB方法|view UBB fuction") + "</a><br/><br/>");

    Response.Write("<a href=\"" + this.http_start + "bbs/book_view.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;lpage="+this.lpage+"&amp;id="+this.id+"\">" + this.GetLang("返回主题|返回主题|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{
    if (num > 20) num = 20;

    Response.Write("<div class=\"subtitle\">文件回复</div>");
    Response.Write(this.ERROR);
    Response.Write("<div class=\"tip\">");
    if (this.INFO == "OK")
    {

        Response.Write("<b>回复成功！</b> ");
        if (siteVo.isCheck == 1)
        {
            Response.Write("<b>审核后显示！</b> ");
        }
        Response.Write("获得" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + ":" + getmoney + "，获得经验:" + getexpr + "<br/> ");
        Response.Write("<a href=\"" + this.http_start + "bbs/book_view.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "&amp;lpage="+this.lpage+"" + "\">返回主题</a><br/>");
    }
    else if (this.INFO == "EXTERR")
    {
        Response.Write("<b>上传文件格式错误，只允许上传："+siteVo.UpFileType+"</b><br/>");

    }
    else if (this.INFO == "NOTSPACE")
    {
        Response.Write("<b>网站总空间已经大于系统分配给此网站的最大空间了，网站空间：" + siteVo.sitespace  + "M；此网站已使用：" + (siteVo.myspace) + "KB</b><br/>");

    }
    else if (this.INFO == "MAXFILE")
    {
        Response.Write("<b>你上传的单个文件总大小超出了最大限制" + siteVo.MaxFileSize + "KB</b><br/>");

    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>内容不能小于" + contentmax + "个字符！</b><br/>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        Response.Write("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        Response.Write("<b>请不要发重复内容！</b><br/>");
    }
    else if (this.INFO == "ERROR_Secret")
    {

        Response.Write("<div class=\"tip\"><b>暗号错误，如果忘记联系站长索取！</b><br/></div>");
    }
    else if (this.INFO == "MAX")
    {

        Response.Write("<b>今天你已超过回贴限制：" + this.KL_CheckBBSreCount + " 个贴子了，请明天再来！</b><br/>");
    }
    else if (this.INFO == "LOCK")
    {

        Response.Write("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
    }
    else if (this.INFO == "NOMONEY")
    {

        Response.Write("<b>你当前的只有:" + userVo.money + "个，发贴需要扣掉：" + getmoney2 + "个</b><br/>");
    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    if (this.INFO != "OK")
    {
        //选多少个

        Response.Write("<form name=\"g1\" action=\"" + http_start + "bbs/book_re_addfile.aspx\" method=\"get\">");
        Response.Write(this.GetLang("上传数量|上传数量|Upload Number") + " <input type=\"text\" name=\"num\" value=\"" + this.num + "\" size=\"2\"/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"class\"/>");
        Response.Write("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\"  name=\"lpage\" value=\"" + lpage + "\"/>");
        Response.Write("<input type=\"hidden\"  name=\"id\" value=\"" + id + "\"/>");       
        Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write(" <input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定|确定|GO") + "\"/></form>");

        Response.Write("<br/>");
        
        //显示表情
        Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/book_re_addfile.aspx\" enctype=\"multipart/form-data\" method=\"post\">");
        Response.Write("<select name=\"face\">");
        Response.Write("<option value=\"\">表情</option>");
        for (int i = 0; (facelist != null && i < this.facelist.Length); i++)
        {
            Response.Write("<option value=\"" + this.facelistImg[i] + "\">" + this.facelist[i] + "</option>");
        }
        Response.Write("</select>");
        


        Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
        Response.Write("<textarea name=\"book_content\" rows=\"3\" class=\"KL_bbs_textarea\" style=\"width:100%\">" + book_content + "</textarea><br/>");
     
      
        for (int i = 0; i < this.num; i++)
        {
            Response.Write("----- 上传文件" + (i + 1) + " -------<br/>");
            Response.Write("<input type=\"file\" name=\"book_file\" value=\"\"/><br/>");
            Response.Write(this.GetLang("说明|说明|Source") + ":<br/>");
            Response.Write("<textarea name=\"book_file_info\" rows=\"3\" style=\"width:100%\"></textarea><br/>");
            if (i == (this.num - 1))
            {
                Response.Write(this.GetLang("如果有图片文件进行缩放|ss|ss:") + "<br/>"); ;
                Response.Write(this.GetLang("图宽|图宽|Width") + ":<input type=\"text\" name=\"book_width\" size=\"5\" value=\"\"/>px ");
                Response.Write(this.GetLang("高|高|Height") + ":<input type=\"text\" name=\"book_height\" size=\"5\" value=\"\"/>px<br/>");
                Response.Write("(不缩放,请留空，建议只输入一个图宽或高来保持不变形。)<br/>");
            }
        }
        //Response.Write("<anchor><go href=\"" + http_start + "bbs/book_view_add.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        if (this.isNeedSecret == true)
        {
            Response.Write("本版暗号*:<input type=\"text\" name=\"secret\" value=\"\" size=\"10\" /><br/>");

        }
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"lpage\" value=\"" + lpage + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<input type=\"hidden\"  name=\"num\" value=\"" + num + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("回复贴子|回复贴子|submit new back") + "\"/>");
        Response.Write("</form>");
    }
    Response.Write("</div>");


    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "bbs/book_view_ubb.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;backurl=" + HttpUtility.UrlEncode("bbs/book_re_addfile.aspx?siteid=" + this.siteid + "&classid=" + this.classid+"&id="+this.id) + "\">" + this.GetLang("查看UBB方法|查看UBB方法|view UBB fuction") + "</a> ");
 
    Response.Write("<a href=\"" + this.http_start + "bbs/book_view.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;lpage="+this.lpage+"\">" + this.GetLang("返回主题|返回主题|Back to main") + "</a> ");

    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回首页|返回首页|Back to index") + "</a> ");

    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


