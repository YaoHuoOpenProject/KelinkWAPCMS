<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddClass.aspx.cs" Inherits="KeLin.WebSite.admin.AddClass" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>新增栏目资料</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">

    <script language="javascript" type="text/javascript">
       
            
            


        
        function addwin(pathimg) {
            //window.showModalDialog("/systemManage/knowledge/addList.jsp", window, "dialogHeight=350px; dialogWidth=550px; status:no;scroll:no;toolbar= no, menubar=no,resizable=no, location=no")
            window.open("../Upload_Photo.aspx?edit=no&PhotoUrlID=0&delpath=" + Form1.siteimg.value, "addclasswindow", "height=150, width=360, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
        }
        function clearpic() {

            Form1.img.src = '../UploadFiles/no.gif'
            Form1.siteimg.value = 'UploadFiles/no.gif'
        }
        function daoru() {
            window.open("../picture/systemindex.aspx?site=<%=strUserId%>&classid=00&seq=2", "daoruwindow", "height=520, width=790, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
        }
        function openedit() {
            window.open("../picDiy.aspx?edit=no&path=" + Form1.siteimg.value, "editpic", "height=450, width=640, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
        }
        function addimg(a, b) {
            if (b = 2) {
                Form1.img.src = '../' + a;
                Form1.siteimg.value = a;
            } else if (b = 1) {

            }
        }
        function selectclassid(a, b) {
            document.getElementById("classid").value = a;
            document.getElementById("cn").value = b;
        }
        function showclass() {

            window.open("showclass.aspx?classid=<%=strClassID%>", "class", "height=380, width=320, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")

        }
        function showID() {

            window.open("/bbs/smalltypelist.aspx?siteid=<%=base.SiteId %>&systype=card&sid=<%=base.SID %>", "class2", "height=350, width=530, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")

        }
    </script>

</head>
<body topmargin="0">
<%if (this.stat  == "1")
  {%>
<div id="divbox" style="position: absolute; top:30px;width:400px;color:#FFFFFF;background:#FF2801; padding:20px; margin:20px;text-align:center;border-radius:8px 8px 8px 8px;border: 1px solid #fff; box-shadow: 3px 3px 3px 0px rgba(50,50,50, 0.35);"><b>新增成功！</b></div>
<script language ="javascript">
<% if(stat=="1"){ 
              //Response.Write("alert('"+strMessage +"');");
           
                string jump ="";
                if(Session["reflashJump"]!=null){
                jump =(String) Session["reflashJump"];
                }
                
                 
                  if("class"==jump ){
               
                Response.Write("window.opener.location.reload();");
                 
                }else{ 
                 
                 Response.Write("window.parent.preview1.location.reload();");
                }
                 
                 }
                 
              if(stat=="2"){ 
                Response.Write("alert('"+strMessage +"');");
                Response.Write("window.history.back();");
            
            } %>
    function codefans() {
        var box = document.getElementById("divbox");
        box.style.display = "none";
    }
    setTimeout("codefans()", 1500);
    
    
</script>
<%
  }%>    
    <div id="panel" style="visibility: hidden; position: absolute; border: 1px; left: 50px;top: 100px; solid;">
        <table align='center' cellpadding="4" style="width: 180px; height: 100px; border: 1px solid #345487;background-color: #F5F9FD; padding: 6px; font-family: Arial, sans-serif, ??ì?;font-size: 12px; color: #000;">
            <tr>
                <td width="100%" align="center" nowrap="nowrap">
                    <img src="../NetImages/hourglass.gif">正在处理请求，请耐心等待......
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
                	新增栏目
                	 
                	
                  		           
 
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
                                                            <td width="100%" align="center" valign="top">
                                                                <form name="Form1" action="addClass.aspx" method="post">                                                                
                                                                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                                                    <tr align="center" class='title'>
                                                                        <td height="2" colspan="3" class="TD_title3">
                                                                            &nbsp;
                                                                        </td>
                                                                    </tr>

                                                                    <tr class="tdbg">
                                                                        <td width="29%" height="26" align="right" class="TD2">
                                                                            *栏目名称：
                                                                        </td>
                                                                        <td  class="TD3" colspan="2" width="70%">&nbsp;
                                                                        <input class="input" id="classname" name="classname" value="" size="30">
                                                                           
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td  height="32" align="right" class="TD1">
                                                                           系统模块：
                                                                        </td>
                                                                        <td class="TD3" align="left" colspan="2" width="70%"><br />
                                                                        &nbsp;&nbsp;模块分类：<select  name="ispub" id="ispub" onChange='changelocation()'>
                                                                        <%=strFirst%>
                                                                            </select>
                                                                            <br/>
                                                                            <br/>&nbsp;&nbsp;模块属性：
                                                                             <select name="typeid" id="typeid">
                                                                             <%=strSecond%>
                                                                             </select>
                                                                            
                                                                         <br /><br />
                                                                        </td>
                                                                    </tr>
                                                                    
                                                                    <tr class="tdbg">
                                                                        <td  height="29" align="right" class="TD1">
                                                                            上级栏目：
                                                                        </td>
                                                                        <td class="TD3" colspan="2" width="70%">
                                                                         &nbsp;<input id="classid" name="classid" type="hidden" value="<%=strClassID%>">
                                                                         <input name="cn" id="cn" onclick="showclass();" type="text" size="24" value="<%=strCN%>"  class="input" readonly="true" style="cursor: hand; color: #FF0000; font-weight: bold">
                                                                         【<a href="#" onclick="showclass();">点击更改</a>】
                                                                         </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td  height="29" align="right" class="TD1">
                                                                            行数：
                                                                        </td>
                                                                        <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                        <input class="input" id="Text1" name="ismodel" value="10" size="15" value="10">
                                                                        (如文章列表中显示多少行)
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td  height="29" align="right" class="TD1">
                                                                            管理员(版主)：
                                                                        </td>
                                                                        <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                        <input class="input" id="adminusername" name="adminusername" value="" size="15">
                                                                        (填用户ID,有多个用"|"区分)

                                                                        </td>
                                                                    </tr>
                                                                    <td  height="29" align="right" class="TD1">
                                                                        栏目排序号：
                                                                    </td>
                                                                    <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                    <input class="input" id="rank" name="rank" value="" size="15">
                                                                    (您可以改成从1开始或不填)
                                                               </td>
                                                        </tr>
                                                        <tr class="tdbg">
                                                            <td height="29" align="right" class="TD1">
                                                                允许币数：
                                                            </td>
                                                            <td class="TD3" colspan="2" width="70%">&nbsp;
                                                            <input class="input" id="needMoney" name="needMoney" value="" size="15">
                                                            (0 需要登录)
                                                            </td>
                                                        </tr>
                                                                                                                    <tr class="tdbg">
                                                                <td width="29%" height="29" align="right" class="TD1">
                                                                   消费币数：
                                                                </td>
                                                                <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                <input class="input" id="subMoney" name="subMoney" value="" size="15">
                                                                </td>
                                                            </tr>
                                                            <tr class="tdbg">
                                                                <td width="29%" height="29" align="right" class="TD1">
                                                                    允许会员身份：
                                                                </td>
                                                                <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                <input class="input" id="allowUser" name="allowUser" value="" size="15">
                                                                (填【<a href="javascript:showID();">会员身份ID</a>】，多个用"|"区分)
                                                                </td>
                                                            </tr>
                                                            <tr class="tdbg">
                                                                <td width="29%" height="29" align="right" class="TD1">
                                                                    需要密码：
                                                                </td>
                                                                <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                <input class="input" id="Text2" name="password" value="" size="15">
                                                                
                                                                </td>
                                                            </tr>
                                                         
                                                                <tr class="tdbg">
                                                                    <td  height="29" align="right" class="TD1">
                                                                        是否换行：
                                                                    </td>
                                                                    <td class="TD3" colspan="2" width="70%"> &nbsp;
                                                                    NO<input type="radio" value="" checked name="siterowremark">
                                                                            YES<input type="radio" name="siterowremark" value="[br]">
                                                                            </td>
                                                                </tr>
                                                                <tr class="tdbg">
                                                                    <td  height="29" align="right" class="TD1">
                                                                        是否隐藏栏目：
                                                                    </td>
                                                                    <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                    NO<input type="radio" value="0" checked name="ishidden">
                                                                            YES<input type="radio" name="ishidden" value="1">
                                                                            </td>
                                                                </tr>
                                                               
                                                                <tr align="center" class="tdbg">
                                                                    <td height="40" colspan="3" class="TD3">
                                                                        <input name="Action" type="hidden" id="Action" value="add">
                                                                        <input name="backurl" type="hidden"   value="<%=backurl %>">
                                                                        <input id="gsubmint" name="gsubmint" type="button" class="bt" value=" 保 存 " onclick="gosubmit()">
                                                                            <%if (backurl != "")
                                                                              {%>
                                                                            <input name="goback" type="button"  onclick="window.location='<%=backurl %>?classid=<%=strClassID %>';" value=" 返 回 " class="bt">
                                                                            <%} %>
                                                                    </td>
                                                                </tr>
                                                    </table>
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
    </form>
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


            //var numReg2 = "/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/";

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


            if (Form1.rank.value != "") {


                if (isNaN(Form1.rank.value)) {
                    alert("栏目排序号只能是数字！或不填写!");
                    Form1.rank.focus();
                    return false;
                }
                //var maxrs = "100000000";

                //if (Number(Form1.rank.value) > maxrs) {
                //    alert("栏目排序号不能太于 " + maxrs);
                //    Form1.rank.focus();
                //    return false;

                //}


            }
            document.all("panel").style.visibility = "visible";
            document.all("panel").style.cursor = "wait";
            Form1.submit();

        }
    </script>

    <script language="javascript" type="text/javascript">
        var onecount;
        onecount = 0;
        subcat = new Array(); 
        <%=strJavascript %>
        onecount = subcat.length;
        function changelocation() {
            document.getElementById("typeid").length = 0;
            var select = document.getElementById("ispub");
            var locationid = select.options[select.selectedIndex].value;//locationid;
            if (locationid == 0) {
                for (i = 0; i < onecount; i++) {
                    document.getElementById("typeid").options[document.getElementById("typeid").length] = new Option(subcat[i][0], subcat[i][2]);
                }
                return;
            }

            var i;
            //document.Form1.typeid.options[0] = new Option('====请选择模块====',''); 
            for (i = 0; i < onecount; i++) {
                if (subcat[i][1] == locationid) {
                    document.getElementById("typeid").options[document.getElementById("typeid").length] = new Option(subcat[i][0], subcat[i][2]);
                }
            }

        }

    </script>

</body>
</html>