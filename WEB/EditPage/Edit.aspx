<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false" Codebehind="Edit.aspx.cs" Inherits="KeLin.WebSite.WEB.EditPage.Edit" %>
<html>
<head>
<title>�༭ҳ��</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<script src="/NetCSS/treeWEB.js" type="text/javascript"></script>
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="/NetCSS/teamdtree.css" type="text/css" rel="stylesheet" />
<style type="text/css"> 
body,a{font-size:12px;color:#000000;}
a{text-decoration:none;color:#000000;}
ul{margin-left:5px;}
li{list-style:none;}
.KLbox{z-index:99;width:170px;left:0px;top:3px;position:absolute;}
.KLbox .press{left:0;border:none;cursor:pointer;position:absolute;width:26px;height:300px;}
.KLbox .Qlist{left:0;width:170px;background:url(/WEB/Images/siderIM_bg2.gif) padding:5px;}
.KLbox .Qlist .b{float:left;height:6px;width:170px;font-size:1px;}
.KLbox .Qlist .infobox{text-align:center;background:#bdc5cb;background-image:url(/WEB/Images/siderIM_infobox2.gif);background-repeat:no-repeat;padding:5px;line-height:14px;color:#000;font-weight:700;}
.KLbox .Qlist .b{background:url(/WEB/Images/siderIM_bottom2.gif);height:9px;overflow:hidden;}
.KLbox .Qlist .con{height:500px; overflow-y:scroll; background:url(/WEB/Images/siderIM_bg2.gif);width:100%;padding:10px 0px 10px 0px;}
.KLbox .Qlist .con h2{height:22px;font:bold 12px/22px "����";background:url(/WEB/Images/siderIM_bg2.gif) repeat-y -163px 0;border:1px solid #3a708d;color:#fff;}
.KLbox .Qlist .con ul li{padding:5px 5px 0px 15px;}
</style>

</head>
<body leftmargin="2" topmargin="0" marginwidth="0" marginheight="0" bgcolor="#DCDCDC" >
<div class="KLbox" id="divKLbox">
<div class="Qlist" id="divOnline" onmouseout="hideMsgBox(event);" style="display:none;">
<div class="infobox">��ѡ��</div>
<div class="con">
<iframe src="/web/EditPage/EditTree.aspx?siteid=<%=base.SiteId %>" width="148" height="500" scrolling="yes"></iframe>

<script type="text/javascript">


function gourl(strurl, classid, siteid) {
    window.location.href = "edit.aspx?vertype=3_2&classid=" + classid + "&siteid=" + siteid + "&classname=" + strurl;
}



function window.onload() {
        oblog_Size(800);
        

        var htmlcode = "";
        if (document.all("config").value == "") {

            htmlcode = htmlcode + "<!DOCTYPE html><html>\n";
            htmlcode = htmlcode + "<head>\n";
            htmlcode = htmlcode + "<meta http-equiv=\"Content-type\" content=\"text/html; charset=gb2312\" />\n";           
            htmlcode = htmlcode + "<meta name=\"keywords\" content=\"wap��վ,wap��վϵͳ,wap������վ,wap��վ,wap����\"> <!--�˴�ΪSEO�����Ż�-->\n";
            htmlcode = htmlcode + "<meta name=\"description\" content=\"�����ֻ�WAP������վϵͳ�ṩ����ȫ�������Ӧ�ý��������\">\n";
            htmlcode = htmlcode + "<title>[classname]</title> <!--¼����վ����-->\n";
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

    window.open("/WEB/Style/modify.aspx?id=" + document.form1.cssid.value);


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



<%=this.INFO %>



</script>
<p align="center"><input type="button" name="b" onclick="window.location.href='/admin/addClass.aspx?siteid=<%=base.SiteId %>&classid=0&backurl=/WEB/EditPage/Edit.aspx';" value ="�����Ŀҳ��" class ="bt" /></p>
</div>
  <div class="b"></div>
 </div>
 <div id="divMenu" onmouseover="OnlineOver();" ><img src="/WEB/images/link.gif" alt="��ѡ����Ŀҳ��" class="press" /></div>
</div>
<script language="javascript" type="text/javascript">
    //<![CDATA[
    var tips; var theTop = 3/*����Ĭ�ϸ߶�,Խ��Խ����*/;
    var old = theTop;
    function initFloatTips() {
        tips = document.getElementById("divKLbox");
        moveTips();
    };
    function moveTips() {
        var tt = 50;
        if (window.innerHeight) {
            pos = window.pageYOffset
        }
        else if (document.documentElement && document.documentElement.scrollTop) {
            pos = document.documentElement.scrollTop
        }
        else if (document.body) {
            pos = document.body.scrollTop;
        }
        pos = pos - tips.offsetTop + theTop;
        pos = tips.offsetTop + pos / 10;
        if (pos < theTop) pos = theTop;
        if (pos != old) {
            tips.style.top = pos + "px";
            tt = 10;
            //alert(tips.style.top);
        }
        old = pos;
        setTimeout(moveTips, tt);
    }
    //!]]>
    initFloatTips();
    function OnlineOver() {
        document.getElementById("divMenu").style.display = "none";
        document.getElementById("divOnline").style.display = "block";
        document.getElementById("divKLbox").style.width = "3px";
    }
    function OnlineOut() {
        document.getElementById("divMenu").style.display = "block";
        document.getElementById("divOnline").style.display = "none";
    }
    if (typeof (HTMLElement) != "undefined") //��firefox����contains()������ie�²�������
    {
        HTMLElement.prototype.contains = function(obj) {
            while (obj != null && typeof (obj.tagName) != "undefind") { //ͨ��ѭ���Ա����ж��ǲ���obj�ĸ�Ԫ��
                if (obj == this) return true;
                obj = obj.parentNode;
            }
            return false;
        };
    }
    function hideMsgBox(theEvent) { //theEvent���������¼���Firefox�ķ�ʽ
        if (theEvent) {
            var browser = navigator.userAgent; //ȡ�����������
            if (browser.indexOf("Firefox") > 0) { //�����Firefox
                if (document.getElementById("divOnline").contains(theEvent.relatedTarget)) { //�������Ԫ��
                    return; //������ʽ
                }
            }
            if (browser.indexOf("MSIE") > 0) { //�����IE
                if (document.getElementById("divOnline").contains(event.toElement)) { //�������Ԫ��
                    return; //������ʽ
                }
            }
        }
        /*Ҫִ�еĲ���*/
        document.getElementById("divMenu").style.display = "block";
        document.getElementById("divOnline").style.display = "none";
    }

    function showclass() {

        window.open("showclass.aspx?classid=<%=classid %>", "class", "height=380, width=320, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no")

    }

    function Real_View() {
         
         var vertype="<%=vertype %>";
         var sid="-3-0-0-0-0";
         if(vertype == "3_2" || vertype == "3_3")
         {
           sid="-3-0-0-0-0";
         }else {
         
           sid="-4-0-0-0-0";
         
         }
         
    
        <%if(this.classid=="-1"){ %>
        
              window.open("/myfile.aspx?siteid=<%=base.SiteId %>&classid=0&sid=" + sid);
        
        <%}else{ 
             if(vertype =="3_3" || vertype=="4_3"){
             %>
                    window.open("/Web_view.aspx?siteid=<%=base.SiteId %>&classid=<%=this.classid %>&sid=" + sid);
        
             
             <%
             }else{
        %>
               window.open("/wapindex.aspx?siteid=<%=base.SiteId %>&classid=<%=this.classid %>&sid=" + sid);
        <%}
          }
        
         %>

    }

</script>


<form  id="form1" name="form1" onSubmit="submits();" action="edit.aspx" method="post">
<table border="0" width="98%" align="center" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" height="30">
		
		
		<tr>
			<td  width="30%"  >��&nbsp;&nbsp;&nbsp;&nbsp<b>��ǰ�༭ҳ�棺<font color=red><%=classname%> ID:<%=this.classid%></font></b> <%if (long.Parse(this.classid) > 0)
                                                                                                    { %>��<a href="/admin/modifyClass.aspx?siteid=<%=base.SiteId %>&classid=<%=this.classid %>&backurl=/WEB/EditPage/Edit.aspx">�޸�����</a>��<%} %></td>
	<%if (classid=="0")
     { %>
			<td width="200" align="center" <%if(vertype=="3_2") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=3_2&siteid=<%=base.SiteId %>&classname=<%=classname %>">���԰���ҳ</a></td>	
			<td width="200" align="center" <%if(vertype=="3_3") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=3_3&siteid=<%=base.SiteId %>&classname=<%=classname %>">���԰渽ҳ</a></td>			
			<td width="200" align="center" <%if(vertype=="4_2") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=4_2&siteid=<%=base.SiteId %>&classname=<%=classname %>">ƽ�崥����ҳ</a></td>
			<td width="200" align="center" <%if(vertype=="4_3") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=4_3&siteid=<%=base.SiteId %>&classname=<%=classname %>">ƽ�崥����ҳ</a></td>
			<td width="200" align="center">&nbsp;</td>
			<td width="200" align="center">&nbsp;</td>
	<%}else if(classid=="-1")
     { %>
			<td width="200" align="center" <%if(vertype=="3_2") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=3_2&siteid=<%=base.SiteId %>&classname=<%=classname %>">���԰�</a></td>			
			<td width="200" align="center" <%if(vertype=="4_2") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=4_2&siteid=<%=base.SiteId %>&classname=<%=classname %>">ƽ�崥������</a></td>
			<td width="200" align="center">&nbsp;</td>
			<td width="200" align="center">&nbsp;</td>
			
	<%} else{ %>
			<td width="200" align="center" <%if(vertype=="3_2") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=3_2&siteid=<%=base.SiteId %>&classname=<%=classname %>">���԰����ҳ��</a></td>
			<td width="200" align="center" <%if(vertype=="3_3") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=3_3&siteid=<%=base.SiteId %>&classname=<%=classname %>">���԰�����ҳ��</a></td>			
			<td width="200" align="center" <%if(vertype=="4_2") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=4_2&siteid=<%=base.SiteId %>&classname=<%=classname %>">ƽ�崥������ҳ��</a></td>
			<td width="200" align="center" <%if(vertype=="4_3") Response.Write("bgcolor=\"#DCDCDC\""); %>><a href="edit.aspx?classid=<%=classid %>&vertype=4_3&siteid=<%=base.SiteId %>&classname=<%=classname %>">ƽ�崥������ҳ��</a></td>
	<%}%>
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
                                                          (���Խ�css�ŵ����棬����ѡ���յ�)��<a href="javascript:changelocation(document.form1.cssid.options[document.form1.cssid.selectedIndex].value);" title="�༭CSS��ʽ">ˢ��</a>����<a href="javascript:editCSS();" title="�༭CSS��ʽ">�༭��ǰCSS</a>��&nbsp;                                                               
      <br />���������༭��ҳ��(&lt;body&gt;��&lt;/body&gt;֮��Ĵ���): 
      </td>
    </tr>
    <tr> 
      <td height="25" class="tdbg">
      
      <INPUT type="hidden" name="content" id='edit' value="<%=Server.HtmlEncode(this.content)%>">
                <%=this.sb.ToString().Replace("oblog_View()","Real_View()")%></td>
    </tr>
    <tr> 
      <td class="tdbg"> <div align="center">
        <input type="hidden" name="action" value="save">
        <input type="hidden" name="classid" value="<%=classid%>">
        <input type="hidden" name="classname" value="<%=classname%>">
        <input type="hidden" name="vertype" value="<%=vertype%>">
        <input type="hidden" name="css" value="">
        <%if (long.Parse(classid) > 0)
          { %>
        <input type ="checkbox" name ="updateall" value ="yes"  <%if(updateall=="yes") Response.Write("checked"); %> />�Ƿ��滻ͬ����Ŀҳ�棬Ҫ�滻��ĿID��<input type="text" name="needclassid" value ="<%=needclassid %>" /> ��<a href="javascript:showclass();">ѡ��</a>��  
        
        <br /> <br />
        <%} %>
        <input name="cmdSaverest" type="button" onclick="document.all('edit').value='';initx();" value=" ��մ���(Ĭ�Ͻ���WAP2.0) " class="bt" > &nbsp;&nbsp;<input name="cmdSave" type="submit" id="cmdSave" value=" �����޸� " class="bt" >   
        
        </div>
        <div align="left">
        <p>
        
        <font color=red>
               
        <b>
        
        <%if (classid == "-1")  {   %>
        �ҵĵ������ӵ�ַ��<input type ="text" name="urlink111" value ="/myfile.aspx?siteid=<%=base.SiteId %>"  size ="100"/> <br />
        UBB���ӷ�����<input type ="text" name="urlink111" value ="[url=/myfile.aspx?siteid=<%=base.SiteId %>]<%=classname %>[/url]"  size ="100"/> <br />
        HTML���룺<input type ="text" name="urlink111" value ="&lt;a href=&quot;/myfile.aspx?siteid=<%=base.SiteId %>&quot;&gt;<%=classname %>&lt;/a&gt;"  size ="100"/><br />
        
        <%}else{ %>
        ����Ŀ���ӵ�ַ��<input type ="text" name="urlink111" value ="/wapindex.aspx?siteid=<%=base.SiteId %>&classid=<%=this.classid %>"  size ="100"/> <br />
        UBB���ӷ�����<input type ="text" name="urlink111" value ="[url=/wapindex.aspx?siteid=<%=base.SiteId %>&classid=<%=this.classid %>]<%=classname %>[/url]"  size ="100"/> <br />
        HTML���룺<input type ="text" name="urlink111" value ="&lt;a href=&quot;/wapindex.aspx?siteid=<%=base.SiteId %>&classid=<%=this.classid %>&quot;&gt;<%=classname %>&lt;/a&gt;"  size ="100"/><br />
        
         <%} %>
        <hr />
        <b>����ͨ��Ŀ����Ҫ��ʾ�ĵط���[view]�����������Ű档
        <br />���ҵĵ��̡���Ҫ��ʾ�ĵط���[view]
        <br />����ҳ����ָWAP2.0��wapindex.aspxҳ�����ݣ���������[view]���������Ű棬��Ȼ��[view]��WAP2.0ҳ��һ��ඡ�
        <br />����ҳ����ָ����ҳ/�Ƕ���/����ҳ��֮���ҳ�棬����ʾ��Ϣҳ�档�����Ű棬Ҫ��ʾ�ط���[view]
        <br />������ҳ�桿��ָWAP2.0�ģ�book_list.aspx ����ʾ�����ҳ��ҳ�档��ӦUBB��[view]  <a href="" target="_blank">�鿴</a>
        <br />������ҳ�桿��ָWAP2.0�ģ�book_view.aspx ����ʾ�������ݵ�ҳ�档��ӦUBB��[view]  <a href="" target="_blank">�鿴</a>
        <br />��Ԥ��������Ҫ��������Ԥ��������ҳ��Ԥ��Ч��Ϊʵ��Ч��������ҳ��Ԥ��ʱ��UBB[view]����ʵʱ��������Ϊ����ҳ��Ҫ�о������ID�Ż�����ģ�����ͨ���ȴ򿪶���ҳ���е�[view]Ч���ٵ����������ҳ�濴Ч����
        <br />��[view]��������ҳ��ͨ�õ�UBB�����UBB��ָ��WAP2.0��ҳ�����ת��HTML���룬�Զ�ʶ����ʾ��ǰҳ������ݡ�������ΧЧ�����Լ���HTML���������ģ�塣�����ҳ���ݣ�Ĭ��ȥ��WAP2.0ҳ�涥���͵ײ����ݣ�ֻת�ؼ������ݡ�
        <br />���ɣ� ��ҳ������ҳ�棬����ҳ�棬��������ͬһ����ҳģ�壬Ҫ��ʾ��̬���ݵ�λ����������λ��Ҫ�Ÿ�[view]��Ҳ������ô˵��������ҳ[wapindex.aspx]�⣬�������԰��Ű������ҳ��Ҫ������λ��[view]������[view]�������Ч��������CSS�����ʺϵ��԰�Ч����ֱ�Ӹ�Դ�������Ժ���������UBB��
        </b></font>
        
        <h2><font color="#FF0000">ע�⣺��ǰ�汾������&sid=xxx��ַ��UBB���ӻ�URL�����в�����Ҫ���룬ϵͳ�Զ����ر��档</font></h2>
        </p>
      </div></td>
    </tr>
  </table>









</form>




<div align="right">ҳ��ִ��ʱ�䣺<%=loadpagetime %>&nbsp;���룡</div>
              
              
</body>
</html>
