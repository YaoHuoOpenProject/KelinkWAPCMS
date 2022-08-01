<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PicDiy.aspx.cs" Inherits="KeLin.WebSite.PicDiy" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
    <script language="JavaScript" type="text/JavaScript">

        if (window.opener == null) {
            alert("非法进入此页！即将关闭！");
            window.location = "info.asp";
        }

        function checkNum() {
            var numReg2 = /^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/
            if (messageForm.swidth.value != "") {
                if (messageForm.swidth.value == "") {
                    alert('图片宽度不能为空。');
                    messageForm.swidth.focus()
                    return;
                }
                if (!numReg2.test(messageForm.swidth.value)) {
                    alert('图片宽度只能输入整数。');
                    messageForm.swidth.focus()
                    return;
                }
            }
            if (messageForm.sheight.value != "") {
                if (messageForm.sheight.value == "") {
                    alert('图片高度不能为空。');
                    messageForm.sheight.focus()
                    return;
                }
                if (!numReg2.test(messageForm.sheight.value)) {
                    alert('图片高度只能输入整数。');
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
    <title>图片在线编辑</title>
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
                	图片在线编辑&nbsp;&nbsp;&nbsp;&nbsp;
                	 
                	
                  		           
 
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
                                                                                图片尺寸：</b>
                                                                        </td>
                                                                        <td class="TD3" width="506">
                                                                            <div align="left">
                                                                                &nbsp;<%                                                                                          
                                                                                          if (swidth == "0") swidth = "";
                                                                                          if (sheight == "0") sheight = "";
                                                                                           %>
                                                                                <input class="input" name="swidth" value="<%=swidth%>" size="50" style="width: 46;
                                                                                    height: 20">宽px&nbsp;&nbsp;
                                                                                <input class="input" name="sheight" value="<%=sheight%>" size="50" style="width: 41;
                                                                                    height: 20">高px
                                                                                     &nbsp;
                                                                                     <input type="checkbox" name="addtext" <%if(this.addtext=="1") Response.Write("checked"); %> value="1" /> 是否加入水印(网站默认设置了水印大小需要重新登录才生效)
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td height="32" align="right" class="TD1" width="102">
                                                                            <b>
                                                                                <strong>比例缩放：</strong>
                                                                        </td>
                                                                        <td class="TD3" width="506">
                                                                            <div align="left">
                                                                                &nbsp;
                                                                                在上面只需要输入宽或高其中一项即可！
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td width="102" height="29" align="right" class="TD1">
                                                                            <strong>&nbsp;&nbsp; 新生成图片：</strong>
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
                                                                            <input type="button" value=" 预 览 " name="update" onclick="update1();" class="input3"
                                                                                style="cursor: hand">&nbsp;&nbsp;
                                                                            <input type="button" value=" 撤 消 " name="undo" onclick="undo1();" class="input3"
                                                                                style="cursor: hand">&nbsp;
                                                                            <input type="button" value=" 保 存 " name="ok" onclick="ok1();" class="input3" style="cursor: hand">&nbsp;
                                                                            <input type="button" value=" 关 闭 " name="ok" onclick="window.close();" class="input3"
                                                                                style="cursor: hand">
                                                                               
                                                                               <p align="left">
                                                                                <b>操作说明：</b>图片在线编辑模块是独立功能模块，请先对操作进行【预览】，最后【保存】（只保存了编辑后的图片），不对父窗口的图片即时刷新，你需要保存父窗口的内容，然后才能看到效果。
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
                        font-family: Arial, sans-serif, ??ì?; font-size: 12px; color: #000; border: 1px solid #345487;
                        padding: 6px" width="234">
                        <tr>
                            <td width="218" align="center" nowrap="nowrap">
                                <img src="../NetImages/hourglass.gif">正在处理请求，请耐心等待......
                            </td>
                        </tr>
                    </table>
                </div>
    </table>
</body>
</html>
