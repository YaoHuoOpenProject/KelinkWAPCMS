<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="addClassWAP.aspx.cs" Inherits="KeLin.WebSite.admin.addClassWAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("新增栏目|新增栏目|add class"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p align=\"left\">");
    if (this.INFO == "NULL")
    {
        Response.Write("<b>*号项不能为空！</b><br/>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>新增成功！</b><br/>");
    }

    if (this.INFO != "OK")
    {

        Response.Write("*栏目名称:<br/><input type=\"text\" name=\"classname" + this.r + "\" value=\"" + this.classname + "\"/><br/>");

        Response.Write("*指向模块:<br/><select name=\"typeid" + this.r + "\" value=\"" + this.typeid + "\">");
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            if (GetShowMySystype(listVo[i].typeid.ToString()) == true)
            {
                Response.Write("<option value=\"" + listVo[i].typeid + "\">" + listVo[i].typename + "</option>");
            }
        }
        Response.Write("</select><br/>");
        Response.Write("上级栏目:<b>" + classVo.classname + "</b><br/>");
        Response.Write("*行数:<input type=\"text\" name=\"ismodel" + this.r + "\" value=\"" + this.ismodel + "\" size=\"5\"/><br/>");
        Response.Write("(如文章列表中显示多少行)  <br/>");
        Response.Write("管理员(版主):<br/><input type=\"text\" name=\"adminusername" + this.r + "\" value=\"" + this.adminusername + "\"/><br/>");
        Response.Write("(填用户ID,有多个用 | 区分) <br/>");
        Response.Write("栏目排序号:<input type=\"text\" name=\"rank" + this.r + "\" value=\"" + this.rank + "\" size=\"5\"/><br/>");
        Response.Write("(您可以改成从1开始或不填)  <br/>");
        Response.Write("允许币数:<input type=\"text\" name=\"needMoney" + this.r + "\" value=\"" + this.needMoney + "\" size=\"5\"/><br/>");
        Response.Write("消费币数:<input type=\"text\" name=\"subMoney" + this.r + "\" value=\"" + this.subMoney + "\" size=\"5\"/><br/>");
        Response.Write("允许会员身份级别:<br/><input type=\"text\" name=\"allowUser" + this.r + "\" value=\"" + this.allowUser + "\"/><br/>");
        Response.Write("(填<a href=\"" + this.http_start + "bbs/smalltypelist.aspx?siteid=" + this.siteid + "&amp;backurl="+HttpUtility.UrlEncode("admin/addclasswap.aspx?siteid="+this.siteid+"&amp;classid="+this.classid)+"\">会员身份ID</a>，多个用|区分)<br/>");
        Response.Write("需要密码:<br/><input type=\"text\" name=\"password" + this.r + "\" value=\"" + this.password + "\"/><br/>");


        Response.Write("是否换行:<br/>");
        Response.Write("<select name=\"siterowremark" + this.r + "\" value=\"" + this.siterowremark + "\">");
        Response.Write("<option value=\"\">否</option>");
        Response.Write("<option value=\"[br]\">是</option>");
        Response.Write("</select><br/>");
        Response.Write("*是否隐藏栏目:<br/>");
        Response.Write("<select name=\"ishidden" + this.r + "\" value=\"" + this.ishidden + "\">");
        Response.Write("<option value=\"0\">否</option>");
        Response.Write("<option value=\"1\">是</option>");
        Response.Write("</select><br/>");

        Response.Write("<anchor><go href=\"" + http_start + "admin/addclasswap.aspx\" method=\"post\" accept-charset=\"utf-8\">");
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
        Response.Write("<postfield name=\"siterowremark\" value=\"$(siterowremark" + r + ")\"/>");
        Response.Write("<postfield name=\"ishidden\" value=\"$(ishidden" + r + ")\"/>");
        Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("</go>" + this.GetLang("提 交|提 交|submit") + "</anchor><br/>");

    }

    Response.Write("<br/>");
    Response.Write("<a href=\"" + http_start + "admin/wapindexeditwap.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");

    //输出


}
else //2.0界面
{



    Response.Write("<div class=\"subtitle\">" + this.GetLang("新增栏目|新增栏目|add class") + "</div>");
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\"><b>*号项不能为空！</b></div>");

    }
    else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>新增成功！</b></div>");
    }

    if (this.INFO != "OK")
    {

        Response.Write("<div class=\"content\">");
        Response.Write("<form name=\"f\" action=\"" + http_start + "admin/addclasswap.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        Response.Write("*栏目名称:<br/><input type=\"text\" name=\"classname\" value=\"" + this.classname + "\"/><br/>");

        Response.Write("*指向模块:<br/><select name=\"typeid\">");
        for (int i = 0; (listVo != null && i < listVo.Count); i++)
        {
            if (GetShowMySystype(listVo[i].typeid.ToString()) == true)
            {
                Response.Write("<option value=\"" + listVo[i].typeid + "\">" + listVo[i].typename + "</option>");
            }
        }
        Response.Write("</select><br/>");
        Response.Write("上级栏目:<b>" + classVo.classname + "</b><br/>");
        Response.Write("*行数:<input type=\"text\" name=\"ismodel\" value=\"" + this.ismodel + "\" size=\"5\"/><br/>");
        Response.Write("(如文章列表中显示多少行)  <br/>");
        Response.Write("管理员(版主):<br/><input type=\"text\" name=\"adminusername\" value=\"" + this.adminusername + "\"/><br/>");
        Response.Write("(填用户ID,有多个用 | 区分) <br/>");
        Response.Write("栏目排序号:<input type=\"text\" name=\"rank\" value=\"" + this.rank + "\" size=\"5\"/><br/>");
        Response.Write("(您可以改成从1开始或不填)  <br/>");
        Response.Write("允许币数:<input type=\"text\" name=\"needMoney\" value=\"" + this.needMoney + "\" size=\"5\"/><br/>");
        Response.Write("消费币数:<input type=\"text\" name=\"subMoney\" value=\"" + this.subMoney + "\" size=\"5\"/><br/>");
        Response.Write("允许会员身份级别:<br/><input type=\"text\" name=\"allowUser\" value=\"" + this.allowUser + "\"/><br/>");
        Response.Write("(填<a href=\"" + this.http_start + "bbs/smalltypelist.aspx?siteid=" + this.siteid + "&amp;backurl=" + HttpUtility.UrlEncode("admin/addclasswap.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid) + "\">会员身份ID</a>，多个用|区分)<br/>");
        Response.Write("需要密码:<br/><input type=\"text\" name=\"password\" value=\"" + this.password + "\"/><br/>");


        Response.Write("是否换行:<br/>");
        Response.Write("<select name=\"siterowremark\">");
        Response.Write("<option value=\"\">否</option>");
        Response.Write("<option value=\"[br]\">是</option>");
        Response.Write("</select><br/>");
        Response.Write("*是否隐藏栏目:<br/>");
        Response.Write("<select name=\"ishidden\">");
        Response.Write("<option value=\"0\">否</option>");
        Response.Write("<option value=\"1\">是</option>");
        Response.Write("</select><br/>");

       
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"submit\" name=\"f\" value=\"" + this.GetLang("提 交|提 交|submit") + "\"/>");
        Response.Write("</form>");
        Response.Write("</div>");
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + http_start + "admin/wapindexeditwap.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>");
    Response.Write("</div></div>");

}                                                                                                                                                  
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


