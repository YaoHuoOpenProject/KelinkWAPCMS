<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowClass.aspx.cs" Inherits="KeLin.WebSite.admin.ShowClass" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<script src="../NetCSS/classtree.js" type="text/javascript"></script>
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css" /><link href="../NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />

    <title>��Ŀ��ʾ</title>
    <script language="JavaScript" type="text/JavaScript">
<!--
        function MM_reloadPage(init) {  //reloads the window if Nav4 resized
            if (init == true) with (navigator) {
                if ((appName == "Netscape") && (parseInt(appVersion) == 4)) {
                    document.MM_pgW = innerWidth; document.MM_pgH = innerHeight; onresize = MM_reloadPage;
                }
            }
            else if (innerWidth != document.MM_pgW || innerHeight != document.MM_pgH) location.reload();
        }
        MM_reloadPage(true);
//-->
    </script>
    <script>

function hideAll() {
  for(i=0;i<odiv.length;i++) {
    odiv[i].style.display="none";
  }
}

function showObj(num) {

  if (odiv[num].style.display=="none") {
    hideAll();
    odiv[num].style.display="inline";
  }
  else {
    odiv[num].style.display="none";
  }

}

function gotoupdate(oper_bct_id,manager_num,bct_num)
{
	var url="teamManage/updTeamContainer.jsp?method=modTeam&oper_bct_id="+oper_bct_id;
	url = url +"&manager_num="+manager_num;
	url = url +"&bct_num="+bct_num;
	var me;
	me = window;
	window.showModalDialog(url,me,"dialogWidth:650px; dialogHeight:450px; center:yes; help:no; resizable:no; status:no" );
}

function gotomanager(val0){

	var bct_id= val0;
    window.showModalDialog('teamManage/TeamManagerContainer.jsp?method=List&bct_id='+bct_id,'','dialogWidth:400px; dialogHeight:400px; center:yes; help:no; resizable:no; status:no');
	//window.showModalDialog("teamManage/TeamManagerContainer.jsp?method=List&bct_id="+bct_id ,"","height=450px,width=430px,left=200,top=40,channelmode=0,directories=0,fullscreen=0,location=0,menubar=0,Resizable=0,scrollbars=0,status=0,titlebar=0,toolbar=0");
	//window.showModalDialog("teamManage/TeamManagerContainer.jsp?method=List&bct_id="+bct_id+"?cityid="+cityid,"","height=420px,width=700px,left=45,top=40,channelmode=0,directories=0,fullscreen=0,location=0,menubar=0,Resizable=0,scrollbars=0,status=0,titlebar=0,toolbar=0");
	return false;
}

function gotodel(){
  if(classtreeshow.classid.value==""){
  	alert("����ѡ����Ҫɾ������Ŀ��");
  	return false;
  }
	
	if(window.confirm("�����Ҫɾ����?�������Ŀ������Ŀ����ô����Ŀ������Ŀ����Ҳ����ɾ����")){
		var classid
    classid=classtreeshow.classid.value	
		window.open ("delClass.asp?classid="+classid, "window", "height=100, width=200, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no") 

	}else{
		return false;
	}
	
}
function ischild(a){
window.open ("hasChild.asp?classid="+a, "haswindow", "height=100, width=200, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no") ;

}
function gotomodify(){
  if(classtreeshow.classid.value==""){
  	alert("����ѡ����Ҫ�޸ĵ���Ŀ��");
  	return false;
  }
var classid
classid=classtreeshow.classid.value	
window.open ("modifyClass.asp?classid="+classid, "window", "height=380, width=450, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 
	
}

function gotonew(){
window.open ("addClass.asp?classid=<%=classid%>", "window", "height=380, width=450, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 

}
function selectid(a){
	classtreeshow.classid.value=a;	
}
function preview(){
	window.open ("SitePreviewSmall.asp", "newwindow", "height=400, width=250, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no") 

}

//�ƶ���Ŀ
function up(id){
	//alert(id);
	var toid
	strtemp=classtreeshow.rank;
	//alert(strtemp);
  for(i=0;i<strtemp.length;i++) {
    if(strtemp[i].value==id && i>0){
       toid=strtemp[i-1].value;
       classtreeshow.action="ClassTree.asp?order=up&id="+id+"_"+toid+"&classid=<%=classid%>&childid=";
       classtreeshow.submit();
       return;
    }
 }
  alert("�������~");
 //alert(id+'->'+toid);
}
function down(id){
	//alert(id);
	var toid
	strtemp=classtreeshow.rank;
	//alert(strtemp);
  for(i=0;i<strtemp.length;i++) {
    if(strtemp[i].value==id && i<strtemp.length-1){
       toid=strtemp[i+1].value;
       classtreeshow.action="ClassTree.asp?order=down&id="+id+"_"+toid+"&classid=<%=classid%>&childid=";
       classtreeshow.submit();
       return;
    }
 }
   alert("����׶���~");
 //alert(id+'->'+toid);
}
    </script>
</head>
<body>
    <form name="classtreeshow" action="ClassTree.asp" method="POST">
    <input type="hidden" name="classid">
<table width="100%"  border="0" cellpadding="0" cellspacing="0" >
  <tr>	
    <td valign="top">
      <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="12"><img src="/NetImages/main_title_01.gif" width="12" height="24"></td>
              <td width="100%" background="/NetImages/main_title_02.gif"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="2%"><img src="/NetImages/i08.gif" width="16" height="16"></td>
                <td width="98%" height="24" valign="middle">
                	ѡ����վ��Ŀ
                	
                  		           
 
                  		 </td>
                </tr>
              </table></td>
              <td width="13"><img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="100%"><table width="100%"  border="0" cellpadding="0" cellspacing="0" bordercolor="#3399FF" class="TABLE6" >
            <tr>
                                    <td>
                                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td width="310" height="320" valign="top">
                                                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td width="220px">
                                                            </td>
                                                        </tr>
                                                    </table>
                                                    <div id="Layer1" style=" width: 310; height: 317; z-index: 1;visibility: inherit; overflow: auto; left: 3; top: 31;position: absolute;">
                                                        <table width="100%" border="0" cellspacing="0" cellpadding="0" >
                                                            <tr>
                                                                <td width="160" valign="top" background="/NetImages/left_6.gif" >
                                                                    <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                                                        <tr>
                                                                            <td valign="top"  height="317">
                                                                                <script type="text/javascript">
d = new dTree('d');
d.add(0,-1,'<a href="#" onclick="addclassname(\'0\',\'��Ŀ��ҳ\');">��Ŀ��ҳ</a>','#');
<%=strJavascript %>
document.write(d);

function addclassname(a,b){
	<%
	if (classid!="")
    {		
	%>
	if(a==<%=classid%>){
		alert("��Ǹ������������Ŀ����Ϊ�Լ�������ѡ�����ϼ������¼�����ͬ������Ŀ��");
		return false;
		
	}
<%}%>
	//alert(window.opener.Form1.classid.value);
	window.opener.selectclassid(a,b);
	//window.opener.Form1.cn.value=b;	
	window.close();
}
                                                                                </script>
                                                                            </td>
                                                                            <td>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                                                <td valign="top" width="680">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td class="bg">
                �����<img src="/NetImages/tree/plus.gif" border="0" align="absbottom">��չ����Ŀ�������<img src="/NetImages/tree/minus.gif"
                    border="0" align="absbottom">��������Ŀ����<a href="#" onclick="window.close();">�ر�</a>��
            </td>
        </tr>
    </form>
</body>
</html>
