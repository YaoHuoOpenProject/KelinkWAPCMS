<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="show.aspx.cs" Inherits="KeLin.WebSite.Utility.qiche.show" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

Response.Write(WapTool.showTop(this.GetLang("个人汽车消费贷款计算器|个人汽车消费贷款计算器|个人汽车消费贷款计算器"), wmlVo));//显示头   


if (ver == "1")
{%>
<p align="left">
购买车开票价格:<br/>
<input type="text" name="chejia_i" format="*N" value="<%=this.chejia%>" size="4"/>元<br/>
首付车款:<select name="shouchekuan_i" value="<%=this.shouchekuan%>">
	       <option value="20">20%</option>
	       <option value="30">30%</option>
	       <option value="40">40%</option>
	       <option value="50">50%</option>
	       <option value="60%">60%</option>
	       <option value="70">70%</option>
	       <option value="80">80%</option>
	       <option value="90">90%</option>
	       <option value="100">100%</option>
	      </select><br/>
月还款:<select name="yuehuankuan_i" value="<%=this.yuehuankuan%>">
	       <option value="36">三年（36月）</option>
	       <option value="60">五年（60月）</option>
	      </select><br/>
---车辆保险---<br/>
第三者责任险:<select name="three_i" value="<%=this.three%>">
	       <option value="975">10万(975.0元)</option>
	       <option value="803">5万(803元)</option>
	      </select><br/>
司乘险:<select name="sichexian_i" value="<%=this.sichexian%>">
	       <option value="242.5">是(242.5元)</option>
	       <option value="0">否(0.0元)</option>
	      </select><br/>
车身划痕:<select name="chesheng_i" value="<%=this.chesheng%>">
	       <option value="yes">是</option>
	       <option value="no">否</option>
	      </select><br/>
车损:计算结果后显示<br/>
盗抢:计算结果后显示<br/>
<anchor>开始计算
<go href="<%=http_start%>utility/qiche/show.aspx" method="post" accept-charset="utf-8">
<postfield name="key" value="$(key)"/>
<postfield name="chejia" value="$(chejia_i)"/>
<postfield name="shouchekuan" value="$(shouchekuan_i)"/>
<postfield name="yuehuankuan" value="$(yuehuankuan_i)"/>
<postfield name="three" value="$(three_i)"/>
<postfield name="sichexian" value="$(sichexian_i)"/>
<postfield name="chesheng" value="$(chesheng_i)"/>
<postfield name="siteid" value="<%=siteid%>"/> 
<postfield name="classid" value="<%=classid%>"/> 
<postfield name="sid" value="<%=sid%>"/> 
<postfield name="r" value="<%=r%>"/> 
</go>
</anchor>
<br />
-计算结果显示- 
 <br/>
货款额:<%=this.huokuan%><br/>
车辆购置税:<%=this.cheshui%><br/>
车身划痕:<%=this.chesheng2%><br/>
车损:<%=this.chesun%><br/>
盗抢:<%=this.daoqiang%><br/>
不计免赔:<%=this.buji%><br/>
-----------<br/>
首付合计:<%=this.allmoney%><br/>
月还款:<%=this.yue%><br/>

<br/>

----------<br/>
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=classVo.childid %>">返回上级</a> 
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>	
<%Response.Write(WapTool.GetVS(wmlVo));%>
</p>


<%}else{ %>

<div class="subtitle"><%=this.GetLang("个人汽车消费贷款计算器|个人汽车消费贷款计算器|个人汽车消费贷款计算器")%></div>

<div class="content">
<form name="f" action="<%=http_start%>utility/qiche/show.aspx" method="post">
购买车开票价格:<input type="text" name="chejia" format="*N" value="<%=this.chejia%>" size="4"/>元<br/>
首付车款:<select name="shouchekuan" value="<%=this.shouchekuan%>">
	       <option value="20">20%</option>
	       <option value="30">30%</option>
	       <option value="40">40%</option>
	       <option value="50">50%</option>
	       <option value="60%">60%</option>
	       <option value="70">70%</option>
	       <option value="80">80%</option>
	       <option value="90">90%</option>
	       <option value="100">100%</option>
	      </select><br/>
月还款:<select name="yuehuankuan" value="<%=this.yuehuankuan%>">
	       <option value="36">三年（36月）</option>
	       <option value="60">五年（60月）</option>
	      </select><br/>
---车辆保险---<br/>
第三者责任险:<select name="three" value="<%=this.three%>">
	       <option value="975">10万(975.0元)</option>
	       <option value="803">5万(803元)</option>
	      </select><br/>
	      
司乘险:<select name="sichexian" value="<%=this.sichexian%>">
	       <option value="242.5">是(242.5元)</option>
	       <option value="0">否(0.0元)</option>
	      </select><br/>
车身划痕:<select name="chesheng" value="<%=this.chesheng%>">
	       <option value="yes">是</option>
	       <option value="no">否</option>
	      </select><br/>
车损:计算结果后显示<br/>
盗抢:计算结果后显示<br/>

<input type="hidden" name="siteid" value="<%=siteid%>"/> 
<input type="hidden" name="classid" value="<%=classid%>"/> 
<input type="hidden" name="sid" value="<%=sid%>"/> 
<input type="hidden" name="r" value="<%=r%>"/> 
<input type="submit" name="g" class="btn" value="开始计算" />

</form>
<div id=\"KL_margin\" style=\"margin:8px;\"></div>

-计算结果显示- 
 <br/>
货款额:<%=this.huokuan%><br/>
车辆购置税:<%=this.cheshui%><br/>
车身划痕:<%=this.chesheng2%><br/>
车损:<%=this.chesun%><br/>
盗抢:<%=this.daoqiang%><br/>
不计免赔:<%=this.buji%><br/>
-----------<br/>
首付合计:<%=this.allmoney%><br/>
月还款:<%=this.yue%><br/>

<br/>
</div>

<div class="btBox"><div class="bt2">
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>&amp;classid=<%=classVo.childid %>">返回上级</a> 
<a href="<%=http_start%>wapindex.aspx?siteid=<%=siteid%>">返回首页</a>	

</div></div>

<%}

Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>