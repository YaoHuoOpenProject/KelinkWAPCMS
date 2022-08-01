<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Style_List01_daoru.aspx.cs" Inherits="KeLin.WebSite.WapStyle.Style_List01_daoru" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%


Response.Write(WapTool.showTop(this.GetLang("导入系统CSS样式|导入系统CSS样式|daoru"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "")
    {
        Response.Write("<a href=\"" + http_start + "wapstyle/style_list01_daoru.aspx?action=godaoru&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">" + this.GetLang("确定要导入系统CSS样式吗？是！|確定要导入系统CSS样式嗎？是！|Are you sure? YES") + "</a><br/>");
        

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang("导入成功|导入成功|导入成功") + ":" + this.OKCount + "<br/>" + this.GetLang("已存在|已存在|已存在") + ":" + this.ERRCount + "</b><br/>");
        

    }



    Response.Write("<a href=\"" + http_start + "wapstyle/style_list01.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回上级</a>");

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("导入系统CSS样式|导入系统CSS样式|delete") + "</div>");
    Response.Write(this.ERROR);
    Response.Write("<div class=\"tip\">");
    if (this.INFO == "")
    {
        Response.Write("<a href=\"" + http_start + "wapstyle/style_list01_daoru.aspx?action=godaoru&amp;siteid=" + siteid + "&amp;classid=" + classid + "&amp;id=" + this.id + "" + "\">" + this.GetLang("确定要导入系统CSS样式吗？是！|確定要导入系统CSS样式嗎？是！|Are you sure? YES") + "</a><br/>");


    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>" + this.GetLang("导入成功|导入成功|导入成功") + ":" + this.OKCount + "<br/>" + this.GetLang("已存在|已存在|已存在") + ":" + this.ERRCount + "</b><br/>");


    }

    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + http_start + "wapstyle/style_list01.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回上级</a>");

    Response.Write("</div></div>");
    
    


}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


