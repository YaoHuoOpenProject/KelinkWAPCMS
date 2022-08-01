<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false" Codebehind="Edit.aspx.cs" Inherits="KeLin.WebSite.WEB.EditPage.Edit" %>
<html>
<head>
<title>编辑页面</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="/NetCSS/treeWEB.js" type="text/javascript"></script>
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="/NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />
<style type="text/css"> 
body,a{font-size:12px;color:#000000;}
a{text-decoration:none;color:#000000;}
ul{margin-left:5px;}
li{list-style:none;}
.KLbox{z-index:99;width:170px;left:0px;top:3px;position:absolute;}
.KLbox .press{left:0;border:none;cursor:pointer;position:absolute;width:26px;height:300px;}
.KLbox .Qlist{left:0;width:170px;background:url(/WEB/Images/siderIM_bg2.gif) padding:5px;}
.KLbox .Qlist .b{float:left;height:6px;width:170px;font-size:1px;}
.KLbox .Qlist .infobox{text-align:center;background:#bdc5cb;background-image:url(/WEB/Images/siderIM_infobox2.gif);background-repeat:no-repeat;padding:5px;line-height:14px;color:#000;font-weight:700;}
.KLbox .Qlist .b{background:url(/WEB/Images/siderIM_bottom2.gif);height:9px;overflow:hidden;}
.KLbox .Qlist .con{height:500px; overflow-y:scroll; background:url(/WEB/Images/siderIM_bg2.gif);width:100%;padding:10px 0px 10px 0px;}
.KLbox .Qlist .con h2{height:22px;font:bold 12px/22px "宋体";background:url(/WEB/Images/siderIM_bg2.gif) repeat-y -163px 0;border:1px solid #3a708d;color:#fff;}
.KLbox .Qlist .con ul li{padding:5px 5px 0px 15px;}
</style>

</head>
<body leftmargin="2" topmargin="0" marginwidth="0" marginheight="0" bgcolor="#DCDCDC" >
<div class="KLbox" id="divKLbox">
<div class="Qlist" id="divOnline" onmouseout="hideMsgBox(event);" style="display:none;">
<div class="infobox">请选择</div>
<div class="con">
<iframe src="/web/EditPage/EditTree.aspx?siteid=<%=base.SiteId %>" width="148" height="500" scrolling="yes"></iframe>

<script type="text/javascript">


function gourl(strurl, classid, siteid) {
    window.location.href = "edit.aspx?vertype=3_2&classid=" + classid + "&siteid=" + siteid + "&classname=" + strurl;
}



function window.onload() {
        oblog_Size(800);
        

        var htmlcode = "";
        if (document.all("config").value == "") {

            htmlcode = htmlcode + "<!DOCTYPE html><html>\n";
            htmlcode = htmlcode + "<head>\n";
            htmlcode = htmlcode + "<meta http-equiv=\"Content-type\" content=\"text/html; charset=gb2312\" />\n";           
            htmlcode = htmlcode + "<meta name=\"keywords\" content=\"wap建站,wap建站系统,wap自助建站,wap网站,wap下载\"> <!--此处为SEO搜索优化-->\n";
            htmlcode = htmlcode + "<meta name=\"description\" content=\"柯林手机WAP自助建站系统提供完整全面的无线应用解决方案。\">\n";
            htmlcode = htmlcode + "<title>[classname]</title> <!--录入网站标题-->\n";
            htmlcode = htmlcode + "<link rel=\"SHORTCUT ICON\" href=\"favicon.ico\" />  <!--地址栏小图标-->\n";
            htmlcode = htmlcode + "</head>\n";
            htmlcode = htmlcode + "<body>";
            
            document.all("config").value = htmlcode;
        }
        
        updateCSS();
       

    }

    function updateCSS() {
    <!--
    <% String [] arry=css.Replace("\r\n","\r").Split('\r');
           for(int i=0 ; i<arry.Length ;i++){
             if(arry[i]!="" && arry[i].IndexOf("style") <= 0){
             %>             
             loadStyleString('<% =arry[i]%>');             
             <%
             
             }
           }
        
         %>
    -->
    }
    function changelocation(css) {
        form1.action.value = "selcss";
        submits();

        form1.submit();
    }
    function editCSS() {

    if(document.form1.cssid.value=="" || document.form1.cssid.value=="0"){
     alert("请先在下拉框选择一个CSS样式！");
     return;
    }

    window.open("/WEB/Style/modify.aspx?id=" + document.form1.cssid.value);


}
function loadStyleString(css) {
    
    
    
    
    var style = IframeID.document.createElement("style");
    style.type = "text/css";
    try {
        style.appendChild(IframeID.document.createTextNode(css));
    } catch (ex) {
        style.styleSheet.cssText = css;
    }
    var head = IframeID.document.getElementsByTagName("head")[0];
    head.appendChild(style);
}



<%=this.INFO %>



</script>
<p align="center"><input type="button" name="b" onclick="window.location.href='/admin/addClass.aspx?siteid=<%=base.SiteId %>&classid=0&backurl=/WEB/EditPage/Edit.aspx';" value ="添加栏目页面" class ="bt" /></p>
</div>
  <div class="b"></div>
 </div>
 <div id="divMenu" onmouseover="OnlineOver();" ><img src="/WEB/images/link.gif" alt="请选择栏目页面" class="press" /></div>
</div>
<script language="javascript" type="text/javascript">
    //<![CDATA[
    var tips; var theTop = 3/*这是默认高度,越大越往下*/;
    var old = theTop;
    function initFloatTips() {
        tips = document.getElementById("divKLbox");
        moveTips();
    };
    function moveTips() {
        var tt = 50;
        if (window.innerHeight) {
            pos = window.pageYOffset
        }
        else if (document.documentElement && document.documentElement.scrollTop) {
            pos = document.documentElement.scrollTop
        }
        else if (document.body) {
            pos = document.body.scrollTop;
        }
        pos = pos - tips.offsetTop + theTop;
        pos = tips.offsetTop + pos / 10;
        if (pos < theTop) pos = theTop;
        if (pos != old) {
            tips.style.top = pos + "px";
            tt = 10;
            //alert(tips.style.top);
        }
        old = pos;
        setTimeout(moveTips, tt);
    }
    //!]]>
    initFloatTips();
    function OnlineOver() {
        document.getElementById("divMenu").style.display = "none";
        document.getElementById("divOnline").style.display = "block";
        document.getElementById("divKLbox").style.width = "3px";
    }
    function OnlineOut() {
        document.getElementById("divMenu").style.display = "block";
        document.getElementById("divOnline").style.display = "none";
    }
    if (typeof (HTMLElement) != "undefined") //给firefox定义contains()方法，ie下不起作用
    {
        HTMLElement.prototype.contains = function(obj) {
            while (obj != null && typeof (obj.tagName) != "undefind") { //通过循环对比来判断是不是obj的父元素
                if (obj == this) return true;
                obj = obj.parentNode;
            }
            return false;
        };
    }
    function hideMsgBox(theEvent) { //theEvent用来传入事件，Firefox的方式
        if (theEvent) {
            var browser = navigator.userAgent; //取得浏览器属性
            if (browser.indexOf("Firefox") > 0) { //如果是Firefox
                if (document.getElementById("divOnline").contains(theEvent.relatedTarget)) { //如果是子元素
                    return; //结束函式
                }
            }
            if (browser.indexOf("MSIE") > 0) { //如果是IE
                if (document.getElementById("divOnline").contains(event.toElement)) { //如果是子元素
                    return; //结束函式
                }
            }
        }
        /*要执行的操作*/
        document.getElementById("divMenu").style.display = "block";
        document.getElementById("divOnline").style.display = "none";
    }

    function showclass() {

        window.open("showclass.aspx?classid=<%=classid %>", "class", "height=380, width=320, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")

    }

    function Real_View() {
         
         var vertype="<%=vertype %>";
         var sid="-3-0-0-0-0";
         if(vertype == "3_2" || vertype == "3_3")
         {
           sid="-3-0-0-0-0";
         }else {
         
           sid="-4-0-0-0-0";
         
         }
         
    
        <%if(this.classid=="-1"){ %>
        
              window.open("/myfile.aspx?siteid=<%=base.SiteId %>&classid=0&sid=" + sid);
        
        <%}else{ 
             if(vertype =="3_3" || vertype=="4_3"){
             %>
                    window.open("/Web_view.aspx?siteid=<%=base.SiteId %>&classid=<%=this.classid %>&sid=" + sid);
        
             
             <%
             }else{
        %>
               window.open("/wapindex.aspx?siteid=<%=base.SiteId %>&classid=<%=this.classid %>&sid=" + sid);
        <%}
          }
        
         %>

    }

</script>


<form  id="form1" name="form1" onSubmit="submits();" action="edit.aspx" method="post">
<table border="0" width="98%" align="center" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" height="30">
		
		
		<tr>
			<td  width="30%"  >　&nbsp;&nbsp;&nbsp;&nbsp<b>当前编辑页面：<font color=red><%=classname%> ID:<%=this.classid%></font></b> <%if (long.Parse(this.classid) > 0)
                                                                                                    { %>【<a href="/admin/modifyClass.aspx?siteid=<%=base.SiteId %>&classid=<%=this.classid %>&backurl=/WEB/EditPage/Edit.aspx">修改属性</a>】<%} %></td>
	<%if (classid=="0")
     { %>
			<td width="200" align="center" <%if(vertype=="3_2") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=3_2&siteid=<%=base.SiteId %>&classname=<%=classname %>">电脑版首页</a></td>	
			<td width="200" align="center" <%if(vertype=="3_3") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=3_3&siteid=<%=base.SiteId %>&classname=<%=classname %>">电脑版附页</a></td>			
			<td width="200" align="center" <%if(vertype=="4_2") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=4_2&siteid=<%=base.SiteId %>&classname=<%=classname %>">平板触摸首页</a></td>
			<td width="200" align="center" <%if(vertype=="4_3") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=4_3&siteid=<%=base.SiteId %>&classname=<%=classname %>">平板触摸附页</a></td>
			<td width="200" align="center">&nbsp;</td>
			<td width="200" align="center">&nbsp;</td>
	<%}else if(classid=="-1")
     { %>
			<td width="200" align="center" <%if(vertype=="3_2") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=3_2&siteid=<%=base.SiteId %>&classname=<%=classname %>">电脑版</a></td>			
			<td width="200" align="center" <%if(vertype=="4_2") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=4_2&siteid=<%=base.SiteId %>&classname=<%=classname %>">平板触摸电脑</a></td>
			<td width="200" align="center">&nbsp;</td>
			<td width="200" align="center">&nbsp;</td>
			
	<%} else{ %>
			<td width="200" align="center" <%if(vertype=="3_2") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=3_2&siteid=<%=base.SiteId %>&classname=<%=classname %>">电脑版二级页面</a></td>
			<td width="200" align="center" <%if(vertype=="3_3") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=3_3&siteid=<%=base.SiteId %>&classname=<%=classname %>">电脑版三级页面</a></td>			
			<td width="200" align="center" <%if(vertype=="4_2") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=4_2&siteid=<%=base.SiteId %>&classname=<%=classname %>">平板触摸二级页面</a></td>
			<td width="200" align="center" <%if(vertype=="4_3") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=4_3&siteid=<%=base.SiteId %>&classname=<%=classname %>">平板触摸三级页面</a></td>
	<%}%>
		</tr>
	</table>
<table width="98%" border="0" align="center" cellpadding="2" cellspacing="1" Class="border">
    <tr> 
      <td height="25" class="tdbg">
     第一步：编辑网页配置(&lt;body&gt;之前的代码):
     <textarea name="config" style="height: 150px; width: 100%"><%=Server.HtmlEncode(this.config)%></textarea>
         
      第二步：选择CSS样式(自动加在&lt;/head&gt;之前):  
                                                            <select name="cssid" onChange='changelocation(document.form1.cssid.options[document.form1.cssid.selectedIndex].value)'>
                                                            <option value ="0">选择CSS样式</option>
                                                            <% =selCSS%>
                                                            </select>  
                                                          (可以将css放到上面，这里选个空的)【<a href="javascript:changelocation(document.form1.cssid.options[document.form1.cssid.selectedIndex].value);" title="编辑CSS样式">刷新</a>】【<a href="javascript:editCSS();" title="编辑CSS样式">编辑当前CSS</a>】&nbsp;                                                               
      <br />第三步：编辑网页面(&lt;body&gt;与&lt;/body&gt;之间的代码): 
      </td>
    </tr>
    <tr> 
      <td height="25" class="tdbg">
      
      <INPUT type="hidden" name="content" id='edit' value="<%=Server.HtmlEncode(this.content)%>">
                <%=this.sb.ToString().Replace("oblog_View()","Real_View()")%></td>
    </tr>
    <tr> 
      <td class="tdbg"> <div align="center">
        <input type="hidden" name="action" value="save">
        <input type="hidden" name="classid" value="<%=classid%>">
        <input type="hidden" name="classname" value="<%=classname%>">
        <input type="hidden" name="vertype" value="<%=vertype%>">
        <input type="hidden" name="css" value="">
        <%if (long.Parse(classid) > 0)
          { %>
        <input type ="checkbox" name ="updateall" value ="yes"  <%if(updateall=="yes") Response.Write("checked"); %> />是否替换同类栏目页面，要替换栏目ID：<input type="text" name="needclassid" value ="<%=needclassid %>" /> 【<a href="javascript:showclass();">选择</a>】  
        
        <br /> <br />
        <%} %>
        <input name="cmdSaverest" type="button" onclick="document.all('edit').value='';initx();" value=" 清空代码(默认进入WAP2.0) " class="bt" > &nbsp;&nbsp;<input name="cmdSave" type="submit" id="cmdSave" value=" 保存修改 " class="bt" >   
        
        </div>
        <div align="left">
        <p>
        
        <font color=red>
               
        <b>
        
        <%if (classid == "-1")  {   %>
        我的地盘链接地址：<input type ="text" name="urlink111" value ="/myfile.aspx?siteid=<%=base.SiteId %>"  size ="100"/> <br />
        UBB链接方法：<input type ="text" name="urlink111" value ="[url=/myfile.aspx?siteid=<%=base.SiteId %>]<%=classname %>[/url]"  size ="100"/> <br />
        HTML代码：<input type ="text" name="urlink111" value ="&lt;a href=&quot;/myfile.aspx?siteid=<%=base.SiteId %>&quot;&gt;<%=classname %>&lt;/a&gt;"  size ="100"/><br />
        
        <%}else{ %>
        本栏目链接地址：<input type ="text" name="urlink111" value ="/wapindex.aspx?siteid=<%=base.SiteId %>&classid=<%=this.classid %>"  size ="100"/> <br />
        UBB链接方法：<input type ="text" name="urlink111" value ="[url=/wapindex.aspx?siteid=<%=base.SiteId %>&classid=<%=this.classid %>]<%=classname %>[/url]"  size ="100"/> <br />
        HTML代码：<input type ="text" name="urlink111" value ="&lt;a href=&quot;/wapindex.aspx?siteid=<%=base.SiteId %>&classid=<%=this.classid %>&quot;&gt;<%=classname %>&lt;/a&gt;"  size ="100"/><br />
        
         <%} %>
        <hr />
        <b>【普通栏目】：要显示的地方用[view]，建议自由排版。
        <br />【我的地盘】：要显示的地方用[view]
        <br />【首页】：指WAP2.0的wapindex.aspx页面内容，不建议用[view]，请自由排版，不然加[view]跟WAP2.0页面一样喽。
        <br />【附页】：指非首页/非二级/三级页面之外的页面，如提示信息页面。自由排版，要显示地方加[view]
        <br />【二级页面】：指WAP2.0的：book_list.aspx 即显示标题分页的页面。对应UBB：[view]  <a href="" target="_blank">查看</a>
        <br />【三级页面】：指WAP2.0的：book_view.aspx 即显示标题内容的页面。对应UBB：[view]  <a href="" target="_blank">查看</a>
        <br />【预览】：需要保存后才能预览，二级页面预览效果为实际效果，三级页面预览时，UBB[view]不能实时解析。因为三级页面要有具体标题ID才会解析的，可以通过先打开二级页面中的[view]效果再点击进入三级页面看效果。
        <br />【[view]】：所有页面通用的UBB！这个UBB是指将WAP2.0的页面代码转成HTML代码，自动识别显示当前页面的内容。其它外围效果，自己加HTML代码或套用模板。如果分页部份，默认去掉WAP2.0页面顶部和底部内容，只转关键的内容。
        <br />技巧： 附页，二级页面，三级页面，可以套用同一个网页模板，要显示动态内容的位置上留个空位，要放个[view]。也可以这么说：除了首页[wapindex.aspx]外，其它电脑版排版出来的页面要留个空位放[view]，至于[view]里的内容效果，请用CSS控制适合电脑版效果或直接改源代码或等以后升级增加UBB！
        </b></font>
        
        <h2><font color="#FF0000">注意：当前版本已抛弃&sid=xxx地址，UBB链接或URL链接中不再需要加入，系统自动隐藏保存。</font></h2>
        </p>
      </div></td>
    </tr>
  </table>









</form>




<div align="right">页面执行时间：<%=loadpagetime %>&nbsp;毫秒！</div>
              
              
</body>
</html>
