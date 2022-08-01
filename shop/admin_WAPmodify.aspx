<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPmodify.aspx.cs" Inherits="KeLin.WebSite.shop.admin_WAPmodify" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("修改内容|修改內容|content modification"), wmlVo));//显示头                                                                                                                                                                       

if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("修改成功！|修改成功！|Successfully modified"));
        Response.Write("</b> ");
        Response.Write("<a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>标题不能小于2个字符！</b><br/>");

    }
    else if (this.INFO == "COUNTNULL")
    {
        Response.Write("<b>自定义宣传标题和内容中的“|”个数不一致！</b><br/>");

    }
    else
    {
        Response.Write("<b>此页面包含动态脚本，建议用电脑IE访问此页面。</b><br/>");
    }
    
    
    Response.Write("<a href=\"" + this.http_start + "shop/admin_wapmodifyadd.aspx?action=class&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;id=" + this.id + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0界面续传|进入WAP2.0界面续传|wap2.0 add upfile") + "</a><br/>");

    Response.Write(this.GetLang("缩放图地址|缩放图地址|smallimg url") + ":<br/>");
    Response.Write("<input type=\"text\" name=\"book_img" + r + "\" value=\"" + bookVo.book_smallimg + "\"/><br/>");
    Response.Write("列表显示图片:(220X150)<br/>");
    Response.Write("<input type=\"text\" name=\"book_file" + r + "\" value=\"" + bookVo.book_file + "\"/><br/>");

    //Response.Write("图片对应介绍:(对应上面的,多个地址用|隔开)<br/>");
    Response.Write("<input type=\"hidden\" name=\"book_fileINFO" + r + "\" value=\"" + bookVo.book_fileINFO + "\"/><br/>");

    Response.Write("列表显示一句话广告语:<br/><input type=\"text\" name=\"book_tip" + r + "\" value=\"" + bookVo.book_tip + "\"/><br/>");
    
    Response.Write(this.GetLang("名称|名称|Title") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"book_title"+r+"\" value=\""+bookVo.book_title+"\"/><br/>");
   
    
    Response.Write(this.GetLang("商品型号|商品型号|Title") + "*:");
    Response.Write("<input type=\"text\" name=\"book_xinghao" + r + "\" value=\"" + bookVo.book_xinghao + "\"/><br/>");
    Response.Write("(多个用/区分,如30码/35码/42码)<br/>");
    Response.Write(this.GetLang("市场价格|市场价格|Title") + "*:");
    Response.Write("<input type=\"text\" name=\"book_jiage" + r + "\" value=\"" + bookVo.book_jiage.ToString("f2") + "\"/><br/>");
    Response.Write(this.GetLang("会员价格|会员价格|Title") + "*:");
    Response.Write("<input type=\"text\" name=\"book_yhjiage" + r + "\" value=\"" + bookVo.book_yhjiage.ToString("f2") + "\"/><br/>");
    
    Response.Write("(价格支持小数点二位)<br/>");
    Response.Write("显示运费:<select name=\"book_charge" + r + "\" value=\"" + bookVo.book_charge.ToString("f2") + "\">");
    Response.Write("<option value=\"1.00\">是</option>");
    Response.Write("<option value=\"0.00\">否</option>");
    Response.Write("</select><br/>");
    Response.Write(this.GetLang("库存|库存|库存") + "*:");
    Response.Write("<input type=\"text\" name=\"book_hottel" + r + "\" value=\"" + bookVo.book_hottel + "\"/><br/>");
    //Response.Write(this.GetLang("短信咨询|短信咨询|短信咨询") + "*:");
    //Response.Write("<input type=\"text\" name=\"book_shortmessage" + r + "\" value=\"" + bookVo.book_shortmessage + "\"/><br/>");

    Response.Write(this.GetLang("人气|人气|人气") + " :");
    Response.Write("<input type=\"text\" name=\"book_click" + r + "\" value=\"" + bookVo.book_click + "\"/><br/>");

    Response.Write(this.GetLang("已售|已售|已售") + " :");
    Response.Write("<input type=\"text\" name=\"saleCount" + r + "\" value=\"" + bookVo.saleCount + "\"/><br/>");

    Response.Write("推荐指数:<select name=\"book_xingxing" + r + "\">");
    Response.Write("<option value=\"" + bookVo.book_xingxing + "\">" + bookVo.book_xingxing + "</option>");
    Response.Write("<option value=\"★★★★★\">★★★★★</option>");
    Response.Write("<option value=\"★★★★\">★★★★</option>");
    Response.Write("<option value=\"★★★\">★★★</option>");
    Response.Write("<option value=\"★★\">★★</option>");
    Response.Write("<option value=\"★\">★</option>");
    Response.Write("</select><br/>");
    Response.Write(this.GetLang("产品介绍|产品介绍|Introduction") + " :上传图片进入2.0界面<br/>");
    Response.Write("<textarea name=\"book_content" + r + "\" rows=\"5\" style=\"width:100%\">" + bookVo.book_content.Replace("[br]", "\r\n") + "</textarea><br/>");

    Response.Write("参数 :<br/>");
    Response.Write("<textarea name=\"book_gongxiao" + r + "\" rows=\"5\" style=\"width:100%\">" + bookVo.book_gongxiao.Replace("[br]", "\r\n") + "</textarea><br/>");


    Response.Write("参数页面显示“提示” :(可留空)<br/>");
    Response.Write("<textarea name=\"book_tishi" + r + "\" rows=\"5\" style=\"width:100%\">" + bookVo.book_tishi.Replace("[br]", "\r\n") + "</textarea><br/>");


    Response.Write("实拍图 : 上传图片进入wap2.0界面<br/>");
    Response.Write("<textarea name=\"book_content_img" + r + "\" rows=\"5\" style=\"width:100%\">" + bookVo.book_content_img.Replace("[br]", "\r\n") + "</textarea><br/>");

    Response.Write("自定义宣传标题：多个用|区分<br/>");
    Response.Write("<textarea name=\"book_otherTitle" + r + "\" rows=\"5\" style=\"width:100%\">" + bookVo.book_otherTitle.Replace("[br]", "\r\n") + "</textarea><br/>");
    Response.Write("自定义宣传内容：多个用|区分，对应上面标题<br/>");
    Response.Write("<textarea name=\"book_otherContent" + r + "\" rows=\"5\" style=\"width:100%\">" + bookVo.book_otherContent.Replace("[br]", "\r\n") + "</textarea><br/>");
    

    Response.Write("<anchor><go href=\""+http_start+"shop/admin_WAPmodify.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
    Response.Write("<postfield name=\"id\" value=\""+id+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\""+classid+"\"/>");
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"page\" value=\""+page+"\"/>");
    Response.Write("<postfield name=\"book_title\" value=\"$(book_title"+r+")\"/>");
    Response.Write("<postfield name=\"book_img\" value=\"$(book_img"+r+")\"/>");
    Response.Write("<postfield name=\"book_file\" value=\"$(book_file" + r + ")\"/>");
    Response.Write("<postfield name=\"book_xinghao\" value=\"$(book_xinghao" + r + ")\"/>");
    Response.Write("<postfield name=\"book_jiage\" value=\"$(book_jiage" + r + ")\"/>");
    Response.Write("<postfield name=\"book_yhjiage\" value=\"$(book_yhjiage" + r + ")\"/>");
    Response.Write("<postfield name=\"book_charge\" value=\"$(book_charge" + r + ")\"/>");   
    Response.Write("<postfield name=\"book_hottel\" value=\"$(book_hottel" + r + ")\"/>");
    Response.Write("<postfield name=\"book_shortmessage\" value=\"$(book_shortmessage" + r + ")\"/>");
    Response.Write("<postfield name=\"book_content\" value=\"$(book_content"+r+")\"/>");
    Response.Write("<postfield name=\"book_fileINFO\" value=\"$(book_fileINFO" + r + ")\"/>");
    Response.Write("<postfield name=\"book_click\" value=\"$(book_click" + r + ")\"/>");
    Response.Write("<postfield name=\"saleCount\" value=\"$(saleCount" + r + ")\"/>");
    Response.Write("<postfield name=\"book_content_img\" value=\"$(book_content_img" + r + ")\"/>");
    Response.Write("<postfield name=\"book_gongxiao\" value=\"$(book_gongxiao" + r + ")\"/>");
    Response.Write("<postfield name=\"book_tishi\" value=\"$(book_tishi" + r + ")\"/>");
    Response.Write("<postfield name=\"book_xingxing\" value=\"$(book_xingxing" + r + ")\"/>");
    Response.Write("<postfield name=\"book_otherTitle\" value=\"$(book_otherTitle" + r + ")\"/>");
    Response.Write("<postfield name=\"book_otherContent\" value=\"$(book_otherContent" + r + ")\"/>");
    Response.Write("<postfield name=\"book_tip\" value=\"$(book_tip" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("修 改|修 改|Modify") + "</anchor><br/><br/>");


    Response.Write("<br/><a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
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
    Response.Write("window.open(\"uploadPIC.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;typeid=\"+a, \"addpic\", \"height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no\");\r\n");

    Response.Write("}\r\n");
    Response.Write("</script>");
    Response.Write("<div class=\"subtitle\">" + this.GetLang("修改操作|修改操作|Modify operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("修改成功！|修改成功！|Successfully modified"));
        Response.Write("</b>");
        Response.Write("<a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<b>标题不能小于2个字符！</b><br/>");

    }
    else if (this.INFO == "COUNTNULL")
    {
        Response.Write("<b>自定义宣传标题和内容中的“|”个数不一致！</b><br/>");

    }
    else
    {
        Response.Write("<b>此页面包含动态脚本，建议用电脑IE访问此页面。</b><br/>");
    }
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"go\" action=\"" + this.http_start + "shop/admin_WAPmodify.aspx\" method=\"post\">");
    Response.Write(this.GetLang("缩放图地址|缩放图地址|smallimg url") + ":50X50(上传图片自动生成)<br/>");
    Response.Write("<input type=\"text\" name=\"book_img\" value=\"" + bookVo.book_smallimg + "\"/><br/>");
    Response.Write("列表显示图片:(220X150) ");
    Response.Write("<a href=\"" + this.http_start + "shop/admin_wapmodifyadd.aspx?siteid=" + this.siteid + "&classid=" + this.classid + "&id=" + this.id + "&sid=" + this.sid + "\">上传图片</a><br/>");
    
    Response.Write("<input type=\"text\" name=\"book_file\" value=\"" + bookVo.book_file + "\"/><br/>");
    //Response.Write("图片介绍:(对应上面，多个地址用|隔开)<br/>");
    Response.Write("<input type=\"hidden\" name=\"book_fileINFO\" value=\"" + bookVo.book_fileINFO + "\"/><br/>");
    Response.Write("列表显示一句话广告语:<br/><input type=\"text\" name=\"book_tip\" value=\"" + bookVo.book_tip + "\"/><br/>");
    
    Response.Write(this.GetLang("标题|標題|Title") + "*:<br/>");
    Response.Write("<input type=\"text\" name=\"book_title\" value=\"" + bookVo.book_title + "\"/><br/>");

    
    Response.Write(this.GetLang("商品型号|商品型号|Title") + "*:");
    Response.Write("<input type=\"text\" name=\"book_xinghao\" value=\"" + bookVo.book_xinghao + "\"/><br/>");
    Response.Write("(多个用/区分,如30码/35码/42码)<br/>");
    Response.Write(this.GetLang("市场价格|市场价格|Title") + "*:");
    Response.Write("<input type=\"text\" name=\"book_jiage\" value=\"" + bookVo.book_jiage.ToString("f2") + "\"/><br/>");
    Response.Write(this.GetLang("会员价格|会员价格|Title") + "*:");
    Response.Write("<input type=\"text\" name=\"book_yhjiage\" value=\"" + bookVo.book_yhjiage.ToString("f2") + "\"/><br/>");
    
    Response.Write("(价格支持小数点二位)<br/>");
    /*
    Response.Write("显示运费:<select name=\"book_charge\">");
    if (bookVo.book_charge.ToString("f2") == "0.00")
    {
        Response.Write("<option value=\"0.00\">否</option>");
    }
    Response.Write("<option value=\"1.00\">是</option>");
    Response.Write("<option value=\"0.00\">否</option>");
    Response.Write("</select><br/>");
    */
    Response.Write("<input type=\"hidden\" name=\"book_charge\" value=\"0.00\"/>");  
    Response.Write(this.GetLang("库存|库存|库存") + "*:");
    Response.Write("<input type=\"text\" name=\"book_hottel\" value=\"" + bookVo.book_hottel + "\"/><br/>");
    //Response.Write(this.GetLang("短信咨询|短信咨询|短信咨询") + "*:");
    //Response.Write("<input type=\"text\" name=\"book_shortmessage\" value=\"" + bookVo.book_shortmessage + "\"/><br/>");

    Response.Write(this.GetLang("人气|人气|人气") + " :");
    Response.Write("<input type=\"text\" name=\"book_click\" value=\"" + bookVo.book_click + "\"/><br/>");

    Response.Write(this.GetLang("已售|已售|已售") + " :");
    Response.Write("<input type=\"text\" name=\"saleCount\" value=\"" + bookVo.saleCount + "\"/><br/>");

    Response.Write("推荐指数:<select name=\"book_xingxing\">");
    Response.Write("<option value=\"" + bookVo.book_xingxing + "\">" + bookVo.book_xingxing + "</option>");
    Response.Write("<option value=\"★★★★★\">★★★★★</option>");
    Response.Write("<option value=\"★★★★\">★★★★</option>");
    Response.Write("<option value=\"★★★\">★★★</option>");
    Response.Write("<option value=\"★★\">★★</option>");
    Response.Write("<option value=\"★\">★</option>");
    Response.Write("</select><br/>");
    Response.Write(this.GetLang("产品介绍|产品介绍|Introduction") + " :<a href=\"javascript:addpic(1);\">上传图片</a><br/>");
    Response.Write("<textarea name=\"book_content\"  id=\"book_content\" rows=\"5\" style=\"width:100%\">" + bookVo.book_content.Replace("[br]", "\r\n").Replace("<", "&lt;").Replace(">", "&gt;") + "</textarea><br/>");

    Response.Write("参数 :<a href=\"javascript:addpic(3);\">上传图片</a><br/>");
    Response.Write("<textarea name=\"book_gongxiao\"  id=\"book_gongxiao\" rows=\"5\" style=\"width:100%\">" + bookVo.book_gongxiao.Replace("[br]", "\r\n").Replace("<", "&lt;").Replace(">", "&gt;") + "</textarea><br/>");


    Response.Write("参数页面显示“提示” :(可留空)<a href=\"javascript:addpic(4);\">上传图片</a><br/>");
    Response.Write("<textarea name=\"book_tishi\" id=\"book_tishi\" rows=\"5\" style=\"width:100%\">" + bookVo.book_tishi.Replace("[br]", "\r\n").Replace("<", "&lt;").Replace(">", "&gt;") + "</textarea><br/>");


    Response.Write("实拍图 : <a href=\"javascript:addpic(2);\">上传图片</a><br/>");
    Response.Write("<textarea name=\"book_content_img\" id=\"book_content_img\" rows=\"5\" style=\"width:100%\">" + bookVo.book_content_img.Replace("[br]", "\r\n").Replace("<", "&lt;").Replace(">", "&gt;") + "</textarea><br/>");

    Response.Write("自定义宣传标题：多个用|区分<br/>");
    Response.Write("<textarea name=\"book_otherTitle\" rows=\"5\" style=\"width:100%\">" + bookVo.book_otherTitle.Replace("[br]", "\r\n").Replace("<", "&lt;").Replace(">", "&gt;") + "</textarea><br/>");
    Response.Write("自定义宣传内容：多个用|区分，对应上面标题 <a href=\"javascript:addpic(5);\">上传图片</a><br/>");
    Response.Write("<textarea name=\"book_otherContent\" id=\"book_otherContent\" rows=\"5\" style=\"width:100%\">" + bookVo.book_otherContent.Replace("[br]", "\r\n").Replace("<", "&lt;").Replace(">", "&gt;") + "</textarea><br/>");
    
   
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"id\" value=\"" + id + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"bt\" value=\"" + this.GetLang("修 改|修 改|Modify") + "\"/>");

    Response.Write("</form></div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
   
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


