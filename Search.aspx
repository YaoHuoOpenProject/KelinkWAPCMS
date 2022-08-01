<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="KeLin.WebSite.Search" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string key=this.GetRequestValue("key");
string function = this.GetRequestValue("function");
string INFO = "";
wmlVo.timer = "1";

if (function.StartsWith("http://"))
{
    //站外搜索
    wmlVo.strUrl = function + HttpUtility.UrlEncode(key);


}
else
{
    //站内搜索
    if (function.IndexOf("_") > 0)
    {

        string[] arry = function.Split('_');
        string path = arry[0];
        string toclassid = arry[1];
        wmlVo.strUrl = path + "/book_list.aspx?action=search&amp;siteid=" + this.siteid + "&amp;classid=" + toclassid + "&amp;type=title&amp;key=" + HttpUtility.UrlEncode(key);

    }
    else
    {
        INFO = "参数错误！";
        wmlVo.timer = "";
    }


}
StringBuilder strhtml = new StringBuilder();
Response.Write(WapTool.showTop(this.GetLang("搜索中|搜索中|Search doing"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    if (INFO == "")
    {
        strhtml.Append("搜索中，请稍等...");
    }
    else
    {
        strhtml.Append(INFO);
    }
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + classVo.childid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
     
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{


    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("搜索中|搜索中|Search doing") + "</div>");
    strhtml.Append("<div class=\"content\">");
    if (INFO == "")
    {
        strhtml.Append("搜索中，请稍等...");
    }
    else
    {
        strhtml.Append(INFO);
    }
    strhtml.Append("</div>");

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        int s = strhtml_list.IndexOf("<div class=\"subtitle\">");
        strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + classVo.childid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
   
    strhtml.Append("</div></div>");
    
    
    
    
    Response.Write(strhtml);
}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


