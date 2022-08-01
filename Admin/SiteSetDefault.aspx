<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SiteSetDefault.aspx.cs" Inherits="KeLin.WebSite.admin.SiteSetDefault" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("网站默认设置|网站默认设置|site setup"), wmlVo));//显示头                                                                                                                                                                       
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


    Response.Write("[30].网站内容审核：<br/>");
    Response.Write("<select name=\"par30" + r + "\" value=\"" + this.par30 + "\">");
    Response.Write("<option value=\"0\">0_不需要</option>");
    Response.Write("<option value=\"1\">1_需要</option>");
    Response.Write("</select>");
    Response.Write(this.ischeckinfo);

    Response.Write("<br/>[0].访问进入版本：<br/>");
    Response.Write("<select name=\"par0" + r + "\" value=\"" + this.par0 + "\">");
    Response.Write("<option value=\"0\">0_自动识别</option>");
    Response.Write("<option value=\"1\">1_WAP1.0(淘汰)</option>");
    Response.Write("<option value=\"2\">2_WAP2.0(触屏)</option>");
    Response.Write("<option value=\"3\">3_电脑界面</option>");
    Response.Write("<option value=\"4\">4_预留</option>");
    Response.Write("<option value=\"5\">5_预留</option>");
    Response.Write("</select><br/>");
    
    Response.Write("[1].默认语言：<br/>");
    Response.Write("<select name=\"par1" + r + "\" value=\"" + this.par1 + "\">");
    Response.Write("<option value=\"0\">0_简单中文</option>");
    Response.Write("<option value=\"1\">1_繁体中文</option>");
    Response.Write("<option value=\"2\">2_英文</option>");
    Response.Write("</select><br/>");
    
    Response.Write("[2].默认屏宽(像素)：<br/>");
    Response.Write("<input type=\"text\" name=\"par2" + r + "\" value=\"" + this.par2 + "\"/><br/>(0为自动)<br/>");
  
    Response.Write("[7].只能手机访问：<br/>");
    Response.Write("<select name=\"par7" + r + "\" value=\"" + this.par7 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启(按UA判断)</option>");
    Response.Write("<option value=\"2\">2_开启(按IP判断)</option>");
    Response.Write("<option value=\"3\">3_开启(按UA+IP判断)</option>");
    Response.Write("</select><br/>");

    Response.Write("----------<br/>");
    Response.Write("[3].会员转币功能：<br/>");
    Response.Write("<select name=\"par3" + r + "\" value=\"" + this.par3 + "\">");
    Response.Write("<option value=\"0\">0_禁用会员</option>");
    Response.Write("<option value=\"2\">2_禁用会员和站长</option>");
    Response.Write("<option value=\"3\">3_启用所有</option>");
    Response.Write("</select><br/>");
    
    Response.Write("[5].一元(RMB)等于多少个"+siteVo.sitemoneyname+"：<br/>");
    Response.Write("<input type=\"text\" name=\"par5" + r + "\" value=\"" + this.par5 + "\"/><br/>(0关闭转换)<br/>");
    Response.Write("----------<br/>");
    Response.Write("[4].上传图片加水印：<br/>");
    Response.Write("<select name=\"par4" + r + "\" value=\"" + this.par4 + "\">");
    Response.Write("<option value=\"0\">0_禁用</option>");
    Response.Write("<option value=\"1\">1_启用</option>");
    Response.Write("</select><br/>");
    Response.Write("(非gif且宽大于100像素)<br/>");
    Response.Write("[12]图片水印：<br/>");
    Response.Write("<input type=\"text\" name=\"par12" + r + "\" value=\"" + this.par12 + "\" /><br/>");
    Response.Write("(相对地址“/”开始，如/bbs/upload/123.gif。建议用透明gif图。留空默认为网址水印)<br/>");
    Response.Write("[13]网址水印大小：<br/>");
    Response.Write("<input type=\"text\" name=\"par13" + r + "\" value=\"" + this.par13 + "\" size=\"3\"/><br/>");
    Response.Write("(显示网址字体大小)<br/>");
    Response.Write("[16]水印字体颜色：<br/>");
    Response.Write("#<input type=\"text\" name=\"par16" + r + "\" value=\"" + this.par16 + "\" size=\"7\"/><br/>");
    Response.Write("(例黄色#FFFF00，红色#FF0000，蓝色#0000FF)<br/>");
    Response.Write("[8].缩放图宽：<br/>");
    Response.Write("宽:<input type=\"text\" name=\"par8" + r + "\" value=\"" + this.par8 + "\" size=\"3\"/> (130或以上)<br/>");
    Response.Write("9.缩放图高：<br/>");
    Response.Write("高:<input type=\"text\" name=\"par9" + r + "\" value=\"" + this.par9 + "\" size=\"3\"/> (建议0保持比例)<br/>");
    Response.Write("(缩放图体显示在图片/相册等列表，建议宽130)<br/>");
    Response.Write("----------<br/>");
    Response.Write("[10].[11]网站全局顶部/底部整合至“页面综合排版”<br/>");
   
    Response.Write("----------<br/>");
    Response.Write("[14]新会员多久才能发贴：<br/>");
    Response.Write("<input type=\"text\" name=\"par14" + r + "\" value=\"" + this.par14 + "\" size=\"3\"/>分钟<br/>");
    Response.Write("[15]新会员多久才能回贴<br/>");
    Response.Write("<input type=\"text\" name=\"par15" + r + "\" value=\"" + this.par15 + "\" size=\"3\"/>分钟<br/>");
    Response.Write("(默认0不限制)<br/>");
    

    Response.Write("[18].允许版主发签到贴：<br/>");
    Response.Write("<select name=\"par18" + r + "\" value=\"" + this.par18 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[19].论坛公告权限版主：<br/>");
    Response.Write("<select name=\"par19" + r + "\" value=\"" + this.par19 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[25].论坛更多属性给版主：<br/>");
    Response.Write("<select name=\"par25" + r + "\" value=\"" + this.par25 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[26].普通会员删主题/回贴：<br/>");
    Response.Write("<select name=\"par26" + r + "\" value=\"" + this.par26 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[28].总版主/版主将主题推送下载：<br/>");
    Response.Write("<select name=\"par28" + r + "\" value=\"" + this.par28 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[27].会员等级/头衔按：<br/>");
    Response.Write("<select name=\"par27" + r + "\" value=\"" + this.par27 + "\">");
    Response.Write("<option value=\"0\">0_经验升级</option>");
    Response.Write("<option value=\"1\">1_"+siteVo.sitemoneyname+"升级</option>");
    Response.Write("</select><br/>");
    Response.Write("[29]会员默认个性签名：<br/>");
    Response.Write("<input type=\"text\" name=\"par29" + r + "\" value=\"" + this.par29 + "\"/><br/>");
    Response.Write("[22]论坛签到/赏/购买/转币等最大币值：<br/>");
    Response.Write("<input type=\"text\" name=\"par22" + r + "\" value=\"" + this.par22 + "\"/><br/>");
    Response.Write("[31].发贴回贴等是否首次需要密码验证：<br/>");
    Response.Write("<select name=\"par31" + r + "\" value=\"" + this.par31 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[53].发短信查短信是否首次需要密码验证：<br/>");
    Response.Write("<select name=\"par53" + r + "\" value=\"" + this.par53 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[54].进入我的地盘是否首次需要密码验证：<br/>");
    Response.Write("<select name=\"par54" + r + "\" value=\"" + this.par54 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    
    Response.Write("----------<br/>");
    Response.Write("[17].页面链接地址使用：<br/>");
    Response.Write("<select name=\"par17" + r + "\" value=\"" + this.par17 + "\">");
    Response.Write("<option value=\"0\">0_绝对地址(域名开头)</option>");
    Response.Write("<option value=\"1\">1_相对地址(/开头)</option>");
    Response.Write("</select><br/>");
    Response.Write("(相对地址可减小页面容量,加快显示速度,省流量,缺点有些手机可能不太支持)<br/>");
    Response.Write("[20].首页选电脑版(ver=3)时跳转至：<br/>");
    Response.Write("<input type=\"text\" name=\"par20" + r + "\" value=\"" + this.par20 + "\"/><br/>");
    Response.Write("[21].首页选平板电脑版(ver=4)时跳转至：<br/>");
    Response.Write("<input type=\"text\" name=\"par21" + r + "\" value=\"" + this.par21 + "\"/><br/>");
    Response.Write("如已有非柯林WEB版站，用http开头录入URL地址。<br/>");
    if (KL_Open_Redirect != "1")
    {
        Response.Write("<b>(超级管理员已关闭[20][21]地址跳转功能！)</b><br/>");
    }
    Response.Write("----------<br/>");
    Response.Write("[23].下载文件加入域名：<br/>");
    Response.Write("<select name=\"par23" + r + "\" value=\"" + this.par23 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");   
    Response.Write("</select><br/>");
    Response.Write("[24].下载文件名编码：<br/>");
    Response.Write("<select name=\"par24" + r + "\" value=\"" + this.par24 + "\">");
    Response.Write("<option value=\"0\">0_自动判断</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("<option value=\"2\">2_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("(以上先要开启防盗链功能)<br/>");
    Response.Write("[32].短信发送校验码：<br/>");
    Response.Write("<input type=\"text\" name=\"par32" + r + "\" value=\"" + this.par32 + "\"/><br/>");
    Response.Write("(英文或数字,功能进入WEB后台【网站管理】→【短信发送】查看)<br/>");

    Response.Write("----------<br/>");
    Response.Write("[33].论坛昵称颜色：<br/>");
    Response.Write("<select name=\"par33" + r + "\" value=\"" + this.par33 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭提升性能</option>");
    Response.Write("</select><br/>");
    Response.Write("[34].聊天室昵称颜色：<br/>");
    Response.Write("<select name=\"par34" + r + "\" value=\"" + this.par34 + "\">");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭提升性能</option>");
    Response.Write("</select><br/>");
    Response.Write("[35].查看会员联系方式需身份级别ID：<br/>");
    Response.Write("<input type=\"text\" name=\"par35" + r + "\" value=\"" + this.par35 + "\"/>(多个用,号隔开,0所有)<br/>");
    Response.Write("([33][34][35]<a href=\"/bbs/smalltypelist.aspx?siteid="+this.siteid+"&amp;systype=card&amp;sid="+this.sid+"\">设置颜色或查看身份ID</a>)<br/>");

    Response.Write("----------<br/>");
    Response.Write("[36]完成任务数量：");
    Response.Write("<input type=\"text\" name=\"par36" + r + "\" value=\"" + this.par36 + "\" size=\"3\"/><br/>");
    Response.Write("[37]完成任务送币：");
    Response.Write("<input type=\"text\" name=\"par37" + r + "\" value=\"" + this.par37 + "\" size=\"3\"/><br/>");
    Response.Write("[38]完成任务送经验：");
    Response.Write("<input type=\"text\" name=\"par38" + r + "\" value=\"" + this.par38 + "\" size=\"3\"/><br/>");
    /* 2014.1.14 此设置转移至聊天栏目--》更多栏目属性设置
    Response.Write("----------<br/>");
    Response.Write("[39]聊天室抢币文字：<br/>");
    Response.Write("<input type=\"text\" name=\"par39"+r+"\" value=\"" + this.par39 + "\"  /><br/>");
    Response.Write("(多个用,隔开，如：恭,喜,发,财)<br/>");
    Response.Write("[40]抢中送币：<br/>");
    Response.Write("<input type=\"text\" name=\"par40"+r+"\" value=\"" + this.par40 + "\"  /><br/>");
    Response.Write("(跟上面文字对应,隔开，如：100,200,300,400可负数)<br/>");
    Response.Write("[41]每隔多少秒显示：<br/>");
    Response.Write("<input type=\"text\" name=\"par41" + r + "\" size=\"5\" value=\"" + this.par41 + "\"  />秒<br/>");
    */
    Response.Write("----------<br/>");
    Response.Write("[39].显示微信帐号登录按钮：<br/>");
    Response.Write("<select name=\"par39" + r + "\" value=\"" + this.par39 + "\">");
    Response.Write("<option value=\"0\">0_显示</option>");
    Response.Write("<option value=\"1\">1_隐藏</option>");
    Response.Write("</select><br/>");
    Response.Write("[40].商店模块订单状态：<br/>");
    Response.Write("<select name=\"par40" + r + "\" value=\"" + this.par40 + "\">");
    Response.Write("<option value=\"1\">1_淘宝网模式</option>");
    Response.Write("<option value=\"0\">0_货到付款模式</option>");    
    Response.Write("</select><br/>");
    Response.Write("[59].商店订单接收邮件地址：<br/>");
    Response.Write("<input type=\"text\" name=\"par59" + r + "\" value=\"" + this.par59 + "\"/><br/>(多个用;区分)<br/>");
  

    Response.Write("[41]论坛贴子浏览量大于：<br/>");
    Response.Write("<input type=\"text\" name=\"par41" + r + "\" size=\"5\" value=\"" + this.par41 + "\"  />显示火图标<br/>");
    
    Response.Write("----------<br/>");
    Response.Write("[46].游戏短信通知：<br/>");
    Response.Write("<select name=\"par46" + r + "\" value=\"" + this.par46 + "\">");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("----------<br/>");
    Response.Write("[47]大于多少个勋章显示更多按钮:");
    Response.Write("<input type=\"text\" name=\"par47" + r + "\" value=\"" + this.par47 + "\" size=\"3\" /><br/>");
    Response.Write("[48]昵称最大长度:");
    Response.Write("<input type=\"text\" name=\"par48" + r + "\" value=\"" + this.par48 + "\" size=\"3\" />(0默认16)<br/>");
    Response.Write("[49]备注最大长度:");
    Response.Write("<input type=\"text\" name=\"par49" + r + "\" value=\"" + this.par49 + "\" size=\"3\" />(0默认50)<br/>");
    Response.Write("[50]城市最大长度:");
    Response.Write("<input type=\"text\" name=\"par50" + r + "\" value=\"" + this.par50 + "\" size=\"3\" />(0默认50)<br/>");


    Response.Write("----------<br/>");
    Response.Write("[51].显示QQ帐号登录按钮：<br/>");
    Response.Write("<select name=\"par51" + r + "\" value=\"" + this.par51 + "\">");
    Response.Write("<option value=\"0\">0_显示</option>");
    Response.Write("<option value=\"1\">1_隐藏</option>");
    Response.Write("</select><br/>");
    Response.Write("[52].隐藏绑定会员ID：<br/>");
    Response.Write("<select name=\"par52" + r + "\" value=\"" + this.par52 + "\">");
    Response.Write("<option value=\"0\">0_隐藏</option>");
    Response.Write("<option value=\"1\">1_显示</option>");
    Response.Write("</select><br/>");
    Response.Write("(注意:在QQ帐号未通过审核之前请先隐藏邦定会员ID功能)<br/>");
    
    Response.Write("----------<br/>");
    Response.Write("[55].参数保存方式：<br/>");
    Response.Write("<select name=\"par55" + r + "\" value=\"" + this.par55 + "\">");
    Response.Write("<option value=\"0\">0_服务器保存(不定时回收，需常登录)</option>");
    Response.Write("<option value=\"1\">1_本地保存(cookies保存常久)</option>");
    Response.Write("</select><br/>");
    Response.Write("----------<br/>");
    Response.Write("[56].注册成功后进入界面：<br/>");
    Response.Write("<select name=\"par56" + r + "\" value=\"" + this.par56 + "\">");    
    Response.Write("<option value=\"1\">1_进入我的地盘</option>");
    Response.Write("<option value=\"2\">2_进入网站首页</option>");
    Response.Write("<option value=\"0\">0_显示注册成功信息</option>");
    Response.Write("</select><br/>");

    Response.Write("[57]客户端页面缓存时间:");
    Response.Write("<input type=\"text\" name=\"par57" + r + "\" value=\"" + this.par57 + "\" size=\"3\" />(分钟)<br/>");
    Response.Write("[58]除首页外标题后显示内容:");
    Response.Write("<input type=\"text\" name=\"par58" + r + "\" value=\"" + this.par58 + "\" /><br/>(建议写网站标题+网址，方便收录，其它SEO请到电脑后台编辑CSS录入框中)<br/>");

    Response.Write("[60].站内搜索是否需登录：<br/>");
    Response.Write("<select name=\"par60" + r + "\" value=\"" + this.par60 + "\">");    
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    
    Response.Write("<anchor><go href=\""+http_start+"admin/SiteSetDefault.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield name=\"action\" value=\"gomod\"/>");    
    Response.Write("<postfield name=\"siteid\" value=\""+siteid+"\"/>");
    Response.Write("<postfield name=\"par0\" value=\"$(par0" + r + ")\"/>");
    Response.Write("<postfield name=\"par1\" value=\"$(par1" + r + ")\"/>");
    Response.Write("<postfield name=\"par2\" value=\"$(par2" + r + ")\"/>");
    Response.Write("<postfield name=\"par3\" value=\"$(par3" + r + ")\"/>");
    Response.Write("<postfield name=\"par4\" value=\"$(par4" + r + ")\"/>");
    Response.Write("<postfield name=\"par5\" value=\"$(par5" + r + ")\"/>");
    Response.Write("<postfield name=\"par6\" value=\"0\"/>");
    Response.Write("<postfield name=\"par7\" value=\"$(par7" + r + ")\"/>");
    Response.Write("<postfield name=\"par8\" value=\"$(par8" + r + ")\"/>");
    Response.Write("<postfield name=\"par9\" value=\"$(par9" + r + ")\"/>");
    Response.Write("<postfield name=\"par10\" value=\"" + this.par10  + "\"/>");
    Response.Write("<postfield name=\"par11\" value=\"" + this.par11  +"\"/>");
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
    Response.Write("<postfield name=\"par23\" value=\"$(par23" + r + ")\"/>");
    Response.Write("<postfield name=\"par24\" value=\"$(par24" + r + ")\"/>");
    Response.Write("<postfield name=\"par25\" value=\"$(par25" + r + ")\"/>");
    Response.Write("<postfield name=\"par26\" value=\"$(par26" + r + ")\"/>");
    Response.Write("<postfield name=\"par27\" value=\"$(par27" + r + ")\"/>");
    Response.Write("<postfield name=\"par28\" value=\"$(par28" + r + ")\"/>");
    Response.Write("<postfield name=\"par29\" value=\"$(par29" + r + ")\"/>");
    Response.Write("<postfield name=\"par30\" value=\"$(par30" + r + ")\"/>");
    Response.Write("<postfield name=\"par31\" value=\"$(par31" + r + ")\"/>");
    Response.Write("<postfield name=\"par32\" value=\"$(par32" + r + ")\"/>");
    Response.Write("<postfield name=\"par33\" value=\"$(par33" + r + ")\"/>");
    Response.Write("<postfield name=\"par34\" value=\"$(par34" + r + ")\"/>");
    Response.Write("<postfield name=\"par35\" value=\"$(par35" + r + ")\"/>");
    Response.Write("<postfield name=\"par36\" value=\"$(par36" + r + ")\"/>");
    Response.Write("<postfield name=\"par37\" value=\"$(par37" + r + ")\"/>");
    Response.Write("<postfield name=\"par38\" value=\"$(par38" + r + ")\"/>");
    Response.Write("<postfield name=\"par39\" value=\"$(par39" + r + ")\"/>");
    Response.Write("<postfield name=\"par40\" value=\"$(par40" + r + ")\"/>");
    Response.Write("<postfield name=\"par41\" value=\"$(par41" + r + ")\"/>");
    Response.Write("<postfield name=\"par42\" value=\"" + this.par42 + "\"/>");
    Response.Write("<postfield name=\"par43\" value=\"" + this.par43 + "\"/>");
    Response.Write("<postfield name=\"par44\" value=\"" + this.par44 + "\"/>");
    Response.Write("<postfield name=\"par45\" value=\"" + this.par45 + "\"/>");
    Response.Write("<postfield name=\"par46\" value=\"$(par46" + r + ")\"/>");
    Response.Write("<postfield name=\"par47\" value=\"$(par47" + r + ")\"/>");
    Response.Write("<postfield name=\"par48\" value=\"$(par48" + r + ")\"/>");
    Response.Write("<postfield name=\"par49\" value=\"$(par49" + r + ")\"/>");
    Response.Write("<postfield name=\"par50\" value=\"$(par50" + r + ")\"/>");
    Response.Write("<postfield name=\"par51\" value=\"$(par51" + r + ")\"/>");
    Response.Write("<postfield name=\"par52\" value=\"$(par52" + r + ")\"/>");
    Response.Write("<postfield name=\"par53\" value=\"$(par53" + r + ")\"/>");
    Response.Write("<postfield name=\"par54\" value=\"$(par54" + r + ")\"/>");
    Response.Write("<postfield name=\"par55\" value=\"$(par55" + r + ")\"/>");
    Response.Write("<postfield name=\"par56\" value=\"$(par56" + r + ")\"/>");
    Response.Write("<postfield name=\"par57\" value=\"$(par57" + r + ")\"/>");
    Response.Write("<postfield name=\"par58\" value=\"$(par58" + r + ")\"/>");
    Response.Write("<postfield name=\"par59\" value=\"$(par59" + r + ")\"/>");
    Response.Write("<postfield name=\"par60\" value=\"$(par60" + r + ")\"/>");
    Response.Write("<postfield name=\"sid\" value=\""+sid+"\"/>");
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");
    Response.Write("<br/>------------<br/>");
    Response.Write("其它:是否防盗链，下载文件名带有本站域名等等，由超级管理员配置web.config！<br/>");
    Response.Write("<br/><a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("网站默认设置|网站默认设置|site setup") + "</div>");
    Response.Write("<div class=\"tip\">电脑上 Ctrl+F 进行搜索</div>");
   
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b></div>");

    }

    
    Response.Write("<form name=\"f\" action=\"" + http_start + "admin/SiteSetDefault.aspx\" method=\"post\">");

    Response.Write("<div class=\"line2\">");
    Response.Write("[30]网站内容审核：<br/>");
    Response.Write("<select name=\"par30\" value=\"" + this.par30 + "\">");
    Response.Write("<option value=\"" + this.par30 + "\">" + this.par30 + "</option>");
    Response.Write("<option value=\"0\">0_不需要</option>");
    Response.Write("<option value=\"1\">1_需要</option>");
    Response.Write("</select>");
    Response.Write(this.ischeckinfo);
    Response.Write("</div>");
    
    Response.Write("<div class=\"line1\">");
    Response.Write("[0]访问进入版本：<br/>");
    Response.Write("<select name=\"par0\" value=\"" + this.par0 + "\">");
    Response.Write("<option value=\"" + this.par0 + "\">" + this.par0 + "</option>");
    Response.Write("<option value=\"0\">0_自动识别</option>");
    Response.Write("<option value=\"1\">1_WAP1.0(淘汰)</option>");
    Response.Write("<option value=\"2\">2_WAP2.0(触屏)</option>");
    Response.Write("<option value=\"3\">3_电脑界面</option>");
    Response.Write("<option value=\"4\">4_预留</option>");
    Response.Write("<option value=\"5\">5_预留</option>");
    Response.Write("</select><br/>");

    Response.Write("[1]默认语言：<br/>");
    Response.Write("<select name=\"par1\" value=\"" + this.par1 + "\">");
    Response.Write("<option value=\"" + this.par1 + "\">" + this.par1 + "</option>");
    Response.Write("<option value=\"0\">0_简单中文</option>");
    Response.Write("<option value=\"1\">1_繁体中文</option>");
    Response.Write("<option value=\"2\">2_英文</option>");
    Response.Write("</select><br/>");

    Response.Write("[2]默认屏宽(像素)：<br/>");
    Response.Write("<input type=\"text\" name=\"par2\" value=\"" + this.par2 + "\"/><br/>(0为自动)<br/>");
    Response.Write("<input type=\"hidden\" name=\"par6\" value=\"0\"/>");
   
    Response.Write("[7]只能手机访问：<br/>");
    Response.Write("<select name=\"par7\">");
    Response.Write("<option value=\"" + this.par7 + "\">" + this.par7 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启(按UA判断)</option>");
    Response.Write("<option value=\"2\">2_开启(按IP判断)</option>");
    Response.Write("<option value=\"3\">3_开启(按UA+IP判断)</option>");
    Response.Write("</select><br/>");

    Response.Write("</div>");
    Response.Write("<div class=\"line2\">");
    Response.Write("[3]会员转虚拟币功能：<br/>");
    Response.Write("<select name=\"par3\" value=\"" + this.par3 + "\">");
    Response.Write("<option value=\"" + this.par3 + "\">" + this.par3 + "</option>");
    Response.Write("<option value=\"0\">0_禁用会员</option>");
    Response.Write("<option value=\"2\">2_禁用会员和站长</option>");
    Response.Write("<option value=\"3\">3_启用所有</option>");
    Response.Write("</select><br/>");

    Response.Write("[5]一元(RMB)等于多少个" + siteVo.sitemoneyname + "：<br/>");
    Response.Write("<input type=\"text\" name=\"par5\" value=\"" + this.par5 + "\"/><br/>(0关闭转换)<br/>");
    Response.Write("</div>");
    Response.Write("<div class=\"line1\">");
    
    Response.Write("[4]上传图片加水印：<br/>");
    Response.Write("<select name=\"par4\" value=\"" + this.par4 + "\">");
    Response.Write("<option value=\"" + this.par4 + "\">" + this.par4 + "</option>");
    Response.Write("<option value=\"0\">0_禁用</option>");
    Response.Write("<option value=\"1\">1_启用</option>");
    Response.Write("</select><br/>");
    Response.Write("(非gif且宽大于100像素)<br/>");
    Response.Write("[12]图片水印：<br/>");
    Response.Write("<input type=\"text\" name=\"par12\" value=\"" + this.par12 + "\"/><br/>");
    Response.Write("(相对地址“/”开始，如/bbs/upload/123.gif。建议用透明gif图。留空默认为网址水印)<br/>");
    Response.Write("[13]网址水印大小：<br/>");
    Response.Write("<input type=\"text\" name=\"par13\" value=\"" + this.par13 + "\" size=\"3\"/><br/>");
    Response.Write("(显示网址字体大小)<br/>");
    Response.Write("[16]水印字体颜色：<br/>");
    Response.Write("#<input type=\"text\" name=\"par16\" value=\"" + this.par16 + "\" size=\"7\"/><br/>");
    Response.Write("(例黄色#FFFF00，红色#FF0000，蓝色#0000FF)<br/>");
    Response.Write("[8]缩放图宽:<input type=\"text\" name=\"par8\" value=\"" + this.par8 + "\" size=\"3\"/> (130或以上)<br/>");
    Response.Write("[9]缩放图高:<input type=\"text\" name=\"par9\" value=\"" + this.par9 + "\" size=\"3\"/> (0为默认)<br/>");
    Response.Write("(缩放图体显示在图片/相册等列表中，建议130)<br/>");
    Response.Write("</div>");
    Response.Write("<div class=\"line2\">");
    //Response.Write("[10].网站全局顶部显示：<br/>");
    Response.Write("<input type=\"hidden\" name=\"par10\" value=\"" + this.par10 + "\"/>");
    //Response.Write("[11]网站全局底部显示：<br/>");
    Response.Write("<input type=\"hidden\" name=\"par11\" value=\"" + this.par11 + "\"/>");
    Response.Write("[10].[11]网站全局顶部/底部整合至“页面综合排版”<br/>");
    Response.Write("</div>");
    Response.Write("<div class=\"line1\">");
    Response.Write("[14]新会员多久才能发贴：<br/>");
    Response.Write("<input type=\"text\" name=\"par14\" value=\"" + this.par14 + "\" size=\"3\"/>分钟<br/>");
    Response.Write("[15]新会员多久才能回贴：<br/>");
    Response.Write("<input type=\"text\" name=\"par15\" value=\"" + this.par15 + "\" size=\"3\"/>分钟<br/>");
    Response.Write("(默认0不限制。)<br/>");
    Response.Write("[18].允许版主发签到贴：<br/>");
    Response.Write("<select name=\"par18\">");
    Response.Write("<option value=\"" + this.par18 + "\">" + this.par18 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[19].论坛公告权限给版主：<br/>");
    Response.Write("<select name=\"par19\">");
    Response.Write("<option value=\"" + this.par19 + "\">" + this.par19 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[25].论坛更多属性给版主：<br/>");
    Response.Write("<select name=\"par25\">");
    Response.Write("<option value=\"" + this.par25 + "\">" + this.par25 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[26].普通会员删主题/回贴：<br/>");
    Response.Write("<select name=\"par26\">");
    Response.Write("<option value=\"" + this.par26 + "\">" + this.par26 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[28].总版主/版主将主题推送下载：<br/>");
    Response.Write("<select name=\"par28\">");
    Response.Write("<option value=\"" + this.par28 + "\">" + this.par28 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("</select><br/>");
    Response.Write("[27].会员等级/头衔按：<br/>");
    Response.Write("<select name=\"par27\">");
    Response.Write("<option value=\"" + this.par27 + "\">" + this.par27 + "</option>");
    Response.Write("<option value=\"0\">0_经验升级</option>");
    Response.Write("<option value=\"1\">1_" + siteVo.sitemoneyname + "升级</option>");
    Response.Write("</select><br/>");
    Response.Write("[29]会员默认个性签名：<br/>");
    Response.Write("<input type=\"text\" name=\"par29\" value=\"" + this.par29 + "\"/><br/>");
    Response.Write("[22]论坛签到/赏/购买/转币等最大币值：<br/>");
    Response.Write("<input type=\"text\" name=\"par22\" value=\"" + this.par22 + "\"/><br/>");
    Response.Write("[31].发贴回贴发短信等是否首次需要密码验证：<br/>");
    Response.Write("<select name=\"par31\">");
    Response.Write("<option value=\"" + this.par31 + "\">" + this.par31 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[53].发短信看短信是否首次需要密码验证：<br/>");
    Response.Write("<select name=\"par53\">");
    Response.Write("<option value=\"" + this.par53 + "\">" + this.par53 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[54].进入我的地盘首次需要密码验证：<br/>");
    Response.Write("<select name=\"par54\">");
    Response.Write("<option value=\"" + this.par54 + "\">" + this.par54 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select>");
    Response.Write("</div>");
    Response.Write("<div class=\"line2\">");
    Response.Write("[17].页面链接地址使用：<br/>");
    Response.Write("<select name=\"par17\">");
    Response.Write("<option value=\"" + this.par17 + "\">" + this.par17 + "</option>");
    Response.Write("<option value=\"0\">0_绝对地址(域名开头)</option>");
    Response.Write("<option value=\"1\">1_相对地址(/开头)</option>");
    Response.Write("</select><br/>");
    Response.Write("(相对地址可减小页面容量，加快显示速度，省流量，缺点低端手机可能不太支持)<br/>");
    Response.Write("[20].首页选电脑版(ver=3)时跳转至：<br/>");
    Response.Write("<input type=\"text\" name=\"par20\" value=\"" + this.par20 + "\"/><br/>");
    Response.Write("[21].首页选平板电脑版(ver=4)时跳转至：<br/>");
    Response.Write("<input type=\"text\" name=\"par21\" value=\"" + this.par21 + "\"/><br/>");
    Response.Write("如已有非柯林WEB版站，用http开头录入URL地址。<br/>");
    if (KL_Open_Redirect != "1")
    {
        Response.Write("<b>(超级管理员已关闭[20][21]地址跳转功能！)</b><br/>");
    }
    Response.Write("</div>");

    Response.Write("<div class=\"line1\">");
    Response.Write("[23].下载文件加入域名：<br/>");
    Response.Write("<select name=\"par23\">");
    Response.Write("<option value=\"" + this.par23 + "\">" + this.par23 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    Response.Write("[24].下载文件名编码：<br/>");
    Response.Write("<select name=\"par24\">");
    Response.Write("<option value=\"" + this.par24 + "\">" + this.par24 + "</option>");
    Response.Write("<option value=\"0\">0_自动判断</option>");
    Response.Write("<option value=\"1\">1_关闭</option>");
    Response.Write("<option value=\"2\">2_开启</option>");
    Response.Write("</select>");
    Response.Write("<br/>(以上先要开启防盗链功能)<br/>");
    Response.Write("[32].短信发送校验码：<br/>");
    Response.Write("<input type=\"text\" name=\"par32\" value=\"" + this.par32 + "\"/><br/>");
    Response.Write("(英文或数字,功能进入WEB后台【网站管理】→【短信发送】查看)<br/>");
    Response.Write("</div>");


    Response.Write("<div class=\"line2\">");
    Response.Write("[33].论坛昵称颜色：<br/>");
    Response.Write("<select name=\"par33\">");
    Response.Write("<option value=\"" + this.par33 + "\">" + this.par33 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭提升性能</option>");
    Response.Write("</select><br/>");
    Response.Write("[34].聊天室昵称颜色：<br/>");
    Response.Write("<select name=\"par34\">");
    Response.Write("<option value=\"" + this.par34 + "\">" + this.par34 + "</option>");
    Response.Write("<option value=\"0\">0_开启</option>");
    Response.Write("<option value=\"1\">1_关闭提升性能</option>");
    Response.Write("</select><br/>");
    Response.Write("[35].查看会员联系方式需身份级别ID：<br/>");
    Response.Write("<input type=\"text\" name=\"par35\" value=\"" + this.par35 + "\"/>(多个用,号隔开,0所有)<br/>");
    Response.Write("([33][34][35]<a href=\"/bbs/smalltypelist.aspx?siteid=" + this.siteid + "&amp;systype=card\">设置颜色或查看身份ID</a>)<br/>");
    Response.Write("</div>");

    Response.Write("<div class=\"line1\">");
    Response.Write("[36]完成任务数量：");
    Response.Write("<input type=\"text\" name=\"par36\" value=\"" + this.par36 + "\" size=\"3\"/><br/>");
    Response.Write("[37]完成任务送币：");
    Response.Write("<input type=\"text\" name=\"par37\" value=\"" + this.par37 + "\" size=\"3\"/><br/>");
    Response.Write("[38]完成任务送经验：");
    Response.Write("<input type=\"text\" name=\"par38\" value=\"" + this.par38 + "\" size=\"3\"/><br/>");
    Response.Write("</div>");

    Response.Write("<div class=\"line2\">");
   /* 1021.1.14 此配制移至聊天室栏目，更多栏目配制中
    Response.Write("[39]聊天室抢币文字：<br/>");
    Response.Write("<input type=\"text\" name=\"par39\" value=\"" + this.par39 + "\"  /><br/>");
    Response.Write("(多个用,隔开，如：恭,喜,发,财)<br/>");
    Response.Write("[40]抢中送币：<br/>");
    Response.Write("<input type=\"text\" name=\"par40\" value=\"" + this.par40 + "\"  /><br/>");
    Response.Write("(跟上面文字对应,隔开，如：100,200,300,400可负数)<br/>");
    Response.Write("[41]每隔多少秒显示：<br/>");
    Response.Write("<input type=\"text\" name=\"par41\" size=\"5\" value=\"" + this.par41 + "\"  />秒(默认300)<br/>");
    */

    Response.Write("[39].显示微信帐号登录按钮：<br/>");
    Response.Write("<select name=\"par39\">");
    Response.Write("<option value=\"" + this.par39 + "\">" + this.par39 + "</option>");
    Response.Write("<option value=\"0\">0_显示</option>");
    Response.Write("<option value=\"1\">1_隐藏</option>");
    Response.Write("</select><br/>");
    Response.Write("[40].商店模块订单状态：<br/>");
    Response.Write("<select name=\"par40\">");
    Response.Write("<option value=\"" + this.par40 + "\">" + this.par40 + "</option>");
    Response.Write("<option value=\"1\">1_淘宝网模式</option>");
    Response.Write("<option value=\"0\">0_货到付款模式</option>");   
    Response.Write("</select><br/>");
    Response.Write("[59].商店订单接收邮箱地址：<br/>");
    Response.Write("<input type=\"text\" name=\"par59\" value=\"" + this.par59 + "\"/><br/>(多个;区分)<br/>");
   

    Response.Write("[41]论坛贴子浏览量大于：<br/>");
    Response.Write("<input type=\"text\" name=\"par41\" size=\"5\" value=\"" + this.par41 + "\"  />显示火图标<br/>");
    
   
    
    Response.Write("<input type=\"hidden\" name=\"par42\" value=\"" + this.par42 + "\"  />");
    Response.Write("<input type=\"hidden\" name=\"par43\" value=\"" + this.par43 + "\"  />");
    Response.Write("<input type=\"hidden\" name=\"par44\" value=\"" + this.par44 + "\"  />");
    Response.Write("<input type=\"hidden\" name=\"par45\" value=\"" + this.par45 + "\"  />");
    Response.Write("</div>");
    Response.Write("<div class=\"line1\">");
    Response.Write("[46].游戏短信通知：<br/>");
    Response.Write("<select name=\"par46\">");
    Response.Write("<option value=\"" + this.par46 + "\">" + this.par46 + "</option>");
    Response.Write("<option value=\"0\">0_关闭</option>");
    Response.Write("<option value=\"1\">1_开启</option>");
    Response.Write("</select><br/>");
    
   Response.Write("</div>");

   Response.Write("<div class=\"line2\">");
   Response.Write("[47]大于多少个勋章显示更多按钮:");
   Response.Write("<input type=\"text\" name=\"par47\" value=\"" + this.par47 + "\" size=\"3\" /><br/>");
   Response.Write("[48]昵称最大长度:");
   Response.Write("<input type=\"text\" name=\"par48\" value=\"" + this.par48 + "\" size=\"3\" />(0默认16)<br/>");
   Response.Write("[49]备注最大长度:");
   Response.Write("<input type=\"text\" name=\"par49\" value=\"" + this.par49 + "\" size=\"3\" />(0默认50)<br/>");
   Response.Write("[50]城市最大长度:");
   Response.Write("<input type=\"text\" name=\"par50\" value=\"" + this.par50 + "\" size=\"3\" />(0默认50)<br/>");
    
   Response.Write("</div>");

   Response.Write("<div class=\"line1\">");
   Response.Write("[51].显示QQ帐号登录按钮：<br/>");
   Response.Write("<select name=\"par51\">");
   Response.Write("<option value=\"" + this.par51 + "\">" + this.par51 + "</option>");
   Response.Write("<option value=\"0\">0_显示</option>");
   Response.Write("<option value=\"1\">1_隐藏</option>");
   Response.Write("</select><br/>");
   Response.Write("[52].隐藏绑定会员ID：<br/>");
   Response.Write("<select name=\"par52\">");
   Response.Write("<option value=\"" + this.par52 + "\">" + this.par52 + "</option>");
   Response.Write("<option value=\"0\">0_隐藏</option>");
   Response.Write("<option value=\"1\">1_显示</option>");
   Response.Write("</select><br/>");
   Response.Write("(注意:在QQ帐号未通过审核之前请先隐藏邦定会员ID功能)<br/>");
   Response.Write("</div>");

   Response.Write("<div class=\"line2\">");
   Response.Write("[55].参数保存方式：<br/>");
   Response.Write("<select name=\"par55\">");
   Response.Write("<option value=\"" + this.par55 + "\">" + this.par55 + "</option>");
   Response.Write("<option value=\"0\">0_服务器保存(不定时回收，常登录)</option>");
   Response.Write("<option value=\"1\">1_本地保存(cookies保存常久)</option>");
   Response.Write("</select><br/>");
   Response.Write("[56].注册成功后进入界面：<br/>");
   Response.Write("<select name=\"par56\">");
   Response.Write("<option value=\"" + this.par56 + "\">" + this.par56 + "</option>");  
   Response.Write("<option value=\"1\">1_进入我的地盘</option>");
   Response.Write("<option value=\"2\">2_进入网站首页</option>");
   Response.Write("<option value=\"0\">0_显示注册成功信息</option>");
   Response.Write("</select><br/>");
   Response.Write("[57]客户端页面缓存时间:");
   Response.Write("<input type=\"text\" name=\"par57\" value=\"" + this.par57 + "\" size=\"3\" />(分钟)<br/>");

   Response.Write("[58]除首页外标题后显示内容(默认显示网站标题，如太长请下面自己定义):");
   Response.Write("<input type=\"text\" name=\"par58\" value=\"" + this.par58 + "\" /><br/>(建议写网站标题+网址，方便收录，其它SEO请到电脑后台编辑CSS录入框中)<br/>");

   Response.Write("[60].站内搜索是否需登录：<br/>");
   Response.Write("<select name=\"par60\">");
   Response.Write("<option value=\"" + this.par60 + "\">" + this.par60 + "</option>");
   Response.Write("<option value=\"0\">0_关闭</option>");
   Response.Write("<option value=\"1\">1_开启</option>");
   Response.Write("</select><br/>");
    
   Response.Write("</div>");
    
    Response.Write("<div class=\"line1\">");
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\"  name=\"g\" class=\"btn\" value=\"" + this.GetLang("保 存|保 存|Save") + "\"/>");

    Response.Write("<br/>其它:是否防盗链，下载文件名带有本站域名等等，由超级管理员配置web.config！");
    Response.Write("</div></form>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


