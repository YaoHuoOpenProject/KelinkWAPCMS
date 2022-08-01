<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd.aspx.cs" Inherits="KeLin.WebSite.wabao.admin_WAPadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop(opera+"挖宝信息", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write("请切换到WAP2.0界面添加。");
    
    Response.Write("<a href=\"" + this.http_start + "wabao/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"title\">" + opera + "挖宝信息</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("标题和介绍不能小于2个字符！  ");
        Response.Write("</div>");
    }
    else if (this.INFO == "REPEAT")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>请不要发重复内容！</b><br/>");
        Response.Write("</div>");
    }
    else if (this.INFO == "NULLCONTENT")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>送礼内容不能为空，多个用|隔开！</b><br/>");
        Response.Write("</div>");
    }
 
    
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write(this.opera+ "挖宝信息成功！  ");
        if (siteVo.isCheck == 1)
        {
            Response.Write(" 审核后显示！  ");
        }
        Response.Write("</div>");

    }

    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        //选择栏目
        Response.Write("选择分类:<br/>");
        Response.Write("<form name=\"gt\" action=\"" + http_start + "wabao/admin_WAPadd.aspx\" method=\"post\">");
        Response.Write("<select name=\"toclassid\">");

        if (bookVo.book_classid != 0)
        {
            Response.Write("<option value=\"" + bookVo.book_classid + "\">" + bookVo.book_classid + "</option>");

        }
        else
        {
            Response.Write("<option value=\"" + this.classid + "\">" + this.classid + "</option>");

        }
        for (int i = 0; (classList != null && i < classList.Count); i++)
        {

            Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

        }
        Response.Write("</select><br/>");
        Response.Write(this.GetLang("标题|標題|Title") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"book_title\" value=\"" + bookVo.book_title + "\"/><br/>");
        Response.Write(this.GetLang("介绍|介绍|Content") + "*:<br/>");
        Response.Write("<textarea name=\"book_content\" rows=\"5\" style=\"width:100%\">" + bookVo.book_content + "</textarea><br/>");

        Response.Write("难度(0-5，0为进去就能得到)<br/>");
        Response.Write("<input type=\"text\" name=\"rand\" value=\"" + bookVo.rand + "\"/><br/>");

        Response.Write("挖宝需要币<br/>");
        Response.Write("<input type=\"text\" name=\"needMoney\" value=\"" + bookVo.needMoney + "\"/><br/>");

        Response.Write("挖宝需要经验<br/>");
        Response.Write("<input type=\"text\" name=\"needExp\" value=\"" + bookVo.needExp + "\"/><br/>");
        Response.Write("只允许会员身份ID(多个用|区分，<a href=\"" + this.http_start + "bbs/toGroupInfo.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("wabao/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid) + "\">查看</a>)<br/>");
        Response.Write("<input type=\"text\" name=\"needCardID\" value=\"" + bookVo.needCardID + "\"/><br/>");
        Response.Write("挖宝扣币<br/>");
        Response.Write("<input type=\"text\" name=\"subMoney\" value=\"" + bookVo.subMoney + "\"/><br/>");
        Response.Write("挖宝送币<br/>");
        Response.Write("<input type=\"text\" name=\"addMoney\" value=\"" + bookVo.addMoney + "\"/><br/>");
        Response.Write("挖宝送经验<br/>");
        Response.Write("<input type=\"text\" name=\"addExp\" value=\"" + bookVo.addExp + "\"/><br/>");

        Response.Write("送礼方式:<br/>");
        Response.Write("<select name=\"sendtypes\">");
        Response.Write("<option value=\"" + bookVo.sendtypes + "\">" + bookVo.sendtypes + "</option>");
        Response.Write("<option value=\"0\">0_在线时间内只送一次</option>");
        Response.Write("<option value=\"1\">1_一天只送一次</option>");
        Response.Write("<option value=\"2\">2_总的只送一次</option>");
        Response.Write("</select><br/>");
        
        Response.Write("开始时间(0-24小时)：<br/>");
        Response.Write("<input type=\"text\" name=\"startTime\" value=\"" + bookVo.startTime + "\"/><br/>");

        Response.Write("结束时间(0-24小时)：<br/>");
        Response.Write("<input type=\"text\" name=\"endTime\" value=\"" + bookVo.endTime + "\"/><br/>");
        

        if (this.id == "")
        {
            Response.Write("礼品内容，多个用 | 区别*:<br/>");
            Response.Write("<textarea name=\"sendContent\" rows=\"5\" style=\"width:100%\">" + sendContent + "</textarea><br/>");
        }
       
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");       
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("发 布|发 布|submit") + "\"/></form>");
        Response.Write("<br/>会员挖到后将礼品内容发到站内邮箱。");
        Response.Write("</div>");
    }
    
    Response.Write("<div class=\"mylink\">");
    Response.Write("<a href=\"" + this.http_start + "wabao/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


