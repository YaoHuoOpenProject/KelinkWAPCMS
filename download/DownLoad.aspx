<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DownLoad.aspx.cs" Inherits="KeLin.WebSite.download.DownLoad" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
                                                                                                                                                                     
if (ver == "1")
{     
    
}else{ //2.0    

}
//处理是否跳转到web.config中的外站配置地址
if (KL_JUMPURL_download == null) KL_JUMPURL_download = "";
if (KL_JUMPURL_download != "")
{
    try
    {
        string[] jump = KL_JUMPURL_download.Split('|');
        string[] arry = bookVo.book_file.Split('/');
        string needday = arry[2] + arry[3] + arry[4];
        if (WapTool.IsNumeric(needday) == true)
        {
            if (long.Parse(needday) <= long.Parse(jump[0]))
            {
                bookVo.book_file = jump[1] + bookVo.book_file;
            }
        }
    }
    catch (Exception ex)
    {

    }
}


//处理下载内容，你也可以在此修改

//强制判断随机防盗链参数
if (siteVo.SaveUpFilesPath != this.RndPath)
{
    this.ShowTipInfo("防止盗链！", "download/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.book_id);
}
//开启防盗链功能
if (KL_NotDownAndUpload == "1")
{
    //先判断Request.UrlReferrer，手机上可能取不到
    if (KL_DownCheckReferrer == "1")
    {
        //refer 上一次访问的URL地址;
        if (refer.IndexOf(this.http_start.ToLower()) < 0)
        {
            this.ShowTipInfo("防止盗链！", "download/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.book_id);
        }

    }

    if (bookVo==null||bookVo.book_file == "")
    {
        this.ShowTipInfo("文件不存在！", "download/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.book_id);
    }
    //从硬盘里读出来
    if (bookVo.book_file.ToLower().StartsWith("http://"))
    {
        Response.Redirect(bookVo.book_file);
    }
    else
    {
        if (bookVo.book_file.StartsWith("/"))
        {

            this.ResponseFile(RealPath + bookVo.book_file, bookVo.book_ext);
        }
        else
        {
            this.ResponseFile(RealPath + @"download\" + bookVo.book_file, bookVo.book_ext);
        }
    }

}
else
{
//直接跳转
    if (bookVo.book_file.ToLower().StartsWith("http://") || bookVo.book_file.StartsWith("/"))
    {
        Response.Redirect(bookVo.book_file);
    }
    else
    {
        Response.Redirect(this.http_start + "download/" + bookVo.book_file);
    }

}
%>