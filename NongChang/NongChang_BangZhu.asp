<% @LANGUAGE="VBSCRIPT" CODEPAGE="65001" %><!--#include file="Config.asp"-->
<%



    Sub Page_Load()
        Page_Start()
        
        Call WML_Head("农场帮助","left")

    Response.Write("资料说明<br/>进入农场后，您将拥有一个属于您自己的农场帐号，当您第一次进入农场时默认农场名称为“开心农场”，您可以点击主界面里的“修改农场资料”链接来修改家场名称。<br/><br/>农场排名查看<br/>")
    Response.Write("农场的等级、经验和金币代表着您在游戏中的荣誉，游戏默认有农场金币排名和等级排名，您可以在主界面里的“农场排名”和“等级排名”中查看。<br/>")
    Response.Write("升级规则：(当前等级+1)*"&DenJiJiSuan&"，即当前等级加一，再乘于"&DenJiJiSuan&"。例如您的等级为1，则升级到下一级需要(1+1)*"&DenJiJiSuan&"="&(2*DenJiJiSuan)&"经验。<br/><br/>")
    Response.Write("怎样种植作物<br/>在游戏中，种植、收获作物是游戏中的最大乐趣。在种植作物前，您需要在商店里购买种子，然后在物品中选择种子种植作物。<br/><br/>")
    Response.Write("如何偷取蔬菜<br/>在别人的菜地中，如果有作物成熟后，您也可以通过偷菜来获得蔬菜，通常情况下，您可以在一块拥有成熟蔬菜的菜地中获得一个或两个蔬菜。<br/><br/>")
    Response.Write("作物的生长规律<br/>作物的状态分种子、发芽、小叶子、大叶子、开花、成熟六种，当您种下一种作物后，到达一定的时间后，它将会成熟。例如：白萝卜<br/>")
    Response.Write("种子(0小时)-发芽(1小时)-小叶子(2.5小时)-大叶子(4.5小时)-开花(7.5小时)-成熟(10小时)<br/><br/>")
    Response.Write("菜地<br/>当您开通农场后，您将分配到4块菜地，在每块地中，您可以种植作物。除了默认分配的菜地外，当您每升五级后也将得到一块系统赠送的菜地。<br/><br/>")
    Response.Write("邻居:通过邻居功能，您可以快速找到您关注的农场。<br/>留言:您可以对其它的农场发表留言。<br/>商店:在商店里，您可以购买到您所需要的种子。<br/>")
    Response.Write("仓库:当您的作物收获后，您收获的作物将转入仓库中。<br/>翻地:您的作物收获后，菜地将会产生残留物。这时，您需要翻地后才能种植。<br/>")
    Response.Write("物品:在物品中，您可以查看到您所购买的种子，选择种子后您就可以种植该类型的作物。<br/>浇水:作物在生长期间，将会不定时的出现干旱，这时您将需要通过浇水操作来让作物正常生长。<br/>")
    Response.Write("施肥:施肥操作可以加速您的作物生长，每天限三次施肥。<br/>除草:作物生长期间，将会不定时的出现杂草，这时您将需要通过除草操作来让作物正常生长。<br/>")
    Response.Write("除虫:作物生长期间，将会不定时的出现病虫，这时您将需要通过除虫操作来让作物正常生长。<br/>放虫:您可以通过放虫功能来让其它农场的作物出现病虫。<br/>收获:当作物成熟后，您可以通过收获功能来收获作物。<br/>偷菜:当其它农场的作物成熟后，您可以通过偷菜来获得作物。")
    Response.Write("陷阱与奴隶:如果您需要防止您的菜被偷，您可以使用农场中的陷阱功能，它可以在一定几率下将偷菜者抓为奴隶。当对方成为奴隶后，您可以通过惩罚奴隶来获得金币和经验。")
	'Response.Write("+|基本操作<br/>")
	'Response.Write("<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=1",sid))&"'>农场资料说明？</a><br/><a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=2",sid))&"'>农场排名查看？</a><br/>")
	'Response.Write("<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=3",sid))&"'>怎样种植作物？</a><br/><a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=4",sid))&"'>如何偷取蔬菜？</a><br/>")
	'Response.Write("<a href='"&Server.HTMLEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=22",sid))&"'>作物的生长规律？</a><br/>")
	'Response.Write("+|功能详解<br/>")
	'Response.Write("<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=5",sid))&"'>菜地</a>.<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=6",sid))&"'>邻居</a>.<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=7",sid))&"'>留言</a>.<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=8",sid))&"'>商店</a><br/>")
	'Response.Write("<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=9",sid))&"'>仓库</a>.<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=10",sid))&"'>翻地</a>.<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=11",sid))&"'>物品</a>.<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=12",sid))&"'>浇水</a><br/>")
	'Response.Write("<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=13",sid))&"'>施肥</a>.<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=14",sid))&"'>除草</a>.<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=15",sid))&"'>除虫</a>.<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=16",sid))&"'>放虫</a><br/>")
	'Response.Write("<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=17",sid))&"'>收获</a>.<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=18",sid))&"'>偷菜</a><br/>")
	'Response.Write("+|财富等级<br/>")
	'Response.Write("<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=19",sid))&"'>经验值</a>.<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=20",sid))&"'>等级数</a>.<a href='"&Server.HtmlEncode(ChuLiDiZhi("NongChang_BangZhuXiang.asp?ID=21",sid))&"'>金币数</a>")
    '    
        Response.Write("<br/><br/>----------<br/><a href="""&Server.HTMLEncode(ChuLiDiZhi("Main.asp",sid))&""">返回主界面</a>")
        
        
        
        Call WML_End()
        Page_End()
    End Sub
    
    
    
    
    Call Page_Load()







 %>