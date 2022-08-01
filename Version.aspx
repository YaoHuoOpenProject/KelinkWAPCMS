<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Version.aspx.cs" Inherits="KeLin.WebSite.Version" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
updateTime=KL_Version;
string pageVersion = "10.2014.12.18";

if (latest != "0")
{
    if (long.Parse(latest.Replace(".", "")) > long.Parse(updateTime.Replace(".", "")))
    {
        needUpdate = true;
    }

}
else
{
    latest = "读取失败";

}

Response.Write(WapTool.showTop(this.GetLang("版本信息|版本信息|Version Info"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    if (classid == "0")
    {
        //Response.Write("当前页面版本号:<b>" + pageVersion + "</b><br />");
        Response.Write("当前版本号:<b>" + this.updateTime + "</b><br />");
        Response.Write("最新版本号:<b>" + this.latest + "</b><br />");
        
        if (needUpdate == true)
        {
            Response.Write("需要升级，");
        }
        else
        {
            Response.Write("暂无更新，");
        }
        Response.Write("<a href=\"http://www.kelink.com/download/update.asp\">查看官方升级</a><br/>");
        Response.Write(WapTool.ToWML(KL_Site_INFO,wmlVo)+"<br/>");
        Response.Write("----------<br/>");
        Response.Write(info);
        Response.Write("----------<br/>");
    }
    Response.Write(".NET Framework版本:" + Environment.Version + "<br/>");
    Response.Write("服务器IP:" + Request.ServerVariables["LOCAL_ADDR"] + "<br/>");
    Response.Write("IP 地址:" + Request.ServerVariables["REMOTE_ADDR"] + "<br/>");
    Response.Write("手机号码:" + Request.ServerVariables["HTTP_X-UP-CALLING-LINE-ID"] + "<br/>");
    Response.Write("手机型号:" + Request.ServerVariables["HTTP_USER_AGENT"] + "<br/>");
    Response.Write("手机信息:" + this.ToHtm(Request.ServerVariables["ALL_HTTP"]).Replace("[br]", "<br/>") + "<br/>");
    if (classid == "0")
    {
        Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    }
    else
    {
        Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + classVo.childid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    }
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{



    Response.Write("<div class=\"subtitle\">" + this.GetLang("版本信息|版本信息|Version Info") + "</div>");
    Response.Write("<div class=\"content\">");
    if (classid == "0")
    {
        //Response.Write("当前页面版本号:<b>" + pageVersion + "</b><br />");
        Response.Write("当前版本号:<b>" + this.updateTime + "</b><br />");
        Response.Write("最新版本号:<b>" + this.latest + "</b><br />");
        if (needUpdate == true)
        {
            Response.Write("需要升级，");
        }
        else
        {
            Response.Write("暂无更新，");
        }
        Response.Write("<a href=\"http://www.kelink.com/download/update.asp\">查看官方升级</a><br/>");
        Response.Write(WapTool.ToWML(KL_Site_INFO, wmlVo) + "<br/>");
        Response.Write("<hr/>");
        Response.Write(info);
        Response.Write("<hr/>");
    }
    Response.Write(".NET Framework版本:" + Environment.Version+"<br/>");
    Response.Write("服务器IP:" + Request.ServerVariables["LOCAL_ADDR"] + "<br/>");
    Response.Write("IP 地址:" + Request.ServerVariables["REMOTE_ADDR"] + "<br/>");
    Response.Write("手机号码:" + Request.ServerVariables["HTTP_X-UP-CALLING-LINE-ID"] + "<br/>");
    Response.Write("手机型号:" + Request.ServerVariables["HTTP_USER_AGENT"] + "<br/>");
    Response.Write("手机信息:" + this.ToHtm(Request.ServerVariables["ALL_HTTP"]).Replace("[br]","<br/>") + "<br/>");
    if (classid == "0")
    {
        Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml00.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    }
    else
    {
        Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "&amp;classid=" + classVo.childid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    }
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div>");
    

}
  
  //test
                                                                                                                                                                          
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


