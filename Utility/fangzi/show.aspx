<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="show.aspx.cs" Inherits="KeLin.WebSite.Utility.fangzi.show" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop(this.GetLang("按揭计算器|按揭计算器|按揭计算器"), wmlVo));//显示头   


if (ver == "1")
{%>
<p align="left">
单价：<input type="text" name="dj" format="*N" value="<%=this.dj2%>" size="4"/>元/平方米<br/>
面积：<input type="text" name="mj" format="*N" value="<%=this.mj2%>" size="4"/>平方米<br/>
按揭成数：<select name="chsh" value="<%=this.chsh2%>">
	       <option value="8">8成</option>
	       <option value="7">7成</option>
	       <option value="6">6成</option>
	       <option value="5">5成</option>
	       <option value="4">4成</option>
	       <option value="3">3成</option>
	       <option value="2">2成</option>
	      </select><br/>
按揭年数：<select name="nsh" value="<%=this.nsh2%>">
	       <option value="2">2年（24期）</option>
	       <option value="4">4年（48期）</option>
	       <option value="6">6年（72期）</option>
	       <option value="8">8年（96期）</option>
	       <option value="10">10年（120期）</option>
	       <option value="15">15年（180期）</option>
	       <option value="20">20年（240期）</option>
	       <option value="25">25年（300期）</option>
	       <option value="30">30年（30期）</option>
	      </select><br/>
<anchor>开始计算
<go href="<%=http_start%>utility/fangzi/show.aspx" method="get" accept-charset="utf-8">
<postfield name="action" value="go"/>
<postfield name="dj" value="$(dj)"/>
<postfield name="mj" value="$(mj)"/>
<postfield name="chsh" value="$(chsh)"/>
<postfield name="nsh" value="$(nsh)"/>
<postfield name="siteid" value="<%=siteid%>"/> 
<postfield name="classid" value="<%=classid%>"/> 
<postfield name="sid" value="<%=sid%>"/> 
<postfield name="r" value="<%=r%>"/> 
</go>
</anchor>
<br />
-计算结果显示- 
 <br/>
房款总额: <%=this.fkz%>元<br/>
贷款总额: <%=this.dkz%>元<br/>
首期付款: <%=this.shf%>元<br/>
月均还款: <%=this.yj%>元<br/>
还款总额: <%=this.hkz%>元<br/>
支付息款: <%=this.lxfd%>元<br/>


<br/>

----------<br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=classVo.childid %>">返回上级</a> 
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>	
<%Response.Write(WapTool.GetVS(wmlVo));%>
</p>


<%}else{ %>

<div class="subtitle"><%=this.GetLang("按揭计算器|按揭计算器|按揭计算器")%></div>

<div class="content">
<form name="f" action="<%=http_start%>utility/fangzi/show.aspx" method="get">
单价：<input type="text" name="dj" format="*N" value="<%=this.dj%>" size="4"/>元/平方米<br/>
面积：<input type="text" name="mj" format="*N" value="<%=this.mj2%>" size="4"/>平方米<br/>
按揭成数：<select name="chsh">
          <option value="<%=this.chsh2%>"><%=this.chsh2%></option>
	       <option value="8">8成</option>
	       <option value="7">7成</option>
	       <option value="6">6成</option>
	       <option value="5">5成</option>
	       <option value="4">4成</option>
	       <option value="3">3成</option>
	       <option value="2">2成</option>
	      </select><br/>
按揭年数：<select name="nsh">
            <option value="<%=this.nsh2%>"><%=this.nsh2%></option>
	       <option value="2">2年(24期)</option>
	       <option value="4">4年(48期)</option>
	       <option value="6">6年(72期)</option>
	       <option value="8">8年(96期)</option>
	       <option value="10">10年(120期)</option>
	       <option value="15">15年(180期)</option>
	       <option value="20">20年(240期)</option>
	       <option value="25">25年(300期)</option>
	       <option value="30">30年(30期)</option>
	      </select><br/>
<input type="hidden" name="siteid" value="<%=siteid%>"/> 
<input type="hidden" name="classid" value="<%=classid%>"/> 
<input type="hidden" name="sid" value="<%=sid%>"/> 
<input type="hidden" name="r" value="<%=r%>"/> 
<input type="submit" name="g" class="btn" value="开始计算" />
<input type="hidden" name="action" value="go"/>
</form>
<div id=\"KL_margin\" style=\"margin:8px;\"></div>
房款总额: <%=this.fkz%>元<br/>
贷款总额: <%=this.dkz%>元<br/>
首期付款: <%=this.shf%>元<br/>
月均还款: <%=this.yj%>元<br/>
还款总额: <%=this.hkz%>元<br/>
支付息款: <%=this.lxfd%>元<br/>

<br/>
</div>

<div class="btBox"><div class="bt2">
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=classVo.childid %>">返回上级</a> 
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>	
</div>
</div>

<%}

Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>