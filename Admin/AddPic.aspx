<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPic.aspx.cs" Inherits="KeLin.WebSite.admin.AddPic" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="../NetCSS/table.js" type="text/JavaScript"></script>
    <script>
        function addwin(pathimg) {
            if (pathimg != form1.siteimg.value && form1.siteimg.value != 'UploadFiles/no.gif' && form1.siteimg.value != 'NetImages/no.gif') {
                pathimg = form1.siteimg.value;
                }
	//window.showModalDialog("/systemManage/knowledge/addList.jsp", window, "dialogHeight=350px; dialogWidth=550px; status:no;scroll:no;toolbar= no, menubar=no,resizable=no, location=no")
                window.open("Upload_Photo.aspx?PhotoUrlID=img&info=WEB页面综合排版LOGO&delpath=" + pathimg, "addclasswindow", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 
}
function clearpic() {
    //alert("bb");
    form1.img.src = '../NetImages/no.gif'
    form1.siteimg.value = 'NetImages/no.gif'
}
function daoru() {
   // alert("bb");
    window.open("../picture/systemindex.aspx?site=<%=strUserID %>&classid=00&seq=1", "daoruwindow", "height=520, width=790, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")
    //window.showdi
}
function openedit() {
    //alert(form1.siteimg.value);
    window.open("picDiy.aspx?edit=no&path=" + form1.siteimg.value, "editpic", "height=450, width=640, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
}
function addImgOrFile(a, b) {
    
    if (b == 'img') {
        form1.img.src = "/" + a;
        form1.siteimg.value = "/" + a;
    } else if (b == 1) {

    }
}
function backupimg() {
    //alert(Form1.backimg.value);
    form1.img.src = "../" + form1.backimg.value;
    //alert(Form1.img.src);
    form1.siteimg.value = form1.backimg.value;

}
    </script>
<title>图片设置</title>
<base target="_self" />
</head>
<body>
 <form name="form1" action="addpic.aspx" method="post">
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
                	图片LOGO设置
                	 
                	
                  		           
 
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
                                    <td height="24" width="632">
                                        <table width="399" border="0" height="117">
                                            <tr>
                                                <td width="415" height="113">
                                                    <table width="353" height="100%" border="0" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td width="572" align="center" valign="top">
                                                                
                                                                <table border="0" align="center" cellpadding="0" cellspacing="0" height="158" 
                                                                    style="width: 482px">
                                                                    <tr align="center" class='title'>
                                                                        <td height="1" colspan="2" class="TD_title3" width="381">
                                                                            &nbsp;
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td height="56" align="right" class="TD1" width="100">
                                                                            图片设置<strong>：</strong>
                                                                        </td>
                                                                        <td class="TD3" height="56" width="382">
                                                                           
                                                                                &nbsp;
                                                                                <img id="siteimgs" name="img" onclick="addwin('<%=img%>')" style="cursor: hand;"
                                                                                    src="<%=Scr %>">
                                                                                <input type="hidden" size="30" name="siteimg" value="<%=img %>">
                                                                                <input type="hidden" size="30" name="backimg" value="<%=img%>">
                                                                                <br>
                                                                                〖点击图片上传〗<br>
                                                                                【<a href="#" onclick="clearpic();">清除图片</a>】【<a href="#" onclick="daoru()">导入图片</a>】【<a
                                                                                    href="#" onclick='openedit();'>编辑图片</a>】【<a href="#" onclick="backupimg()">撤消操作</a>】
                                                                            
                                                                        </td>
                                                                    </tr>
                                                                    <tr align="center" class="tdbg">
                                                                        <td height="41" colspan="2" class="TD3" >
                                                                            <input name="Action" type="hidden" id="Action" value="add"><input name="Submit" type="submit"
                                                                                id="Submit" value=" 保 存 " style="cursor: hand" class="input3">
                                                                            <input name="classid" type="hidden" value="<%=strClassid %>">
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
                        </td>
                    </tr>
                </table>
    </table>
    </form>
</body>
</html>
