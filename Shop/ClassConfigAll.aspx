<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassConfigAll.aspx.cs" Inherits="KeLin.WebSite.shop.ClassConfigAll" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("更多栏目属性设置|更多栏目属性设置|site setup"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b><br/>");
        
    }

    Response.Write("[20]开启支付宝电脑版“双功能收款”支付功能:");
    Response.Write("<select name=\"par20" + r + "\" value=\"" + this.par20 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[0]开启支付宝“手机网站”支付功能:");
    Response.Write("<select name=\"par0" + r + "\" value=\"" + this.par0 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    
    Response.Write("[1]开启RMB帐户余额支付功能:");
    Response.Write("<select name=\"par1" + r + "\" value=\"" + this.par1 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[13]开启 " + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + " 支付功能:");
    Response.Write("<select name=\"par13" + r + "\" value=\"" + this.par13 + "\">");  
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[14]支付宝收款页面地址:");
    Response.Write("<input type=\"text\" name=\"par14" + r + "\" value=\"" + this.par14 + "\"/><br/>(例:https://me.alipay.com/kelink)<br/>");
   

    Response.Write("[2]货到付款顶部说明:");
    Response.Write("<input type=\"text\" name=\"par2" + r + "\"  value=\"" + this.par2 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"p" + r + "\"  value=\"[b]订单已提交成功，接下来：[/b][br](1)您的订单已成功提交，我们客服人员将会与您联系确认收货信息并发货，请您认准我们的官方唯一呼出号码:13048036868[br](2)严密打包您订购的商品后交由快递公司送货上门到您手中[br](3)货到请您付款给快递人员并验货，完成交易[br](4)如有其它购买相关疑问，可查看问题解答\"/><br/>");
    Response.Write("(支持UBB语法)<br/>");

    Response.Write("[11]在线支付顶部说明:");
    Response.Write("<input type=\"text\" name=\"par11" + r + "\"  value=\"" + this.par11 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"r" + r + "\"  value=\"[b]订单已提交成功，订单如下：[/b][br]\"/><br/>");
    Response.Write("(支持UBB语法)<br/>");

    Response.Write("[3]允许游客评论:");
    Response.Write("<select name=\"par3" + r + "\" value=\"" + this.par3 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("<option value=\"" + KL_SHORE_Anonymous_Open + "\">Web.confi配置：" + KL_SHORE_Anonymous_Open + "</option>");
    Response.Write("</select><br/>(优先级web.config中“KL_SHORE_Anonymous_Open”值)<br/>");

    
    Response.Write("[6]自己的评论只能自己和客服回复:");
    Response.Write("<select name=\"par6" + r + "\" value=\"" + this.par6 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[7]游客提交订单后按手机号注册会员:<br/>");
    Response.Write("优先级一：全局设置KL_SHOP_REG当前为"+KL_SHOP_REG+"(0为关，1为开)在web.config配制<br/>");
    Response.Write("优先级二：<select name=\"par7" + r + "\" value=\"" + this.par7 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");

    Response.Write("[8]总编辑(标识03)只允许管理订单:<br/>");
    Response.Write("<select name=\"par8" + r + "\" value=\"" + this.par8 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");

    Response.Write("[9]支付方式显示:<br/>");
    Response.Write("<select name=\"par9" + r + "\" value=\"" + this.par9 + "\">"); 
    Response.Write("<option value=\"0\">0_显示货到付款+在线支付</option>");
    Response.Write("<option value=\"1\">1_显示货到付款</option>");
    Response.Write("<option value=\"2\">2_显示在线支付</option>");
    Response.Write("<option value=\"3\">3_下订即扣RMB帐户&amp;[1]要开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[10]列表显示图片:<br/>");
    Response.Write("<input type=\"text\" name=\"par10" + r + "\"  value=\"" + this.par10 + "\"/> 格式300*250或300*0<br/>");
   
    

    Response.Write("[12]列表默认排序:<br/>");
    Response.Write("<select name=\"par12" + r + "\" value=\"" + this.par12 + "\">");
    Response.Write("<option value=\"0\">0_新上架</option>");
    Response.Write("<option value=\"1\">1_按人气</option>");
    Response.Write("</select><br/>");
    
    Response.Write("[4]二级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par4" + r + "\" value=\"" + this.par4 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"infos"+r+"\" value=\"[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[parentid]]返回上级[/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");

    Response.Write("[5]三级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par5" + r + "\" value=\"" + this.par5 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"infos"+r+"\" value=\"[url=/shop/book_list.aspx?siteid=[siteid]&amp;classid=[classid]]返回[classname][/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");

    Response.Write("[15]列表中的“加入购物车”改成:<br/>");
    Response.Write("<input type=\"text\" name=\"par15" + r + "\" value=\"" + this.par15 + "\"/>(如加入购物车)<br/>");

    Response.Write("[16]显示上一条下一条:");
    Response.Write("<select name=\"par16" + r + "\" value=\"" + this.par16 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("(关闭提高性能，优先级web.cofig配置)<br/>");
    Response.Write("[17]显示上一页下一页，默认有加载更多按钮:");
    Response.Write("<select name=\"par17" + r + "\" value=\"" + this.par17 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[18]热线电话号码:<br/>");
    Response.Write("<input type=\"text\" name=\"par18" + r + "\" value=\"" + this.par18 + "\"/>(可为空)<br/>");

    Response.Write("[19]短信咨询号码:<br/>");
    Response.Write("<input type=\"text\" name=\"par19" + r + "\" value=\"" + this.par19 + "\"/>(可为空)<br/>");
    Response.Write("[21]显示运费:");
    Response.Write("<select name=\"par21" + r + "\" value=\"" + this.par21 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[22]允许游客下订:");
    Response.Write("<select name=\"par22" + r + "\" value=\"" + this.par22 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("<br/>------------<br/>");
        Response.Write("是否更新所有商店栏目？");
        Response.Write("<br/><input type=\"text\"  name=\"chkall" + r + "\" size=\"3\" value=\"no\"/>如果是输入yes");
        Response.Write("<br/>------------<br />");
    }
    Response.Write("<anchor><go href=\""+http_start+"shop/ClassConfigAll.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");    
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<postfield name=\"par0\" value=\"$(par0" + r + ")\"/>");
    Response.Write("<postfield name=\"par1\" value=\"$(par1" + r + ")\"/>");
    Response.Write("<postfield name=\"par2\" value=\"$(par2" + r + ")\"/>");
    Response.Write("<postfield name=\"par3\" value=\"$(par3" + r + ")\"/>");
    Response.Write("<postfield name=\"par4\" value=\"$(par4" + r + ")\"/>");
    Response.Write("<postfield name=\"par5\" value=\"$(par5" + r + ")\"/>");
    Response.Write("<postfield name=\"par6\" value=\"$(par6" + r + ")\"/>");
    Response.Write("<postfield name=\"par7\" value=\"$(par7" + r + ")\"/>");
    Response.Write("<postfield name=\"par8\" value=\"$(par8" + r + ")\"/>");
    Response.Write("<postfield name=\"par9\" value=\"$(par9" + r + ")\"/>");
    Response.Write("<postfield name=\"par10\" value=\"$(par10" + r + ")\"/>");
    Response.Write("<postfield name=\"par11\" value=\"$(par11" + r + ")\"/>");
    Response.Write("<postfield name=\"par12\" value=\"$(par12" + r + ")\"/>");
    Response.Write("<postfield name=\"par13\" value=\"$(par13" + r + ")\"/>");
    Response.Write("<postfield name=\"par14\" value=\"$(par14" + r + ")\"/>");
    Response.Write("<postfield name=\"par15\" value=\"$(par15" + r + ")\"/>");
    Response.Write("<postfield name=\"par16\" value=\"$(par16" + r + ")\"/>");
    Response.Write("<postfield name=\"par17\" value=\"$(par17" + r + ")\"/>");
    Response.Write("<postfield name=\"par18\" value=\"$(par18" + r + ")\"/>");
    Response.Write("<postfield name=\"par19\" value=\"$(par19" + r + ")\"/>");
    Response.Write("<postfield name=\"par20\" value=\"$(par20" + r + ")\"/>");
    Response.Write("<postfield name=\"par21\" value=\"$(par21" + r + ")\"/>");
    Response.Write("<postfield name=\"par22\" value=\"$(par22" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");
    
    Response.Write("<br/>说明:其它请到【页面综合排版】→【修改栏目】中配置。");
 

    Response.Write("<br/><a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("更多栏目属性设置|更多栏目属性设置|site setup") + "</div>");
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b></div>");

    }

    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "shop/ClassConfigAll.aspx\" method=\"post\">");

    Response.Write("[20]开启支付宝电脑版“双功能收款”支付功能:");
    Response.Write("<select name=\"par20\">");
    Response.Write("<option value=\"" + par20 + "\">" + par20 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    
    Response.Write("[0]开启支付宝无线产品“手机网站”支付功能:");
    Response.Write("<select name=\"par0\">");
    Response.Write("<option value=\"" + par0 + "\">" + par0 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>（配置id和key到电脑后台，网站管理，会员充值设置）<br/>");

    Response.Write("[1]开启RMB帐户余额支付功能:");
    Response.Write("<select name=\"par1\">");
    Response.Write("<option value=\"" + par1 + "\">" + par1 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[13]开启 " + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, this.lang) + " 支付功能:");
    Response.Write("<select name=\"par13\">");
    Response.Write("<option value=\"" + par13 + "\">" + par13 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("<option value=\"" + KL_SHORE_Anonymous_Open + "\">Web.confi配置：" + KL_SHORE_Anonymous_Open + "</option>");
    Response.Write("</select><br/>(优先级web.config中“KL_SHORE_Anonymous_Open”值)<br/>");


    Response.Write("[14]支付宝收款页面地址:");
    Response.Write("<input type=\"text\" name=\"par14\" value=\"" + this.par14 + "\"/><br/>(例:https://me.alipay.com/kelink)<br/>");
   
    
    Response.Write("[2]货到付款说明:");
    Response.Write("<input type=\"text\" name=\"par2\" value=\"" + this.par2 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"p" + r + "\"  value=\"[b]订单已提交成功，接下来：[/b][br](1)您的订单已成功提交，我们客服人员将会与您联系确认收货信息并发货，请您认准我们的官方唯一呼出号码:13048036868[br](2)严密打包您订购的商品后交由快递公司送货上门到您手中[br](3)货到请您付款给快递人员并验货，完成交易[br](4)如有其它购买相关疑问，可查看问题解答\"/><br/>");
    
    Response.Write("(支持UBB语法)<br/>");

    Response.Write("[11]在线支付顶部说明:");
    Response.Write("<input type=\"text\" name=\"par11\"  value=\"" + this.par11 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"y" + r + "\"  value=\"[b]订单已提交成功，订单如下：[/b][br]\"/><br/>");
    Response.Write("(支持UBB语法)<br/>");

    Response.Write("[3]允许游客评论:");
    Response.Write("<select name=\"par3\">");
    Response.Write("<option value=\"" + par3 + "\">" + par3 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");

    Response.Write("[6]自己的评论只能自己和客服回复:");
    Response.Write("<select name=\"par6\">");
    Response.Write("<option value=\"" + this.par6 + "\">" + this.par6 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[7]游客提交订单后按手机号注册会员:<br/>");
    Response.Write("优先级一：全局设置KL_SHOP_REG当前为" + KL_SHOP_REG + "(0为关，1为开)在web.config配制<br/>");
    Response.Write("优先级二：<select name=\"par7\">");
    Response.Write("<option value=\"" + this.par7 + "\">" + this.par7 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");

    Response.Write("[8]总编辑(标识03)只允许管理订单:<br/>");
    Response.Write("<select name=\"par8\">");
    Response.Write("<option value=\"" + this.par8 + "\">" + this.par8 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[9]支付方式显示:<br/>");
    Response.Write("<select name=\"par9\">");
    Response.Write("<option value=\"" + this.par9 + "\">" + this.par9 + "</option>");
    Response.Write("<option value=\"0\">0_显示货到付款+在线支付</option>");
    Response.Write("<option value=\"1\">1_显示货到付款</option>");
    Response.Write("<option value=\"2\">2_显示在线支付</option>");
    Response.Write("<option value=\"3\">3_下订即扣RMB帐户&amp;[1]要开启</option>");
    Response.Write("</select><br/>");

    Response.Write("[10]列表显示图片宽*高:<br/>");
    Response.Write("<input type=\"text\" name=\"par10\" size=\"7\"  value=\"" + this.par10 + "\"/> 格式300*250或300*0<br/>");
   
   

    Response.Write("[12]列表默认排序:<br/>");
    Response.Write("<select name=\"par12\">");
    Response.Write("<option value=\"" + this.par12 + "\">" + this.par12 + "</option>");
    Response.Write("<option value=\"0\">0_新上架</option>");
    Response.Write("<option value=\"1\">1_按人气</option>");
    Response.Write("</select><br/>");
    
    Response.Write("[4]二级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par4\" value=\"" + this.par4 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"infos" + r + "\" value=\"[url=/wapindex.aspx?siteid=[siteid]&amp;classid=[parentid]]返回上级[/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");

    Response.Write("[5]三级页面返回上级/首页替换:<br/>");
    Response.Write("<input type=\"text\" name=\"par5\" value=\"" + this.par5 + "\"/><br/>");
    Response.Write("例:<input type=\"text\" name=\"infos" + r + "\" value=\"[url=/shop/book_list.aspx?siteid=[siteid]&amp;classid=[classid]]返回[classname][/url]-[url=/wapindex.aspx?siteid=[siteid]]返回首页[/url]\"/><br/>");

    Response.Write("[15]列表中的“加入购物车”改成:<br/>");
    Response.Write("<input type=\"text\" name=\"par15\" value=\"" + this.par15 + "\"/>(如加入购物车)<br/>");

    Response.Write("[16]显示上一条下一条:");
    Response.Write("<select name=\"par16\">");
    Response.Write("<option value=\"" + this.par16 + "\">" + this.par16 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("(关闭提高性能，优先级web.cofig配置)<br/>");
    Response.Write("[17]显示上一页下一页，默认有加载更多按钮:");
    Response.Write("<select name=\"par17\">");
    Response.Write("<option value=\"" + this.par17 + "\">" + this.par17 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");


    Response.Write("[18]热线电话号码:<br/>");
    Response.Write("<input type=\"text\" name=\"par18\" value=\"" + this.par18 + "\"/>(可为空)<br/>");

    Response.Write("[19]短信咨询号码:<br/>");
    Response.Write("<input type=\"text\" name=\"par19\" value=\"" + this.par19 + "\"/>(可为空)<br/>");
    Response.Write("[21]显示运费:");
    Response.Write("<select name=\"par21\">");
    Response.Write("<option value=\"" + this.par21 + "\">" + this.par21 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[22]允许游客下订:");
    Response.Write("<select name=\"par22\">");
    Response.Write("<option value=\"" + this.par22 + "\">" + this.par22 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    
    if (userVo.managerlvl == "00" || userVo.managerlvl == "01")
    {
        Response.Write("<hr/>");
        Response.Write("是否更新所有商店栏目？");
        Response.Write("<br/><input type=\"text\"  name=\"chkall\" size=\"3\" value=\"no\"/>如果是输入yes");
        Response.Write("<hr/>");
    }
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("保 存|保 存|save") + "\"/>");
    Response.Write("</form>");
    Response.Write("</form></div>");
    Response.Write("<div class=\"tip\">");
    Response.Write("说明:其它请到【页面综合排版】→【修改栏目】中配置。");
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "shop/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
  
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


