<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" Codebehind="EditSysFunc.aspx.cs"
    Inherits="KeLin.WebSite.WEB.ModelFunction.EditSysFunc" %><html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>�ҵĵ���ģ�����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript">
 <% =this.INFO%>
 
 
 function window.onload() {
        oblog_Size(500);
        
        
        updateCSS();
       

    }
  function updateCSS() {
    <!--
    <% String [] arry=css.Replace("\r\n","\r").Split('\r');
           for(int i=0 ; i<arry.Length ;i++){
             if(arry[i]!="" && arry[i].IndexOf("style") <= 0){
             %>             
             loadStyleString('<% =arry[i]%>');             
             <%
             
             }
           }
        
         %>
    -->
    }
    function changelocation(css) {
        form1.action.value = "selcss";
        submits();

        form1.submit();
    }
    function editCSS() {

    if(document.form1.cssid.value=="" || document.form1.cssid.value=="0"){
     alert("������������ѡ��һ��CSS��ʽ��");
     return;
    }

    window.open("/WEB/Style/Style_List00_modify.aspx?id=" + document.form1.cssid.value);


}
function loadStyleString(css) {
    
    
    
    
    var style = IframeID.document.createElement("style");
    style.type = "text/css";
    try {
        style.appendChild(IframeID.document.createTextNode(css));
    } catch (ex) {
        style.styleSheet.cssText = css;
    }
    var head = IframeID.document.getElementsByTagName("head")[0];
    head.appendChild(style);
}

</script>    
</head>
<body leftmargin="2" topmargin="0" marginwidth="0" marginheight="0" bgcolor="#DCDCDC" >


<form  id="form1" name="form1" onSubmit="submits();" action="editSysFunc.aspx" method="post">
<table border="0" width="98%" align="center" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" height="30">
		<tr>
			<td align="center"> <b>����ģ������*��<input type="text" name ="title" value ="<%=title %>" size="20" />
			&nbsp;&nbsp;&nbsp;&nbsp;����ģ�����*��<select name="typeid"><%=selecthtml.ToString() %></select>
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name="go" onclick="window.location.href='/WEB/ModelFunction/systemindex.aspx?typeid=<%=typeid %>';" value=" �� ��" class="bt" />
			</td>
			
		</tr>
	</table>
<table width="98%" border="0" align="center" cellpadding="2" cellspacing="1" Class="border">
    <tr> 
      <td height="25" class="tdbg">
     
     <input type="hidden" name="config" />
         
      ��ѡ��CSSƤ����ʽ:  
                                                            <select name="cssid" onChange='changelocation(document.form1.cssid.options[document.form1.cssid.selectedIndex].value)'>
                                                            <option value ="0">ѡ��CSS��ʽ</option>
                                                            <% =selCSS%>
                                                            </select>  
                                                          ��<a href="javascript:changelocation(document.form1.cssid.options[document.form1.cssid.selectedIndex].value);" title="�༭CSS��ʽ">ˢ��</a>����<a href="javascript:editCSS();" title="�༭CSS��ʽ">�༭��ǰCSS</a>��&nbsp;                                                               
     
      </td>
    </tr>
    <tr> 
      <td height="25" class="tdbg"><INPUT type="hidden" name="content" id='edit' value="<%=Server.HtmlEncode(this.content)%>">
      
                <%=this.sb %></td>
    </tr>
    <tr> 
      <td class="tdbg"> <div align="center">
        <input type="hidden" name="action" value="save">
     <input type="hidden" name="id" value="<%=this.id %>">
     <%if (base.ManagerLvl == "00")
       { %>
        <input name="cmdSave" type="submit" id="cmdSave" value=" �����޸� " class="bt" > 
        <%} %>
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name="go" onclick="window.location.href='/WEB/ModelFunction/systemindex.aspx?typeid=<%=typeid %>';" value=" �� ��" class="bt" />
      </div></td>
    </tr>
  </table>

</form>




ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;���룡
 
</body>
</html>
