<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MakeSmallImg.aspx.cs" Inherits="KeLin.WebSite.download.MakeSmallImg" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop("批量执行生成列表显示缩放图", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    strhtml.Append(this.ERROR);
    strhtml.Append("批量执行生成列表显示缩放图:<br/>");

    if (this.INFO == "OK")
    {
        strhtml.Append("执行成功！<br/>");
    }
    else
    {
        if (needMakeImg > 0)
        {


            strhtml.Append("还有:" + needMakeImg + "条记录需要处理(如果一直显示有N条记录，说明有些记录对应的图片不存在了，请将先修复原记录的图片显示)。<br/><br/>");

            strhtml.Append("<anchor><go href=\"" + http_start + "download/makesmallimg.aspx\" method=\"get\" accept-charset=\"utf-8\">");
            strhtml.Append("<postfield name=\"action\" value=\"gomake\" />");
            strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
            strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
            strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
            strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
            strhtml.Append("</go>确定执行</anchor> <br/><br/>");
        }
        else
        {
            strhtml.Append("没有记录需要处理。<br/><br/>");
        }

    }
    strhtml.Append("<a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?sid="+sid+"&amp;siteid="+siteid +"&amp;classid="+classid+"\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">批量执行生成列表显示缩放图</div>");
    //显示搜索
   
    
    strhtml.Append("<div class=\"content\">");
    strhtml.Append(this.ERROR);

    if (this.INFO == "OK")
    {
        strhtml.Append("执行成功！<br/>");
    }
    else
    {
        if (needMakeImg > 0)
        {


            strhtml.Append("还有:" + needMakeImg + "条记录需要处理(如果一直显示有N条记录，说明有些记录对应的图片不存在了，请将先修复原记录的图片显示)。<br/><br/>");


            strhtml.Append("<form id=\"form1\" action=\"" + http_start + "download/makesmallimg.aspx\" method=\"get\">");
            strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" size=\"5\"/><br/>");
            strhtml.Append("<input type=\"submit\" value=\"确定\" />");
            strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomake\" />");
            strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
            strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
            strhtml.Append("</form><br/><br/>");
        }
        else
        {
            strhtml.Append("没有记录需要处理。<br/><br/>");
        }

    }
 
    strhtml.Append("</div>");

    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");

    strhtml.Append("<a href=\"" + this.http_start + "download/admin_userlistWAP.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;classid=" + classid + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
 
    strhtml.Append("</div></div>");

    //输出
    Response.Write(strhtml);
    //Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


