<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FriendList_Mod.aspx.cs" Inherits="KeLin.WebSite.bbs.FriendList_Mod" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml = new StringBuilder();
Response.Write(WapTool.showTop(this.GetLang("修改备注|修改备注|delete"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "")
    {
        strhtml.Append("备注:<input type=\"text\" name=\"remark" + r + "\" value=\"" + bookVo.friendusername + "\"/><br/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "bbs/friendlist_Mod.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"gomod\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<postfield name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<postfield name=\"friendtype\" value=\"" + friendtype + "\"/>");
        strhtml.Append("<postfield name=\"remark\" value=\"$(remark" + r + ")\"/>");
        strhtml.Append("<postfield name=\"friendtype\" value=\"" + page + "\"/>");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + backurl + "\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>保存</anchor><br/>");
        
        
    }
    else if (this.INFO == "OK")
    {
        strhtml.Append("<b>" + this.GetLang("修改备注成功！|刪除成功！|Deleted successfully!") + "</b><br/>");
 
    }



    strhtml.Append("<a href=\"" + http_start + "bbs/friendlist.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;friendtype=" + this.friendtype + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;page=" + this.page + "" + "\">返回列表</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("修改备注|修改备注|delete") + "</div>");
    strhtml.Append(this.ERROR);
    strhtml.Append("<div class=\"content\">");
    if (this.INFO == "")
    {
        strhtml.Append("<form name=\"gt\" action=\"" + http_start + "bbs/friendlist_Mod.aspx\" method=\"post\">");
        strhtml.Append("备注：<br/><input type=\"text\" class=\"txt\" name=\"remark\" value=\"" + bookVo.friendusername + "\"/><br/>");
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"backurl\" value=\"" + backurl + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"friendtype\" value=\"" + friendtype + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"submit\" class=\"btn\" name=\"bt\" value=\" 保 存 \"/>");
        strhtml.Append("</form>");
        
        
        
    }
    else if (this.INFO == "OK")
    {
        strhtml.Append("<b>" + this.GetLang("修改备注成功！|刪除成功！|Deleted successfully!") + "</b><br/>");

    }

    strhtml.Append("</div>");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + http_start + "bbs/friendlist.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;friendtype=" + this.friendtype + "&amp;backurl=" + HttpUtility.UrlEncode(backurl) + "&amp;page=" + this.page + "" + "\">返回列表</a>");
    //strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</div></div>");
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
    Response.Write(strhtml);
    


}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


