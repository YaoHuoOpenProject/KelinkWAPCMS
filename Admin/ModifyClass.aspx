<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyClass.aspx.cs" Inherits="KeLin.WebSite.admin.ModifyClass" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>�޸���Ŀ����</title>
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

            if (window.confirm("���� ����վ�����������ɾ�����ݡ��ж�������Ŀ���ݽ��й���")) {
                window.parent.location = 'ContentTreeSel.aspx';
            }

        }

        function del() {
            if (window.confirm("�����Ҫɾ����?�������Ŀ������Ŀ����ô��������ĿҲ����ɾ����\nͬʱ����Ŀǰ��UBB����Ҳ�����ɾ����\n\n����Ŀ��Ӧ��������ʱ����ɾ���������ڡ����ɾ�����ݡ�->�����ͬ������Ŀ��->����ĿID����ѯ����ת�����ݻ�ɾ��!\n\n�����Ŀɾ����WAP�����ϻ�����ʾ�У������WAP�ϵ��Ű滺�棡")) {
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
<div id="divbox" style="position: absolute; top:30px;width:400px;color:#FFFFFF;background:#FF2801; padding:20px; margin:0 auto;text-align:center;border-radius:8px 8px 8px 8px;border: 1px solid #fff; box-shadow: 3px 3px 3px 0px rgba(50,50,50, 0.35);"><b>�޸ĳɹ���</b></div>
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
            background-color: #F5F9FD; padding: 6px; font-family: Arial, sans-serif, ??��?;
            font-size: 12px; color: #000;">
            <tr>
                <td width="100%" align="center" nowrap="nowrap">
                    <img alt="" src="../NetImages/hourglass.gif">���ڴ������������ĵȴ�......
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
                	�޸���Ŀ
                	 
                	
                  		           
 
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
                                                                            ��Ŀ���ƣ�
                                                                        </td>
                                                                        <td width="552" class="TD3" colspan="2">
                                                                            
                                                                                &nbsp;
                                                                                <input class="input" name="classname" value="<%=classname%>" size="30">
                                                                            
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            ��Ŀ�ɣģ�
                                                                        </td>
                                                                        <td class="TD3" colspan="2">
                                                                            
                                                                                &nbsp;
                                                                                <input class="input" name="w1" value="<%=classid%>" readonly="true" size="15">
                                                                            
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            ָ��ģ�飺
                                                                        </td>
                                                                        <td class="TD3" colspan="2">&nbsp;
                                                                        <%=strIsTempleteHtml%>
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            �ϼ���Ŀ��
                                                                        </td>
                                                                        <td class="TD3" colspan="2">
                                                                            
                                                                                &nbsp;<input id="childid" name="childid" type="hidden" value="<%=childid%>">
                                                                                <input id="classid" name="classid" type="hidden" value="<%=classid%>">
                                                                                <input name="cn" id="cn" onclick="showclass(<%=classid%>);" type="text" size="24" value="<%=cn%>"
                                                                                    class="input" readonly="true" style="cursor: hand; color: #FF0000; font-weight: bold">
                                                                                ��<a href="javascript:showclass();">�������</a>��
                                                                            
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td  height="29" align="right" class="TD1">
                                                                            ������
                                                                        </td>
                                                                        <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                        <input class="input" id="Text1" name="ismodel"  size="15" value="<%=ismodel%>">
                                                                        (�������б�����ʾ������)
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            ����Ա(����)��
                                                                        </td>
                                                                        <td class="TD3" colspan="2">
                                                                            
                                                                                &nbsp;
                                                                                <input class="input" name="adminusername" value="<%=adminusername%>" size="15">
                                                                                (���û�ID,�ж����"|"����)
                                                                            
                                                                        </td>
                                                                    </tr>

                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            ��Ŀ����ţ�
                                                                        </td>
                                                                        <td class="TD3" colspan="2">
                                                                            
                                                                                &nbsp;
                                                                                <input class="input" name="rank" value="<%=rank%>" size="15">
                                                                                (�����Ըĳɴ�1��ʼ)
                                                                            
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            ���������
                                                                        </td>
                                                                        <td class="TD3" colspan="2">
                                                                            
                                                                                &nbsp;
                                                                                <input class="input" name="needMoney" value="<%=needMoney%>" size="15">
                                                                                (0 ��Ҫ��¼)
                                                                        </td>
                                                                    </tr>
                                                                     <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            ���ѱ�����
                                                                        </td>
                                                                        <td class="TD3" colspan="2"> 
                                                                        
                                                                            &nbsp;&nbsp;<input class="input" name="subMoney" value="<%=subMoney%>" size="15">
                                                                            
                                                                        </td>
                                                                    </tr>
                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            �����Ա��
                                                                        </td>
                                                                        <td class="TD3" colspan="2">
                                                                            
                                                                                &nbsp;
                                                                                <input class="input" name="allowUser" value="<%=allowUser%>" size="15">
                                                                                (�<a href="javascript:showID();">��Ա���ID</a>���������"|"����)
                                                                            
                                                                        </td>
                                                                    </tr>
                                                           <tr class="tdbg">
                                                                <td width="29%" height="29" align="right" class="TD1">
                                                                    ��Ҫ���룺
                                                                </td>
                                                                <td class="TD3" colspan="2" width="70%">&nbsp;
                                                                <input class="input" id="Text2" name="password" value="<%=password %>" size="15">
                                                                
                                                                </td>
                                                            </tr>
                                                                  
                                                          
                                                                  
                                                                    <tr class="tdbg">
                                                                        <td width="222" height="29" align="right" class="TD1">
                                                                            �Ƿ�������Ŀ��
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
                                                                            <input name="button" type="button" value="�����޸Ľ��" class="bt" onclick="gosubmit()">                                                                            
                                                                            <input name=button   type="button" value="��ӱ���Ŀ����" class="bt" onclick="addcontent()">   
                                                                            <input name=button   type="button"  value="ɾ������Ŀ" class="bt" onclick="del()">   
                                                                            <br /><br />������Ŀ���Խ��롾���ɾ�����ݡ�������Ŀ���á������Ӧ��Ŀ��ȥ��<br />
                                                                            <%if (backurl != "")
                                                                              {%>
                                                                            <input name="goback" type="button"  onclick="window.location='<%=backurl %>';" value=" �� �� " class="bt">
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
                alert("��Ŀ���Ʋ���Ϊ�գ�");
                Form1.classname.focus();
                return false;
            }
            if (Form1.classname.value.length > 50) {
                alert("��Ŀ���Ƴ��Ȳ��ܳ���50�����֣�");
                Form1.classname.focus();
                return false;
            }
            if (Form1.typeid.value == "") {
                alert("ָ�����Ӳ���Ϊ�գ�");
                Form1.typeid.focus();
                return false;
            }
            //var numReg2 = /^(\+|-)?(0|[1-9]\d*)(\.\d*[1-9])?$/  

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
           

            if (isNaN(document.Form1.rank.value)) {
                alert("��Ŀ�����ֻ�������֣�");
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
