<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="myfile_edit.aspx.cs" Inherits="KeLin.WebSite.admin.myfile_edit" %>
<html>
<head>
<title>?ҵĵ???</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
    <script>
        function window.onload() {
            //alert(form1.chkbr.value);
            //var gogo = document.getElementById("chkbr");
            //gogo.click();
                       
        }
        function CheckS(form) {
            var strtemp;
            strtemp = form.top.value;
            if (form1.chkbr.checked == true) {
                form1.top.value = strtemp.replace(/\r\n/ig, "[br]");
            } else {
                form1.top.value = strtemp.replace(/\[br\]/ig, "\r\n");

            }
        }
        function addwin(pathimg) {
            //window.showModalDialog("/systemManage/knowledge/addList.jsp", window, "dialogHeight=350px; dialogWidth=550px; status:no;scroll:no;toolbar= no, menubar=no,resizable=no, location=no")
            window.open("../Upload_Photo.aspx?PhotoUrlID=0&delpath=" + pathimg, "addclasswindow", "height=150, width=360, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")
        }
        function clearpic() {

            form1.img.src = '../UploadFiles/no.gif'
            form1.siteimg.value = 'UploadFiles/no.gif'
        }
        function storeCaret() {
            var textEl = form1.top;
            if (textEl.createTextRange)
                textEl.caretPos = document.selection.createRange().duplicate();
        }
        function addubb(ubb) {
            //Form1.top.value=Form1.top.value+ubb;
            var textEl = form1.top;
            var text = ubb;
            if (textEl.createTextRange && textEl.caretPos) {
                var caretPos = textEl.caretPos;
                caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? text + ' ' : text;
            }
            else
                textEl.value = textEl.value + text;

        }
    </script>
 
</head>
<body><%if (this.INFO == "OK")
  {%>
<div id="divbox" style="color:#FFFFFF;background:#FF2801; padding:20px; margin:0 auto;text-align:center;border-radius:8px 8px 8px 8px;border: 1px solid #fff; box-shadow: 3px 3px 3px 0px rgba(50,50,50, 0.35);"><b>???³ɹ???</b></div>
<script language ="javascript">
    function codefans() {
        var box = document.getElementById("divbox");
        box.style.display = "none";
    }
    setTimeout("codefans()", 1500);
    try{ window.parent.preview1.location.reload();} catch (err) { }
</script>
<%
  }%> 
    <form name="form1" action="myfile_edit.aspx" method="post">
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
                	?༭?ҵĵ???
                	 
                	
                  		           
 
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
                                    <td height="24" class="style2">
                                        <table width="100%" border="0" height="1">
                                            <tr>
                                                <td  height="1">
                                                    <table height="163" border="0" cellpadding="0" cellspacing="0" 
                                                        style="width: 482px; margin-right: 0px">
                                                        <tr>
                                                            <td  align="center" valign="top" height="163">
                                                                <input name="classid" type="hidden" value="<%=classid%>">
                                                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" height="162">
                                                                    <tr align="center" class='title'>
                                                                        <td height="1" colspan="2" class="TD_title3" width="385">
                                                                            &nbsp;
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td height="56" align="right" class="TD1" width="100">
                                                                            ?ҵĵ???<strong>??<br>
																			<br>
																			<font color="#FF0000">
																			??<a href="javascript:addubb('[myfile]');">[myfile]</a>&nbsp;<br>
																			????UBB????&nbsp;</font></strong><br>
                                                                            <br>
                                                                            <input type="checkbox" id="chkbr" name="chkbr" value="ON" onclick="CheckS(this.form)" checked >??ʾ[br]
                                                                        </td>
                                                                        <td class="TD3" height="56" width="382">
                                                                            <strong>
                                                                                <textarea name="top" onselect="storeCaret();" onclick="storeCaret();"
                                                                                    onkeyup="storeCaret();" style="height: 192px; width: 100%"><%=top%></textarea></strong>
                                                                        </td>
                                                                    </tr>
                                                                    <tr align="center" class="tdbg">
                                                                        <td height="33" colspan="2" class="TD3" >
                                                                            <input name="Action" type="hidden" id="Action" value="add"><input name="Submit" type="submit"
                                                                                id="Submit" value=" ?? ?? " style="cursor: hand" class="bt"></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td height="100%" colspan="2" class="TD3" width="480">
                                                                            <iframe id="frame1" src="ubb.aspx" frameborder="0" height="280" scrolling="yes" width="100%">
                                                                            </iframe>
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
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
