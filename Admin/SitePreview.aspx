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
     alert("�������ұ�������ѡ��һ��CSS��ʽ��");
     return;
    }
    
    window.open("../WapStyle/modify.aspx?id="+document.sitepv.css.value);
    
    }
    function update(a) {
    
    if(document.sitepv.css.value!="0"){
     alert("�༭WAP1.0�������Ч����ѡ�񡰲�ʹ��CSS��ʽ����\n\nWAP2.0��HTML5������CSS��ʽ����λ�ã�");
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
//���½��в��� 
//if (Sys.ie) document.write('IE: ' + Sys.ie);
if (Sys.firefox || Sys.chrome || Sys.safari) {

    alert('����ʹ��΢��IE8/IE9����� ��ȸ�Chrome�����������Opera���������Լ�����ڲ���WAP��վЧ��');
}

function daoruFile() {
    window.open("/admin/systemindexFiles.aspx?site=69&classid=00&seq=1", "daoruwindow", "height=520, width=790, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")
}
</script>
<title>ҳ���ۺ��Ű�</title>
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
                	��վ���� &gt;&gt; ҳ���ۺ��Ű�&nbsp;&nbsp;&nbsp;&nbsp;��վ����:<a href="http://<%=this.GetMyDomain() %>" target="_blank"><%=this.GetMyDomain() %></a>
                	 
                	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:openViewCach();"><font color=red><b>�����»���-����<%if ("1".Equals(WapTool.KL_OpenCache)) Response.Write("������"); else Response.Write("�ر���"); %>��</b></font></a>
                  		           

                  		 </td>
                </tr>
              </table></td>
              <td width="1%"><img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table>
titleend-->
<!--�޸�begin-->
<div id="title" style="width:1405px;">
   <div class="tit_right"><img src="../NetImages/tit_right.gif" /></div>
   <div class="tit_left"><img src="../NetImages/tit_left.gif" /></div>
   <div class="tit_center">
      <ul>
        <li><a href="../admin/SitePreview.aspx"  class="check">ҳ���ۺ��Ű�</a></li>
        <li><a href="../admin/ContentTree.aspx">���ݹ���</a></li>
        <li><a href="../WapStyle/Style_List.aspx">Ƥ��CSS��ʽ</a></li>
        <li><a href="../models/systemindex.aspx">ģ����</a></li>
        <li><a href="../admin/SitePreviewGo.aspx"  style="color:red;">�L�����K</a></li>
        <li><a href="../models/systemmodel.aspx">ϵͳģ�����</a></li>
        <li><a href="../WapStyle/Style_List00.aspx">ϵͳCSS��ʽ</a></li>
      </ul>
   </div>
</div>
<!--�޸�end-->
          
          
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
                                                            <a href="#" onClick="update(1);" title="��Ŀ����">
                                                            <img align="absbottom" align="absbottom" border="0" height="16" 
                                                                src="/NetImages/aleft.gif" style="cursor:pointer" title="��Ŀ����" width="16" />��</a>.<a href="#" onClick="update(2);" title="��Ŀ����">��</a>.<a href="#" onClick="update(3);" title="��Ŀ����">��</a>
                                                             <select name="vers" onChange='changelocation2(document.sitepv.vers.options[document.sitepv.vers.selectedIndex].value)'>
                                                             <option value ="">ѡ��ǿ�ƽ���</option>
                                                             <option value ="0">0_�Զ�ʶ��</option>
                                                             <option value ="1">1_WAP1(��̭)</option>
                                                             <option value ="2">2_��������</option>                                                      
                                                             <option value ="3">3_���Խ���</option>
                                                             <option value ="4">4_Ԥ��</option>
                                                             <option value ="5">5_Ԥ��</option>                                                            
                                                             
                                                            
                                                             </select>
                                                                
                                                            
                                                            <select name="css" onChange='changelocation(document.sitepv.css.options[document.sitepv.css.selectedIndex].value)'>
                                                            <option value ="0">��ѡ��CSS��ʽ</option>
                                                            <option value ="0">��ʹ��(WAP1.0)</option>
                                                            <%        for (int i = 0; (volist != null && i < volist.Count); i++)
                                                            { %>
                                                            <option value ="<%=volist[i].ID %>" <% if(volist[i].style_type==1){ Response.Write("selected");} %>><%=WapTool.left(volist[i].style_name.Replace("[HTML5]","(5)"),7)%><% if(volist[i].style_type==1){ Response.Write("��");} %></option>
                                                            <%} %>
                                                            </select>
                                                            <a href="#" onClick="editCSS()" title="�༭CSS��ʽ">
                                                            <img align="absbottom" border="0" src="/NetImages/ahtm.gif" style="cursor:pointer" />�༭CSS</a>&nbsp;
                                                             <a href="http://<%=this.GetMyDomain() %>" target="_blank">
                                                            <img align="absbottom" border="0" src="/NetImages/acenter.gif" style="cursor:pointer" />Ԥ����վ </a>&nbsp;
                                                            
                                                            <a href="#" onClick="add();" title="�л���������Ŀ״̬">
                                                            <img align="absbottom" align="absbottom" border="0" src="/NetImages/alist.gif" 
                                                                style="cursor:pointer" title="�л���������Ŀ״̬" />������Ŀ</a>
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
                    ��ݼ�:<input type="button" value="ȫ��" title="�޸�ȫ�ֶ�����Ϣ" onclick="window.preview1.KL_gototopALL();" class="bt"/>&nbsp;
                    <input type="button" value="��" title="�޸�ҳ�涥����Ϣ" onclick="window.preview1.KL_gototop();" class="bt"/>&nbsp;
                     <input type="button" value="��" title="�޸�ҳ��Ͳ���Ϣ" onclick="window.preview1.KL_gotodown();" class="bt"/>&nbsp;
                     <input type="button" value="ȫ��" title="�޸�ȫ�ֵײ���Ϣ" onclick="window.preview1.KL_gotodownALL();" class="bt"/>&nbsp;
                      ��ĿID:<input class="input" id="toclassid" name="toclassid" value="" size="5">ǰ<input type="button" value="��" title="��" onclick="window.preview1.KL_gotorow(document.getElementById('toclassid').value);" class="bt"/>&nbsp;
                      <input type="button" value="��" title="�༭��ǰ��Ŀҳ��" onclick="window.preview1.KL_gotoView(document.getElementById('toclassid').value);" class="bt"/>
                      <input type="button" value="�ϼ�" title="�����ϼ��༭ҳ��" onclick="window.preview1.backpre();" class="bt"/>&nbsp;
                      <input type="button" value="��ҳ" title="������ҳ�༭ҳ��" onclick="window.preview1.backpindex();" class="bt"/>&nbsp;
                     <input type="button" value="Դ�����" title="HTMLԴ�����" onclick="window.open('/wml/userlist.aspx');" class="bt"/>&nbsp;
                      <input type="button" value="�鿴�ز�" title="�鿴�ز�" onclick="daoruFile();" class="bt"/>&nbsp;
                     
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
		<br /><a href="/admin/MakeApp.aspx?siteid=<%=base.SiteId %>" target="_blank"><img src="/netimages/makeapp.jpg" width="40" height="40" alt="����ƻ����׿APP" border="0"/></a>
		
		
		<a href="/admin/modifyQR.aspx?siteid=<%=base.SiteId %>&sid=<%=base.SID %>" target="_blank"><img src="<%=QR%>" width="45" height="45" alt="���ɶ�ά��ͼ" border="0" align="bottom"/></a>
		
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<font color="#707070"><input type="checkbox" name="ischeck" checked >ͬ����ʾ </font>
		
	
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

			
			��</td>
		
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




        				 
                     