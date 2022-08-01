<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyClass.aspx.cs" Inherits="KeLin.WebSite.admin.ModifyClass" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>修改栏目资料</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
    <script language="JavaScript" type="text/javascript">
        function addwin(pathimg) {

            window.open("../Upload_Photo.aspx?PhotoUrlID=0&delpath=" + pathimg, "modifyclasswindow", "height=150, width=360, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")
        }
        function clearpic() {

            Form1.img.src = '../UploadFiles/no.gif'
            Form1.siteimg.value = 'UploadFiles/no.gif'
        }
        function daoru() {
            window.open("../picture/systemindex.aspx?site=<%=strUserID%>&classid=00&seq=2", "daoruwindow", "height=520, width=790, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")
        }
        function openedit() {
            window.open("../picDiy.aspx?edit=no&path=" + document.getElementsByName("siteimg").value, "editpic", "height=450, width=640, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
        }
        function addimg(a, b) {
            if (b = 2) {
                document.getElementById("img").src = "../" + a;
                document.getElementById("siteimg").value = a;
            } else if (b = 1) {

            }
        }
        function backupimg() {
            document.getElementById("img").src = "../" + document.getElementById("backimg").value;
            document.getElementById("siteimg").value = document.getElementById("backimg").value;

        }
        function showclass() {

            window.open("showclass.aspx?classid=<%=classid%>", "class", "height=380, width=320, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")

        }

        function selectclassid(a, b) {
            document.getElementById("childid").value = a;
            document.getElementById("cn").value = b;
        }

        function addcontent() {
            //document.getElementById("Action").value = "addcontent";
            //document.all("panel").style.visibility = "visible";
            //document.all("panel").style.cursor = "wait";
            //Form1.submit();

            if (window.confirm("请在 【网站管理】→【添加删除内容】中对所有栏目内容进行管理！")) {
                window.parent.location = 'ContentTreeSel.aspx';
            }

        }

        function del() {
            if (window.confirm("您真的要删除吗?如果此栏目有子栏目，那么所有子栏目也将会删除！\n同时此栏目前的UBB代码也会跟着删除！\n\n但栏目对应的内容暂时不会删除，可以在【添加删除内容】->点击【同类型栏目】->按栏目ID【查询】后转移内容或删除!\n\n如果栏目删除后WAP界面上还是显示有，请更新WAP上的排版缓存！")) {
                document.all("panel").style.visibility = "visible";
                document.all("panel").style.cursor = "wait";
                document.getElementById("Action").value = "del";
                Form1.submit();
            }
        }
        function showID() {

            window.open("/bbs/smalltypelist.aspx?siteid=<%=base.SiteId %>&systype=card&sid=<%=base.SID %>", "class2", "height=350, width=530, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")

        }

    </script>
</head>
<body><%if (this.INFO != "0")
  {%>
<div id="divbox" style="position: absolute; top:30px;width:400px;color:#FFFFFF;background:#FF2801; padding:20px; margin:0 auto;text-align:center;border-radius:8px 8px 8px 8px;border: 1px solid #fff; box-shadow: 3px 3px 3px 0px rgba(50,50,50, 0.35);"><b>修改成功！</b></div>
<script language ="javascript">
    function codefans() {
        var box = document.getElementById("divbox");
        box.style.display = "none";
    }
    setTimeout("codefans()", 1500);
    <%if(this.INFO=="1") {
     Response.Write("try{ window.parent.preview1.location.reload();} catch (err) { }");
                    
    }else if(this.INFO=="2"){
     Response.Write("try{ window.opener.location.reload();window.close();} catch (err) { }");
                   
    }%>
     
</script>
<%
  }%>    
    <div id="panel" style="visibility: hidden; position: absolute; border: 1px; left: 50px;top: 100px; solid;">
        <table align='center' cellpadding="4" style="width: 180px; height: 100px; border: 1px solid #345487;
            background-color: #F5F9FD; padding: 6px; font-family: Arial, sans-serif, ??ì?;
            font-size: 12px; color: #000;">
            <tr>
                <td width="100%" align="center" nowrap="nowrap">
                    <img alt="" src="../NetImages/hourglass.gif">正在处理请求，请耐心等待......
                </td>
            </tr>
        </table>
    </div>
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
                	修改栏目
                	 
                	
                  		           
 
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
                                    <td height="24">
                                        <table width="100%" border="0">
                                            <tr>
                                                <td>
                                                    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                                                        <tr>
                                                            <td width="862" align="center" valign="top">
                                                                <form name="Form1" action="ModifyClass.aspx" method="post">
                                                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                                                    <tr align="center" class='title'>
                                                                        <td height="2" colspan="3" class="TD_title3">
                                                                           &nbsp;
                                                                        </td>
                                                                    </tr>

                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            栏目名称：
                                                                        </td>
                                                                        <td width="552" class="TD3" colspan="2">
                                                                            
                                                                                &nbsp;
                                                                                <input class="input" name="classname" value="<%=classname%>" size="30">
                                                                            
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            栏目ＩＤ：
                                                                        </td>
                                                                        <td class="TD3" colspan="2">
                                                                            
                                                                                &nbsp;
                                                                                <input class="input" name="w1" value="<%=classid%>" readonly="true" size="15">
                                                                            
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            指向模块：
                                                                        </td>
                                                                        <td class="TD3" colspan="2">&nbsp;
                                                                        <%=strIsTempleteHtml%>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            上级栏目：
                                                                        </td>
                                                                        <td class="TD3" colspan="2">
                                                                            
                                                                                &nbsp;<input id="childid" name="childid" type="hidden" value="<%=childid%>">
                                                                                <input id="classid" name="classid" type="hidden" value="<%=classid%>">
                                                                                <input name="cn" id="cn" onclick="showclass(<%=classid%>);" type="text" size="24" value="<%=cn%>"
                                                                                    class="input" readonly="true" style="cursor: hand; color: #FF0000; font-weight: bold">
                                                                                【<a href="javascript:showclass();">点击更改</a>】
                                                                            
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td  height="29" align="right" class="TD1">
                                                                            行数：
                                                                        </td>
                                                                        <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                        <input class="input" id="Text1" name="ismodel"  size="15" value="<%=ismodel%>">
                                                                        (如文章列表中显示多少行)
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            管理员(版主)：
                                                                        </td>
                                                                        <td class="TD3" colspan="2">
                                                                            
                                                                                &nbsp;
                                                                                <input class="input" name="adminusername" value="<%=adminusername%>" size="15">
                                                                                (填用户ID,有多个用"|"区分)
                                                                            
                                                                        </td>
                                                                    </tr>

                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            栏目排序号：
                                                                        </td>
                                                                        <td class="TD3" colspan="2">
                                                                            
                                                                                &nbsp;
                                                                                <input class="input" name="rank" value="<%=rank%>" size="15">
                                                                                (您可以改成从1开始)
                                                                            
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            允许币数：
                                                                        </td>
                                                                        <td class="TD3" colspan="2">
                                                                            
                                                                                &nbsp;
                                                                                <input class="input" name="needMoney" value="<%=needMoney%>" size="15">
                                                                                (0 需要登录)
                                                                        </td>
                                                                    </tr>
                                                                     <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            消费币数：
                                                                        </td>
                                                                        <td class="TD3" colspan="2"> 
                                                                        
                                                                            &nbsp;&nbsp;<input class="input" name="subMoney" value="<%=subMoney%>" size="15">
                                                                            
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            允许会员：
                                                                        </td>
                                                                        <td class="TD3" colspan="2">
                                                                            
                                                                                &nbsp;
                                                                                <input class="input" name="allowUser" value="<%=allowUser%>" size="15">
                                                                                (填【<a href="javascript:showID();">会员身份ID</a>】，多个用"|"区分)
                                                                            
                                                                        </td>
                                                                    </tr>
                                                           <tr class="tdbg">
                                                                <td width="29%" height="29" align="right" class="TD1">
                                                                    需要密码：
                                                                </td>
                                                                <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                <input class="input" id="Text2" name="password" value="<%=password %>" size="15">
                                                                
                                                                </td>
                                                            </tr>
                                                                  
                                                          
                                                                  
                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            是否隐藏栏目：
                                                                        </td>
                                                                        <td class="TD3" colspan="2">                                                                            
                                                                               
                                                                                &nbsp; NO<input type="radio" value="0" <%=ishiddenCheck1%> name="ishidden">
                                                                                YES<input type="radio" <%=ishiddenCheck2%> name="ishidden" value="1">
                                                                            
                                                                        </td>
                                                                    </tr>
                                                                   
                                                                    <tr align="center" class="tdbg">
                                                                        <td height="40" colspan="3" class="TD3">
                                                                            <input name="Action" type="hidden" id="Action" value="Modify">                                                               
                                                                            <input name="backurl" type="hidden"   value="<%=backurl %>">
                                                                            <input name="button" type="button" value="保存修改结果" class="bt" onclick="gosubmit()">                                                                            
                                                                            <input name=button   type="button" value="添加本栏目内容" class="bt" onclick="addcontent()">   
                                                                            <input name=button   type="button"  value="删除本栏目" class="bt" onclick="del()">   
                                                                            <br /><br />更多栏目属性进入【添加删除内容】→【栏目配置】点击相应栏目进去。<br />
                                                                            <%if (backurl != "")
                                                                              {%>
                                                                            <input name="goback" type="button"  onclick="window.location='<%=backurl %>';" value=" 返 回 " class="bt">
                                                                            <%} %>                                                                  </td>
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
                    <tr>
                        <td class="bg">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    <script language="javascript" type="text/javascript">
        function gosubmit() {
            if (Form1.classname.value == "") {
                alert("栏目名称不能为空！");
                Form1.classname.focus();
                return false;
            }
            if (Form1.classname.value.length > 50) {
                alert("栏目名称长度不能超过50个汉字！");
                Form1.classname.focus();
                return false;
            }
            if (Form1.typeid.value == "") {
                alert("指向链接不能为空！");
                Form1.typeid.focus();
                return false;
            }
            //var numReg2 = /^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/  

            if (Form1.needMoney.value != "") {

                if (isNaN(Form1.needMoney.value)) {
                    alert("允许币只能是数字！或不填写!");
                    Form1.needMoney.focus();
                    return false;
                }
                if (Form1.needMoney.value.length > 10) {
                    alert("允许币长度不能超过10位！或不填写!");
                    Form1.needMoney.focus();
                    return false;
                }

            }

            if (Form1.subMoney.value != "") {

                if (isNaN(Form1.subMoney.value)) {
                    alert("消费币只能是数字！或不填写!");
                    Form1.subMoney.focus();
                    return false;
                }
                if (Form1.subMoney.value.length > 10) {
                    alert("消费币长度不能超过10位！或不填写!");
                    Form1.subMoney.focus();
                    return false;
                }

            }

            if (Form1.allowUser.value != "") {
                if (Form1.allowUser.value.length > 500) {
                    alert("允许会员访问长度不能超过500位！或不填写!");
                    Form1.allowUser.focus();
                    return false;
                }
            }
           

            if (isNaN(document.Form1.rank.value)) {
                alert("栏目排序号只能是数字！");
                Form1.rank.focus();
                return false;
            }





            document.all("panel").style.visibility = "visible";
            document.all("panel").style.cursor = "wait";
            Form1.submit();

        }
    </script>
</body>
</html>
