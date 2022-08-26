<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="info.aspx.cs" Inherits="KeLin.WebSite.Games.happyTen.info" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();
info.Append("1.每隔"+second+"分钟开奖<br/>");
info.Append("2.每次赢家获得奖金" + per + "%<br/>");
info.Append("3.每注下注范围：(" + WapTool.getArryString(configVo.config, '|', 8) + "-" + WapTool.getArryString(configVo.config, '|', 9) + "" + siteVo.sitemoneyname + ")<br/>");
if (WapTool.getArryString(configVo.config, '|', 17) == "0")
{
    info.Append("4.每期不限次数<br/>");

}
else
{
    info.Append("4.每期最多投" + WapTool.getArryString(configVo.config, '|', 17) + "次<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 18) == "0")
{
    info.Append("5.每期不限投" + siteVo.sitemoneyname + "数量<br/>");

}
else
{
    info.Append("5.每期最多投" + WapTool.getArryString(configVo.config, '|', 18) + siteVo.sitemoneyname + "<br/>");
}
if (WapTool.getArryString(configVo.config, '|', 20) == "0")
{
    info.Append("6.每期每种玩法不限投" + siteVo.sitemoneyname + "数量<br/>");

}
else
{
    info.Append("6.每期每种玩法最多投" + WapTool.getArryString(configVo.config, '|', 20) + siteVo.sitemoneyname + "<br/>");
}
Response.Write(WapTool.showTop("快乐十分游戏规则", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p align=\"" + classVo.position + "\">");
    
    
    Response.Write("<b>快乐十分游戏规则</b><br/>");


    Response.Write(info);
    Response.Write("<br/>--------<br/>");  
    

    Response.Write("<a href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    Response.Write(WapTool.GetVS(wmlVo));   
    Response.Write("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

   
    //显示内容
    Response.Write("<div class=\"subtitle\">快乐十分游戏规则</div>");
    Response.Write("<div class=\"content\">");
    Response.Write(info);
    Response.Write("</div>");
    
    %>

<div class="content">
    <p><a href="#p1">一、玩法类型及承销</a></p>
    <p><a href="#p2">二、玩法说明</a></p>
    <p><a href="#p3">三、设奖及中奖</a></p>
    <p><a href="#p4">四、投注方式</a></p>
    <p><a href="#p5">五、购买方式</a></p>
    <p><a href="#p6">六、开奖及返奖</a></p>
    <p><a href="#p7">七、玩法特点</a></p><br />
    <p id="p1">一、玩法类型及承销</p>
    广东快乐十分是一种在线即开型彩票玩法，属于基诺型彩票范畴，由广东省福利彩票管理中心负责承销。<br /><br />
    <p id="p2">二、玩法说明</p>
    “快乐十分”是从01—20个号码中任选1—5个号码组合为一注彩票进行投注，它共有10种玩法，包含了排列、组合投注方式，特别是值得一提的是，选一投注有“选一数投”和“选一红投”，即投注时可以选数字，也可以选颜色。10种玩法按排列、组合的方式可以分为三种：一是组合玩法：选二任选、选三任选、选四任选、选五任选，这4种玩法的投注、中奖不讲顺序，只要当期开奖的8个号码中有所投注的号码，则就中奖了；二是组合兼排列的定位玩法：即定中奖号码位置但不定中奖号码出现顺序，包括选二连组、选三前组；三是排列玩法，是既定中奖号码位置又定中奖号码出现顺序，包括选一数投、选一红投和选二连直、选三前直共4种玩法。<br /><br />
    <p id="p3">三、设奖及中奖</p>
    <table cellspacing="1" cellpadding="0" border="0" bgcolor="#CCCCCC">
        <thead>
            <tr>
                <td width=12% bgcolor="#eFeFeF">玩法</td>
                <td width=20% bgcolor="#eFeFeF">开奖号码示例</td>
                <td width=18% bgcolor="#eFeFeF">投注号码示例</td>
                <td width=40% bgcolor="#eFeFeF">中奖规则</td>
                <td width=10% bgcolor="#eFeFeF">单注奖金</td>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td bgcolor="#FFFFFF" align="center">选一数投</td>
                <td bgcolor="#FFFFFF">01 02 03 04 05 06 07 08</td>
                <td bgcolor="#FFFFFF">01|-|-|-|-</td>
                <td bgcolor="#FFFFFF">投注号码与开奖出现的第一个位置的号码相符</td>
                <td bgcolor="#FFFFFF" align="center">25元</td>
            </tr>
            <tr>
                <td bgcolor="#F7F7F7" align="center">选一红投</td>
                <td bgcolor="#F7F7F7">20 01 02 03 04 05 06 07</td>
                <td bgcolor="#F7F7F7">20|-|-|-|-或19|-|-|-|-</td>
                <td bgcolor="#F7F7F7">投注号码与开奖中按开奖顺序出现的第一个位置为红色号码相符</td>
                <td bgcolor="#F7F7F7" align="center">5元</td>
            </tr>
            <tr>
                <td bgcolor="#FFFFFF" align="center">任选二</td>
                <td bgcolor="#FFFFFF">01 02 03 04 05 06 07 08</td>
                <td bgcolor="#FFFFFF">03 06</td>
                <td bgcolor="#FFFFFF">投注号码与开奖号码中任意2个位置的号码相符</td>
                <td bgcolor="#FFFFFF" align="center">8元</td>
            </tr>
            <tr>
                <td bgcolor="#F7F7F7" align="center">选二连组</td>
                <td bgcolor="#F7F7F7">01 03 02 04 05 06 07 08</td>
                <td bgcolor="#F7F7F7">02 03</td>
                <td bgcolor="#F7F7F7">投注号码与开奖号码中按开奖顺序出现的2个连续位置的号码相符（顺序不限）</td>
                <td bgcolor="#F7F7F7" align="center">31元</td>
            </tr>
            <tr>
                <td bgcolor="#FFFFFF" align="center">选二连直</td>
                <td bgcolor="#FFFFFF">01 03 02 04 05 06 07 08</td>
                <td bgcolor="#FFFFFF">03 02</td>
                <td bgcolor="#FFFFFF">投注号码与开奖号码中按开奖顺序出现的2个连续位置的号码按位相符</td>
                <td bgcolor="#FFFFFF" align="center">62元</td>
            </tr>
            <tr>
                <td bgcolor="#F7F7F7" align="center">任选三</td>
                <td bgcolor="#F7F7F7">01 02 03 04 05 06 07 08</td>
                <td bgcolor="#F7F7F7">04 06 07</td>
                <td bgcolor="#F7F7F7">投注号码与开奖号码中任意3个位置的号码相符</td>
                <td bgcolor="#F7F7F7" align="center">24元</td>
            </tr>
            <tr>
                <td bgcolor="#FFFFFF" align="center">选三前组</td>
                <td bgcolor="#FFFFFF">01 02 03 04 05 06 07 08</td>
                <td bgcolor="#FFFFFF">01 02 03</td>
                <td bgcolor="#FFFFFF">投注号码与开奖号码中按开奖顺序出现的前3个位置的号码相符（顺序不限）</td>
                <td bgcolor="#FFFFFF" align="center">1300元</td>
            </tr>
            <tr>
                <td bgcolor="#F7F7F7" align="center">选三前直</td>
                <td bgcolor="#F7F7F7">01 03 02 04 05 06 07 08</td>
                <td bgcolor="#F7F7F7">01 03 02</td>
                <td bgcolor="#F7F7F7">投注号码与开奖号码中按开奖顺序出现的前3个位置的号码按位相符</td>
                <td bgcolor="#F7F7F7" align="center">8000元</td>
            </tr>
            <tr>
                <td bgcolor="#FFFFFF" align="center">任选四</td>
                <td bgcolor="#FFFFFF">01 03 02 04 05 06 07 08</td>
                <td bgcolor="#FFFFFF">01 04 06 07</td>
                <td bgcolor="#FFFFFF">投注号码与开奖号码中任意4个位置的号码相符</td>
                <td bgcolor="#FFFFFF" align="center">80元</td>
            </tr>
            <tr>
                <td bgcolor="#F7F7F7" align="center">任选五</td>
                <td bgcolor="#F7F7F7">01 02 03 04 05 06 07 08</td>
                <td bgcolor="#F7F7F7">01 02 03 06 08</td>
                <td bgcolor="#F7F7F7">投注号码与开奖号码中任意5个位置的号码相符</td>
                <td bgcolor="#F7F7F7" align="center">320元</td>
            </tr>
        </tbody>
    </table><br />
    <p id="p4">四、投注方式</p>
    <strong>1、选一数投</strong><br />选一数投从01-18中选1个,投注号码与开奖号码第一位相同即中奖，奖金25元。<br />
    <strong>2、选一红投</strong><br />19，20为红号，从这两个号码任选一个投注，开奖号码第一位是红号（19或20）即中奖，奖金5元。<br />
    <strong>3、选二任选</strong><br />从01-20中任选2个,投注号码与开奖号码任意两位相同即中奖，奖金8元。投注时可选择1个号码作为每注都有的胆码，再补充其它号码作为拖码投注。<br />
    <strong>4、选二连组</strong><br />从01-20中任选2个,投注号与开奖号任意连续两位数字相同(顺序不限)即中奖，奖金31元。投注时可选择1个号码作为每注都有的胆码，再补充其它号码作为拖码投注。<br />
    <strong>5、选二连直</strong><br />从01-20中任选连续两位,投注号码与开奖号码任意连续两位数字、顺序均相同即中奖，奖金62元。<br />
    <strong>6、选三任选</strong><br />从01-20中任选3个,投注号码与开奖号码任意三位相同即中奖，奖金24元。投注时可选择1～2号码作为每注都有的胆码，再补充其它号码作为拖码投注。<br />
    <strong>7、选三前组</strong><br />从01-20中猜开奖号码的前三位,投注号与开奖号前三位数字相同(顺序不限)即中奖,奖金1300元。投注时可选择 1～2号码作为每注都有的胆码，再补充其它号码作为拖码进行投注。<br />
    <strong>8、选三前直</strong><br />从01-20中猜开奖号码前三位,投注号码与开奖号码前三位数字、顺序均相同即中奖，奖金8000元。<br />
    <strong>9、选四任选</strong><br />从01-20中任选4个,投注号码与开奖号码任意四位相同即中奖，奖金80元。投注时可选择 1～3码作为每注都有的胆码，再补充其它号码作为拖码进行投注。<br />
    <strong>10、选五任选</strong><br />从01-20中任选5个,投注号码与开奖号码任意五位相同即中奖，奖金320元。投注时可选择 1～4作为每注都有的胆码，再补充其它号码作为拖码进行投注。<br /><br />
    <p id="p5">五、购买方式</p>
    <strong>1、代购</strong><br />代购指用户进行网上选号发起方案，并认购全部份额，然后委托本站代为购买彩票。<br />
    <strong>2、追号</strong><br />追号指将一注或一组号码进行两期或两期以上的投注。追号可分为连续追号和间隔追号，连续追号指追号的期数是连续的，间隔追号指追号的期数不连续。<br /><br />
    <p id="p6">六、开奖及返奖</p>
    <strong>1、开奖</strong><br /> 每天09:10第一期开奖，23:00最后一期开奖，每10分钟开奖一次，每天84期开奖通过电子开奖系统进行，开奖结果由视频信号或公众媒体播出。<br />
    <strong>2、返奖</strong><br />小奖自动返还至用户在本站账户中，可继续投注或提款，大奖委托本站代为领取，永无弃奖。<br /><br />
    <p id="p7">七、玩法特点</p>
    <strong>1、即投、即开、即兑</strong><br />每10分钟一期，全天84期，在线即投、即开、即兑，极大的提高了玩法的刺激性。<br />
    <strong>2、玩法简单多样</strong><br />“快乐十分”是从01—20个号码中任选1—5个号码组合为一注彩票进行投注，它共有10种玩法，包含了排列、组合投注方式，特别是值得一提的是，选一投注有“选一数投”和“选一红投”，即投注时可以选数字，也可以选颜色。10种玩法按排列、组合的方式可以分为三种：一是组合玩法：选二任选、选三任选、选四任选、选五任选，这4种玩法的投注、中奖不讲顺序，只要当期开奖的8个号码中有所投注的号码，则就中奖了；二是组合兼排列的定位玩法：即定中奖号码位置但不定中奖号码出现顺序，包括选二连组、选三前组；三是排列玩法，是既定中奖号码位置又定中奖号码出现顺序，包括选一数投、选一红投和选二连直、选三前直共4种玩法。<br />
    <strong>3、投注号码少，开奖号码多</strong><br />“快乐十分”每注投注号码为1—5个，但是每期开出8个号码作为当期开奖号码，开奖号码远远大于所投注号码，使中奖更容易。以“快乐十分”中投注号码最多的玩法“任选五”为例，每注投注5个号码，只要这5个号码在所开奖的8个中奖号码中就中奖。特别是对于喜欢包号投注的彩民而言，如果“任选5”包8个号投注，如果所包的8个号码与8个中奖号码完全相同，则其中奖注数就达到56注，总奖金17920元。<br />
    
    
    
   
</div>

    
    
    
    <%
    //导航按钮
        Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "games/happyTen/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    Response.Write("</div></div>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
