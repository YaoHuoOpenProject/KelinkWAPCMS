<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginWap.aspx.cs" Inherits="KeLin.WebSite.admin.LoginWap" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("手机管理后台|手機管理後台|Mobile Admin"), wmlVo));//显示头   


if (ver == "1")
{%>
<p>
<a href="login.aspx"><%=this.GetLang("电脑IE管理后台|電腦IE管理後台|WEB Admin Login")%></a><br />
登录WEB管理后台更直观，功能更强大！<br />
----------<br/>
<%=this.GetLang("手机管理后台|手機管理後台|Mobile WAP Admin")%><br />
<a href="<%=http_start%>admin/basesitemodifywml00.aspx?siteid=<%=siteid%>">超级管理员管理后台</a><br />
<a href="<%=http_start%>admin/basesitemodifywml.aspx?siteid=<%=siteid%>">站长管理后台</a><br/>
<a href="<%=http_start%>admin/admin_waplist.aspx?siteid=<%=siteid%>">总编辑管理后台</a><br/>
<a href="<%=http_start%>admin/admin_waplist.aspx?siteid=<%=siteid%>">栏目管理员后台</a><br/>
----------<br/>
<%=this.GetLang("网站管理角色说明|网站管理角色说明|WEBmaster")%><br/>
<b>[00]超级管理员</b>：管理所有网站及所有数据。分正超级管理员(网站ID等于会员ID)和副超级管理员(网站ID不等于会员ID)，权限一样。 <br />
<b>[01]站长</b>：管理自己网站内的所有数据，分正站长(网站ID等于会员ID)和副站长(网站ID不等于会员ID)，权限一样。  <br />
<b>[03]总编辑</b>：管理自己网站内的所有栏目内容。不包排版，网站设置等，只管理栏目内容。  <br />
<b>[04]总版主</b>：管理自己网站内的论坛栏目内容。WAP前台管理贴子。  <br />
<b>[02]普通</b>：某网站下的会员，可设为自定义访问角色或VIP1，VIP2等。  <br />
<b>[**]栏目管理员(版主)</b>：只管理设定的栏目内容。此权限需要在修改栏目属性处添加。 <br/>
<b>提示:只有正的才能分配权限！副的能分配栏目管理员！</b><br />
----------<br/>
<%=this.GetLang("网站审核逻辑说明|网站审核逻辑说明|WEBmaster check")%>
<br />
[0]内容审核分为：文字内容审核 + 上传文件底层审核(WEB后台→上传文件管理有详细配置说明)。<br />
[1]超级管理员，可设置刚注册网站是否需要审核内容(WEB后台→超级管理员区→系统全局设置→主域名)<br />
[2]超级管理员，可设置A网站是否需要审核内容(WEB后台→超级管理员区→配置网站)。<br />
[3]A网站站长，可设置自己网站是否需要审核内容(WEB/WAP后台→网站默认配置)。<br />
[4]<b>条件一:</b>超级管理员设A网站需要审核内容。A网站所有用户发布内容和上传的文件都只能由超级管理员审核通过。<br />
[5]<b>条件二:</b>超级管理员设A网站不需要审核内容 + A站长设置A网站需要审核，A站长权限以下的所有用户发布内容和上传的文件只能由A站长或超级管理员审核通过。<br />
[6]<b>条件三:</b>超级管理员设A网站不需要审核内容 + A站长设置A网站不需要审核，此情况无需通过审核后显示。<br />
[7]注意:部分模块审核后还需要更新缓存才会显示出来。<br />
[8]文件底层审核指，如文件地址http://abc.com/1.gif，如果未审核通过直接显示未审核图片；如果开启底层防盗，盗链时直接显示防盗链图片。
<br/>----------<br/>
<%=this.GetLang("管理员必配软件|管理员必配软件|WEBmaster need Soft")%><br/>
1.<a href="http://www.kelink.com/download/opera8.rar">opera8手机模拟器(有中文错误提示)</a><br />
2.<a href="http://www.kelink.com/download/m3gate12.rar">M3gate手机模拟器(严格测试WAP1.0)</a><br />
3.<a href="http://www.kelink.com/download/flashfxp.rar">FTP文件传输软件</a><br />
4.<a href="http://www.kelink.com/download/ue.rar">代码编辑工具(UE)</a>
<br/>----------<br/>
<a href="<%=http_start + backurl%>">返回上级</a>-<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>	
<%Response.Write(WapTool.GetVS(wmlVo));%>
</p>

<%}
else //2.0界面
{%>
<div class="subtitle"><a name="top"></a><%=this.GetLang("电脑IE管理后台|電腦IE管理後台|WEB Admin Login")%></div>
<div class="content"><a href="login.aspx"><%=this.GetLang("点击登录WEB后台|點擊登錄WEB後台|Click here")%></a><br />电脑IE浏览器登录WEB管理后台更直观，功能更强大！建议电脑用户使用！</div>
<div class="subtitle"><%=this.GetLang("手机管理后台|手機管理後台|Mobile WAP Admin")%></div>
<div class="content">
<a href="<%=http_start%>admin/basesitemodifywml00.aspx?siteid=<%=siteid%>">超级管理员管理后台</a><br />
<a href="<%=http_start%>admin/basesitemodifywml.aspx?siteid=<%=siteid%>">站长管理后台</a><br/>
<a href="<%=http_start%>admin/admin_waplist.aspx?siteid=<%=siteid%>">总编辑管理后台</a><br/>
<a href="<%=http_start%>admin/admin_waplist.aspx?siteid=<%=siteid%>">栏目管理员后台</a><br/>
</div>
<div class="subtitle"><%=this.GetLang("网站管理角色说明|网站管理角色说明|WEBmaster")%></div>
<div class="content">
<b>[00]超级管理员</b>：管理所有网站及所有数据。分正超级管理员(网站ID等于会员ID)和副超级管理员(网站ID不等于会员ID)，权限一样。 <br />
<b>[01]站长</b>：管理自己网站内的所有数据，分正站长(网站ID等于会员ID)和副站长(网站ID不等于会员ID)，权限一样。  <br />
<b>[03]总编辑</b>：管理自己网站内的所有栏目内容。不包排版，网站设置等，只管理栏目内容。  <br />
<b>[04]总版主</b>：管理自己网站内的论坛栏目内容。WAP前台管理贴子。  <br />
<b>[02]普通</b>：某网站下的会员，可设为自定义访问角色或VIP1，VIP2等。  <br />
<b>[**]栏目管理员(版主)</b>：只管理设定的栏目内容。此权限需要在修改栏目属性处添加。<br />
<b>提示:只有正的才能分配权限！副的能分配栏目管理员！</b><br />
<br /><a name="check"></a> 
</div>
<div class="subtitle"><%=this.GetLang("网站审核逻辑说明|网站审核逻辑说明|WEBmaster check")%></div>
<div class="content">
[0]内容审核分为：文字内容审核 + 上传文件底层审核(WEB后台→上传文件管理有详细配置说明)。<br />
[1]超级管理员，可设置刚注册网站是否需要审核内容(WEB后台→超级管理员区→系统全局设置→主域名)<br />
[2]超级管理员，可设置A网站是否需要审核内容(WEB后台→超级管理员区→配置网站)。<br />
[3]A网站站长，可设置自己网站是否需要审核内容(WEB/WAP后台→网站默认配置)。<br />
[4]<b>条件一:</b>超级管理员设A网站需要审核内容。A网站所有用户发布内容和上传的文件都只能由超级管理员审核通过。<br />
[5]<b>条件二:</b>超级管理员设A网站不需要审核内容 + A站长设置A网站需要审核，A站长权限以下的所有用户发布内容和上传的文件只能由A站长或超级管理员审核通过。<br />
[6]<b>条件三:</b>超级管理员设A网站不需要审核内容 + A站长设置A网站不需要审核，此情况无需通过审核后显示。<br />
[7]注意:部分模块审核后还需要更新缓存才会显示出来。<br />
[8]文件底层审核指，如文件地址http://abc.com/1.gif，如果未审核通过直接显示未审核图片；如果开启底层防盗，盗链时直接显示防盗链图片。
</div>
<div class="subtitle"><%=this.GetLang("管理员必配软件|管理员必配软件|WEBmaster need Soft")%></div>
<div class="content">
1.<a href="http://www.kelink.com/download/opera8.rar">opera8手机模拟器(有中文错误提示)</a><br />
2.<a href="http://www.kelink.com/download/m3gate12.rar">M3gate手机模拟器(严格测试WAP1.0)</a><br />
3.<a href="http://www.kelink.com/download/flashfxp.rar">FTP文件传输软件</a><br />
4.<a href="http://www.kelink.com/download/ue.rar">代码编辑工具(UE)</a>
</div>

<div class="btBox"><div class="bt2">
<a href="<%=http_start + backurl%>">返回上级</a> <a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>	

</div></div>


<%}

Response.Write(WapTool.showDown(wmlVo));   //显示底部
%>
