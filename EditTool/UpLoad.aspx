<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" Codebehind="UpLoad.aspx.cs"
    Inherits="KeLin.WebSite.WEB.EditPage.UpLoad" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
<TITLE>�ļ��ϴ�</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<style type="text/css">
body, a, table, div, span, td, th, input, select{font:9pt;font-family: "����", Verdana, Arial, Helvetica, sans-serif;}
body {padding:0px;margin:0px}
</style>

<!--script language="JavaScript" src="wbtextbox/dialog.js"></script-->

</head>
<body bgcolor=menu>

<form action="?action=save&PhotoUrlID=img" method=post name=myform enctype="multipart/form-data">
<input type=file name=uploadfile size=1 style="width:100%">
<div style='word-wrap:break-word; word-break:break-all;display:block;width:100%;'>����:<%=base.UpFileType %></div>
</form>

<script language=javascript>

    var sAllowExt = "<%=base.UpFileType %>";
// ����ϴ���
function CheckUploadForm() {
	if (!IsExt(document.myform.uploadfile.value,sAllowExt)){
	  //parent.UploadError("kelink.com");
		alert("��ʾ��\n\n��ѡ��һ����Ч���ļ���\n֧�ֵĸ�ʽ�У�"+sAllowExt+"����");
		return false;
	}
	return true
}

// �ύ�¼��������
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

// �ϴ�����װ�����
try {
	parent.UploadLoaded();
}
catch(e){
}

// �Ƿ���Ч����չ��
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

