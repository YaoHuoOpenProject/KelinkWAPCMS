<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toDefineBBS.aspx.cs" Inherits="KeLin.WebSite.bbs.toDefineBBS" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("列表设置|列表設置|list set"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        strhtml.Append("</b><br/>");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang(this.INFO));
        strhtml.Append("</b><br/>");

    }

    strhtml.Append(this.GetLang("列表数|列表数|List number") + ":<br/>");
    strhtml.Append("<input type=\"text\" name=\"ismodel" + r + "\" value=\"" + classVo.ismodel + "\"/><br/>");
   
    
    strhtml.Append("<anchor><go href=\""+http_start+"bbs/toDefineBBS.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");    
    strhtml.Append("<postfield name=\"classid\" value=\""+classid+"\"/>");
    strhtml.Append("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    strhtml.Append("<postfield name=\"page\" value=\""+page+"\"/>");
    strhtml.Append("<postfield name=\"ismodel\" value=\"$(ismodel" + r + ")\"/>");  
    strhtml.Append("<postfield name=\"sid\" value=\""+sid+"\"/>");
    strhtml.Append("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor><br/><br/>");

    strhtml.Append(this.GetLang("说明：默认为10|說明：默認爲10|Note: The default is 10") + "<br/>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("更新操作|更新操作|Update operation") + "</div>");
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        strhtml.Append("</b> ");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang(this.INFO));
        strhtml.Append("</b>");

    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<form name=\"go\" action=\"" + this.http_start + "bbs/toDefineBBS.aspx\" method=\"post\">");
    strhtml.Append(this.GetLang("列表数|列表数|List number") + ":<br/>");
    strhtml.Append("<input type=\"text\" name=\"ismodel\" value=\"" + classVo.ismodel + "\"/><br/>");    
    
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");    
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("保 存|保 存|Update") + "\"/>");

    strhtml.Append("</form></div>");
    strhtml.Append("<div class=\"subtitle\">"+this.GetLang("说明：默认为10|說明：默認爲10|Note: The default is 10")+"</div>");
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/showadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    strhtml.Append("</div></div>");
    Response.Write(strhtml);
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


