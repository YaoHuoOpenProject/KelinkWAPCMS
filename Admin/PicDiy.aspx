<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PicDiy.aspx.cs" Inherits="KeLin.WebSite.PicDiy" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
    <script language="JavaScript" type="text/JavaScript">

        if (window.opener == null) {
            alert("�Ƿ������ҳ�������رգ�");
            window.location = "info.asp";
        }

        function checkNum() {
            var numReg2 = /^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/
            if (messageForm.swidth.value != "") {
                if (messageForm.swidth.value == "") {
                    alert('ͼƬ��Ȳ���Ϊ�ա�');
                    messageForm.swidth.focus()
                    return;
                }
                if (!numReg2.test(messageForm.swidth.value)) {
                    alert('ͼƬ���ֻ������������');
                    messageForm.swidth.focus()
                    return;
                }
            }
            if (messageForm.sheight.value != "") {
                if (messageForm.sheight.value == "") {
                    alert('ͼƬ�߶Ȳ���Ϊ�ա�');
                    messageForm.sheight.focus()
                    return;
                }
                if (!numReg2.test(messageForm.sheight.value)) {
                    alert('ͼƬ�߶�ֻ������������');
                    messageForm.sheight.focus()
                    return;
                }
            }
        }
        
        function update1() {


            checkNum();
            
            document.all("panel").style.visibility = "visible";
            document.all("panel").style.cursor = "wait";
            messageForm.goop.value = "new";
            messageForm.submit()

        }
        function undo1() {
            messageForm.img.src = messageForm.path.value;
        }
        function ok1() {
            checkNum();
            document.all("panel").style.visibility = "visible";
            document.all("panel").style.cursor = "wait";
            messageForm.goop.value = "ok";
            messageForm.submit()

        }

    </script>
    <title>ͼƬ���߱༭</title>
</head>
<body>
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
                	ͼƬ���߱༭&nbsp;&nbsp;&nbsp;&nbsp;
                	 
                	
                  		           
 
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

                                    <td height="212">
                                        <table width="100%" border="0">
                                            <tr>
                                                <td>
                                                    <table width="610" height="100%" border="0" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td width="626" align="center" valign="top">
                                                            
                                                            
                                                                <form name="messageForm" action="picDiy.aspx" method="post">
                                                                <table width="611" border="0" align="center" cellpadding="0" cellspacing="0">
                                                                    <tr align="center" class='title'>
                                                                        <td height="20" colspan="2" class="TD_title3" width="609">
                                                                          &nbsp; 
                                                                          <%=this.ERROR %>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td width="608" height="26" align="right" class="TD3" colspan="2">
                                                                            &nbsp;
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td width="102" height="26" align="right" class="TD2">
                                                                            <b>
                                                                                ͼƬ�ߴ磺</b>
                                                                        </td>
                                                                        <td class="TD3" width="506">
                                                                            <div align="left">
                                                                                &nbsp;<%                                                                                          
                                                                                          if (swidth == "0") swidth = "";
                                                                                          if (sheight == "0") sheight = "";
                                                                                           %>
                                                                                <input class="input" name="swidth" value="<%=swidth%>" size="50" style="width: 46;
                                                                                    height: 20">��px&nbsp;&nbsp;
                                                                                <input class="input" name="sheight" value="<%=sheight%>" size="50" style="width: 41;
                                                                                    height: 20">��px
                                                                                     &nbsp;
                                                                                     <input type="checkbox" name="addtext" <%if(this.addtext=="1") Response.Write("checked"); %> value="1" /> �Ƿ����ˮӡ(��վĬ��������ˮӡ��С��Ҫ���µ�¼����Ч)
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td height="32" align="right" class="TD1" width="102">
                                                                            <b>
                                                                                <strong>�������ţ�</strong>
                                                                        </td>
                                                                        <td class="TD3" width="506">
                                                                            <div align="left">
                                                                                &nbsp;
                                                                                ������ֻ��Ҫ�����������һ��ɣ�
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td width="102" height="29" align="right" class="TD1">
                                                                            <strong>&nbsp;&nbsp; ������ͼƬ��</strong>
                                                                        </td>
                                                                        <td class="TD3" width="506">
                                                                            <div align="center">
                                                                                <p align="left">
                                                                                    &nbsp;<br>
                                                                                    &nbsp;
                                                                                    <img id="img" border="0" src="<%=ImgURL
%> ">
                                                                            </div>
                                                                            <div align="center">
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr align="center" class="tdbg">
                                                                        <td height="40" colspan="2" class="TD3" width="609">
                                                                            <input type="hidden" value="" name="goop">
                                                                            <input type="hidden" value="<%=path%>" name="path">
                                                                            <input type="button" value=" Ԥ �� " name="update" onclick="update1();" class="input3"
                                                                                style="cursor: hand">&nbsp;&nbsp;
                                                                            <input type="button" value=" �� �� " name="undo" onclick="undo1();" class="input3"
                                                                                style="cursor: hand">&nbsp;
                                                                            <input type="button" value=" �� �� " name="ok" onclick="ok1();" class="input3" style="cursor: hand">&nbsp;
                                                                            <input type="button" value=" �� �� " name="ok" onclick="window.close();" class="input3"
                                                                                style="cursor: hand">
                                                                               
                                                                               <p align="left">
                                                                                <b>����˵����</b>ͼƬ���߱༭ģ���Ƕ�������ģ�飬���ȶԲ������С�Ԥ��������󡾱��桿��ֻ�����˱༭���ͼƬ�������Ը����ڵ�ͼƬ��ʱˢ�£�����Ҫ���游���ڵ����ݣ�Ȼ����ܿ���Ч����
                                                                            </p>
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                                </form>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <div id="panel" style="visibility: hidden; position: absolute; left: 124; top: 75;
                    width: 352; height: 104; border-style: none; border-width: 1px">
                    <table align='center' cellpadding="4" style="height: 100px; background-color: #F5F9FD;
                        font-family: Arial, sans-serif, ??��?; font-size: 12px; color: #000; border: 1px solid #345487;
                        padding: 6px" width="234">
                        <tr>
                            <td width="218" align="center" nowrap="nowrap">
                                <img src="../NetImages/hourglass.gif">���ڴ������������ĵȴ�......
                            </td>
                        </tr>
                    </table>
                </div>
    </table>
</body>
</html>
