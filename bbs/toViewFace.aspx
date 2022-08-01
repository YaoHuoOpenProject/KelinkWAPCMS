<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toViewFace.aspx.cs" Inherits="KeLin.WebSite.bbs.toViewFace" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("查看表情|查看表情|face view"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    
    Response.Write("系列"+facetype+"："+facesmall+"-"+facebig+"<br/>");
    Response.Write("当前："+num+".gif<br/>");
    Response.Write("<img src=\"" + http_start + "bbs/face/" + num + ".gif\" alt=\"" + num + ".gif\"/><br/><br/>");
    Response.Write("<a href=\""+http_start+"bbs/toViewFace.aspx?num="+facesmall+"&amp;siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;facetype="+facetype+"&amp;facebig="+facebig+"&amp;facesmall="+facesmall+"&amp;sid="+this.sid+"\">首张</a> "); 
    
    if( int.Parse(num) > int.Parse(facesmall) &&  int.Parse(num) <  int.Parse(facebig) ){
    Response.Write("<a href=\""+http_start+"bbs/toViewFace.aspx?num="+(int.Parse(num)-1)+"&amp;siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;facetype="+facetype+"&amp;facebig="+facebig+"&amp;facesmall="+facesmall+"&amp;sid="+this.sid+"\">上一张</a> ");
    }
    
    if(int.Parse(num) <int.Parse(facebig)){
    Response.Write("<a href=\""+this.http_start+"bbs/toViewFace.aspx?num="+(int.Parse(num)+1)+"&amp;siteid="+this.siteid+"&amp;classid="+this.classid+"&amp;facetype="+facetype+"&amp;facebig="+facebig+"&amp;facesmall="+facesmall+"&amp;sid="+this.sid+"\">下一张</a> ");
    }
    Response.Write("<a href=\"" + this.http_start + "bbs/toViewFace.aspx?num=" + facebig + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;facetype=" + facetype + "&amp;facebig=" + facebig + "&amp;facesmall=" + facesmall + "\">底张</a> ");

    Response.Write("<br/><br/><a href=\"" + this.http_start + "bbs/toBbsFace.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回上级</a>");
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("查看表情|查看表情|face view") + "</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("系列" + facetype + "：" + facesmall + "-" + facebig + "<br/>");
    Response.Write("当前：" + num + ".gif<br/>");
    Response.Write("<img src=\"" + http_start + "bbs/face/" + num + ".gif\" alt=\"" + num + ".gif\"/><br/><br/>");
    Response.Write("<a href=\"" + http_start + "bbs/toViewFace.aspx?num=" + facesmall + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;facetype=" + facetype + "&amp;facebig=" + facebig + "&amp;facesmall=" + facesmall + "\">首张</a> ");

    if (int.Parse(num) > int.Parse(facesmall) && int.Parse(num) < int.Parse(facebig))
    {
        Response.Write("<a href=\"" + http_start + "bbs/toViewFace.aspx?num=" + (int.Parse(num) - 1) + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;facetype=" + facetype + "&amp;facebig=" + facebig + "&amp;facesmall=" + facesmall + "\">上一张</a> ");
    }

    if (int.Parse(num) < int.Parse(facebig))
    {
        Response.Write("<a href=\"" + this.http_start + "bbs/toViewFace.aspx?num=" + (int.Parse(num) + 1) + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;facetype=" + facetype + "&amp;facebig=" + facebig + "&amp;facesmall=" + facesmall + "\">下一张</a> ");
    }
    Response.Write("<a href=\"" + this.http_start + "bbs/toViewFace.aspx?num=" + facebig + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;facetype=" + facetype + "&amp;facebig=" + facebig + "&amp;facesmall=" + facesmall + "\">底张</a> ");

    Response.Write("<br/><br/><a href=\"" + this.http_start + "bbs/toBbsFace.aspx?siteid=" + siteid + "&amp;classid=" + classid + "" + "\">返回上级</a>");

    Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


