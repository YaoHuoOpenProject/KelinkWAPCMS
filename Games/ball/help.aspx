<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="help.aspx.cs" Inherits="KeLin.WebSite.Games.ball.help" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder info=new StringBuilder ();
info.Append("提供了足球和篮球两种竞猜游戏<br /><b>上下盘（让球盘）</b>玩法，针对比赛结果竞猜，足球比赛是按照90分钟以及补时的正赛来下注，不包括加时赛或者点球分胜负。例如：8日20时45分,曼彻斯特联队(1.9)一球半朴茨茅夫(2.0)这中间的1.9和2.0是指针对你压注对象的赔率，加入你压曼联100金币，并且上盘赢了，你会获得系统返还金币190个，如果你输了，你所压金币将被没收 ，最小竞猜金币是10个金币。另外大家一定要看好竞猜内容，这里的竞猜和彩票的胜负平可不太一样，这里是直接写明了一种结果，比如曼联让朴茨茅夫一球半，那么如果曼联只赢了一球或者打平或者曼联输球，那么竞猜曼联的都算输，只有当曼联赢对方2球以及以上才能算这次竞猜上盘获得胜利。<br />8日10时00分,菲尼克斯太阳[主](1.9)让4分犹他爵士(1.9)，篮球的道理同样，太阳必须赢爵士4分以上才 能算上盘胜利，如果正好赢4分，算平盘，返还你的竞猜额。<br /><b>比分大小和标准盘（欧盘）</b>玩法,比如湖人和凯尔特人大小球是(180分),那么双方总分总和小于180就是小,大于180就是大.标准盘的玩法就是赌最后哪一方获胜或者平手<br /><b>走地（滚球）</b>玩法，走地让球盘是以完场比分，减去当时下注之前的比分来计算；大小盘则以完场比分计算。走地赛事在比赛开始至结束都可以下注。<br /><b>赔率知识</b>：返彩赔率含本金，计算：赔率为1.9,下注100金,全赢返彩额为:100金(本金)+90金(彩金)=190金,赢半:赔率由1.9变为1.45,返彩额为:100金(本金)+45金(彩金)=145金。输半：赔率变为0.5,返回本金的一半(50金)。<br />注意玩标准盘时，排列在最前面的球队属于主队，即主胜，排列在后面的属于客胜，不论有没有主队和客队之分的中立场的比赛。");
info.Append("<br/><b>上下盘玩法诠释</b><br/>1、让半球：让球方胜一球和胜一球以上，让球方赢盘，打平及对方胜一球及胜一球以上，让球方输盘。<br />2、让平手：打平走盘，任何一方胜一球及胜一球以上，胜球方嬴盘。<br />3、让一球，让球方胜一球走盘，让球方胜二球和胜二球以上，让球方赢盘，打平及对方胜一球以上，让球方输盘。<br />4、让一球半：让球方胜二球和胜二球以上，让球方赢盘，让球方胜一球、打平及对方胜一球以上，让球方输盘。<br />5、让二球：让球方胜二球走盘，让球方胜三球和胜三球以上，让球方赢盘，让球方胜一球、打平及对方胜一球以上，让球方输盘。<br />6、让二球半：让球方胜三球和胜三球以上，让球方赢盘，让球方胜二球、打平及对方胜一球及一球以上，让球方输盘。<br />7、让平手/半球：打平,让方输半,对方赢半,让方胜一球及以上让方全嬴,让方输一球及以上为全输。<br />8、让半球/一球：打平,让方全输,对方全赢,让方胜一球让方赢半，对方输半，让方胜二球及以上让方全嬴,让方输一球及以上为全输。<br />9、 让一球/球半：让球方胜二球和胜二球以上，让球方赢盘，让球方胜一球、让方输半,对方赢半，打平及对方胜一球以上，让球方输盘。<br />10、 让两球/两球半：让球方胜三球和胜三球以上，让球方赢盘，让球方胜两球、让方输半,对方赢半，打平及对方胜一球以上，让球方输盘。<br />依此类推...<br />");

Response.Write(WapTool.showTop("球彩竟猜规则", wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p align=\"" + classVo.position + "\">");
    
    
    Response.Write("<b>球彩竟猜规则</b><br/>");


    Response.Write(info);
    Response.Write("<br/>--------<br/>");  
    

    Response.Write("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a>-");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    Response.Write(WapTool.GetVS(wmlVo));   
    Response.Write("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

   
    //显示内容
    Response.Write("<div class=\"subtitle\">球彩竟猜规则</div>");
    Response.Write("<div class=\"content\">");
    Response.Write(info);
    Response.Write("</div>");
    
    
    //导航按钮
    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "games/ball/index.aspx?siteid=" + siteid + "&amp;classid=" + this.classid + "" + "\">返回上级</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    Response.Write("</div></div>");
    
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
                                                                                                                                                                           
}
                                                                                                                                                                               
Response.Write(ERROR);                                                                                                                                                                              
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
