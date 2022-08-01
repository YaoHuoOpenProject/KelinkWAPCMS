//WEB后台顶部：快捷键，全局显示
//请在此加入链接或js方法，尽量不要在top.aspx里加代码，因为柯林会不断升级。
//managerlvl 当前登录人的管理身份00,01,03,04
//siteid 网站ID
//userid 会员ID
//sid 当前会员身份 防止session过期，可以继承PageWap类(非session判断)，然后传sid值。
//在线客服地址要用到sid传过去，可保永不掉线。

function GetLink(siteid,userid,managerlvl,sid)
{
	var str="";
	str = str + "<a href='/admin/ContentTree.aspx' target='main'>网站内容</a> ";
	str = str + "<a href='/shop/orderlist.aspx' target='main'>商店订单</a> ";
	str = str + "<a href='/FormEdit/userlist01_Data.aspx' target='main'>表单接收</a> ";
	
	
	
	
	
	return str;
}

