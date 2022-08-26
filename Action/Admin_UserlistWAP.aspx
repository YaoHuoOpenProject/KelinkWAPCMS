<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_userlistWAP.aspx.cs" Inherits="KeLin.WebSite.action.admin_userlistWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("任务内容|任务內容|Content of the action"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"left\">");
    if (this.INFO == "OK")
    {
        strhtml.Append("导入成功:" + Insert_ok_num + "个，已存在:" + Insert_exist_num + "！");
        strhtml.Append("<br/>----------<br/>");
    }

    strhtml.Append("<a href=\"" + this.http_start + "action/admin_userlistWAP.aspx?action=daoru&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">导入系统任务(共" + NUM + "个)</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "admin/sitesetdefault.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">参数配制[36,37,38]</a><br/>");
    strhtml.Append("已配置：完成" + WapTool.getArryString(siteVo.Version, '|', 36) + "个任务，送币" + WapTool.getArryString(siteVo.Version, '|', 37) + "；送经验:" + WapTool.getArryString(siteVo.Version, '|', 38) + "<br/>");
    
    strhtml.Append("<a href=\"" + this.http_start + "action/admin_WAPadvertise.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">插入广告</a><br/>");

   
  
    strhtml.Append("关键字：<input type=\"text\" name=\"key"+r+"\" value=\"" + key + "\" size=\"5\"/>");
    strhtml.Append("<anchor><go href=\"" + http_start + "action/admin_userlistWAP.aspx\" method=\"get\" accept-charset=\"utf-8\">");
    strhtml.Append("<postfield name=\"action\" value=\"class\" />");
    strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"" + classid + "\" />");
    strhtml.Append("<postfield name=\"key\" value=\"$(key" + r + ")\" />");
    strhtml.Append("<postfield name=\"classid\" value=\"$(classid" + r + ")\" />");
    strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</go>" + this.GetLang("搜索|搜索|Search") + "</anchor> ");
    

    strhtml.Append("<br/>");
    
    
    //显示列表
    strhtml.Append(linkTOP);
    string YesOrNo = "";
    string CheckStr = "";
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;


        strhtml.Append(index + "." + "[<a href=\"" + this.http_start + "action/admin_WAPdel.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">删</a>][<a href=\"" + this.http_start + "action/admin_WAPmodify.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + classid + "&amp;page=" + this.CurrentPage + "\">修</a>]" + listVo[i].actionName + "机率" + listVo[i].per + "% 完成量" + listVo[i].num + ".<a href=\"" + listVo[i].actionPath + "\">检查链接</a><br/>");
        
        
    }
    if (listVo == null)
    {
        strhtml.Append("暂无记录！<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);

    strhtml.Append("【<a href=\"" + this.http_start + "action/admin_WAPdelall.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">清空所有</a>】<br/>");
    strhtml.Append("----------<br/>注意：导入系统任务后，每条记录需要修改链接地址，否则用户点击会报错。另外如本系统无此任务功能请删除！显示会员任务UBB：［myaction］<br/>---------<br/>");
    
    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid="+sid+"&amp;siteid="+siteid +"&amp;gopathname="+HttpUtility.UrlEncode("任务类")+"&amp;gopath=action/index.aspx\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{



    strhtml.Append("<div class=\"subtitle\">" + classVo.classname + "</div>");
    //显示搜索
    if (this.INFO == "OK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("导入成功:" + Insert_ok_num + "个，已存在:" + Insert_exist_num + "！");
        strhtml.Append("</div>");
    }

    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<a href=\"" + this.http_start + "action/admin_userlistWAP.aspx?action=daoru&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">导入系统任务(共"+NUM+"个)</a><br/>");

    strhtml.Append("<a href=\"" + this.http_start + "admin/sitesetdefault.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">参数配制[36,37,38]</a><br/>");
    strhtml.Append("已配置:完成" + WapTool.getArryString(siteVo.Version, '|', 36) + "个任务，送币" + WapTool.getArryString(siteVo.Version, '|', 37) + "；送经验:" + WapTool.getArryString(siteVo.Version, '|', 38) + "<br/>");
    
    strhtml.Append("<a href=\"" + this.http_start + "action/admin_WAPadvertise.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">插入广告</a><br/>");


    strhtml.Append("<form id=\"form1\" action=\"" + http_start + "action/admin_userlistWAP.aspx\" method=\"get\">");
    strhtml.Append("关键字：<input type=\"text\" name=\"key\" value=\"" + key + "\" size=\"5\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\" size=\"5\"/>");
    strhtml.Append("<input type=\"submit\" value=\"搜索\" />");
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"class\" />");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\" />");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\" />");
    strhtml.Append("</form>");
    

    strhtml.Append("</div>");

    //显示列表
    strhtml.Append(linkTOP);
    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {
        index = index + kk;

        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }



        strhtml.Append(index + "." + "[<a href=\"" + this.http_start + "action/admin_WAPdel.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">删</a>][<a href=\"" + this.http_start + "action/admin_WAPmodify.aspx?action=go&amp;id=" + listVo[i].id + "&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">修</a>]" + listVo[i].actionName + ".机率"+listVo[i].per+"% .完成量" + listVo[i].num + ".<a href=\""+listVo[i].actionPath+"\">检查链接</a>");
        
        strhtml.Append("</div>");
    }

    if (listVo==null)
    {
        strhtml.Append("<div class=\"tip\">暂无记录！</div>");
    }
    
    //显示导航分页
    strhtml.Append( linkURL );

    strhtml.Append("<div class=\"content\">【<a href=\"" + this.http_start + "action/admin_WAPdelall.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.CurrentPage + "\">清空所有</a>】</div>");


    strhtml.Append("<div class=\"tip\">注意：导入系统任务后，每条记录需要修改链接地址，否则用户点击会报错。另外如本系统无此任务功能请删除！显示会员任务UBB：［myaction］</div>");
    
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");

    strhtml.Append("<a href=\"" + this.http_start + "admin/admin_wapClasslist.aspx?sid=" + sid + "&amp;siteid=" + siteid + "&amp;gopathname=" + HttpUtility.UrlEncode("任务类") + "&amp;gopath=action/index.aspx\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           




}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


