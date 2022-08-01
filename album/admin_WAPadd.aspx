<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd.aspx.cs" Inherits="KeLin.WebSite.album.admin_WAPadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("上传相片|上传相片|content add"), wmlVo));//显示头                                                                                                                                                                       
StringBuilder strhtml = new StringBuilder();
if (ver == "1")
{
    strhtml.Append("<p>");    
    strhtml.Append(this.ERROR);

    strhtml.Append("<a href=\"" + this.http_start + "album/admin_wapadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面上传|进入WAP2.0界面上传|wap2.0 add upfile") + "</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "album/albumlist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");

    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    if (ERROR != "")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append(this.ERROR);
        strhtml.Append("</div>");
    }
    
    if (this.INFO == "OK")
    {

        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>上传成功！</b> ");
        if (siteVo.isCheck == 1)
        {
            strhtml.Append("<b>审核后显示！</b> ");
        }
        strhtml.Append(" <a class=\"urlbtn\" href=\"" + this.http_start + "album/albumlist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "\">" + this.GetLang("返回|返回|Back to list") + "</a>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "EXTERR")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>上传文件格式错误，只允许上传：" + siteVo.UpFileType + "</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NOTSPACE")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>网站总空间已经大于系统分配给此网站的最大空间了，网站空间：" + siteVo.sitespace + "M；此网站已使用：" + (siteVo.myspace) + "KB</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "MAXFILE")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>你上传的单个文件总大小超出了最大限制" + siteVo.MaxFileSize + "KB</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "NULL")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>标题不能小于2个字符！</b><br/>");
        strhtml.Append("</div>");

    }
    else if (this.INFO == "ERR_FORMAT")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
        strhtml.Append("</div>");
    }
    else if (this.INFO == "LOCK")
    {
        strhtml.Append("<div class=\"tip\">");
        strhtml.Append("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
        strhtml.Append("</div>");
    }


   
    
    
    
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("上传相片|上传相片|Add operation") + "</div>");
   
    strhtml.Append("<div class=\"content\">");
    //选多少个
    
    strhtml.Append("<form name=\"g1\" action=\"" + http_start + "album/admin_WAPadd.aspx\" method=\"get\">");
    strhtml.Append(this.GetLang("上传数量|上传数量|Upload Number") + " <input type=\"text\" name=\"num\" value=\"" + this.num + "\" size=\"2\"/>");   
    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"go\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"smalltypeid\" value=\"" + smalltypeid + "\"/>");
    strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append(" <input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定|确定|GO") + "\"/></form>");
    
    strhtml.Append("<br/>");

    
    //选择栏目
    strhtml.Append("<form name=\"gt\" action=\"" + http_start + "album/admin_WAPadd.aspx\" enctype=\"multipart/form-data\" method=\"post\">");
    strhtml.Append(this.GetLang("标题|標題|Title") + "*:<br/>");
    strhtml.Append("<input type=\"text\" name=\"book_title\" class=\"txt\" value=\""+book_title+"\"/><br/>");
    

    strhtml.Append(this.GetLang("相片介绍|相片介绍|Introduction") + "*:<br/>");
    strhtml.Append("<textarea name=\"book_content\" rows=\"5\" style=\"width:100%\">"+book_content+"</textarea><br/>");
    
 
  
    strhtml.Append(this.GetLang("图宽|图宽|Width") + ":<input type=\"text\" name=\"swidth\" size=\"5\" value=\"" + swidth + "\"/>");
    strhtml.Append(this.GetLang("图高|图高|Height") + ":<input type=\"text\" name=\"sheight\" size=\"5\" value=\"" + sheight + "\"/><br/>");
    strhtml.Append("(不缩放,请留空,只输入宽或高,不变型)<br/>");
    strhtml.Append(this.GetLang("我的分类|我的分类|Class of Album") + "*:");
    strhtml.Append("<select name=\"smalltypeid\" class=\"KL_select\">");
    strhtml.Append("<option value=\"" + this.smalltypeid + "\">" + this.smalltypeid + "</option>");
    strhtml.Append("<option value=\"0\">0_默认</option>");
    for (int k = 0; (smallTypeList != null && k < smallTypeList.Count); k++)
    {

        strhtml.Append("<option value=\"" + smallTypeList[k].id + "\">" + smallTypeList[k].id + "_" + smallTypeList[k].subjectname + "</option>");

    }
    strhtml.Append("</select><br/>");
    strhtml.Append(this.GetLang("系统分类|系统分类|Class") + "*:");
    strhtml.Append("<select name=\"toclassid\" class=\"KL_select\">");
    strhtml.Append("<option value=\"" + this.classid + "\">" + this.classid + "</option>");
    strhtml.Append("<option value=\"0\">0_默认</option>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        strhtml.Append("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

    }
    strhtml.Append("</select><br/>");
    strhtml.Append(this.GetLang("公开|公开|公开") + "*:");
    strhtml.Append("<select name=\"ishidden\" class=\"KL_select\">");
    strhtml.Append("<option value=\"0\">0_是</option>");
    strhtml.Append("<option value=\"1\">1_否</option>");
    strhtml.Append("</select><br/>");  
    for (int i = 0; i < this.num; i++)
    {
        strhtml.Append("---"+this.GetLang("相片|相片|Source") + (i + 1) + "---<br/>");
       
        strhtml.Append("<input type=\"file\" name=\"book_file\" value=\"\"/><br/>");
    }

       

    strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"num\" value=\"" + num + "\"/>");
    strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    strhtml.Append("<input type=\"submit\"  name=\"bt\" class=\"btn\" value=\"" + this.GetLang("上传|上传|submit") + "\"/></form>");
    strhtml.Append("</div>");
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   

    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "album/albumlist.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");

    strhtml.Append("</div></div>");

    
    if (isWebHtml != "")
    {
        string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml.Replace("[view]", strhtml_list), wmlVo));
        Response.End();
    }
    Response.Write(strhtml);
}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>



