<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd.aspx.cs" Inherits="KeLin.WebSite.shop.admin_WAPadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("上传商品|上传商品|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);

    Response.Write("<a href=\"" + this.http_start + "shop/admin_wapadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面上传|进入WAP2.0界面上传|wap2.0 add upfile") + "</a><br/>");
    Response.Write("<a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");

    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<SCRIPT language=javascript>\r\n");
    Response.Write("function addImgOrFile(file,typeid){ \r\n");
    Response.Write("if (typeid == \"1\")\r\n");
    Response.Write("{\r\n");
    Response.Write("document.getElementById('book_content').value = document.getElementById('book_content').value + \"[img]\"+file+\"[/img]\";\r\n");
    Response.Write("}else if(typeid==\"2\"){\r\n");

    Response.Write("document.getElementById('book_content_img').value = document.getElementById('book_content_img').value + \"[img]\"+file+\"[/img][br][br]\";\r\n");
    Response.Write("}else if(typeid==\"3\"){\r\n");
    Response.Write("document.getElementById('book_gongxiao').value = document.getElementById('book_gongxiao').value + \"[img]\"+file+\"[/img][br][br]\";\r\n");
    Response.Write("}else if(typeid==\"4\"){\r\n");
    Response.Write("document.getElementById('book_tishi').value = document.getElementById('book_tishi').value + \"[img]\"+file+\"[/img][br][br]\";\r\n");
    Response.Write("}else if(typeid==\"5\"){\r\n");
    Response.Write("document.getElementById('book_otherContent').value = document.getElementById('book_otherContent').value + \"[img]\"+file+\"[/img][br][br]\";\r\n");
    Response.Write("}\r\n");
    
    

    Response.Write("}\r\n");
    
    Response.Write("function addpic(a){\r\n");
    Response.Write("window.open(\"uploadPIC.aspx?siteid="+this.siteid +"&amp;classid="+this.classid +"&amp;typeid=\"+a, \"addpic\", \"height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no\");\r\n");

    Response.Write("}\r\n");
    Response.Write("</script>");
    Response.Write("<div class=\"subtitle\">" + this.GetLang("上传商品|上传商品|Add operation") + "</div>");
  
    
    Response.Write("<div class=\"tip\">");
    
    if (this.INFO == "OK")
    {

        Response.Write("<b>提交成功！</b> ");
        if (siteVo.isCheck == 1)
        {
            Response.Write("<b>审核后显示！</b> ");
        }
        Response.Write(" <a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "\">" + this.GetLang("返回|返回|Back to list") + "</a>");
    }
    else if (this.ERROR != "")
    {
        Response.Write("<b>" + this.ERROR + "</b> ");
    }
    else if (this.INFO == "EXTERR")
    {
        Response.Write("<b>上传文件格式错误，只允许上传：" + siteVo.UpFileType + "</b><br/>");

    }
    else if (this.INFO == "NOTSPACE")
    {
        Response.Write("<b>网站总空间已经大于系统分配给此网站的最大空间了，网站空间：" + siteVo.sitespace + "M；此网站已使用：" + (siteVo.myspace) + "KB</b><br/>");

    }
    else if (this.INFO == "MAXFILE")
    {
        Response.Write("<b>你上传的单个文件总大小超出了最大限制" + siteVo.MaxFileSize + "KB</b><br/>");

    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>标题不能小于2个字符！</b><br/>");

    }
    else if (this.INFO == "COUNTNULL")
    {
        Response.Write("<b>自定义宣传标题和内容中的“|”个数不一致！</b><br/>");

    }
    else if (this.INFO == "LOCK")
    {

        Response.Write("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
    }
    else
    {
        Response.Write("<b>此页面包含动态脚本，建议用电脑IE访问此页面。</b><br/>");
    }


    Response.Write("</div>");
    
    Response.Write("<div class=\"content\">");
    //选多少个
    /*
    Response.Write("<form name=\"g1\" action=\"" + http_start + "shop/admin_WAPadd.aspx\" method=\"get\">");
    Response.Write("列表是否显示图片:");
    Response.Write("<select name=\"num\"><option value=\"" + this.num + "\">" + this.num + "</option><option value=\"1\">1_显示</option><option value=\"0\">0_不显示</option></select>");
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"go\"/>");
    Response.Write("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"smalltypeid\" value=\"" + smalltypeid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定|确定|GO") + "\"/></form><br/>");
    
    */
    
    
    //选择栏目
    Response.Write("<form name=\"gt\" action=\"" + http_start + "shop/admin_WAPadd.aspx\" enctype=\"multipart/form-data\" method=\"post\">");

    Response.Write(this.GetLang("栏目分类|栏目分类|Class") + "*:");
    Response.Write("<select name=\"toclassid\">");
    Response.Write("<option value=\"" + this.classid + "\">" + this.classid + "</option>");
    Response.Write("<option value=\"0\">0_默认</option>");
    for (int i = 0; (classList != null && i < classList.Count); i++)
    {

        Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

    }
    Response.Write("</select><br/>");
    
    for (int i = 0; i < this.num; i++)
    {
        Response.Write("商品列表图");
        Response.Write(this.GetLang("宽|宽|Width") + ":<input type=\"text\" name=\"swidth\" size=\"3\" value=\"" + swidth + "\"/>");
        Response.Write(this.GetLang("高|高|Height") + ":<input type=\"text\" name=\"sheight\" size=\"3\" value=\"" + sheight + "\"/>例:220*150<br/>");
        
        
        //Response.Write("---" + this.GetLang("图片|图片|图片") + (i + 1) + "---<br/>");

        Response.Write("*<input type=\"file\" name=\"book_file\" value=\"\"/> ");
        Response.Write("<input type=\"hidden\" name=\"book_file_info\" /><br/>");
    }
    
    
    
    Response.Write(this.GetLang("商品名称|商品名称|Title") + "*:");
    Response.Write("<input type=\"text\" name=\"book_title\" value=\""+book_title+"\"/><br/>");
    Response.Write("一句话广告语:<input type=\"text\" name=\"book_tip\" value=\"" + book_tip + "\"/><br/>");
    
    
    Response.Write(this.GetLang("商品型号|商品型号|Title") + " :");
    Response.Write("<input type=\"text\" name=\"book_xinghao\" value=\"" + book_xinghao + "\"/><br/>");
    Response.Write("(多个用/区分,如30码/35码/42码)<br/>");
    Response.Write(this.GetLang("市场价格|市场价格|Title") + " :");
    Response.Write("<input type=\"text\" name=\"book_jiage\" value=\"" + book_jiage + "\"/><br/>");
    Response.Write(this.GetLang("会员价格|会员价格|Title") + " :");
    Response.Write("<input type=\"text\" name=\"book_yhjiage\" value=\"" + book_yhjiage + "\"/><br/>");   
    Response.Write("(价格支持小数点二位)<br/>");
    //Response.Write("显示运费:<select name=\"book_charge\">");
    //Response.Write("<option value=\"1.00\">是</option>");
    //Response.Write("<option value=\"0.00\">否</option>");
    //Response.Write("</select><br/>");
    Response.Write("<input type=\"hidden\" name=\"book_charge\" value=\"0.00\"/>");  
    
    Response.Write(this.GetLang("库存|库存|库存") + " :");
    Response.Write("<input type=\"text\" name=\"book_hottel\" value=\"" + book_hottel + "\"/><br/>");
    //Response.Write(this.GetLang("短信咨询|短信咨询|短信咨询") + " :");
    //Response.Write("<input type=\"text\" name=\"book_shortmessage\" value=\"" + book_shortmessage + "\"/><br/>");

    Response.Write(this.GetLang("人气|人气|人气") + " :");
    Response.Write("<input type=\"text\" name=\"book_click\" value=\"" + book_click + "\"/><br/>");
    Response.Write(this.GetLang("已售|已售|已售") + " :");
    Response.Write("<input type=\"text\" name=\"saleCount\" value=\"" + saleCount + "\"/><br/>");
    Response.Write("推荐指数:<select name=\"book_xingxing\">");
    Response.Write("<option value=\"" + book_xingxing + "\">" + book_xingxing + "</option>");
    Response.Write("<option value=\"★★★★★\">★★★★★</option>");
    Response.Write("<option value=\"★★★★\">★★★★</option>");
    Response.Write("<option value=\"★★★\">★★★</option>");
    Response.Write("<option value=\"★★\">★★</option>");
    Response.Write("<option value=\"★\">★</option>");
    Response.Write("</select><br/>");


    Response.Write(this.GetLang("产品介绍|产品介绍|Introduction") + " :<a href=\"javascript:addpic(1);\">上传图片</a> <br/>");
    Response.Write("<textarea name=\"book_content\" id=\"book_content\" rows=\"5\" style=\"width:100%\">" + book_content + "</textarea><br/>");

    Response.Write("参数 :<a href=\"javascript:addpic(3);\">上传图片</a><br/>");
    Response.Write("<textarea name=\"book_gongxiao\" id=\"book_gongxiao\" rows=\"5\" style=\"width:100%\">" + book_gongxiao + "</textarea><br/>");


    Response.Write("参数页面显示“提示” :(可留空)<a href=\"javascript:addpic(4);\">上传图片</a><br/>");
    Response.Write("<textarea name=\"book_tishi\" id=\"book_tishi\" rows=\"5\" style=\"width:100%\">" + book_tishi + "</textarea><br/>");


    Response.Write("实拍图 : <a href=\"javascript:addpic(2);\">上传图片</a><br/>");
    Response.Write("<textarea name=\"book_content_img\"  id=\"book_content_img\" rows=\"5\" style=\"width:100%\">" + book_content_img + "</textarea><br/>");

    Response.Write("自定义宣传标题：多个用|区分<br/>");
    Response.Write("<textarea name=\"book_otherTitle\" rows=\"5\" style=\"width:100%\">" + book_otherTitle + "</textarea><br/>");
    Response.Write("自定义宣传内容：多个用|区分，对应上面标题 <a href=\"javascript:addpic(5);\">上传图片</a><br/>");
    Response.Write("<textarea name=\"book_otherContent\" id=\"book_otherContent\" rows=\"5\" style=\"width:100%\">" + book_otherContent + "</textarea><br/>");
    

       

    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"num\" value=\"" + num + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定提交|确定提交|submit") + "\"/></form>");
    Response.Write("<br/>注意:*号为必填项，所有录入框都支持<a href=\"" + this.http_start + "admin/ubb2.aspx\">UBB方法</a>。其中“产品介绍”“参数”“实拍图”，默认自动分页，自定义分页加[next]或强制不分页内容后加[next]。)");   
    Response.Write("</div>");

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;smalltypeid=" + this.smalltypeid + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
  
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>



