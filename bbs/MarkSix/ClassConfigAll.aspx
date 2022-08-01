<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassConfigAll.aspx.cs" Inherits="KeLin.WebSite.bbs.marksix.ClassConfigAll" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("六合论坛配置|六合论坛配置|site setup"), wmlVo));//显示头                                                                                                                                                                       
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
    else if (this.INFO == "NUMBER")
    {
        Response.Write("<b>");
        Response.Write("只能数值！");
        Response.Write("</b><br/>");
    }

    Response.Write("<br/><a href=\"" + this.http_start + "bbs/marksix/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-"+this.width+  "\">进入WAP2.0界面配置参数</a> <br/>");
   


    if (backtype == "wap")
    {
        Response.Write("<br/><a href=\"" + this.http_start + "bbs/marksix/index.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    }
    else if (backtype == "bbsadmin")
    {
        Response.Write("<br/><a href=\"" + this.http_start + "bbs/bbsadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");

    }
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">参数配置|<a href=\"" + this.http_start + "bbs/marksix/admin_bet.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;backtype=wap&amp;sid=" + this.sid + "\">开奖管理</a></div>");
   
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b></div>");

    }
    else if (this.INFO == "NUMBER")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write("只能数值！");
        Response.Write("</b></div>");
    }

    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/marksix/ClassConfigAll.aspx\" method=\"post\">");
    /*
    if (KL_bbs_Close_MarkSix == "0")
    {
        Response.Write("<b>系统设置此游戏为关闭，下面设置将无效！要开启联系超级管理员配制web.config中的参数KL_bbs_Close_MarkSix设为1，建议用国内空间关闭，国外可开启。</b><br/>");
    }
    */
    
    Response.Write("[1]游戏状态:");
    Response.Write("<select name=\"par1\"><option value=\"" + this.par1 + "\">" + this.par1 + "</option><option value=\"开放\">开放</option><option value=\"关闭\">关闭</option></select><br/>");

    Response.Write("[69]投注所需币模式:");
    Response.Write("<select name=\"par69\"><option value=\"" + this.par69 + "\">" + this.par69 + "</option><option value=\"0\">0_系统送币下注</option><option value=\"1\">1_真实扣会员币</option></select><br/>");
   
   
    Response.Write("[2]******:");
    Response.Write("<select name=\"par2\"><option value=\"" + this.par2 + "\">" + this.par2 + "</option><option value=\"开放\">开放</option><option value=\"关闭\">关闭</option></select><br/>");
    Response.Write("[3]每期最多投:");
    Response.Write("<input type=\"text\" name=\"par3\" size=\"5\" value=\"" + this.par3 + "\"/>次(0不限制)<br/>");
    Response.Write("[67]每期最多投:");
    Response.Write("<input type=\"text\" name=\"par67\"  size=\"5\" value=\"" + this.par67 + "\"/>币(0不限制) <br/>");
   
    Response.Write("[66]连续N期开单双大小不允许下注:");
    Response.Write("<input type=\"text\" name=\"par66\" size=\"5\" value=\"" + this.par66 + "\"/>(0不限制)<br/>");
    Response.Write("[68]每期每种玩法最多总投:");
    Response.Write("<input type=\"text\" name=\"par68\" size=\"5\" value=\"" + this.par68 + "\"/>币(0为不限制)<br/>");

    Response.Write("[4]最低金币:");
    Response.Write("<input type=\"text\" name=\"par4\" size=\"5\" value=\"" + this.par4 + "\"/><br/>");
    Response.Write("[5]最高金币:");
    Response.Write("<input type=\"text\" name=\"par5\" size=\"5\" value=\"" + this.par5 + "\"/><br/>");
    Response.Write("[6]截止下注:");
    Response.Write("<input type=\"text\" name=\"par6\" size=\"5\" value=\"" + this.par6 + "\"/>分钟前<br/>");
    Response.Write("[7]记录保留:");
    Response.Write("<input type=\"text\" name=\"par7\" size=\"5\" value=\"" + this.par7 + "\"/>天<br/>");
    Response.Write("[8]通知昵称:");
    Response.Write("<input type=\"text\" name=\"par8\" size=\"5\" value=\"" + this.par8 + "\"/><br/>");

    Response.Write("[22]发贴顶部显示:");
    Response.Write("<input type=\"text\" name=\"par22\"  value=\"" + this.par22 + "\"/><br/>");

    Response.Write("[23]发贴低部显示:<br/>");
    Response.Write("<textarea name=\"par23\" style=\"width:100%\" rows=\"2\">" + this.par23 + "</textarea><br/>");

    //Response.Write("[37]显示聊天行数:");
    //Response.Write("<input type=\"text\" name=\"par37\" size=\"2\"  value=\"" + this.par37 + "\"/> (0关闭)<br/>");

    Response.Write("[38]每次赢家获得奖金的:");
    Response.Write("<input type=\"text\" name=\"par38\"   size=\"2\" value=\"" + this.par38 + "\"/>%(如98%) <br/>");
     
    Response.Write("</div>");
   
    Response.Write("<div class=\"subtitle\">");
    Response.Write("【玩法ID与发贴送币的赔率必须大于1】<br/>");
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("[9]特码赔率:");
    Response.Write("<input type=\"text\" name=\"par9\" size=\"5\" value=\"" + this.par9 + "\"/>倍<br/>");
    Response.Write("[10]独平码赔率:");
    Response.Write("<input type=\"text\" name=\"par10\" size=\"5\" value=\"" + this.par10 + "\"/>倍<br/>");
    Response.Write("[11]平特肖赔率:");
    Response.Write("<input type=\"text\" name=\"par11\" size=\"5\" value=\"" + this.par11 + "\"/>倍<br/>");
    Response.Write("[12]特肖:");
    Response.Write("<input type=\"text\" name=\"par12\" size=\"5\" value=\"" + this.par12 + "\"/>倍<br/>");
    Response.Write("[13]五行赔率:");
    Response.Write("<input type=\"text\" name=\"par13\" size=\"5\" value=\"" + this.par13 + "\"/>倍<br/>");
    Response.Write("[14]红波赔率:");
    Response.Write("<input type=\"text\" name=\"par14\" size=\"5\" value=\"" + this.par14 + "\"/>倍<br/>");
    Response.Write("[15]绿波赔率:");
    Response.Write("<input type=\"text\" name=\"par15\" size=\"5\" value=\"" + this.par15 + "\"/>倍<br/>");
    Response.Write("[16]蓝波赔率:");
    Response.Write("<input type=\"text\" name=\"par16\" size=\"5\" value=\"" + this.par16 + "\"/>倍<br/>");
    Response.Write("[17]单双赔率:");
    Response.Write("<input type=\"text\" name=\"par17\" size=\"5\" value=\"" + this.par17 + "\"/>倍<br/>");
    Response.Write("[18]大小赔率:");
    Response.Write("<input type=\"text\" name=\"par18\" size=\"5\" value=\"" + this.par18 + "\"/>倍<br/>");
    
    Response.Write("[19]平码2中2:");
    Response.Write("<input type=\"text\" name=\"par19\" size=\"5\" value=\"" + this.par19 + "\"/>倍<br/>");

    Response.Write("[20]平码3中2:");
    Response.Write("<input type=\"text\" name=\"par20\" size=\"5\" value=\"" + this.par20 + "\"/>倍<br/>");

    Response.Write("[21]平码3中3:");
    Response.Write("<input type=\"text\" name=\"par21\" size=\"5\" value=\"" + this.par21 + "\"/>倍<br/>");
    Response.Write("[51]特串:");
    Response.Write("<input type=\"text\" name=\"par51\" size=\"5\" value=\"" + this.par51 + "\"/>倍<br/>");
    Response.Write("[52]平特尾:");
    Response.Write("<input type=\"text\" name=\"par52\" size=\"5\" value=\"" + this.par52 + "\"/>倍<br/>");
    Response.Write("[53]特尾:");
    Response.Write("<input type=\"text\" name=\"par53\" size=\"5\" value=\"" + this.par53 + "\"/>倍<br/>");
    Response.Write("[54]特头:");
    Response.Write("<input type=\"text\" name=\"par54\" size=\"5\" value=\"" + this.par54 + "\"/>倍<br/>");
    
    Response.Write("[55]家野:");
    Response.Write("<input type=\"text\" name=\"par55\" size=\"5\" value=\"" + this.par55 + "\"/>倍<br/>");
    Response.Write("[56]六肖:");
    Response.Write("<input type=\"text\" name=\"par56\" size=\"5\" value=\"" + this.par56 + "\"/>倍<br/>");
    Response.Write("[57]半波:");
    Response.Write("<input type=\"text\" name=\"par57\" size=\"5\" value=\"" + this.par57 + "\"/>倍<br/>");
    Response.Write("[58]合数单双:");
    Response.Write("<input type=\"text\" name=\"par58\" size=\"5\" value=\"" + this.par58 + "\"/>倍<br/>");
    Response.Write("[59]合数大小:");
    Response.Write("<input type=\"text\" name=\"par59\" size=\"5\" value=\"" + this.par59 + "\"/>倍<br/>");
      
    
    Response.Write("</div>");
    Response.Write("<div class=\"subtitle\">");
    Response.Write("家野属性");
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("[60]家禽:");
    Response.Write("<input type=\"text\" name=\"par60\"   value=\"" + this.par60 + "\"/> <br/>");
    Response.Write("[61]野兽:");
    Response.Write("<input type=\"text\" name=\"par61\"   value=\"" + this.par61 + "\"/> <br/>");
    
    Response.Write("</div>");
    Response.Write("<div class=\"subtitle\">");
    Response.Write("合数单双大小属性");
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("[62]单:");
    Response.Write("<input type=\"text\" name=\"par62\"  value=\"" + this.par62 + "\"/><br/>");
    Response.Write("[63]双:");
    Response.Write("<input type=\"text\" name=\"par63\"  value=\"" + this.par63 + "\"/><br/>");
    Response.Write("[64]大:");
    Response.Write("<input type=\"text\" name=\"par64\"  value=\"" + this.par64 + "\"/><br/>");
    Response.Write("[65]小:");
    Response.Write("<input type=\"text\" name=\"par65\"  value=\"" + this.par65 + "\"/><br/>");

    Response.Write("</div>");
    Response.Write("<div class=\"subtitle\">");
    Response.Write("五行，波色，单双等属性");
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("[0]今年年份(2012):");
    Response.Write("<input type=\"text\" name=\"par0\" size=\"5\" value=\"" + this.par0 + "\"/> <br/>");
   
    Response.Write("[24]对应生肖:");
    Response.Write("<select name=\"par24\"><option value=\"" + this.par24 + "\">" + this.par24 + "</option><option value=\"鼠\">鼠</option><option value=\"牛\">牛</option><option value=\"虎\">虎</option><option value=\"兔\">兔</option><option value=\"蛇\">蛇</option><option value=\"马\">马</option><option value=\"羊\">羊</option><option value=\"猴\">猴</option><option value=\"鸡\">鸡</option><option value=\"狗\">狗</option><option value=\"猪\">猪</option></select><br/>");
    Response.Write("[25]属金号码:");
    Response.Write("<input type=\"text\" name=\"par25\"   value=\"" + this.par25 + "\"/> <br/>");
    Response.Write("[26]属木号码:");
    Response.Write("<input type=\"text\" name=\"par26\"   value=\"" + this.par26 + "\"/> <br/>");
    Response.Write("[27]属水号码:");
    Response.Write("<input type=\"text\" name=\"par27\"   value=\"" + this.par27 + "\"/> <br/>");
    Response.Write("[28]属火号码:");
    Response.Write("<input type=\"text\" name=\"par28\"   value=\"" + this.par28 + "\"/> <br/>");
    Response.Write("[29]属土号码:");
    Response.Write("<input type=\"text\" name=\"par29\"   value=\"" + this.par29 + "\"/> <br/>");
    Response.Write("[30]红波号码:");
    Response.Write("<input type=\"text\" name=\"par30\"   value=\"" + this.par30 + "\"/> <br/>");
    Response.Write("[31]蓝波号码:");
    Response.Write("<input type=\"text\" name=\"par31\"   value=\"" + this.par31 + "\"/> <br/>");
    Response.Write("[32]绿波号码:");
    Response.Write("<input type=\"text\" name=\"par32\"   value=\"" + this.par32 + "\"/> <br/>");

    Response.Write("[33]单号号码:");
    Response.Write("<input type=\"text\" name=\"par33\"   value=\"" + this.par33 + "\"/> <br/>");

    Response.Write("[34]双号号码:");
    Response.Write("<input type=\"text\" name=\"par34\"   value=\"" + this.par34 + "\"/> <br/>");
    
    Response.Write("[35]大 号码:");
    Response.Write("<input type=\"text\" name=\"par35\"   value=\"" + this.par35 + "\"/> <br/>");

    Response.Write("[36]小 号码:");
    Response.Write("<input type=\"text\" name=\"par36\"   value=\"" + this.par36 + "\"/> <br/>");
    Response.Write("</div>");

    Response.Write("<div class=\"subtitle\">");
    Response.Write("生肖对照表");
    Response.Write("</div>");
    Response.Write("<div class=\"content\">");
    Response.Write("[39]龙:");
    Response.Write("<input type=\"text\" name=\"par39\"   value=\"" + this.par39 + "\"/> <br/>");
    Response.Write("[40]兔:");
    Response.Write("<input type=\"text\" name=\"par40\"   value=\"" + this.par40 + "\"/> <br/>");
    Response.Write("[41]虎:");
    Response.Write("<input type=\"text\" name=\"par41\"   value=\"" + this.par41 + "\"/> <br/>");
    Response.Write("[42]牛:");
    Response.Write("<input type=\"text\" name=\"par42\"   value=\"" + this.par42 + "\"/> <br/>");
    Response.Write("[43]鼠:");
    Response.Write("<input type=\"text\" name=\"par43\"   value=\"" + this.par43 + "\"/> <br/>");
    Response.Write("[44]猪:");
    Response.Write("<input type=\"text\" name=\"par44\"   value=\"" + this.par44 + "\"/> <br/>");
    Response.Write("[45]狗:");
    Response.Write("<input type=\"text\" name=\"par45\"   value=\"" + this.par45 + "\"/> <br/>");
    Response.Write("[46]鸡:");
    Response.Write("<input type=\"text\" name=\"par46\"   value=\"" + this.par46 + "\"/> <br/>");
    Response.Write("[47]猴:");
    Response.Write("<input type=\"text\" name=\"par47\"   value=\"" + this.par47 + "\"/> <br/>");
    Response.Write("[48]羊:");
    Response.Write("<input type=\"text\" name=\"par48\"   value=\"" + this.par48 + "\"/> <br/>");
    Response.Write("[49]马:");
    Response.Write("<input type=\"text\" name=\"par49\"   value=\"" + this.par49 + "\"/> <br/>");
    Response.Write("[50]蛇:");
    Response.Write("<input type=\"text\" name=\"par50\"   value=\"" + this.par50 + "\"/> <br/>");
    
    Response.Write("</div>");
   
    
    Response.Write("<div class=\"content\">");
    
    Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
    Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"backtype\" value=\"" + backtype + "\"/>");
    Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
    Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("保 存|保 存|save") + "\"/>");
    Response.Write("</form>");
    Response.Write("</form></div>");
    Response.Write("<div class=\"tip\">");
    
     Response.Write("不想开放玩法赔率请设置为0<br/>");
     Response.Write("单双大小:1~24(小)25~48(大),49剔除<br/>");
     Response.Write("多个号码请用,号隔开；单位数1要改成二位数01<br/>");
     
     Response.Write("</div>");

     Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    
    if (backtype == "bbsadmin")
    {
        Response.Write("<a href=\"" + this.http_start + "bbs/bbsadmin.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");

    }
    else 
    {
        Response.Write("<a href=\"" + this.http_start + "bbs/classconfigall.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;sid=" + this.sid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    }

    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


