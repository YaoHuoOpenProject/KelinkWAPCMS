<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="admin_WAPadd.aspx.cs" Inherits="KeLin.WebSite.wml.admin_WAPadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("新增内容|新增內容|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    Response.Write("<a href=\"" + this.http_start + "wml/admin_WAPadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面添加|进入WAP2.0界面添加|wap2.0 add ") + "</a><br/><br/>");

    Response.Write("<a href=\"" + this.http_start + "wml/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");

    Response.Write("<a href=\"" + this.http_start + "wml/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid1 + "-2-"+this.cs+"-"+this.lang+"-"+this.myua+"\">" + this.GetLang("WAP2.0界面|WAP2.0界面|WAP2.0 interface") + "</a>");
    //Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("新增操作|新增操作|Add operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    Response.Write("页面头部请在【页面综合排版】【CSS编辑器】中输入！<br/>");
    
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.whickOK);
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "wml/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.toclassid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    }
    
    Response.Write("</div>");
   
    Response.Write("<div class=\"content\">");
    //选多少个
    Response.Write("<form name=\"g1\" action=\"" + http_start + "wml/admin_WAPadd.aspx\" method=\"get\">");
    Response.Write(this.GetLang("选择|選擇|Select") + " <input type=\"text\" name=\"num\" value=\"" + this.num + "\" size=\"2\"/>");   
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"go\"/>");
    Response.Write("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write(" <input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定|确定|GO") + "\"/></form>");
    Response.Write(" ");

    
    //选择栏目
    Response.Write("<form name=\"gt\" action=\"" + http_start + "wml/admin_WAPadd.aspx\" method=\"post\">");
    Response.Write("选择栏目:<select name=\"toclassid\">");
    //Response.Write("<option value=\"" + toclassid + "\">" + toclassid + "</option>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        Response.Write("<option ");
        if (toclassid == classList[i].classid.ToString())
        {
            Response.Write("selected");
        }
        
        Response.Write(" value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

    }
    Response.Write("</select><br/>");

    
    for (int i = 0; i < this.num; i++)
    {
        if (this.num > 1)
        {
            Response.Write("----- 页面" + (i + 1) + " -------<br/>");
        }
        
        Response.Write(this.GetLang("标题|標題|Title") + "*: ");
        Response.Write("<input type=\"text\" name=\"book_title\" value=\"\"/><br/>");

        
        
        Response.Write(this.GetLang("WAP2.0/HTML5中&lt;body&gt;与&lt;/body&gt;中间代码|WAP2.0/HTML5中&lt;body&gt;与&lt;/body&gt;中间代码|Content") + "*:<br/>");
        Response.Write("<textarea name=\"book_content2\" rows=\"15\" style=\"width:100%\"></textarea><br/>");
        Response.Write("请将编辑好后复制进来！ ");
        Response.Write("<input type=\"button\" value=\"显示WAP1.0\" onclick=\"document.getElementById('add_book_img').style.display='';\" /><span id=\"add_book_img\" style=\"display:none\"><br/><br/>");

        Response.Write(this.GetLang("WAP1.0中&lt;card&gt;与&lt;/card&gt;中间代码|WAP1.0中&lt;card&gt;与&lt;/card&gt;中间代码|Content") + ":<br/>");
        Response.Write("<textarea name=\"book_content\" rows=\"5\" style=\"width:100%\"></textarea> ");
        Response.Write("</span><br/>");
        
        Response.Write(this.GetLang("跳转时间|跳转时间|跳转时间") + "*:");
        Response.Write("<input type=\"text\" name=\"book_re\" value=\"0\" size=\"2\"/> ");
        Response.Write("(0不跳转,单位秒)<br/>");
        Response.Write(this.GetLang("跳转地址|跳转地址|跳转地址") + ":");
        Response.Write("<input type=\"text\" name=\"book_pub\" value=\"\"/><br/>");
        Response.Write("(http://开头,&amp;不用改成&amp;amp;)");
        Response.Write("<br/> <br/>");
    }


    //Response.Write("<b>页面底部代码已写好！</b><br/>");
    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"num\" value=\"" + num + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"bt\" class=\"btn\" value=\"" + this.GetLang("新 增|新 增|Add") + "\"/></form>");
    Response.Write("</div>");
    Response.Write("<div class=\"tip\">说明:UBB调用二种方式，(1)显示列表链接[wml=N_M_X_Y]和(2)直接取其中的内容[getwml=标题ID]，以上支持UBB方法与wml1.0/2.0代码混编！[查看UBB大全]</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "wml/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    //Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


