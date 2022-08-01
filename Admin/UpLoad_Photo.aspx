<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpLoad_Photo.aspx.cs" Inherits="KeLin.WebSite.UpLoad_Photo" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<title>上传文件</title>
</head>
<style type="text/css">
<!--
BODY{
BACKGROUND-COLOR: #E1F4EE;
font-size:9pt
}
.tx1 { height: 20px;font-size: 9pt; border: 1px solid; border-color: #000000; color: #0000FF}
-->
</style>

<SCRIPT language=javascript>
    function check() {
        var strFileName = document.form1.FileName.value;
        if (strFileName == "") {
            alert("请选择要上传的文件");
            document.form1.FileName.focus();
            return false;
        }

        return true;
    }
function editpic() {
    window.open("picDiy.aspx?edit=<%=edit%>&path=<%=delpath%>", "editpic", "height=450, width=640, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
    window.close();

}

function save() {
    if (check()) {
        
        document.getElementById("action").value = "save";
        var strFileName = document.form1.FileName.value;
        var arrFile = new Array();
        arrFile = strFileName.split(".");
        var FixName = "asp|asa|cer|cdx|htr|php|aspx|sHtml";
       // alert(" bb");
        if (FixName.indexOf(arrFile[arrFile.length - 1]) > 0) {
            alert("这种文件类型不允许上传 asp|asa|aspx|exe|cer...您可以先压缩rar后再上传！\n\n只允许上传这几种文件类型：<%=UpFileType %>");
         }
        else {
            document.getElementById("ext").value = arrFile[arrFile.length - 1];
            document.all("panel").style.visibility = "visible";
            document.all("panel").style.cursor = "wait";
            form1.submit();
        }
    }
}
</SCRIPT>
<body>
<div id="panel" style="visibility:hidden;position:absolute;border:1px none;left:2px;top:10px;solid; width:356px">
<table align='center' cellpadding="4" style="width:100px;height:100px;border:1px solid #345487;background-color:#F5F9FD;padding:6px; font-family:Arial, sans-serif; font-size: 12px; color: #000;">
 <tr>
	<td width="100%" align="center" nowrap="nowrap">
	<img  src="../NetImages/hourglass.gif">正在处理请求，请耐心等待......
	</td>
  </tr>
</table>
</div>

<table  border="0" cellpadding="0" cellspacing="0" style="width: 25%" >
  <tr>	
    <td valign="top">
      <table  border="0" align="center" cellpadding="0" cellspacing="0" 
            style="width: 35%">
      <tr> 
        <td width="100%" colspan="4"><table width="100%" height="87"  border="0" cellpadding="0" cellspacing="0" bordercolor="#3399FF" class="TABLE6">
            <tr> 
              <td height="84"> <table width="107%"  border="0">
                  <tr>
                    <td > 
					<div align="left" 
                            style="table-layout: fixed;WORD-BREAK: break-all; WORD-WRAP: break-word;width:348px; height:136px"> 
                        <font color=red> *允许上传这几种文件类型：<%=UpFileType%> </font> 
                        <br>
                        *如果要上传其它类型文件,请在【网站管理】 -&gt; 【基本信息设置】中设置上传文件类型。 <br>
                        
                        
                        <form method="post" name="form1" enctype="multipart/form-data">
                          <input name="FileName" type="FILE" class="tx1" size="25">
                          <input type="button" name="Submit" value="上传" onclick="save()" style="border:1px double rgb(88,88,88);font:9pt">
                          <input name="PhotoUrlID" type="hidden" id="PhotoUrlID" value="<%=PhotoUrlID%>">
                           <input name="info" type="hidden" id="info" value="<%=info%>">
                          <input name="delpath" type="hidden" id="delpath"  value="<%=delpath%>">
                          <input name="action" id="action" value="" type="hidden" />
                          <input name="ext" id="ext" value="" type="hidden" />
                        </form>
                      </div></td>
                  </tr>
                </table>
                </td>
            </tr>
          </table></td>
      </tr>
      <tr> 
        <td height="2" class="bg"></td>
      </tr>
    </table>

</body>
</html>
