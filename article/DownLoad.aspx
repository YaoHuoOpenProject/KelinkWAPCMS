<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DownLoad.aspx.cs" Inherits="KeLin.WebSite.article.DownLoad" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
                                                                                                                                                                     
if (ver == "1")
{
  
    
    
}else{ //2.0


    

}


//处理下载内容，你也可以在此修改

//强制判断随机防盗链参数
if (siteVo.SaveUpFilesPath != this.RndPath)
{
    this.ShowTipInfo("防止盗链！", "article/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.book_id);
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
            this.ShowTipInfo("防止盗链！", "article/book_view.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.book_id);
        }

    }
    
    
    //从硬盘里读出来
    if (bookVo.book_file.Substring(0, 5).ToLower() == "http:")
    {
        Response.Redirect(bookVo.book_file);
    }
    else
    {
        this.ResponseFile(RealPath+@"article\"+bookVo.book_file, bookVo.book_ext);
    }

}
else
{
//直接跳转
    Response.Redirect(this.http_start + "article/" + bookVo.book_file);

}
%>