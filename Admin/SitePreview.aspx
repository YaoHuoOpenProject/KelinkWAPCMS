<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SitePreview.aspx.cs" Inherits="KeLin.WebSite.admin.SitePreview" %><%@ Import namespace="KeLin.ClassManager.Tool" %>
<% Session["reflashJump"]="eidt"; %><%
    Response.Buffer = true;
    Response.Expires = -1;
    Response.ExpiresAbsolute = DateTime.Now.AddDays(-1);
    Response.Expires = 0;
    Response.CacheControl = "no-cache"; 
 %><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/wwww_add.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="../NetCSS/table.js" type="text/JavaScript"></script>
<script type="text/javascript">
    function openView() {
        window.open("SitePreviewGo.aspx", "viewSite", "height=620, width=500, toolbar= no, menubar=no, scrollbars=yes, resizable=yes, location=yes, status=yes")
    }
    function openViewCach() {
        window.open("applicationadmin.aspx?action=remove&siteid=<%=base.SiteId %>&sid=<%=base.SID %>", "viewSite2", "height=400, width=520, toolbar= no, menubar=no, scrollbars=yes, resizable=yes, location=yes, status=yes")
    }
    function gosubmit() {
        document.all("panel").style.visibility = "visible";
        document.all("panel").style.cursor = "wait";
    }
    function editCSS(){
     if(document.sitepv.css.value=="0"){
     alert("请先在右边下拉框选择一个CSS样式！");
     return;
    }
    
    window.open("../WapStyle/modify.aspx?id="+document.sitepv.css.value);
    
    }
    function update(a) {
    
    if(document.sitepv.css.value!="0"){
     alert("编辑WAP1.0界面才有效，请选择“不使用CSS样式”！\n\nWAP2.0或HTML5界面由CSS样式控制位置！");
     return;
    }

        if (a == 1) {
            document.preview1.edit.action.value = "updpostion"
            document.preview1.edit.siteposition.value = "left";
            document.preview1.edit.submit();  
            
        } else if (a == 2) {
        document.preview1.edit.action.value = "updpostion"
        document.preview1.edit.siteposition.value = "center";
        document.preview1.edit.submit();

        } else if (a == 3) {
        document.preview1.edit.action.value = "updpostion"
        document.preview1.edit.siteposition.value = "right";
        document.preview1.edit.submit();

        } else if (a == 4) {
         

        }




    }
    function changelocation(css) {
        document.preview1.edit.action.value = "updIsModel"
        document.preview1.edit.css.value = css;
        document.preview1.edit.submit();


    }
    function changelocation2(vers) {
        document.preview1.edit.action.value = "updIsModel_ver"
        document.preview1.edit.vers.value = vers;
        document.preview1.edit.submit();


    }
    function add() {
        document.preview1.gotoopen2();
    }
    function add11() {
        //document.preview1.gotoopen2();	
        window.open("../bbs/getubb_list.asp", "newwindow", "height=450, width=700, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")

    }
    function preview() {
        window.open("SitePreviewSmall.asp", "newwindow", "height=400, width=250, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")

    }
    function editTitle(c) {
        if (c == "0") {
            window.preview2.location.href = 'modifyTitle.aspx?classid=' + c;
        } else {
            window.preview2.location.href = 'modifyClass.aspx?classid=' + c;
        }

    }

var Sys = {}; 
var ua = navigator.userAgent.toLowerCase(); 
var s; 
(s = ua.match(/msie ([\d.]+)/)) ? Sys.ie = s[1] : 
(s = ua.match(/firefox\/([\d.]+)/)) ? Sys.firefox = s[1] : 
(s = ua.match(/chrome\/([\d.]+)/)) ? Sys.chrome = s[1] : 
(s = ua.match(/opera.([\d.]+)/)) ? Sys.opera = s[1] : 
(s = ua.match(/version\/([\d.]+).*safari/)) ? Sys.safari = s[1] : 0; 
//以下进行测试 
//if (Sys.ie) document.write('IE: ' + Sys.ie);
if (Sys.firefox || Sys.chrome || Sys.safari) {

    alert('建议使用微软IE8/IE9浏览器 或谷歌Chrome浏览器操作！Opera浏览器我们约定用于测试WAP网站效果');
}

function daoruFile() {
    window.open("/admin/systemindexFiles.aspx?site=69&classid=00&seq=1", "daoruwindow", "height=520, width=790, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")
}
</script>
<title>页面综合排版</title>
    <style type="text/css">
        .style5
        {
            width: 12px;
        }
        .style6
        {
            width: 593px;
        }
        .style7
        {
            width: 422px;
        }
        #I1
        {
            width: 510px;
        }
    </style>
</head>
<body>
<form name="sitepv" action="">
                             <input type=hidden name="sitelist" value="1">
                             	
                             <input type=hidden name="sitelist" value="1">

<!--titlebegin                            	
<table width="100%"  border="0" cellpadding="0" cellspacing="0" >
  <tr>	
    <td valign="top">
      <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="1%"><img src="/NetImages/main_title_01.gif" width="12" height="24"></td>
              <td width="98%" background="/NetImages/main_title_02.gif"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="2%"><img src="/NetImages/i08.gif" width="16" height="16"></td>
                <td width="98%" height="24" valign="middle">
                	网站管理 &gt;&gt; 页面综合排版&nbsp;&nbsp;&nbsp;&nbsp;网站域名:<a href="http://<%=this.GetMyDomain() %>" target="_blank"><%=this.GetMyDomain() %></a>
                	 
                	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:openViewCach();"><font color=red><b>【更新缓存-缓存<%if ("1".Equals(WapTool.KL_OpenCache)) Response.Write("开启中"); else Response.Write("关闭中"); %>】</b></font></a>
                  		           

                  		 </td>
                </tr>
              </table></td>
              <td width="1%"><img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table>
titleend-->
<!--修改begin-->
<div id="title" style="width:1405px;">
   <div class="tit_right"><img src="../NetImages/tit_right.gif" /></div>
   <div class="tit_left"><img src="../NetImages/tit_left.gif" /></div>
   <div class="tit_center">
      <ul>
        <li><a href="../admin/SitePreview.aspx"  class="check">页面综合排版</a></li>
        <li><a href="../admin/ContentTree.aspx">内容管理</a></li>
        <li><a href="../WapStyle/Style_List.aspx">皮肤CSS样式</a></li>
        <li><a href="../models/systemindex.aspx">模版向导</a></li>
        <li><a href="../admin/SitePreviewGo.aspx"  style="color:red;">↙帮助↘</a></li>
        <li><a href="../models/systemmodel.aspx">系统模版管理</a></li>
        <li><a href="../WapStyle/Style_List00.aspx">系统CSS样式</a></li>
      </ul>
   </div>
</div>
<!--修改end-->
          
          
          </td>
        </tr>
        
<!---->
        <tr style="">
          <td width="384%"><table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#3399FF" class="TABLE6" height="496">
            <tr>
              <td height="496"><table width="100%"  border="0" height="485">
                  <tr>
              <td height="481">	 
<table width="1400" border="0" cellpadding="0" cellspacing="0" background="/NetImages/dw.gif" 
                      style="height: 567px">
                          <tr> 
    <td align="left" valign="top" height="104" class="style6" width="536"> 
  
        <table border="0" width="500">
            <tr>
                <td width="500">
                    <table align="center" bgcolor="#dff5fd" border="0" cellpadding="0" 
                        cellspacing="0">
                        <tr>
                            <td background="/NetImages/viewtop.gif" 
                                colspan="3" height="24" width="100%" align="center">
                                <span id="title1"></span>
                            </td>
                        </tr>
                        <tr>
                            <td bgcolor="#03b1d6" width="1">
                            </td>
                            <td width="191">
                                <table align="center" bgcolor="#03b1d6" border="0" cellpadding="0" 
                                    cellspacing="1" width="183">
                                    <tr>
                                        <td align="middle" bgcolor="#dff5fd" height="25" valign="bottom" class="style7">
                                            <table border="0" cellpadding="0" style="width: 512px">
                                                <tr>
                                                    <td align="middle" width="315">
                                                        <p align="left" style="width: 508px">
                                                            <a href="#" onClick="update(1);" title="栏目居左">
                                                            <img align="absbottom" align="absbottom" border="0" height="16" 
                                                                src="/NetImages/aleft.gif" style="cursor:pointer" title="栏目居左" width="16" />左</a>.<a href="#" onClick="update(2);" title="栏目居中">中</a>.<a href="#" onClick="update(3);" title="栏目居右">右</a>
                                                             <select name="vers" onChange='changelocation2(document.sitepv.vers.options[document.sitepv.vers.selectedIndex].value)'>
                                                             <option value ="">选择强制进入</option>
                                                             <option value ="0">0_自动识别</option>
                                                             <option value ="1">1_WAP1(淘汰)</option>
                                                             <option value ="2">2_触屏界面</option>                                                      
                                                             <option value ="3">3_电脑界面</option>
                                                             <option value ="4">4_预留</option>
                                                             <option value ="5">5_预留</option>                                                            
                                                             
                                                            
                                                             </select>
                                                                
                                                            
                                                            <select name="css" onChange='changelocation(document.sitepv.css.options[document.sitepv.css.selectedIndex].value)'>
                                                            <option value ="0">请选择CSS样式</option>
                                                            <option value ="0">不使用(WAP1.0)</option>
                                                            <%        for (int i = 0; (volist != null && i < volist.Count); i++)
                                                            { %>
                                                            <option value ="<%=volist[i].ID %>" <% if(volist[i].style_type==1){ Response.Write("selected");} %>><%=WapTool.left(volist[i].style_name.Replace("[HTML5]","(5)"),7)%><% if(volist[i].style_type==1){ Response.Write("√");} %></option>
                                                            <%} %>
                                                            </select>
                                                            <a href="#" onClick="editCSS()" title="编辑CSS样式">
                                                            <img align="absbottom" border="0" src="/NetImages/ahtm.gif" style="cursor:pointer" />编辑CSS</a>&nbsp;
                                                             <a href="http://<%=this.GetMyDomain() %>" target="_blank">
                                                            <img align="absbottom" border="0" src="/NetImages/acenter.gif" style="cursor:pointer" />预览网站 </a>&nbsp;
                                                            
                                                            <a href="#" onClick="add();" title="切换至新增栏目状态">
                                                            <img align="absbottom" align="absbottom" border="0" src="/NetImages/alist.gif" 
                                                                style="cursor:pointer" title="切换至新增栏目状态" />新增栏目</a>
                                                        </p>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td bgcolor="#ffffff" class="style7">
                                            <iframe name="preview1" id="I1" frameborder="no" height="450" name="I1" name="link" 
                                                src='wapindexedit.aspx'>
                                            </iframe>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td bgcolor="#03b1d6" width="0px"></td>
                        </tr>
                        <tr>
                            <td align="center" colspan="3">
                                <img height="6" src="/NetImages/search3_b_l.gif" width="512" /></td>
                        </tr>
                    </table>
                    <br />
                    快捷键:<input type="button" value="全顶" title="修改全局顶部信息" onclick="window.preview1.KL_gototopALL();" class="bt"/>&nbsp;
                    <input type="button" value="顶" title="修改页面顶部信息" onclick="window.preview1.KL_gototop();" class="bt"/>&nbsp;
                     <input type="button" value="底" title="修改页面低部信息" onclick="window.preview1.KL_gotodown();" class="bt"/>&nbsp;
                     <input type="button" value="全底" title="修改全局底部信息" onclick="window.preview1.KL_gotodownALL();" class="bt"/>&nbsp;
                      栏目ID:<input class="input" id="toclassid" name="toclassid" value="" size="5">前<input type="button" value="插" title="插" onclick="window.preview1.KL_gotorow(document.getElementById('toclassid').value);" class="bt"/>&nbsp;
                      <input type="button" value="进" title="编辑当前栏目页面" onclick="window.preview1.KL_gotoView(document.getElementById('toclassid').value);" class="bt"/>
                      <input type="button" value="上级" title="返回上级编辑页面" onclick="window.preview1.backpre();" class="bt"/>&nbsp;
                      <input type="button" value="首页" title="返回首页编辑页面" onclick="window.preview1.backpindex();" class="bt"/>&nbsp;
                     <input type="button" value="源码管理" title="HTML源码管理" onclick="window.open('/wml/userlist.aspx');" class="bt"/>&nbsp;
                      <input type="button" value="查看素材" title="查看素材" onclick="daoruFile();" class="bt"/>&nbsp;
                     
                </td>
            </tr>
        </table>

    	</td>
    <td width="510" align="left" valign="top" height="104"> 
 
                       <IFRAME name=preview2 frameBorder=no height=520 SCROLLING=NO name=link src="" width=500></iframe></TD>
    <td width="528" align="left" valign="top" height="104"> 
    
<table border="0" width="89%" cellspacing="0" cellpadding="0" height="543" id="table2">
	<tr>
		<td background="/NetImages/iphone.gif" valign="top" align="center">
		<br /><a href="/admin/MakeApp.aspx?siteid=<%=base.SiteId %>" target="_blank"><img src="/netimages/makeapp.jpg" width="40" height="40" alt="生成苹果安卓APP" border="0"/></a>
		
		
		<a href="/admin/modifyQR.aspx?siteid=<%=base.SiteId %>&sid=<%=base.SID %>" target="_blank"><img src="<%=QR%>" width="45" height="45" alt="生成二维码图" border="0" align="bottom"/></a>
		
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<font color="#707070"><input type="checkbox" name="ischeck" checked >同步显示 </font>
		
	
<script>
function isCheck(){
	//alert(sitepv.ischeck.checked);
	if(sitepv.ischeck.checked==true){
		return true;
	}else{
		return false;
	}
}	


</script> 

		
<div style="position:inherit">
<iframe src="" width="260" height="380" scrolling="yes" name="preview3"></iframe>
</div>

			
			　</td>
		
</tr>
</table>
                              
                              </TD></TR></TABLE>
 </TD>
                
  </tr>
</table>
 </td>
</table>
</td>
        </tr>
    </table>
    </td>
  </tr>
</table>
    
</form>

</body>
</html>




        				 
                     