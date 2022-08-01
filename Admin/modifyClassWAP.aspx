<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="modifyClassWAP.aspx.cs" Inherits="KeLin.WebSite.admin.modifyClassWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("修改栏目|修改栏目|modify class"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p align=\"left\">");
    if (this.INFO == "NULL")
    {
        Response.Write("<b>*号项不能为空！</b><br/>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>修改成功！</b><br/>");
    }

    if (this.INFO != "OK")
    {
        Response.Write("*栏目ID:<b>" + classVo.classid + "</b><br/>");
        Response.Write("*栏目名称:<br/><input type=\"text\" name=\"classname" + this.r + "\" value=\"" + classVo.classname + "\"/><br/>");

        Response.Write("*指向模块:<br/><select name=\"typeid" + this.r + "\" value=\"" + classVo.typeid + "\">");
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            if (GetShowMySystype(listVo[i].typeid.ToString()) == true)
            {
                Response.Write("<option value=\"" + listVo[i].typeid + "\">" + listVo[i].typename + "</option>");
            }
        }
        Response.Write("</select><br/>");

        Response.Write("*行数:<input type=\"text\" name=\"ismodel" + this.r + "\" value=\"" + classVo.ismodel + "\" size=\"5\"/><br/>");
        Response.Write("(如文章列表中显示多少行)  <br/>");
        Response.Write("管理员(版主):<br/><input type=\"text\" name=\"adminusername" + this.r + "\" value=\"" + classVo.adminusername + "\"/><br/>");
        Response.Write("(填用户ID,有多个用 | 区分) <br/>");
        Response.Write("栏目排序号:<input type=\"text\" name=\"rank" + this.r + "\" value=\"" + classVo.rank + "\" size=\"5\"/><br/>");
        Response.Write("(您可以改成从1开始或不填)  <br/>");
        Response.Write("允许币数:<input type=\"text\" name=\"needMoney" + this.r + "\" value=\"" + classVo.needMoney + "\" size=\"5\"/><br/>");
        Response.Write("消费币数:<input type=\"text\" name=\"subMoney" + this.r + "\" value=\"" + classVo.subMoney + "\" size=\"5\"/><br/>");
        Response.Write("允许会员:<br/><input type=\"text\" name=\"allowUser" + this.r + "\" value=\"" + classVo.allowUser + "\"/><br/>");
        Response.Write("(填<a href=\"" + this.http_start + "bbs/smalltypelist.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("admin/modifyclasswap.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid) + "\">会员身份ID</a>，多个用|区分)<br/>");
        Response.Write("需要密码:<br/><input type=\"text\" name=\"password" + this.r + "\" value=\"" + classVo.password + "\"/><br/>");


     
        Response.Write("*是否隐藏栏目:<br/>");
        Response.Write("<select name=\"ishidden" + this.r + "\" value=\"" + this.ishidden + "\">");
        Response.Write("<option value=\"0\">否</option>");
        Response.Write("<option value=\"1\">是</option>");
        Response.Write("</select><br/>");

        Response.Write("<anchor><go href=\"" + http_start + "admin/modifyclasswap.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
        Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<postfield name=\"classname\" value=\"$(classname" + r + ")\"/>");
        Response.Write("<postfield name=\"typeid\" value=\"$(typeid" + r + ")\"/>");
        Response.Write("<postfield name=\"ismodel\" value=\"$(ismodel" + r + ")\"/>");
        Response.Write("<postfield name=\"adminusername\" value=\"$(adminusername" + r + ")\"/>");
        Response.Write("<postfield name=\"rank\" value=\"$(rank" + r + ")\"/>");
        Response.Write("<postfield name=\"needMoney\" value=\"$(needMoney" + r + ")\"/>");
        Response.Write("<postfield name=\"subMoney\" value=\"$(subMoney" + r + ")\"/>");
        Response.Write("<postfield name=\"allowUser\" value=\"$(allowUser" + r + ")\"/>");
        Response.Write("<postfield name=\"password\" value=\"$(password" + r + ")\"/>");
        Response.Write("<postfield name=\"ishidden\" value=\"$(ishidden" + r + ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("提 交|提 交|submit") + "</anchor><br/>");

    }

    Response.Write("<br/>");
    Response.Write(" <a href=\"" + http_start + "admin/addclassWAP_del.aspx?siteid=" + siteid + "&amp;classid=" + classVo.classid + "" + "\">删除本栏目</a><br/>");
    Response.Write("<a href=\"" + http_start + "admin/wapindexeditwap.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a>");
    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");

    //输出


}
else //2.0界面
{



    Response.Write("<div class=\"subtitle\">" + this.GetLang("修改栏目|修改栏目|modify class") + "</div>");
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\"><b>*号项不能为空！</b></div>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>修改成功！</b></div>");
    }

    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"f\" action=\"" + http_start + "admin/modifyclasswap.aspx\" method=\"post\">");
        Response.Write("*栏目ID:<b>" + classVo.classid + "</b><br/>");
        Response.Write("*栏目名称:<br/><input type=\"text\" name=\"classname\" value=\"" + classVo.classname + "\"/><br/>");

        Response.Write("*指向模块:<br/><select name=\"typeid\">");
        Response.Write("<option value=\"" + classVo.typeid + "\">" + classVo.typeid + "</option>");
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            if (GetShowMySystype(listVo[i].typeid.ToString()) == true)
            {
                Response.Write("<option value=\"" + listVo[i].typeid + "\">" + listVo[i].typeid + "_" + listVo[i].typename + "</option>");
            }
        }
        Response.Write("</select><br/>");

        Response.Write("*行数:<input type=\"text\" name=\"ismodel\" value=\"" + classVo.ismodel + "\" size=\"5\"/><br/>");
        Response.Write("(如文章列表中显示多少行)  <br/>");
        Response.Write("管理员(版主):<br/><input type=\"text\" name=\"adminusername\" value=\"" + classVo.adminusername + "\"/><br/>");
        Response.Write("(填用户ID,有多个用 | 区分) <br/>");
        Response.Write("栏目排序号:<input type=\"text\" name=\"rank\" value=\"" + classVo.rank + "\" size=\"5\"/><br/>");
        Response.Write("(您可以改成从1开始或不填)  <br/>");
        Response.Write("允许币数:<input type=\"text\" name=\"needMoney\" value=\"" + classVo.needMoney + "\" size=\"5\"/><br/>");
        Response.Write("消费币数:<input type=\"text\" name=\"subMoney\" value=\"" + classVo.subMoney + "\" size=\"5\"/><br/>");
        Response.Write("允许会员:<br/><input type=\"text\" name=\"allowUser\" value=\"" + classVo.allowUser + "\"/><br/>");
        Response.Write("(填<a href=\"" + this.http_start + "bbs/smalltypelist.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("admin/modifyclasswap.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid) + "\">会员身份ID</a>，多个用|区分)<br/>");
        Response.Write("需要密码:<br/><input type=\"text\" name=\"password\" value=\"" + classVo.password + "\"/><br/>");



        Response.Write("*是否隐藏栏目:<br/>");
        Response.Write("<select name=\"ishidden\">");
        Response.Write("<option value=\"" + classVo.ishidden + "\">" + classVo.ishidden + "</option>");
        Response.Write("<option value=\"0\">0_否</option>");
        Response.Write("<option value=\"1\">1_是</option>");
        Response.Write("</select><br/>");

       
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("提 交|提 交|submit") + "\"/>");
        Response.Write("</form>");
        Response.Write("</div>");
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write(" <a href=\"" + http_start + "admin/addclassWAP_del.aspx?siteid=" + siteid + "&amp;classid=" + classVo.classid + "" + "\">删除本栏目</a> ");
    Response.Write("<a href=\"" + http_start + "admin/wapindexeditwap.aspx?siteid=" + siteid + "&amp;classid=" + classVo.childid + "" + "\">返回上级</a>");
    Response.Write("</div></div>");

}                                                                                                                                                  
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


