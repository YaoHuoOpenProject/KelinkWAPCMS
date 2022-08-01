<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="KeLin.WebSite.Games.lucky28.info" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();
info.Append("每次赢家获得奖金" + WapTool.getArryString(configVo.config, '|', 0) + "%<br/>");
info.Append("每注下注范围：(" + WapTool.getArryString(configVo.config, '|', 2) + "-" + WapTool.getArryString(configVo.config, '|', 3) + "" + siteVo.sitemoneyname + ")<br/>");
if (WapTool.getArryString(configVo.config, '|', 5) == "0")
{
    info.Append("每期不限次数<br/>");

}
else
{
    info.Append("每期最多投" + WapTool.getArryString(configVo.config, '|', 5) + "次<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 7) == "0")
{
    info.Append("每期不限投" + siteVo.sitemoneyname + "数量<br/>");

}
else
{
    info.Append("每期最多投" + WapTool.getArryString(configVo.config, '|', 7) + siteVo.sitemoneyname + "<br/>");
}
info.Append("<b>1.什么是幸运28?</b><br/>");
info.Append("幸运28是使用计算机随机数开奖.开奖号码是随机的,每一局,不管开奖任何号码,金币都是全部返还给获奖玩家,系统每期也会注入一定量金币,分给获奖玩家.幸运28上手简单,凭你运气与智慧,一夜暴富不是梦.<br/>");
info.Append("--------<br/>");
info.Append("<b>2.幸运数字如何产生?</b><br/>");
info.Append("幸运28总共有28个数字,从0依次到27,它是由三个单独的个位数字相加所得.中奖号码由机器自动产生,您若押中,即可获得奖励.每个数字出现的概率并不一样.比如出现0的可能只有一个,就是0＋0＋0,出现1的组合有三个,分别是:1＋0＋0，0＋1＋0，0＋0＋1.依次类推,我们可以计算得到,越是中间的数字（比如13和14）其组合越多,比如出现13或14的可能组合有75个.<br/>");
info.Append("--------<br/>");
info.Append("<b>3.投注技巧大揭秘?</b><br/>");
info.Append("最聪明:每次选投4—5个数字,下注适量金币,经验证,这种方式细水长流,适合多数玩家体验,玩多了也最容易赚币币,当然啦,运气也很重要.最保险:28个数字全部投注,这种方法是稳能拿到金币的,至于赢还是输?要看大伙的投币情况喽,这种投注适合求稳的玩家. 最搏命:总共28个数,只投一个数字,下注大量金币,如压中,一把就赚翻了,当然输了就惨了,适合富翁们偶尔一试.<br/>");
info.Append("--------<br/>");
info.Append("<b>4.中奖玩家金币如何分配?</b><br/>");
info.Append("玩家中奖金币＝玩家投注幸运数字的金币×赔率. 赔率＝奖金池总币量÷本期幸运数字的总投注金币.例:第1期奖金池为100万,幸运数字为8,所有玩家投向8的金币总量是10万,则:赔率=100万/10万=10.如果你投注8的金币是1万,你将获得金币数=（100万/10万）*1万 * "+per+"%(税后)="+Double.Parse(per)/10+"万<br/>");
info.Append("--------<br/>");
info.Append("<b>5.如果某一期没人中奖怎么办?</b><br/>");
info.Append("如果某一期没有玩家投中幸运数字,所有投注金币将会累计到下期奖金池.<br/>");
info.Append("--------<br/>");

Response.Write(WapTool.showTop("幸运28游戏规则", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    
    
    strhtml.Append("<b>幸运28游戏规则</b><br/>");


    strhtml.Append(info);
   

    strhtml.Append("<a href=\"" + this.http_start + "games/lucky28/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));   
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

   
    //显示内容
    strhtml.Append("<div class=\"subtitle\">幸运28游戏规则</div>");
    strhtml.Append("<div class=\"content\">");
    strhtml.Append(info);
    strhtml.Append("</div>");
    //导航按钮
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/lucky28/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append("</div></div>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
