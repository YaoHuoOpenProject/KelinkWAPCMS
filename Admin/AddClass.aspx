<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddClass.aspx.cs" Inherits="KeLin.WebSite.admin.AddClass" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>������Ŀ����</title>
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
<div id="divbox" style="position: absolute; top:30px;width:400px;color:#FFFFFF;background:#FF2801; padding:20px; margin:20px;text-align:center;border-radius:8px 8px 8px 8px;border: 1px solid #fff; box-shadow: 3px 3px 3px 0px rgba(50,50,50, 0.35);"><b>�����ɹ���</b></div>
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
        <table align='center' cellpadding="4" style="width: 180px; height: 100px; border: 1px solid #345487;background-color: #F5F9FD; padding: 6px; font-family: Arial, sans-serif, ??��?;font-size: 12px; color: #000;">
            <tr>
                <td width="100%" align="center" nowrap="nowrap">
                    <img src="../NetImages/hourglass.gif">���ڴ������������ĵȴ�......
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
                	������Ŀ
                	 
                	
                  		           
 
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
                                                                            *��Ŀ���ƣ�
                                                                        </td>
                                                                        <td  class="TD3" colspan="2" width="70%">&nbsp;
                                                                        <input class="input" id="classname" name="classname" value="" size="30">
                                                                           
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td  height="32" align="right" class="TD1">
                                                                           ϵͳģ�飺
                                                                        </td>
                                                                        <td class="TD3" align="left" colspan="2" width="70%"><br />
                                                                        &nbsp;&nbsp;ģ����ࣺ<select  name="ispub" id="ispub" onChange='changelocation()'>
                                                                        <%=strFirst%>
                                                                            </select>
                                                                            <br/>
                                                                            <br/>&nbsp;&nbsp;ģ�����ԣ�
                                                                             <select name="typeid" id="typeid">
                                                                             <%=strSecond%>
                                                                             </select>
                                                                            
                                                                         <br /><br />
                                                                        </td>
                                                                    </tr>
                                                                    
                                                                    <tr class="tdbg">
                                                                        <td  height="29" align="right" class="TD1">
                                                                            �ϼ���Ŀ��
                                                                        </td>
                                                                        <td class="TD3" colspan="2" width="70%">
                                                                         &nbsp;<input id="classid" name="classid" type="hidden" value="<%=strClassID%>">
                                                                         <input name="cn" id="cn" onclick="showclass();" type="text" size="24" value="<%=strCN%>"  class="input" readonly="true" style="cursor: hand; color: #FF0000; font-weight: bold">
                                                                         ��<a href="#" onclick="showclass();">�������</a>��
                                                                         </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td  height="29" align="right" class="TD1">
                                                                            ������
                                                                        </td>
                                                                        <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                        <input class="input" id="Text1" name="ismodel" value="10" size="15" value="10">
                                                                        (�������б�����ʾ������)
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td  height="29" align="right" class="TD1">
                                                                            ����Ա(����)��
                                                                        </td>
                                                                        <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                        <input class="input" id="adminusername" name="adminusername" value="" size="15">
                                                                        (���û�ID,�ж����"|"����)

                                                                        </td>
                                                                    </tr>
                                                                    <td  height="29" align="right" class="TD1">
                                                                        ��Ŀ����ţ�
                                                                    </td>
                                                                    <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                    <input class="input" id="rank" name="rank" value="" size="15">
                                                                    (�����Ըĳɴ�1��ʼ����)
                                                               </td>
                                                        </tr>
                                                        <tr class="tdbg">
                                                            <td height="29" align="right" class="TD1">
                                                                ���������
                                                            </td>
                                                            <td class="TD3" colspan="2" width="70%">&nbsp;
                                                            <input class="input" id="needMoney" name="needMoney" value="" size="15">
                                                            (0 ��Ҫ��¼)
                                                            </td>
                                                        </tr>
                                                                                                                    <tr class="tdbg">
                                                                <td width="29%" height="29" align="right" class="TD1">
                                                                   ���ѱ�����
                                                                </td>
                                                                <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                <input class="input" id="subMoney" name="subMoney" value="" size="15">
                                                                </td>
                                                            </tr>
                                                            <tr class="tdbg">
                                                                <td width="29%" height="29" align="right" class="TD1">
                                                                    �����Ա��ݣ�
                                                                </td>
                                                                <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                <input class="input" id="allowUser" name="allowUser" value="" size="15">
                                                                (�<a href="javascript:showID();">��Ա���ID</a>���������"|"����)
                                                                </td>
                                                            </tr>
                                                            <tr class="tdbg">
                                                                <td width="29%" height="29" align="right" class="TD1">
                                                                    ��Ҫ���룺
                                                                </td>
                                                                <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                <input class="input" id="Text2" name="password" value="" size="15">
                                                                
                                                                </td>
                                                            </tr>
                                                         
                                                                <tr class="tdbg">
                                                                    <td  height="29" align="right" class="TD1">
                                                                        �Ƿ��У�
                                                                    </td>
                                                                    <td class="TD3" colspan="2" width="70%"> &nbsp;
                                                                    NO<input type="radio" value="" checked name="siterowremark">
                                                                            YES<input type="radio" name="siterowremark" value="[br]">
                                                                            </td>
                                                                </tr>
                                                                <tr class="tdbg">
                                                                    <td  height="29" align="right" class="TD1">
                                                                        �Ƿ�������Ŀ��
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
                                                                        <input id="gsubmint" name="gsubmint" type="button" class="bt" value=" �� �� " onclick="gosubmit()">
                                                                            <%if (backurl != "")
                                                                              {%>
                                                                            <input name="goback" type="button"  onclick="window.location='<%=backurl %>?classid=<%=strClassID %>';" value=" �� �� " class="bt">
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
                alert("��Ŀ���Ʋ���Ϊ�գ�");
                Form1.classname.focus();
                return false;
            }

            if (Form1.classname.value.length > 50) {
                alert("��Ŀ���Ƴ��Ȳ��ܳ���50�����֣�");
                Form1.classname.focus();
                return false;
            }


            //var numReg2 = "/^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/";

            if (Form1.needMoney.value != "") {

                if (isNaN(Form1.needMoney.value)) {
                    alert("�����ֻ�������֣�����д!");
                    Form1.needMoney.focus();
                    return false;
                }
                if (Form1.needMoney.value.length > 10) {
                    alert("����ҳ��Ȳ��ܳ���10λ������д!");
                    Form1.needMoney.focus();
                    return false;
                }

            }

            if (Form1.subMoney.value != "") {

                if (isNaN(Form1.subMoney.value)) {
                    alert("���ѱ�ֻ�������֣�����д!");
                    Form1.subMoney.focus();
                    return false;
                }
                if (Form1.subMoney.value.length > 10) {
                    alert("���ѱҳ��Ȳ��ܳ���10λ������д!");
                    Form1.subMoney.focus();
                    return false;
                }

            }

            if (Form1.allowUser.value != "") {
                if (Form1.allowUser.value.length > 500) {
                    alert("�����Ա���ʳ��Ȳ��ܳ���500λ������д!");
                    Form1.allowUser.focus();
                    return false;
                }
            }


            if (Form1.rank.value != "") {


                if (isNaN(Form1.rank.value)) {
                    alert("��Ŀ�����ֻ�������֣�����д!");
                    Form1.rank.focus();
                    return false;
                }
                //var maxrs = "100000000";

                //if (Number(Form1.rank.value) > maxrs) {
                //    alert("��Ŀ����Ų���̫�� " + maxrs);
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
            //document.Form1.typeid.options[0] = new Option('====��ѡ��ģ��====',''); 
            for (i = 0; i < onecount; i++) {
                if (subcat[i][1] == locationid) {
                    document.getElementById("typeid").options[document.getElementById("typeid").length] = new Option(subcat[i][0], subcat[i][2]);
                }
            }

        }

    </script>

</body>
</html>