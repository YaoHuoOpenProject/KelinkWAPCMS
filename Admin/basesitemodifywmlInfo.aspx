<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="basesitemodifywmlInfo.aspx.cs" Inherits="KeLin.WebSite.admin.basesitemodifywmlInfo" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("网站基本设置|网站基本设置|site setup"), wmlVo));//显示头                                                                                                                                                                       
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
    else if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("带*号不能为空！|带*号不能为空！|not Null"));
        Response.Write("</b></div>");
    }
    else
    {
%>
<%
    Response.Write(WapTool.GetSiteVIP(siteVo.siteVIP)); 
    if(siteVo.isCheck==1){
      Response.Write("内容需要审核<br/>");      
    }else{
      Response.Write("内容无需审核<br/>");       
    }       
         %>
空间大小:<%=this.sitespace%> M 
<br />已用空间:<% =this.myspace%> KB
<br/>过期时间:<%=endtime%>
<br/>网站标题*：
<br/><input type="text" format="*m" name="sitename<%=r%>" value="<%=sitename%>"/>

<br/>网站使用币种*：
<br/><input type="text" format="*m" name="sitemoneyname<%=r%>" value="<%=sitemoneyname%>"/>
<br/>每页列表数(30内)*：
<br/><input type="text" format="*N" name="MaxPerPage_Default<%=r%>" value="<%=MaxPerPage_Default%>" maxlength="3" size="5"/>

<br/>
每页内容显示数(65535内)*：
<br/><input type="text" format="*N" name="MaxPerPage_Content<%=r%>" value="<%=MaxPerPage_Content%>" maxlength="5" size="5"/>
<br/>上传文件大小限制*：
<br/><input type="text" format="*N" name="MaxFileSize<%=r%>" value="<%=MaxFileSize%>" maxlength="9"/> KB
<br/>允许的上传文件类型：
<br/><input type="text" format="*m" name="UpFileType<%=r%>" value="<%=UpFileType%>"/>
<br/>过滤字符：
<br/><input type="text" format="*m" name="charfilter<%=r%>" value="<%=charfilter%>"/>
<br />--------
<br />过滤手机UA关键字：
<br/><input type="text" format="*m" name="UAFilter<%=r%>" value="<%=UAFilter%>"/>
<br/>过滤IP访问：
<br/><input type="text" format="*m" name="IPFilter<%=r%>" value="<%=IPFilter%>"/>
<br/>如果多个请用"|"号分开
<br/><b>正站长身份访问不过滤</b>
<br />-------
<br/>新会员注册短信息(250字)：
<br/><input type="text" format="*m" name="MailServer<%=r%>" value="<%=MailServer%>"/>
<br/>新会员注册送币(4位):
<br/><input type="text" format="*m" name="MailServerPassWord<%=r%>" value="<%=MailServerPassWord%>"/>
<br/>网站类别:<%
              Response.Write("<select name=\"sitetype" + r + "\" value=\"" + sitetype + "\">");
    for (int i = 0; listVo != null && i < listVo.Count; i++)    {
        Response.Write("<option value=\"" + listVo[i].ID + "\">" + listVo[i].ID + "_" + listVo[i].classname + "</option>");
    }
    Response.Write("</select><br/>");
 %>
<br/><anchor><go href="<%=http_start%>admin/BaseSiteModifyWMLInfo.aspx" method="post">
<postfield name="action" value="gomod"/>
<postfield name="sitename" value="$(sitename<%=r%>)"/>	
<postfield name="sitemoneyname" value="$(sitemoneyname<%=r%>)"/>
<postfield name="MaxPerPage_Default" value="$(MaxPerPage_Default<%=r%>)"/>
<postfield name="MaxPerPage_Content" value="$(MaxPerPage_Content<%=r%>)"/>	
<postfield name="MaxFileSize" value="$(MaxFileSize<%=r%>)"/>	
<postfield name="UpFileType" value="$(UpFileType<%=r%>)"/>	
<postfield name="charfilter" value="$(charfilter<%=r%>)"/>
<postfield name="UAFilter" value="$(UAFilter<%=r%>)"/>
<postfield name="IPFilter" value="$(IPFilter<%=r%>)"/>
<postfield name="MailServer" value="$(MailServer<%=r%>)"/>
<postfield name="MailServerPassWord" value="$(MailServerPassWord<%=r%>)"/>
<postfield name="sitetype" value="$(sitetype<%=r%>)"/>
<postfield name="sid" value="<%=sid%>"/>
</go>确定更新</anchor>




<%
    } 
    Response.Write("<br/>------------<br/>");

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("网站基本设置|网站基本设置|site setup") + "</div>");
    Response.Write( this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("更新成功！|更新成功！|Successfully Update"));
        Response.Write("</b></div>");

    }
    else if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\"><b>");
        Response.Write(this.GetLang("带*号不能为空！|带*号不能为空！|not Null"));
        Response.Write("</b></div>");
    }
    else
    {
        
       %>
<form name="f" action="<%=http_start%>admin/BaseSiteModifyWMLInfo.aspx" method="post">
 <div class=\"content\">

<%
    Response.Write(WapTool.GetSiteVIP(siteVo.siteVIP)); 
    if(siteVo.isCheck==1){
      Response.Write("内容需要审核<br/>");      
    }else{
      Response.Write("内容无需审核<br/>");       
    }       
         %>
空间大小:<%=this.sitespace%> M 
<br />已用空间:<% =this.myspace%> KB
<br/>过期时间:<%=endtime%>
<br/>网站标题*：
<br/><input type="text" format="*m" name="sitename" value="<%=sitename%>"/>

<br/>网站使用币种*：
<br/><input type="text" format="*m" name="sitemoneyname" value="<%=sitemoneyname%>"/>
<br/>每页列表数(30内)*：
<br/><input type="text" format="*N" name="MaxPerPage_Default" value="<%=MaxPerPage_Default%>" maxlength="3" size="5"/>

<br/>
每页内容显示数(65535内)*：
<br/><input type="text" format="*N" name="MaxPerPage_Content" value="<%=MaxPerPage_Content%>" maxlength="5" size="5"/>
<br/>上传文件大小限制*：
<br/><input type="text" format="*N" name="MaxFileSize" value="<%=MaxFileSize%>" maxlength="9"/> KB
<br/>允许的上传文件类型：
<br/><input type="text" format="*m" name="UpFileType" value="<%=UpFileType%>"/>
<br/>过滤字符：
<br/><input type="text" format="*m" name="charfilter" value="<%=charfilter%>"/>
<br />--------
<br />过滤手机UA关键字：
<br/><input type="text" format="*m" name="UAFilter" value="<%=UAFilter%>"/>
<br/>过滤IP访问：
<br/><input type="text" format="*m" name="IPFilter" value="<%=IPFilter%>"/>
<br/>如果多个请用"|"号分开
<br/><b>正站长身份访问不过滤</b>
<br />--------
<br/>新会员注册短信息(250字)：
<br/><textarea name="MailServer" rows="6" style="width:100%"><%=MailServer%></textarea>
<br />(支持UBB方法)
<br/>新会员注册送币(4位):
<br/><input type="text" format="*m" name="MailServerPassWord" value="<%=MailServerPassWord%>"/>
<br />网站类别:
<%
    Response.Write("<select name=\"sitetype\" >");
    Response.Write("<option value=\"" + sitetype + "\">" + sitetype + "</option>");
    for (int i = 0; listVo != null && i < listVo.Count; i++)    {
        Response.Write("<option value=\"" + listVo[i].ID + "\">" + listVo[i].ID+"_"+listVo[i].classname + "</option>");
    }
    Response.Write("</select><br/>");
 %>
<input type="hidden" name="action" value="gomod"/>
<input type="hidden" name="sid" value="<%=sid%>"/>
<input type="submit" name="g" class="btn" value="确定更新" />
 </div>
 </form> 
    
    
    <%}
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


