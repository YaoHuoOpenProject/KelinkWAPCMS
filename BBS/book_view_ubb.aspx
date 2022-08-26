<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="book_view_ubb.aspx.cs" Inherits="KeLin.WebSite.bbs.book_view_ubb" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
                                                                                                                                                                    
StringBuilder strhtml=new StringBuilder();                                                                                                                                                                         
Response.Write(WapTool.showTop(this.GetLang("UBB使用方法|UBB使用方法|bank list"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "&amp;sid=" + sid + "\">[返回源来页]</a><br/>");
    strhtml.Append("提示：测试UBB请到<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid="+this.userid+"\">我的空间</a>留言板进行测试，发帖测试UBB会被删。<br/>----------<br/>");
    strhtml.Append("空格：[tab]<br/>");
    strhtml.Append("换行：[br]<br/>");
    strhtml.Append("加粗：[b]内容[/b]<br/>");
    strhtml.Append("斜体：[i]要斜体字符[/i]<br/>");
    strhtml.Append("字体颜色：<br/>[forecolor=#FF0000]输入文字[/forecolor]<br/>");
    strhtml.Append("删除线：<br/>[strike]输入文字[/strike]<br/>");
    strhtml.Append("防串号链接：<br/>[url=/link/g.aspx?siteid=[siteid]&url=URL地址]说明[/url]<br/>");
    strhtml.Append("链接地址：[url]网址[/url]<br/>");
    strhtml.Append("例：[url]http://yaohuo.me[/url]<br/>");
    strhtml.Append("图片链接：<br/>[img]图片地址[/img]<br/>");
    strhtml.Append("直接拨号：<br/>[call]手机号码[/call] 或：[call=号码]说明[/call]<br/>");
    strhtml.Append("发短信到手机:<br/>[url=sms:手机号码?body=短信内容]点击此发送[/url]<br/>");
    strhtml.Append("当前系统日期和时间：[now]<br/>");
    strhtml.Append("倒计天数：<br/>[codo]2012-12-21[/codo]<br/>");
    strhtml.Append("天气预报：<br/>[tq=X]默认地区的区号[/tq]<br/>");
    strhtml.Append("音频播放：<br/>[audio=X]音频地址[/audio]<br/>");
    strhtml.Append("自定义分页：[next]<br/>");
    strhtml.Append("----------<br/>");
    
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "\">返回源来页</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(strhtml);
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"title\">" + this.GetLang("UBB使用方法|UBB使用方法|bank list") + "</div>");

    strhtml.Append("<div class=\"subtitle\">");    
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "&amp;sid=" + sid + "\">[返回源来页]</a>");    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("提示：测试 UBB 请到<a href=\"" + this.http_start + "bbs/userinfo.aspx?siteid=" + this.siteid + "&amp;touserid="+this.userid+"\">我的空间</a>留言板进行测试，发帖测试 UBB 会被删除。<br/><br/><br/>");
    strhtml.Append("超链接：[url]网址[/url]<br/><br/>");
    strhtml.Append("例：[url]https://yaohuo.me[/url]<br/><br/><br/>");
    strhtml.Append("文字超链接：[url=网址]文字说明[/url]<br/><br/>");
    strhtml.Append("例：[url=https://yaohuo.me]妖火网[/url]<br/><br/><br/>");
    strhtml.Append("换行：///<br/><br/>");
    strhtml.Append("分割线：[hr]<br/><br/>");
    strhtml.Append("加粗：[b]文字[/b]<br/><br/>");
    strhtml.Append("斜体：[i]文字[/i]<br/><br/>下划线：[u]文字[/u]<br/><br/>");
    strhtml.Append("字体颜色：<br/>[forecolor=#FF0000]文字[/forecolor]<br/><br/>");
    strhtml.Append("插入图片：<br/>[img]图片链接[/img]<br/><br/>");
    strhtml.Append("删除线：<br/>[strike]文字[/strike]<br/><br/>");
    strhtml.Append("直接拨号：<br/>[call]手机号码[/call]<br/><br/>");
    strhtml.Append("发短信到手机:<br/>[url=sms:手机号码?body=短信内容]点此发送[/url]<br/><br/>");
    strhtml.Append("当前系统日期和时间：[now]<br/><br/>");
    strhtml.Append("倒计天数：<br/>[codo]2020-12-12[/codo]<br/><br/>");
    //strhtml.Append("天气预报：<br/>[tq=X]地区区号[/tq]<br/><br/>");
    strhtml.Append("音频播放：<br/>[audio=X]音频直链地址[/audio]<br/><br/>");
    strhtml.Append("视频播放：<br/>[movie=100%*100%]视频直链地址|封面图片地址[/movie]<br/><br/>");
    //strhtml.Append("----------<br/>");
    strhtml.Append("</div>");
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码    
    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml.ToString()), wmlVo));
        Response.End();
    }
    strhtml.Append("<div class=\"btbox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + (backurl) + "\">返回源来页</a>");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0&amp;sid=" + sid + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</div></div>");


    Response.Write(strhtml);



}
                                                                                                                                                                               
strhtml.Append(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


