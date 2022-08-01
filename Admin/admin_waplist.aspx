<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_waplist.aspx.cs" Inherits="KeLin.WebSite.admin.admin_waplist" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop(this.GetLang("添加删除内容|添加刪除內容|Add or Remove Content"), wmlVo));//显示头   


if (ver == "1")
{%>
<p>
主要插件模块|<a href="<%=http_start %>admin/admin_waplistFun.aspx?siteid=<%=siteid %>">所有&gt;&gt;</a><br />
01.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("文章类") %>&amp;gopath=article/index.aspx">文章内容</a><br />
02.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("论坛类") %>&amp;gopath=bbs/index.aspx">论坛内容</a><br />
03.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("图片类") %>&amp;gopath=picture/index.aspx">图片内容</a><br />
04.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("铃声类") %>&amp;gopath=ring/index.aspx">铃声内容</a><br />
05.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("视频类") %>&amp;gopath=video/index.aspx">视频内容</a><br />
06.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("下载类") %>&amp;gopath=download/index.aspx">下载内容</a><br />
07.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("WML类") %>&amp;gopath=wml/index.aspx">WML内容</a><br />
08.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("留言类") %>&amp;gopath=guessbook/index.aspx">留言内容</a><br />
08.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("友情链接类") %>&amp;gopath=link/index.aspx">友情链接</a><br />
09.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("聊天类") %>&amp;gopath=chat/index.aspx">聊天内容</a><br />
10.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("航班类") %>&amp;gopath=airplane/index.aspx">航班内容</a><br />
11.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("酒店类") %>&amp;gopath=hotel/index.aspx">酒店内容</a><br />
12.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("拍卖类") %>&amp;gopath=paimai/index.aspx">拍卖内容</a><br />
13.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("商店类") %>&amp;gopath=shop/index.aspx">商店内容</a><br />
14.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("约会类") %>&amp;gopath=yuehui/index.aspx">约会内容</a><br />
15.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("博客类") %>&amp;gopath=rizhi/index.aspx">博客内容</a><br />
16.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("相册类") %>&amp;gopath=album/index.aspx">相册内容</a><br />
17.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("行业供求类") %>&amp;gopath=gongqiu/index.aspx">行业供求内容</a><br />
18.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("点击广告送币类") %>&amp;gopath=adlink/index.aspx">点击广告送币</a><br />
20.<a href="<%=http_start %>search/admin_userlistwap.aspx?siteid=<%=siteid %>">站内短信内容</a><br />
21.<a href="<%=http_start %>class/admin_userlistwap.aspx?siteid=<%=siteid %>">栏目名称管理</a><br />
22.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("广播类") %>&amp;gopath=guangbo/index.aspx">广播模块</a><br />
23.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("记帐类") %>&amp;gopath=myaccount/index.aspx">记帐模块</a><br />
24.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("小说类") %>&amp;gopath=novel/index.aspx">小说模块</a><br />
25.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("游戏大厅") %>&amp;gopath=games/index.aspx">游戏大厅</a><br />
26.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("购买勋章") %>&amp;gopath=XinZhang/index.aspx">购买勋章</a><br />
27.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("签到插件") %>&amp;gopath=Signin/index.aspx">签到插件</a><br />
28.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("挖宝插件") %>&amp;gopath=wabao/index.aspx">挖宝插件</a><br />
29.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("表单设计插件") %>&amp;gopath=FormEdit/index.aspx">表单设计插件</a><br />
30.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("任务插件") %>&amp;gopath=action/index.aspx">任务插件</a><br />


<br/>----------<br/>
<%if (userVo.managerlvl == "03" || WapTool.isClassAdmin(siteid, userid)==true)
  { %>
<a href="<%=http_start%>myfile.aspx?siteid=<%=siteid%>&amp;userid=<%=userid%>">返回上级</a>
<%}
  else
  { %>
<a href="<%=http_start%>admin/basesitemodifywml.aspx?siteid=<%=siteid%>&amp;userid=<%=userid%>">返回上级</a>
<%} %>
-<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>	
<%Response.Write(WapTool.GetVS(wmlVo)); %>
</p>

<%}
else //2.0界面
{%>
<div class="title">添加删除内容</div>
<div class="subtitle">主要插件模块|<a href="<%=http_start %>admin/admin_waplistFun.aspx?siteid=<%=siteid %>">所有&gt;&gt;</a></div>
<div class="content">
01.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("文章类") %>&amp;gopath=article/index.aspx">文章内容</a><br />
02.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("论坛类") %>&amp;gopath=bbs/index.aspx">论坛内容</a><br />
03.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("图片类") %>&amp;gopath=picture/index.aspx">图片内容</a><br />
04.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("铃声类") %>&amp;gopath=ring/index.aspx">铃声内容</a><br />
05.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("视频类") %>&amp;gopath=video/index.aspx">视频内容</a><br />
06.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("下载类") %>&amp;gopath=download/index.aspx">下载内容</a><br />
07.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("WML类") %>&amp;gopath=wml/index.aspx">WML内容</a><br />
08.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("留言类") %>&amp;gopath=guessbook/index.aspx">留言内容</a><br />
08.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("友情链接类") %>&amp;gopath=link/index.aspx">友情链接</a><br />
09.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("聊天类") %>&amp;gopath=chat/index.aspx">聊天内容</a><br />
10.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("航班类") %>&amp;gopath=airplane/index.aspx">航班内容</a><br />
11.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("酒店类") %>&amp;gopath=hotel/index.aspx">酒店内容</a><br />
12.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("拍卖类") %>&amp;gopath=paimai/index.aspx">拍卖内容</a><br />
13.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("商店类") %>&amp;gopath=shop/index.aspx">商店内容</a><br />
14.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("约会类") %>&amp;gopath=yuehui/index.aspx">约会内容</a><br />
15.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("博客类") %>&amp;gopath=rizhi/index.aspx">博客内容</a><br />
16.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("相册类") %>&amp;gopath=album/index.aspx">相册内容</a><br />
17.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("行业供求类") %>&amp;gopath=gongqiu/index.aspx">行业供求内容</a><br />
18.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("点击广告送币类") %>&amp;gopath=adlink/index.aspx">点击广告送币</a><br />
20.<a href="<%=http_start %>search/admin_userlistwap.aspx?siteid=<%=siteid %>">站内短信内容</a><br />
21.<a href="<%=http_start %>class/admin_userlistwap.aspx?siteid=<%=siteid %>">栏目名称管理</a><br />
22.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("广播类") %>&amp;gopath=guangbo/index.aspx">广播模块</a><br />
23.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("记帐类") %>&amp;gopath=myaccount/index.aspx">记帐模块</a><br />
24.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("小说类") %>&amp;gopath=novel/index.aspx">小说模块</a><br />
25.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("游戏大厅") %>&amp;gopath=games/index.aspx">游戏大厅</a><br />
26.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("购买勋章") %>&amp;gopath=XinZhang/index.aspx">购买勋章</a><br />
27.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("签到插件") %>&amp;gopath=Signin/index.aspx">签到插件</a><br />
28.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("挖宝插件") %>&amp;gopath=wabao/index.aspx">挖宝插件</a><br />
29.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("表单设计插件") %>&amp;gopath=FormEdit/index.aspx">表单设计插件</a><br />
30.<a href="<%=http_start %>admin/admin_wapClasslist.aspx?siteid=<%=siteid %>&amp;gopathname=<%=HttpUtility.UrlEncode("任务插件") %>&amp;gopath=action/index.aspx">任务插件</a><br />


</div>
<div class="btBox"><div class="bt2">
<%if (userVo.managerlvl == "03" || WapTool.isClassAdmin(siteid, userid) == true)
  { %>
<a href="<%=http_start%>myfile.aspx?siteid=<%=siteid%>&amp;userid=<%=userid%>">返回上级</a>
<%}
  else
  { %>
<a href="<%=http_start%>admin/basesitemodifywml.aspx?siteid=<%=siteid%>&amp;userid=<%=userid%>">返回上级</a>
<%} %>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>	
 
</div></div>
<%}

Response.Write(WapTool.showDown(wmlVo));   //显示底部
%>
