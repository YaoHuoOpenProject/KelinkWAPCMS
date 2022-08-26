<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" Codebehind="UpLoad.aspx.cs"
    Inherits="KeLin.WebSite.WEB.EditPage.UpLoad" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE>文件上传</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
body, a, table, div, span, td, th, input, select{font:9pt;font-family: "宋体", Verdana, Arial, Helvetica, sans-serif;}
body {padding:0px;margin:0px}
</style>

<!--script language="JavaScript" src="wbtextbox/dialog.js"></script-->

</head>
<body bgcolor=menu>

<form action="?action=save&PhotoUrlID=img" method=post name=myform enctype="multipart/form-data">
<input type=file name=uploadfile size=1 style="width:100%">
<div style='word-wrap:break-word; word-break:break-all;display:block;width:100%;'>允许:<%=base.UpFileType %></div>
</form>

<script language=javascript>

    var sAllowExt = "<%=base.UpFileType %>";
// 检测上传表单
function CheckUploadForm() {
	if (!IsExt(document.myform.uploadfile.value,sAllowExt)){
	  //parent.UploadError("kelink.com");
		alert("提示：\n\n请选择一个有效的文件，\n支持的格式有（"+sAllowExt+"）！");
		return false;
	}
	return true
}

// 提交事件加入检测表单
var oForm = document.myform ;
oForm.attachEvent("onsubmit", CheckUploadForm) ;
if (! oForm.submitUpload) oForm.submitUpload = new Array() ;
oForm.submitUpload[oForm.submitUpload.length] = CheckUploadForm ;
if (! oForm.originalSubmit) {
	oForm.originalSubmit = oForm.submit ;
	//oForm.submit = function() {
		//if (this.submitUpload) {
			//for (var i = 0 ; i < this.submitUpload.length ; i++) {
				//this.submitUpload[i]() ;
		//	}
		//}
		//this.originalSubmit() ;
	//}
}

// 上传表单已装入完成
try {
	parent.UploadLoaded();
}
catch(e){
}

// 是否有效的扩展名
function IsExt(url, opt){
	var sTemp;
	var b=false;
	var s=opt.toUpperCase().split("|");
	for (var i=0;i<s.length ;i++ ){
		sTemp=url.substr(url.length-s[i].length-1);
		sTemp=sTemp.toUpperCase();
		s[i]="."+s[i];
		if (s[i]==sTemp){
			b=true;
			break;
		}
	}
	return b;
}
</script>

</body>
</html>

