<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" Codebehind="EditSysPage.aspx.cs"
    Inherits="KeLin.WebSite.WEB.ModelPagetion.EditSysPage" %><html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ϵͳ��ҳģ�����</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="javascript" type="text/javascript">
 <% =this.INFO%>
</script>    
</head>
<script language="javascript">
    function window.onload() {
        oblog_Size(500);
        

        var htmlcode = "";
        if (document.all("config").value == "") {

            htmlcode = htmlcode + "<!DOCTYPE html><html>\n";
            htmlcode = htmlcode + "<head>\n";
            htmlcode = htmlcode + "<meta http-equiv=\"Content-type\" content=\"text/html; charset=gb2312\" />\n";           
            htmlcode = htmlcode + "<meta name=\"keywords\" content=\"wap��վ,wap��վϵͳ,wap������վ,wap��վ,wap����\"> <!--�˴�ΪSEO�����Ż�-->\n";
            htmlcode = htmlcode + "<meta name=\"description\" content=\"�����ֻ�WAP������վϵͳ�ṩ����ȫ�������Ӧ�ý��������\">\n";
            htmlcode = htmlcode + "<title>[classname]-[sitename]</title> <!--¼����վ����-->\n";
            htmlcode = htmlcode + "<link rel=\"SHORTCUT ICON\" href=\"favicon.ico\" />  <!--��ַ��Сͼ��-->\n";
            htmlcode = htmlcode + "</head>\n";
            htmlcode = htmlcode + "<body>";
            
            document.all("config").value = htmlcode;
        }
        
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
<body leftmargin="2" topmargin="0" marginwidth="0" marginheight="0" bgcolor="#DCDCDC" >


<form  id="form1" name="form1" onSubmit="submits();" action="editSysPage.aspx" method="post">
<table border="0" width="98%" align="center" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" height="30">
		<tr>
			<td align="center"> <b>��ҳģ������*��<input type="text" name ="title" value ="<%=title %>" size="20" />
			&nbsp;&nbsp;&nbsp;&nbsp;��ҳģ�����*��<select name="typeid"><%=selecthtml.ToString() %></select>
			&nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name="go" onclick="window.location.href='/WEB/ModelPage/systemindex.aspx?typeid=<%=typeid %>';" value=" �� ��" class="bt" />
			</td>
			
		</tr>
	</table>
<table width="98%" border="0" align="center" cellpadding="2" cellspacing="1" Class="border">
        <tr> 
      <td height="25" class="tdbg">
     ��һ�����༭��ҳ����(&lt;body&gt;֮ǰ�Ĵ���):
     <textarea name="config" style="height: 150px; width: 100%"><%=Server.HtmlEncode(this.config)%></textarea>
         
      �ڶ�����ѡ��CSS��ʽ(�Զ�����&lt;/head&gt;֮ǰ):  
                                                            <select name="cssid" onChange='changelocation(document.form1.cssid.options[document.form1.cssid.selectedIndex].value)'>
                                                            <option value ="0">ѡ��CSS��ʽ</option>
                                                            <% =selCSS%>
                                                            </select>  
                                                          ��<a href="javascript:changelocation(document.form1.cssid.options[document.form1.cssid.selectedIndex].value);" title="�༭CSS��ʽ">ˢ��</a>����<a href="javascript:editCSS();" title="�༭CSS��ʽ">�༭��ǰCSS</a>��&nbsp;                                                               
      <br />���������༭��ҳ��(&lt;body&gt;��&lt;/body&gt;֮��Ĵ���): 
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
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="button" name="go" onclick="window.location.href='/WEB/ModelPage/systemindex.aspx?typeid=<%=typeid %>';" value=" �� ��" class="bt" />
      </div></td>
    </tr>
  </table>

</form>




ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;���룡
 
</body>
</html>
