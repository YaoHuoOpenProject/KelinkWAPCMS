<%@ Page Language="C#" AutoEventWireup="true" Codebehind="ubb.aspx.cs" Inherits="KeLin.WebSite.admin.ubb" %>
<html>
<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<meta name="GENERATOR" content="Microsoft FrontPage 6.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link rel="stylesheet" type="text/css"  href="/NetCSS/style.css"/>
<title> UBB ����</title>
</head>

<body bgcolor="#CCCCCC">
<script>
    function show(ubb) {        
        
      <%if (GetRequestValue("types") != "WEB"){%>
        parent.addubb(ubb);
        <%}else{ %>
        
        //������ַ���뵽��������
        try {
            window.parent.opener.DaoRuMyFuncTohtml(ubb);
        } catch (e) {
            window.parent.DaoRuMyFuncTohtml(ubb);
        }
        alert("�ɹ����룡");
        <%} %>


}
function addpic(){
    window.open("Upload_Photo.aspx?PhotoUrlID=img&info=WEBҳ���ۺ��Ű�&delpath=11", "addclasswindow", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 

}
function addfile(){
    window.open("Upload_Photo.aspx?PhotoUrlID=file&info=WEBҳ���ۺ��Ű�&delpath=11", "addclasswindow", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 

}
function setpic(temp){
show(temp);
}
function daoru() { 
window.open ("../picture/systemindex.aspx?site=69&classid=00&seq=1", "daoruwindow", "height=520, width=790, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")
}
function daoruFile() {
    window.open("../admin/systemindexFiles.aspx?site=69&classid=00&seq=1", "daoruwindow", "height=520, width=790, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")
}
function UBB_VIEW_ADD(toubb){
   var winPar= window.showModalDialog('/admin/UBBEdit_Insert.aspx?toubb=' + encodeURIComponent(toubb), null, 'dialogWidth=600px;dialogHeight=450px;menuba=no;resizable=yes');
   if (winPar != null && winPar !="" && winPar !="undefined") {
       show(winPar);
   }

}
function addImgOrFile(a, b) {
    //alert(b);
    a = '<%=this.http_start%>' + a;
    if (b == 'img') {

        var sExt;        
        sExt = a.substr(a.lastIndexOf(".") + 1);
        sExt = sExt.toUpperCase();
        switch (sExt) {
            case "GIF":
            case "JPG":
            case "PNG":
            case "BMP":
            case "JPEG":
                show('[img]' + a + '[/img]');
                break;
            default:
                show('[url=' + a + ']�������[/url]');
                break;
        }
        
        
    } else {
        show('[url=' + a + ']�������[/url]');
    }
    
    
}
function wap2(){
	window.open("/admin/ubb3.aspx");
	
}
function openubb() {
    window.open("ubb.aspx");

}
function color(str){

  var arr = showModalDialog("/NetImages/edit/selcolor.htm", "", "dialogWidth:18em; dialogHeight:19em; status:0;help:0;scroll:no;");
  if (arr != null) FormatText(str, arr);
  else IframeID.focus();

	
}
function img(){
url=prompt("������ͼƬ�ļ���ַ:","http://");
if(!url || url=="http://") return;
FormatText('InsertImage',url)
}

function RealPlay(){

var arr = showModalDialog("/NetImages/edit/RealPlay.htm", "", "dialogWidth:22em; dialogHeight:11em;status:0;help:0;scroll:no;");
if (arr != null){
show(arr);
}

}
function MediaPlayer(){
var arr = showModalDialog("/NetImages/edit/MediaPlayer.htm", "", "dialogWidth:22em; dialogHeight:11em; status:0;help:0;scroll:no;");
if (arr != null){
show(arr);
}

}
function img(){
var arr = showModalDialog("/NetImages/edit/Img.htm", "", "dialogWidth:22em; dialogHeight:11em; status:0;help:0;scroll:no;");
if (arr != null){
show(arr);
}

}

function flash(){
var arr = showModalDialog("/NetImages/edit/flash.htm", "", "dialogWidth:22em; dialogHeight:11em; status:0;help:0;scroll:no;");
if (arr != null){
show(arr);
}
}
function ring(){
var arr = showModalDialog("/NetImages/edit/ring.htm", "", "dialogWidth:22em; dialogHeight:11em; status:0;help:0;scroll:no;");
if (arr != null){
show(arr);
}
}
function FormatText(str,sval){

  if (str=='fontname'){
     show("[font=" + sval + "]��������[/font]");
  
  }else if(str=='fontsize'){
     show("[size=" + sval + "]��������[/size]");
  }else if(str=='backcolor'){
     show("[backcolor=" + sval + "]��������[/backcolor]");
  
  }else if(str=='forecolor'){
    show("[forecolor=" + sval + "]��������[/forecolor]");
  }else if(str=='bgcolor'){
    show("[bgcolor]" + sval + "[/bgcolor]");
  }

}
</script>


                                  <%if (GetRequestValue("types") != "WEB")
                                    { %>
<table border="0" width="457" cellspacing="1">
                                <TR class="tdbg" > 
                                  <TD class="TD3" width="451" rowspan="2" bgcolor="#CCCCCC"> 
                                    <p align="left">��<a href="javascript:daoruFile()" >�����ز�</a>����<a href="javascript:daoru()" >����ͼƬ</a>����<a href="javascript:addpic()">�ϴ�ͼƬ</a>����<a href="javascript:addfile()">�ϴ��ļ�</a>����<a href="javascript:wap2()">��վ��Դ����</a>����<a href="javascript:openubb()">չ��</a>��<br/> 
                                    ��<a href="javascript:show('[div=title]¼������[/div]');" >����Ƥ��</a>����<a href="javascript:show('[div=subtitle]¼������[/div]');" >����Ƥ��</a>����<a href="javascript:show('[div=content]¼������[/div]');" >����Ƥ��</a>����<a href="javascript:show('[div=line1]¼������[/div]');" >��һƤ��</a>����<a href="javascript:show('[div=line2]¼������[/div]');" >�ж�Ƥ��</a>����<a href="javascript:show('[div=mylink]¼������[/div]');" >�ײ�Ƥ��</a>��
<hr />
<select name="selectFont" onChange="FormatText('fontname',this[this.selectedIndex].value);"><option selected>����<option value="removeFormat">Ĭ������<option value="����">����<option value="����">����<option value="����">����<option value="��Բ">��Բ<option value="����_GB2312">����<option value="����_GB2312">����<option value="������">������<option value="���Ĳ���">���Ĳ���<option value="���ķ���">���ķ���<option value="������κ">������κ<option value="Arial">Arial<option value="Arial Black">Arial Black<option value="Arial Narrow">Arial Narrow<option value="Century">Century<option value="Courier New">Courier New<option value="Georgia">Georgia<option value="Impact">Impact<option value="Lucida Console">Lucida Console<option value="MS Sans Serif">MS Sans Serif<option value="System">System<option value="Symbol">Symbol<option value="Tahoma">Tahoma<option value="Times New Roman">Times New Roman&nbsp; &nbsp;<option value="Verdana">Verdana<option value="Webdings">Webdings<option value="Wingdings">Wingdings</option></select> <select onChange="FormatText('fontsize',this[this.selectedIndex].value);" name="D2"><option class="heading" selected>�ֺ�<option value=1>һ��<option value=2>����<option value=3>����<option value=4>�ĺ�<option value=5>���<option value=6>����<option value=7>�ߺ�</option></select>

<img id="backcolor" src=/NetImages/edit/fbcolor.gif alt="���屳����ɫ" title="���屳����ɫ" align=absmiddle style="cursor:pointer;width:16px;height:16px;" onClick="color('backcolor')">
<img id="forecolor"  src=/NetImages/edit/fgcolor.gif alt="������ɫ" title="������ɫ" align=absmiddle style="cursor:pointer;width:16px;height:16px;"  onClick="color('forecolor')">
<img src=/NetImages/edit/img.gif alt="����ͼƬ" title="����ͼƬ" align=absmiddle style="cursor:pointer;width:16px;height:16px;" onClick="img()">


<img src=/NetImages/edit/strikethrough.gif alt="ɾ����" title="ɾ����" align=absmiddle style="cursor:pointer;width:16px;height:16px;" onClick="show('[strike]����������[/strike]')">

<img src=/NetImages/edit/inserthorizontalrule.gif alt="��ͨˮƽ��" title="��ͨˮƽ��" align=absmiddle style="cursor:pointer;width:16px;height:16px;" onClick="show('[hr]')">
<img src=/NetImages/edit/bb_code.gif alt="���ַɶ�" title="���ַɶ�" align=absmiddle style="cursor:pointer;width:16px;height:16px;" onClick="show('[fly]����������[/fly]')">
<a href="#table">���</a>  <a href="#tab">Tab�л�</a><br />
<br />
���ӻ�����: <br /><br />
<a href="#" onclick="UBB_VIEW_ADD('[text]���ı����ݣ���Ҫ�ڴ˼������ӡ�ͼƬ��[/text]');">���ı�</a>��
<a href="#" onclick="UBB_VIEW_ADD('[url=URL��ַ]���ӱ���[/url]');">�ı�����</a>��
<a href="#" onclick="UBB_VIEW_ADD('[imgurl=320*200]ͼƬ��ַ*���ӵ�ַ[/imgurl]');">ͼƬ����</a>��
<a href="#" onclick="UBB_VIEW_ADD('[img=ͼƬURL��ַ]˵��[/img]');">��ʾͼƬ</a>��
<a href="#" onclick="UBB_VIEW_ADD('[picurl8=320*200]ͼƬ��ַ1|ͼƬ��ַ2*���ӵ�ַ1|���ӵ�ַ2[/picurl8]');">ͼƬ�������ֲ�</a>��
<a href="#" onclick="UBB_VIEW_ADD('[picurl9=320*200]ͼƬ��ַ1|ͼƬ��ַ2*���ӵ�ַ1|���ӵ�ַ2[/picurl9]');">ͼƬ�����������</a>
<br /><br />
<a href="#" onclick="UBB_VIEW_ADD('[picurl10=320*200]ͼƬ��ַ1|ͼƬ��ַ2*���ӵ�ַ1|���ӵ�ַ2[/picurl10]');">ͼƬ�������</a>��
<a href="#" onclick="UBB_VIEW_ADD('[call=��ϵ����]˵��[/call]');">�������</a>��
<a href="#" onclick="UBB_VIEW_ADD('[js]javascript�ű�URL��ַ[/js]');">���JS�ű��ļ�</a>��
<a href="#" onclick="UBB_VIEW_ADD('[css]CSS�ļ�URL��ַ[/css]');">����CSS�ļ�</a>��
<a href="#" onclick="UBB_VIEW_ADD('[iframe=320*200]���ӵ�ַ[/iframe]');">����iframe���</a>

<%}
                                    else
                                    { %>

<table border="0" width="98%" cellspacing="1">
                                <TR class="tdbg" > 
                                  <TD class="TD3" width="98%" rowspan="2" bgcolor="#CCCCCC"> 
                                  <font color="#FF0000"><b>���԰��UBB��WAP2.0��ͬ��</b></font>
                                  <hr />
         ���õ���ģ�鷽��: [code]����ģ��ID[/code] 
        <br />����ͨ��Ŀ����Ҫ��ʾ�ĵط���[view]�����������Ű档
        <br />���ҵĵ��̡���Ҫ��ʾ�ĵط���[view]
        <br />����ҳ����ָWAP2.0��wapindex.aspxҳ�����ݣ���������[view]���������Ű棬��Ȼ��[view]��WAP2.0ҳ��һ��ඡ�
        <br />����ҳ����ָ����ҳ/�Ƕ���/����ҳ��֮���ҳ�棬����ʾ��Ϣҳ�档�����Ű棬Ҫ��ʾ�ط���[view]
        <br />������ҳ�桿��ָWAP2.0�ģ�book_list.aspx ����ʾ�����ҳ��ҳ�档��ӦUBB��[view]  
        <br />������ҳ�桿��ָWAP2.0�ģ�book_view.aspx ����ʾ�������ݵ�ҳ�档��ӦUBB��[view]  
        <br />��Ԥ��������Ҫ��������Ԥ��������ҳ��Ԥ��Ч��Ϊʵ��Ч��������ҳ��Ԥ��ʱ��UBB[view]����ʵʱ��������Ϊ����ҳ��Ҫ�о������ID�Ż�����ģ�����ͨ���ȴ򿪶���ҳ���е�[view]Ч���ٵ����������ҳ�濴Ч����
        <br />��[view]��������ҳ��ͨ�õ�UBB�����UBB��ָ��WAP2.0��ҳ�����ת��HTML���룬�Զ�ʶ����ʾ��ǰҳ������ݡ�������ΧЧ�����Լ���HTML���������ģ�塣�����ҳ���ݣ�Ĭ��ȥ��WAP2.0ҳ�涥���͵ײ����ݣ�ֻת�ؼ������ݡ�
        <br />���ɣ� ��ҳ������ҳ�棬����ҳ�棬��������ͬһ����ҳģ�壬Ҫ��ʾ��̬���ݵ�λ����������λ��Ҫ�Ÿ�[view]��Ҳ������ô˵��������ҳ[wapindex.aspx]�⣬�������԰��Ű������ҳ��Ҫ������λ��[view]������[view]�������Ч��������CSS�����ʺϵ��԰�Ч����ֱ�Ӹ�Դ�������Ժ���������UBB��
        

<%} %>
<hr />

                                    <hr />
                                    ��ε���CSS���룿���Ƚ���CSS��ʽ����UBB������<a href="javascript:show('[div=x]����[/div]');" >[div=x]����[/div]</a><br/>��<a href="javascript:show('[p=x]����[/p]');" >[p=x]����[/p]</a>��<a href="javascript:show('[span=x]����[/span]');" >[span=x]����[/span]</a>��
                                    <br />x���ã�tip/title/subtitle/content/line1/line2/mylink���Զ��壬����鿴�༭CSS��ʽ��
                                    
                                    <br /><font color="#FF0000">1.֧������Ƕ�ף�����[��]¼��[div=xx]����[��]¼��[/div]
                                    <br />2.֧�ֲ�Ƕ�ף����Ƕ�������ִ��˳��<br />[div=x] [div1=x] [div2=x] [div3=x]...[/div3] [/div2] [/div1] [/div]
                                    <br />��[span=x] [span1] [span2]...[/span2] [/span1][/span]
                                    <br />��[div=x] [span]...[/span][/div]
                                    </font><br/>
                                    ������ťЧ��һ����,��������[url=xx]xx[/url]������UBB����(UBB���Ӳ��ޣ��Զ�ʶ��)��<br />
ÿ��һ����ť��[div=bt1]���UBB����[/div]<br />
ÿ�ж�����ť��[div=bt2]���UBB����[/div]<br />
ÿ��������ť��[div=bt3]���UBB����[/div]<br />
ÿ���ĸ���ť��[div=bt4]���UBB����[/div]<br />
ÿ�������ť��[div=bt5]���UBB����[/div]<br />
Ϊ�˿��ư�ť֮��ļ�������DIVǶ��һ��<br />
����[div=btBox][div1=bt1]UBB����[/div1][/div]<br /><br />
������ťЧ�������ã�[div=linkbtn]UBB���Ӳ��ޣ��Զ�ʶ��[/div]<br />
������ťЧ�������ã�[div=linetouch]UBB���Ӳ��ޣ��Զ�ʶ��[/div]<br />
                                    <hr />
                                    ��β���WML��XHTML���룿���Ƚ���Ŀָ��WML����ģ�飬�����ɾ�����������WML���룬Ȼ����<a href="javascript:show('[getwml=����ID]');" >[getwml=����ID]</a>���û�ֱ��ת��UBB�﷨<br/>
                                    <hr />
                                    ��β�����ύ�����Ƚ���Ŀָ������ģ�飬�����ɾ����������ƺñ���Ȼ����<a href="javascript:show('[getform]����ID[/getform]');" >[getform]����ID[/getform]</a>���á�<br/>
                                    <hr />
                                    ����ΪUBB�﷨��������ȣ�����<br/>
                                    
                                    ͨ�����淵���ϼ���<a href="javascript:show('[return]�����ϼ�[/return]');" >[return]�����ϼ�[/return]</a><br />
                                    ������ҳ��<a href="javascript:show('[index]������ҳ[/index]');" >[index]������ҳ[/index]</a><br/>
                                    �����ϼ���<a href="javascript:show('[back]�����ϼ�[/back]');" >[back]�����ϼ�����������[/back]</a>
                                    �˵�������<a href="javascript:show('[nv]');" >[nv]</a>
                                    �汾������ѡ��<a href="javascript:show('[vs]');" >[vs]</a>,����[vs2][vs3]<br/>
                                    ���У�<a href="javascript:show('[br]')" >[br]</a>��<a href="javascript:show('///')" >///</a> ��ֱ�Ӱ��س���<br/>    
                                    �ո�<a href="javascript:show('[tab]')" >[tab]</a>��ո����ȫ��ת���[]��<a href="javascript:show('�����ݣ�')" >�����ݣ�</a><br/>                                
                                    �ı����ӣ�<a href="javascript:show('[url=URL��ַ]���ӱ���[/url]');" >[url=URL��ַ]���ӱ���[/url]</a><br/>
                                    ͼƬ���ӣ�<a href="javascript:show('[imgurl=320*200]ͼƬ��ַ*���ӵ�ַ[/imgurl]');" >[imgurl=320*200]ͼƬ��ַ*���ӵ�ַ[/imgurl]</a> <br/>
                                    ����ͼƬ���ӣ�<a href="javascript:show('[float=30*30*10*20*X]/Netimages/chat.png*���ӵ�ַ[/float]');" >[float=ͼ��*ͼ��*����߾���*�붥������*X]ͼƬ��ַ*���ӵ�ַ[/float]</a>��X=0ʱ��ߣ�X=1ʱ�ұ���ʾ��<br/>
                                    ��ʾͼƬ��<a href="javascript:show('[img]ͼƬURL��ַ[/img]');" >[img]ͼƬURL��ַ[/img]</a><br/>   
                                    ��ʾͼƬ2��<a href="javascript:show('[img=ͼƬURL��ַ]˵��[/img]');" >[img=ͼƬURL��ַ]˵��[/img]</a><br/>    
                          
                                    <font color=red>ע�⣺ͼƬ��׺Ϊgif|jpg|bmp|jpeg|png����ֻ����ҳ��ʾ��</font><br />
                                    
                                    ������SID�����ӣ�<a href="javascript:show('[url=/link/g.aspx?siteid=[siteid]&url=��վ��URL��ַ]��վ˵��[/url]');" >[url=/link/g.aspx?siteid=[siteid]&url=��վ��URL��ַ]��վ˵��[/url]</a><br/>
                                    ���»������ӣ�<a href="javascript:show('[anchor=����ַ]������[/anchor]');" >[anchor=����ַ]������[/anchor]</a><br/>
                                    ���ͼ�����ӣ�<a href="javascript:show('[rndurl=��ַ1|��ַ2]˵����ͼƬ��ַ1|˵����ͼƬ��ַ2[/rndurl]');" >[rndurl=��ַ1|��ַ2]˵����ͼƬ��ַ1|˵����ͼƬ��ַ2[/rndurl]</a><br/>                                    
                                    ���ͼ����ʾ��<a href="javascript:show('[rndtxt]˵����ͼƬ��ַ1|˵����ͼƬ��ַ2[/rndtxt]');" >[rndtxt]˵����ͼƬ��ַ1|˵����ͼƬ��ַ2[/rndtxt]</a><br/>
                                                                        
                                    <font color=red>(�����|������ֿ���֧�����ֻ�ͼƬ�������)</font><br />
                                    �����ֹ���ͼƬ(=����8)��<br /><a href="javascript:show('[picurl8=320*200]ͼƬ��ַ1|ͼƬ��ַ2*���ӵ�ַ1|���ӵ�ַ2[/picurl8]');" >[picurl8=320*200]ͼƬ��ַ1|ͼƬ��ַ2*���ӵ�ַ1|���ӵ�ַ2[/picurl8]</a><br/>
                                    ��������ƽ������ͼƬ(=����9)��<br /><a href="javascript:show('[picurl9=320*200]ͼƬ��ַ1|ͼƬ��ַ2*���ӵ�ַ1|���ӵ�ַ2[/picurl9]');" >[picurl9=320*200]ͼƬ��ַ1|ͼƬ��ַ2*���ӵ�ַ1|���ӵ�ַ2[/picurl9]</a><br/>
                                    
                                    ��Ƶ���ţ�<br /><a href="javascript:show('[movie=320*180]��Ƶ��ַ|ͼƬ��ַ[/movie]');" >[movie=320*180]��Ƶ��ַ|ͼƬ��ַ[/movie]</a><br/>
                                    ��Ƶ���ţ�<br /><a href="javascript:show('[audio=X]��Ƶ��ַ[/audio]');" >[audio=X]��Ƶ��ַ[/audio]</a><br/>
                                    (X=0ʱ���Զ����ţ�1Ϊ�Զ�����,2�Զ���ѭ������)<br />
                                    �ֻ��Զ���λ��ͼ(HTML5)��<a href="javascript:show('[map]320*240[/map]');" >[map]320*240[/map]</a><br/>
                                    γ�Ⱦ��ȶ�λ��ͼ(HTML5)��<a href="javascript:show('[map=23.02978910711622*113.30886358323664]320*240[/map]');" >[map=γ��*����]320*240[/map]</a><br/>
                                    <a href="#" onclick ="javascript:window.open('/weixin/mapshow.aspx', 'mapwidows', 'height=450, width=580, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no');" >�鿴����γ��</a><br />
                                   <br />
                                   
                                    <font color=red>��ͬ�汾��ʾ��ͬ���ݣ�<a href="javascript:show('[wap=X]����[/wap]');" >[wap=X]����[/wap]</a> (XΪ0,1,2,3,4...)</font><br />
                                    
                                    ��¼��ʾ��<a href="javascript:show('[logins]��¼������[/logins]');" >[logins]��¼������[/logins]</a> �ο���ʾ��<a href="javascript:show('[nologins]δ��¼����[/nologins]');" >[nologins]δ��¼����[/nologins]</a><br />
                                    ָ��ģ��λ����ʾ��<a href="javascript:show('[show=ģ������·������ĿID����ӿո�_X]����[/show]');" >[show=ģ������·������ĿID����ӿո�_X]����[/show]</a><br />
                                    (XΪ0ʱ��ʾ������վ,1ʱVIP��վ,2ʱ��VIP��վ,��[show=bbs_2]����[/show],��[show=bbs/book_view.aspx_2]����[/show]) <br />
                                    ָ��ģ�鲻��ʾ��<a href="javascript:show('[noshow=ģ������·������ĿID����ӿո�_X]����[/noshow]');" >[noshow=ģ������·������ĿID����ӿո�_X]����[/noshow]</a><br />
                                    -------<br />
                                    ָ����ĿIDλ����ʾ��<a href="javascript:show('[show=��ĿID�����,_X]����[/show]');" >[show=��ĿID�����,_X]����[/show]</a><br />
                                    (XΪ0ʱ��ʾ������վ,1ʱVIP��վ,2ʱ��VIP��վ,��[show=0,123,456,789_2]����[/show],��[show=0_2]����[/show]) <br />
                                    ָ����ĿID����ʾ��<a href="javascript:show('[noshow=��ĿID�����,_X]����[/noshow]');" >[noshow=��ĿID�����,_X]����[/noshow]</a><br />
                                    ��������������վ������ҳ��ʾ����:[noshow=0_0][div=tip]����[/div][/noshow]<br />
                                    -------<br />
                                     WAP2.0ê��λ��:<a href="javascript:show('[a]���(Ӣ�Ļ�����)[/a]');" >[a]���(Ӣ�Ļ�����)[/a]</a> ��:[a]top[/a]<br />
                                     WAP2.0������ê��:<a href="javascript:show('[a=���]˵��[/a]');" >[a=���]˵��[/a]</a> ��:[a=top]���ض���[/a]<br />
                                     WAP2.0�б�ǰ��ʾȦȦ:<a href="javascript:show('[u=myclass]�����жϷ���[/u]');" >[u=myclass]�����жϷ���[/u]</a>��<a href="javascript:show('[u=myclass][li]��һ[/li][li]�ж�[/li][/u]');" >[u=myclass][li]��һ[/li][li]�ж�[/li][/u]</a><br />
                                    ֱ�Ӳ��ţ�<a href="javascript:show('[call]�ֻ�����[/call]');" >[call]�ֻ�����[/call]</a> ��<a href="javascript:show('[call=�ֻ�����]˵��[/call]');" >[call=����]˵��[/call]</a><br/>
                                    �����ŵ��ֻ�:<a href="javascript:show('[url=sms:�ֻ�����?body=��������]����˷���[/url]');" >[url=sms:�ֻ�����?body=��������]����˷���[/url]</a><br />
                                    
                                    <br/>  
                                    ����Ԥ����<a href="javascript:show('[tq=0]Ĭ�ϵ���������[/tq]');" >[tq=X]Ĭ�ϵ���������[/tq]</a><br/>  
                                    (X=0��ʽ0��X=1��ʽ1��X=2��ʽ2)<br />
                                    ��ʾվ����Ϣ������<a href="javascript:show('[message]');" >[message]</a><br/>  
                                    �Զ�����վ����Ϣ��<a href="javascript:show('[automsg]');" >[automsg]</a><br/>  
                                    �Լ�����վ����Ϣ��<a href="javascript:show('[msg][img]ͼƬ��ַ[/img]����x����Ϣ![/msg]');" >[msg][img]ͼƬ��ַ[/img]����x����Ϣ![/msg]</a> (x���滻��ʵ������)<br/>          
                                    �������֣�<a href="javascript:show('[bgsound]������ַ[/bgsound]');" >[bgsound]������ַ[/bgsound]</a><br/>  
                                    ����[bgsound]http://kelink.com/1.mid[/bgsound]<br /> 
                                    ����<a href="javascript:show('[left]')" >[left]</a><br/> 
                                    ���У�<a href="javascript:show('[center]')" >[center]</a><br/> 
                                    ���ң�<a href="javascript:show('[right]')" >[right]</a><br/> 
                                    �Ӵ֣�<a href="javascript:show('[b]Ҫ�Ӵ��ַ�[/b]')" >[b]Ҫ�Ӵ��ַ�[/b]</a><br/>
                                    б�壺<a href="javascript:show('[i]Ҫб���ַ�[/i]')" >[i]Ҫб���ַ�[/i]</a><br/>
                                    �»��ߣ�<a href="javascript:show('[u]Ҫ�»����ַ�[/u]')" >[u]Ҫ�»����ַ�[/u]</a><br/>
                                    ��ǰϵͳ���ں�ʱ�䣺<a href="javascript:show('[now]')" >[now]</a><br/>
                                    ��ʾ��ݣ�<a href="javascript:show('[year]')" >[year]</a><br/>
                                    ��ʾ��ǰ�·ݣ�<a href="javascript:show('[month]')" >[month]</a><br/>
                                    ��ʾ��������<a href="javascript:show('[day]')" >[day]</a><br/>
                                    ��ʾʱ������<a href="javascript:show('[hour]')" >[hour]</a><br/>
                                    ��ʾ��������<a href="javascript:show('[minute]')" >[minute]</a><br/>
                                    ��ʾ��������<a href="javascript:show('[second]')" >[second]</a><br/>
                                    ��ʾ��ǰϵͳ���ڣ�<a href="javascript:show('[date]')" >[date]</a><br/>
                                    ��ʾ��ǰϵͳʱ�䣺<a href="javascript:show('[time]')" >[time]</a><br/>
                                    ��ʾ�������ڣ�<a href="javascript:show('[weekday]')" >[weekday]</a><br/>
                                    ��ʾũ�����ڣ�<a href="javascript:show('[ttcc]')" >[ttcc]</a> <br/>
                                    ��ʾ�ʺ��<a href="javascript:show('[hello]')" >[hello]</a><br/>
                                    ����������<a href="javascript:show('[codo]2012-12-21[/codo]')" >[codo]2012-12-21[/codo]</a><br/>
                                    <hr />
                                    <font color="#FF0000">-----<b>��ʾ��������</b></font>---<br/>
                                    </font> 
                                    �﷨��[����ģ���ʶ=N_M_X_Y_Z] ��<a href="/help/ubb.html" target ="_blank">ͼ�Ľ̳�</a>��<br/>
                                    <b>N</b>Ϊ��ĿID��
                                    <br/>1.Ϊ0ʱ��ʾ�˹���ģ���������ݣ�
                                    <br/>2.������ĿID��
                                    <br/><font color=red>3.ĳ����Χ��ĿID������A-B����a=1002��Ŀ��a��Ŀ����b=1003,c=1004,d=1005��Ҫ��ʾa����������Ŀ������1003-1005��
                                    	<b>��һ����ָ�������ĿID��������|���֣�1003|1004|1005</b>
                                    <br/>4.��֧���ϼ���ĿID�����õ�3������
                                    </font><br/>
                                    <b>M</b>Ϊ�������������20��<br/>
                                    <b>X</b>Ϊ0Ϊ����20���������1Ϊ���£�2�ȵ㣬3����(��̳���������̵꣬Լ��)��4Ϊ�ö���5Ϊ������У�6Ϊ����������7Ϊ�ظ�ʱ�䣬8Ϊ�Ƽ�<br/>
                                    <font color=red><b>Y</b>Ϊ���ⳤ�ȣ�0ΪĬ�ϳ��ȣ�С��5ʱ�����У���֮���С�(����ͼƬ�����ģ��� Y=-1 ʱ��ʾͼƬ�����У�-2��ʾͼƬ����)</font><br/>
                                    <b>Z</b>Ϊ����Ч������Χ0-100��������ģ�� 0ʱֻ��ʾ���⣬1��ʾ��Ŀ+���⣬2����+����,3ʱ��+���⣬4.���+���⣬5��������Ч����6�б�ͼ���Զ���ͼ������:6*320*150����7ͼ�ģ��Զ���ͼ������:7*320*150,[����ɽ�*1ȥ����ʾ����ǰ*��ʱ�䣬Yֵ�����ݳ���]����8ͼƬ�����ֹ������Զ���ͼ������:8*320*150����9��10��11��ע����Щģ���޴˹���ֻ����Ϊ0<br/>
                                    ���¹��ܣ�<a href="javascript:show('[article=N_M_X_Y_Z]')" >[article=N_M_X_Y_Z]</a><br/>
                                    ��̳���ܣ�<a href="javascript:show('[bbs=N_M_X_Y_Z]')">[bbs=N_M_X_Y_Z]</a><br/>
                                    ��̳ר�⣺<a href="javascript:show('[bbstopic=N_M_X_Y_Z]')">[bbstopic=N_M_X_Y_Z]</a>(NΪר��ID)<br/>
                                    �������ݣ�<a href="javascript:show('[chat=N_M_X_Y_Z]')">[chat=N_M_X_Y_Z]</a><br/>
                                    �������죺<a href="javascript:show('[clanchat=N_M_X_Y_Z]')">[clanchat=N_M_X_Y_Z]</a>(N=1Ϊ�Լ�����,0����)<br/>
                                    
                                    ���ع��ܣ�<a href="javascript:show('[download=N_M_X_Y_Z]')">[download=N_M_X_Y_Z]</a><br/>
                                    ���ذ���ǰ���Ͷ�Ӧƽ̨��ʾ��<a href="javascript:show('[dl=N_M_X_Y_Z]')">[dl=N_M_X_Y_Z]</a>(��ǰ����:[ua1])<br/>
                                    
                                    ͼƬ���ܣ�<a href="javascript:show('[picture=N_M_X_Y_Z]')">[picture=N_M_X_Y_Z]</a><br/>
                                    ��Ƶ���ܣ�<a href="javascript:show('[video=N_M_X_Y_Z]')">[video=N_M_X_Y_Z]</a><br/>
                                    �������ܣ�<a href="javascript:show('[ring=N_M_X_Y_Z]')">[ring=N_M_X_Y_Z]</a><br/>
                                    �̵깦�ܣ�<a href="javascript:show('[shop=N_M_X_Y_Z]')">[shop=N_M_X_Y_Z]</a><br/>
                                    ����״̬ͳ��UBB:[shopstate]?[/shopstate]��?Ϊ״ֵ̬������ջ�([shopstate]12[/shopstate])����?����ֵ�鿴�ҵĶ���<br />
                                    ���ﳵ������[shopcard]<br />
                                    ���ﳵ���ӵ�ַ��[url=/shop/book_view_add.aspx?classid=0&siteid=[siteid]]���ﳵ([shopcard])[/url]<br />
                                    �ҵĶ������ӵ�ַ��[url=/shop/orderlistmy.aspx?&classid=0&siteid=[siteid]]�ҵĶ���[/url] (classid=0���Ըĳɾ������Ŀֵ)<br />
                                    �������ܣ�<a href="javascript:show('[paimai=N_M_X_Y_Z]')">[paimai=N_M_X_Y_Z]</a><br/>
                                    �Ƶ깦�ܣ�<a href="javascript:show('[hotel=N_M_X_Y_Z]')">[hotel=N_M_X_Y_Z]</a><br/>
                                    ���๦�ܣ�<a href="javascript:show('[airplane=N_M_X_Y_Z]')">[airplane=N_M_X_Y_Z]</a><br/>
                                    Լ�Ṧ�ܣ�<a href="javascript:show('[yuehui=N_M_X_Y_Z]')">[yuehui=N_M_X_Y_Z]</a><br/>
                                    ���԰幦�ܣ�<a href="javascript:show('[guessbook=N_M_X_Y_Z]')">[guessbook=N_M_X_Y_Z]</a><br/>
                                    �������ܣ�<a href="javascript:show('[link=N_M_X_Y_Z]')">[link=N_M_X_Y_Z]</a><br/>
                                    ��̬�������ܣ�<a href="javascript:show('[linkactive=N_M_X_Y_Z]')">[linkactive=N_M_X_Y_Z]</a><br/>
                                    WML��д���ܣ�<a href="javascript:show('[wml=N_M_X_Y_Z]')">[wml=N_M_X_Y_Z]</a><br/>
                                    ��湦�ܣ�<a href="javascript:show('[adlink=N_M_X_Y_Z]')">[adlink=N_M_X_Y_Z]</a><br/>
                                    �����ܣ�<a href="javascript:show('[gongqiu=N_M_X_Y_Z]')" >[gongqiu=N_M_X_Y_Z]</a><br/>
                                    ���ͼƬ��<a href="javascript:show('[album=N_M_X_Y_Z]')" >[album=N_M_X_Y_Z]</a><br/>                                    
                                    ��־���ܣ�<a href="javascript:show('[rizhi=N_M_X_Y_Z]')" >[rizhi=N_M_X_Y_Z]</a><br/>
                                    ΢�����ܣ�<a href="javascript:show('[weibo=N_M_X_Y_Z]')" >[weibo=N_M_X_Y_Z]</a><br/>
                                    �㲥���ܣ�<a href="javascript:show('[guangbo=N_M_X_Y_Z]')" >[guangbo=N_M_X_Y_Z]</a>(Y=-3��ʾ�ǳ�)<br/>
                                    ��ʾ�鱾��<a href="javascript:show('[novel=N_M_X_Y_Z]')" >[novel=N_M_X_Y_Z]</a>(Y=0����ʾ����)<br/>
                                    ��ʾ�½ڣ�<a href="javascript:show('[section=N_M_X_Y_Z]')" >[section=N_M_X_Y_Z]</a><br/>
                                    �ڱ����ܣ�<a href="javascript:show('[wabao=N_M_X_Y_Z]')" >[wabao=N_M_X_Y_Z]</a><br/>
                                    ������������һ����Ŀָ�������¹��ܣ��������Ŀ���Ѿ����������ݣ���ô����[article=12_3_0_10]��12Ϊ�����ĿID����classid�����ڽ����Ͻ���ʾ�����ʾ3�����ⳤ��Ϊ10���ֵ����ӡ�NM������󷵻ؿա����������ʾUBB���ı�����li��ס������UBB:[u=myclass]UBB��ʾN������[/u]
                                    <br/><hr /><a name="tab"></a><b>-------Tab�л�Ч��------</b><br/>
                                    ��ʽ:<a href="javascript:show('[tab=˵��1|˵��2|˵��3]�б�һ|�б��|�б���[/tab]')" >[tab=˵��1|˵��2|˵��3]�б�һ|�б��|�б���[/tab]</a>
                                    <br />ͬһ��ҳ��ɲ������������CSS+JS����Ч��
                                    <br />css��ʽ�༭�����룺
                                    <br /><textarea rows="7" name="S1" cols="50" style="background-color: #C0C0C0"><style>
*{margin:0; padding:0; border:none;}
.tab{width:320px;}
.tabTitle{height:30px; border-bottom: solid 1px #d3d3d3; border-top: solid 1px #d3d3d3; width:320px; overflow-y:auto;}
.tabTitle a{border-right: solid 1px #d3d3d3;  width:106px; display:block; float:left; text-align:center; font:14px/30px "����"; background:url(/NetImages/title.gif) repeat-x;}
.tabTitle a.selecter{ background:url(/NetImages/title_selecter.gif) repeat-x;}
ul,li{list-style-type:none;}
</style>
<script src="/NetCSS/tab.js" language="javascript"></script></textarea>
                                   <br />��:[tab=��̳|ͼƬ|����][bbs=0_5_0_0_0]|[picture=0_5_0_0_0]|[aritcle=0_5_0_0_0][/tab]
                                    
                                    
                                    <br/><hr /><a name="table"></a><b>-------������λ��------</b><br/>
                                    [table][tr][td]����[/td][/tr][/table]��td��ʾ��,tr��ʾ�У�<br />
                                    ��<br />
                                    [table=myclass][tr=myclass][td=myclass]����[/td][/tr][/table]<br />(myclass��css�������ʽ����)<br />
                                    ��<br />
                                    ������������UBB���Ի��ʹ�á���Ҫ��Ϥhtml�еı���������Ĭ��WAP2.0��֧�֡� <br />
                                    ��������������
                                    [table][tr][td]1_1[/td][td]1_2[/td][td]1_3[/td][/tr][tr][td]2_1[/td][td]2_2[/td][td]2_3[/td][/tr][/table]<br />
                                    �������Ʊ��������ʽ��<br />
                                    [div=tip][table][tr][td][div5=subtitle]1_1[/div5][/td][td]1_2[/td][td]1_3[/td][/tr][tr][td]2_1[/td][td]2_2[/td][td][div5=title]2_3[/div5][/td][/tr][/table][/div]
                                    <br />������css���ܿ��Ʊ����ʽЧ������Ҫ�������Ź���Ч����վ��
                                    <br />CSS�п���¼�룺 
                                    <br />table{max-width:100%; height:auto; text-align:center;} 
                                    <br />td{ width:33%; height:auto;}
                                    <br />.bt{  width:auto; height:auto; margin-top:5px; display:block;  text-align:center;}
                                    <br />div.jiu{max-width:[width]px;margin:0 auto;}
                                    <br />ʵ��UBB������������<br /><input type ="text" name ="ts" value="[div=jiu][table][tr][td][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=6516][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1545490.png[/img][/url][br][span=bt][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=6516]��˾����[/url][/span][/td][td][url=http://kelink.com/shop/book_list.aspx?action=class&siteid=2108&classid=6517][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1545370.png[/img][/url][br][span=bt][url=http://kelink.com/shop/book_list.aspx?action=class&siteid=2108&classid=6517]��Ʒ����[/url][/span][/td][td][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=99173][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1545590.png[/img][/url][br][span=bt][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=99173]�ɹ�����[/url][/span][/td][/tr][tr][td][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=6518][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1545100.png[/img][/url][br][span=bt][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=6518]����֧��[/url][/span][/td][td][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=99168][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1546150.png[/img][/url][br][span=bt][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=99168]����ָ��[/url][/span][/td][td][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=204577][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1545190.png[/img][/url][br][span=bt][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=204577]����ʺ�[/url][/span][/td][/tr][tr][td][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=204578][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1545270.png[/img][/url][br][span=bt][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=204578]���д���[/url][/span][/td][td][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=99169][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1544520.png[/img][/url][br][span=bt][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=99169]��ϵ����[/url][/span][/td][td][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=99181][img]http://kelink.com/picture/upload/2108/2012/03/31/2108_1545590.png[/img][/url][br][span=bt][url=http://kelink.com/wapindex.aspx?siteid=2108&classid=99181]��������[/url][/span][/td][/tr][/table][/div]"/>
                                    
                                    <br/><hr /><font color="#FF0000"><b>-------WAP1.0/2.0��ʾ����������------</b></font><br/>
                                    �������ӣ�<a href="javascript:show('[sel][option=���ӵ�ַ]��������[/option][/sel]')">[sel][option=���ӵ�ַ]��������[/option][/sel]</a><br/>
                                    ��������Ϊ��ʾ����Ԥ����������<br/>
                                    [sel][option= ]����ѡ��[/option][option=/utility/weather/show.aspx?key=020&amp;siteid=[siteid]&amp;classid=[classid]]����[/option][option=/utility/weather/show.aspx?key=010&amp;siteid=[siteid]&amp;classid=[classid]]����[/option][/sel]
                                    <br/>�˴����κεط������л��з���س���
                                    <br />WAP2.0��һ��[option= ]˵��[/option]��Ч����д��˵����
                                    <br/><hr /><b><font color="#FF0000">-------WAP1.0��2.0�����������------</font></b><br/>
                                    <table border="0" width="100%" id="table2" bgcolor="#C0C0C0">
										<tr>
											<td><font size="1">
											[input=15]�ؼ���[/input][ancho=article_0]������[/ancho][ancho=bbs_0]����̳[/ancho][form2][input2=5]�ؼ���[/input2][sel2][option2=bbs_0]��̳[/option2][option2=article_0]����[/option2][option2=http://wap.baidu.com/baidu?word=]�ٶ�[/option2][/sel2][button2]����[/button2][/form2]
											<br />���������º���̳���������ӣ���������뿴����˵����
											</font></td>
										</tr>
									</table>
                                    <br/><hr /><b><font color="#FF0000">-------��ʾWAP2.0������------<br/></b></font>
                                    ��ʼ��<a href="javascript:show('[form2]')">[form2]</a><br/>
                                    �����<a href="javascript:show('[input2=5]�ؼ���[/input2]')">[input2=���ȴ�С]�ؼ���[/input2]</a><br/>
                                    (��:[input2=5]�ؼ���[/input2])<br />
                                    ����ѡ��ʼ��<a href="javascript:show('[sel2]')">[sel2]</a><br/>
                                    ����ѡ�<a href="javascript:show('[option2=bbs_0]��̳[/option2]')">[option2=����ģ���ʶ_N��ĿID]˵����ť[/option2]</a><br/>
                                    (��:[option2=bbs_0]��̳[/option2][option2=article_0]����[/option2]������0�������ĳһģ���������Ŀ���ݣ�����ģ���ʶ_N��ĿID���Ըĳ���վ�ĵ�ַ��:[option2=http://wap.baidu.com/baidu?word=]�ٶ�[/option2])<br />
                                    ����ѡ�������<a href="javascript:show('[/sel2]')">[/sel2]</a><br/>
                                    �ύ��ť��<a href="javascript:show('[button2]����[/button2]')">[button2]����[/button2]</a><br/>
                                    ������<a href="javascript:show('[/form2]')">[/form2]</a><br/>
                                    �˴����κεط������л��з���س������ӿɲο�����Ļ�����ӡ���������ɲο�����1.0�������ֵ��
                                    
                                    <br/><hr /><b><font color="#FF0000">-------��ʾWAP1.0������------<br/>
                                    </font></b>�����<a href="javascript:show('[input=15]����ؼ���[/input]')">[input=���ȴ�С]�ؼ���[/input]</a><br/>
                                    ����[input=15]����ؼ���[/input]<br/>
                                    <br/>
                                    ������ť��[ancho=����ģ���ʶ_N��ĿID]˵����ť[/ancho]
                                    <br/><font color=red>NΪ0ʱ�������ݣ�֧���ϼ���ĿID�����֧�ֶ���</font>
                                    <br/>��ǰ����ģ��������ť���£�<br/>
                                    <a href="javascript:show('[ancho=article_N]��������[/ancho]')">[ancho=article_N]��������[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=bbs_N]��̳����[/ancho]')">[ancho=bbs_N]��̳����[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=picture_N]ͼƬ����[/ancho]')">[ancho=picture_N]ͼƬ����[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=ring_N]��������[/ancho]')">[ancho=ring_N]��������[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=video_N]��Ƶ����[/ancho]')">[ancho=video_N]��Ƶ����[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=download_N]��������[/ancho]')">[ancho=download_N]��������[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=album_N]�������[/ancho]')"> [ancho=album_N]�������[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=link_N]��������[/ancho]')">[ancho=link_N]��������[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=yuehui_N]Լ������[/ancho]')">[ancho=yuehui_N]Լ������[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=shop_N]�̵�����[/ancho]')">[ancho=shop_N]�̵�����[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=airplane_N]��������[/ancho]')">[ancho=airplane_N]��������[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=hotel_N]�Ƶ�����[/ancho]')">[ancho=hotel_N]�Ƶ�����[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=guessbook_N]��������[/ancho]')">[ancho=guessbook_N]��������[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=paimai_N]��������[/ancho]')">[ancho=paimai_N]��������[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=wml_N]��д��������[/ancho]')">[ancho=wml_N]��д��������[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=search_N]�û�����[/ancho]')">[ancho=search_N]�û�����[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=card_N]��Ƭ����[/ancho]')">[ancho=card_N]��Ƭ����[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=class_N]��Ŀ����[/ancho]')">[ancho=class_N]��Ŀ����[/ancho]</a><br/>
                                    <a href="javascript:show('[ancho=gongqiu_N]��������[/ancho]')">[ancho=gongqiu_N]��������[/ancho]</a><br/>
                                    �߼�ʹ�ã�ȡ�������ֵ[urlancho=��ַ_����]˵��[/urlancho]<br/>
                                    ��1.�ٶ�����ԭ��ַ:http://wap.baidu.com/baidu?word=XXXXX<br/>
                                    <a href="javascript:show('[input=15]��Ů[/input][urlancho=http://wap.baidu.com/baidu_word]�ٶ�����[/urlancho]')">[input=15]��Ů[/input][urlancho=http://wap.baidu.com/baidu_word]�ٶ�����[/urlancho]</a>
                                   <br/>
                                   ��2.�屪����ԭ��ַ:http://wap.roboo.com/auto.jsp?q=XXX&back=123.com&f=123
                                    <br/>
                                  <a href="javascript:show('[input=15]��Ů[/input][urlancho=http://wap.roboo.com/auto.jsp?back=123.com&f=123_q]�屪����[/urlancho]')">[input=15]��Ů[/input][urlancho=http://wap.roboo.com/auto.jsp?back=123.com&f=123_q]�屪����[/urlancho]</a>
                                   <br/>
                                    </a>��ʾ��һ��ҳ�潨��ֻʹ��һ�������<br/>
									�߼�ʹ��WML����ģ��д������������
									<table border="0" width="100%" id="table1" bgcolor="#C0C0C0">
										<tr>
											<td><font size="1">&lt;form name=&quot;g&quot; 
											action=&quot;/bbs/book_list.aspx&quot; 
											method=&quot;get&quot;&gt;&lt;input type=&quot;text&quot; 
											name=&quot;key&quot; size=&quot;5&quot;/&gt;&lt;input 
											type=&quot;hidden&quot; name=&quot;type&quot; 
											value=&quot;title&quot;/&gt;&lt;input type=&quot;hidden&quot; 
											name=&quot;siteid&quot; 
											value=&quot;[siteid]&quot;/&gt;&lt;input 
											type=&quot;hidden&quot; name=&quot;classid&quot; 
											value=&quot;0&quot;/&gt;&lt;input type=&quot;hidden&quot; 
											name=&quot;action&quot; value=&quot;search&quot;/&gt;&lt;input type=&quot;submit&quot; 
											value=&quot;����̳&quot;/&gt;&lt;/form&gt;</font></td>
										</tr>
									</table>
									<br/><hr /><font color="#FF0000">
                                    ------<b>��ʾ��Ŀ�ر�ť</b>------<br/>
                                    ����ģ���ʶ�뿴����ġ���ʾ������<br/>
                                    </font>����:<a href="javascript:show('[search=����ģ���ʶ_��ĿID]˵��[/search]')" >[search=����ģ���ʶ_��ĿID]˵��[/search]</a><br/>
                                    �ؼ���:<a href="javascript:show('[key=����ģ���ʶ_��ĿID]˵��[/key]')" >[key=����ģ���ʶ_��ĿID]�ؼ���[/key]</a><br/>
                                    ����:<a href="javascript:show('[new=����ģ���ʶ_��ĿID]˵��[/new]')" >[new=����ģ���ʶ_��ĿID]˵��[/new]</a><br/>	                                    	
                                    �ȵ�:<a href="javascript:show('[hot=����ģ���ʶ_��ĿID]˵��[/hot]')" >[hot=����ģ���ʶ_��ĿID]˵��[/hot]</a><br/>	
                                    ����:<a href="javascript:show('[good=����ģ���ʶ_��ĿID]˵��[/good]')" >[good=����ģ���ʶ_��ĿID]˵��[/good]</a><br/>	
                                    N��ǰ:<a href="javascript:show('[days=����ģ���ʶ_��ĿID_����]˵��[/days]')" >[days=����ģ���ʶ_��ĿID_����]˵��[/days]</a><br/>
                                    �������һ����̳��ĿIDΪ988������Ӧ��Ϊ�� 
                                    [search=bbs_988]XX��Ŀ����[/search]<br/>
                                    [new=bbs_988]XX��Ŀ����[/new]<br/>
                                    [hot=bbs_988]XX��Ŀ����[/hot]<br/>
                                    [good=bbs_988]XX��Ŀ����[/good]<br/>
                                    [days=bbs_988_1]XX��Ŀ���췢��[/days]
                                    <br/>(������ĿID����Ϊ��һ���ģ������Ϊ0�����ֹ���ģ���޴�Ӧ��)
                                    <br/><hr />
                                    <font color="#FF0000">
                                    ------<b>��ʾ��������</b>------<br/>
                                    </font>��¼�ɼ�����:<a href="javascript:show('[login]��������[/login]')" >[login]��������[/login]</a><br/>
                                    �ֻ��ɼ�����:<a href="javascript:show('[mobi]��������[/mobi]')" >[mobi]��������[/mobi]</a><br/>	                                    	
                                    ��Ǯ�ɼ�����:<a href="javascript:show('[coin=��Ǯ��]��������[/coin]')" >[coin=��Ǯ��]��������[/coin]</a><br/>	
                                    �ȼ��ɼ�����:<a href="javascript:show('[grade=�ȼ�]��������[/grade]')" >[grade=�ȼ�]��������[/grade]</a><br />
                                    ��ݼ���ɼ�����:<a href="javascript:show('[vip=��ݼ���ID�����|����]��������[/vip]')" >[vip=��ݼ���ID�����|����]��������[/vip]</a>
                                   <br/><hr />
                                   <font color="#FF0000"><b>-------ͳ�Ƽ�¼����------</b></font><br/>
                                    �﷨��[����ģ���ʶ=X_Y]��ֻ������X��Y������YҪ����99��<br/> 	
                                    XΪ��ĿID��Ϊ0ʱ��ģ��������Ŀ��<br/>
                                    YΪ100Ϊ������101Ϊ��������102Ϊ��������103Ϊ������,104Ϊ������,105Ϊ��������,106Ϊ������<br/>                                
                                    ����ģ�飺<a href="javascript:show('[article=0_100]')" >[article=X_Y]</a><br/>
                                    ��̳ģ�飺<a href="javascript:show('[bbs=0_100]')" >[bbs=X_Y]</a><br/>
                                    ��̳������<a href="javascript:show('[bbsre=0_100]')" >[bbsre=X_Y]</a><br/>
                                    ����ģ�飺<a href="javascript:show('[download=0_100]')" >[download=X_Y]</a><br/>
                                    ͼƬģ�飺<a href="javascript:show('[picture=0_100]')" >[picture=X_Y]</a><br/>
                                    ��Ƶģ�飺<a href="javascript:show('[video=0_100]')" >[video=X_Y]</a><br/>
                                    ����ģ�飺<a href="javascript:show('[ring=0_100]')" >[ring=X_Y]</a><br/>
                                    �̵�ģ�飺<a href="javascript:show('[shop=0_100]')" >[shop=X_Y]</a><br/>
                                    Լ��ģ�飺<a href="javascript:show('[yuehui=0_100]')" >[yuehui=X_Y]</a><br/>
                                    ���԰�ģ�飺<a href="javascript:show('[guessbook=0_100]')" >[guessbook=X_Y]</a><br/>
                                    ����ģ�飺<a href="javascript:show('[link=0_100]')" >[link=X_Y]</a><br/>
                                    ����ģ�飺<a href="javascript:show('[gongqiu=0_100]')" >[gongqiu=X_Y]</a><br/>
                                    ���ģ�飺<a href="javascript:show('[album=0_100]')" >[album=X_Y]</a><br/>
                                    ��־ģ�飺<a href="javascript:show('[rizhi=0_100]')" >[rizhi=X_Y]</a><br/>
                                    ��ͳ�����ع���ģ����Ŀ���ϴ�����[dowload=0_101]<br />
                                    ����ͳ�ƣ�<br />
                                    �ҵĺ���������<a href="javascript:show('[friend]0[/friend]')" >[friend]0[/friend]</a><br/>
                                    �ҵĺ���������<a href="javascript:show('[friend]1[/friend]')" >[friend]1[/friend]</a><br/>
                                    �ҵ�׷��������<a href="javascript:show('[friend]2[/friend]')" >[friend]2[/friend]</a><br/>
                                    ׷���ҵ�������<a href="javascript:show('[friend]4[/friend]')" >[friend]4[/friend]</a><br/>
                                    ���Ƽ���������<a href="javascript:show('[friend]5[/friend]')" >[friend]5[/friend]</a><br/>
                                    <font color="red">��ʾ��ʵʱͳ�ƺ���Դ���뾡�����ã�</font>
                                    <br/><hr />
                                    <font color="#FF0000">
                                    ------<b>������ͳ��API</b>------<br/>
                                    </font>ĳ����Ŀ����������<a href="javascript:show('[online=��ĿID]')" >[online=��ĿID]</a><br/>
                                    	(�Զ������ӣ���ĿID=0ʱ��ʾ���У�ȫ�ֲ��������<br/>[online=[classid]])<br/>
                                    	����ΪPVֵ<br />
                                    �ڼ�λ������:<a href="javascript:show('[vtotal]')" >[vtotal]</a><br/>
                                    ���շ�����:<a href="javascript:show('[vyestaday]')" >[vyestaday]</a><br/>
                                    ���շ�����:<a href="javascript:show('[vtoday]')" >[vtoday]</a><br/>                                    
                                    ���ܷ�����:<a href="javascript:show('[vweek]')" >[vweek]</a><br/>
                                    ���·�����:<a href="javascript:show('[vmonth]')" >[vmonth]</a><br/>
                                    �ܷ�����:<a href="javascript:show('[vtotal]')" >[vtotal]</a><br/>
                                    ��ǰ��������:<a href="javascript:show('[online]')" >[online]</a><br/>
                                    ������վ����:<a href="javascript:show('[valltotal]')" >[valltotal]</a>
                                    <br/><hr />
                                    <font color="#FF0000">---------<b>������ϷUBB</b>--------<br/></font>
                                    ��Ϸ:<a href="javascript:show('[games=N_M_X_Y_Z]')" >[games=N_M_X_Y_Z]</a><br/>
                                    NΪ��Ϸ������ĿID
                                    <br />MΪ���ض�����                                    
                                    <br />XΪ��ʾ���:1Ϊ������ս���ݣ�2Ϊ����Ͷע�ܴ�����3Ϊ����Ͷע�ܽ��
                                    4.ΪӮ�����У�5.׬������                                    
                                    <br />Y��Ϊ��Ϸ��ʶ�����ʯͷ:stone��������:touzi��ƻ����:apple��Ǭ����:quankun�����ţ:chuiniu
                                    �Ӷ����:war������28:lucky28���������:shoot������:horse
                                    <br />Z,��ʱ�̶�Ϊ0
                                    
                                    <br/><hr />
                                    <font color="#FF0000">---------<b>��Ա״̬UBB</b>--------<br/></font>
                                    
                                    
                                   
                                    ��Ա״̬:<a href="javascript:show('[users=N_M_X_Y_Z]')" >[users=N_M_X_Y_Z]</a><br/>
                                    NΪ0ʱ���,1���£����X=0,1ʱ��Ч<br/>
                                    MΪ�������������20����<br/>
                                    XΪ0ʱ�����л�Ա���¼��Ϊ7ʱ���߻�Ա���¼��Ϊ1ʱע���Ա���߻��¼��Ϊ2ʱ����ע���Ա��Ϊ3ʱ����ע���л�Ա��Ϊ4ʱ����ע��Ů��Ա��
                                    Ϊ5ʱ�Ƹ������У�Ϊ6ʱ�������а�(ע�⣬��X>=3ʱ��ͳ�ƿ��ܻ�������������)<br/>
                                    YΪ0ʱ���У�Ϊ1ʱ�����С�<br/><hr />

                                    <font color="#FF0000">---------<b>�߼�API</b>--------<br/></font>
                                    ȡ��ˮ��:<a href="javascript:show('[fid]')" >[fid]</a><br/>
                                    ȡ��վID:<a href="javascript:show('[siteid]')" >[siteid]</a><br/>
                                    ȡ��ǰҳ��ĿID:<a href="javascript:show('[classid]')" >[classid]</a><br/>
                                    ȡ��ǰҳ��Ŀ����:<a href="javascript:show('[classname]')" >[classname]</a><br/>
                                    ȡ��ǰҳ��������:<a href="javascript:show('[title]')" >[title]</a><br/>
                                    ȡ��ǰҳ����ID:<a href="javascript:show('[id]')" >[id]</a><br/>
                                    ȡ��ǰҳ������ַ:<a href="javascript:show('[domain]')" >[domain]</a><br/>
                                    ȡ��ǰҳ����ĿID:<a href="javascript:show('[parentid]')" >[parentid]</a><br/>
                                    (�����û���¼����Ч)<br/>
                                    ȡ�û�ID:<a href="javascript:show('[userid]')" >[userid]</a><br/>
                                   <!--  ȡ�û���:<a href="javascript:show('[username]')" >[username]</a><br/>-->
                                    ȡ���ǳ�:<a href="javascript:show('[nickname]')" >[nickname]</a><br/>
                                   <!-- ȡ�û�MD5����:<a href="javascript:show('[password]')" >[password]</a><br/>-->
                                    ȡ�û���ǰ��:<a href="javascript:show('[money]')" >[money]</a><br/>
                                    ȡ�û���ǰRMB:<a href="javascript:show('[rmb]')" >[rmb]</a><br/>
                                    ȡ�û���ǰ���:<a href="javascript:show('[myvip]')" >[myvip]</a><br/>
                                     ȡ�û���ǰ����:<a href="javascript:show('[myaction]')" >[myaction]</a><br/>
                                    �ֻ��ͺ�:<a href="javascript:show('[ua]')" >[ua]</a><br/>
                                    �ֻ�Ʒ��+�ͺ�:<a href="javascript:show('[ua1]')" >[ua1]</a><br/>
                                    (�ն˲�֧��Cookiesʱ��Ч)<br/>
                                    
                                    </font>��:URL.aspx?siteid=[siteid]<br/>
                                    &amp;classid=[classid]<br/>
                                    <font color="#FF0000"><br/>
                                    </font>����ΪHTTP�ӿڣ����ο���ͨ�����Ͻӿڿ��Կ���������ǿ��ģ�顣<strong><font color="#FF0000"><br/>
                                    </font></strong>
                                    
                                   <br /><hr /> <font color="#FF0000">---------<b>��ǰ���ʻ�Ա��Ϣ</b>--------<br/></font>
                                    ��ʽ:<a href="javascript:show('[ui]x[/ui]')" >[ui]x[/ui]</a> 
                                    XΪ���֣���ʾ����:<br />
                                    0:��ԱID��1:�ǳƣ�2:�Ա�3:���䣻4:���أ�5:������6:���ã�7:QQ�ţ�8:���9:ְҵ��
                                    10:���У�11:�ֻ����룻12:���䣻13:��վ���ң�14:ѫ�£�15:ע��ʱ�䣻16:��¼IP��ַ��
                                    17:����¼ʱ�䣻18:ͷ��19:ǩ����20:���飻21:RMB�ʻ���22:�������д�
                                    23:�ȼ���24:ͷ�Σ�25:�Ƿ����ߣ�26:��̳��������27:��̳��������28:�Ƽ�������29:����ʱ��ͼ��;30:���˿ռ��������
                                    
                                    <!--
                                    <hr /><font color="#FF0000">
                                    ------<b>����</b>------</font><br/>
                                   ��UC���������ʱ��ʾ��<a href="javascript:show('[uc]UC�������[/uc]');" >[uc]UC�������[/uc]</a><br />
                                   ��QQ���������ʱ��ʾ��<a href="javascript:show('[qq]QQ�������[/qq]');" >[qq]QQ�������[/qq]</a>
                                    -->
                                    <hr />
�翪ͨα��̬��ַ�����£�<br />
ͨ����Ŀ��ַ��[url=/wapindex-��վID-��ĿID.html]��Ŀ����[/url]<br />
������Ŀ��ַ��[url=/ģ������list-��ĿID-ҳ��.html]��Ŀ����[/url]<br />
�鿴���ݵ�ַ��[url=/ģ������-����ID.html]����[/url]<br />
.html����ɴ�������
                                    <P><hr />
                                    <b>��վ���ɣ�</b>1.�������е���Ŀ���½ṹ��2.�õ���IE��Opera8.0(<a href="http://www.kelink.com/download/opera8.rar">�������</a>)���з��ʲ鿴��3.�Ű�ʱ��[url=��IE��opera��ַ����copy��ַ]XXX[/url]�����롣
     ע���ַ������&sid=XXX��Ҫ��ɷ����ţ�û�е���Ҫ���Ϸ����ߡ�
    <br/><b>��վ�ھ���</b>���˵�ַ��������壬��������[��][��][��]!
<font color=red><br/><b>��վҪ�죺</b>һ���õ���վ����һ���ˡ��������йǼܣ����Խ���վ��Ҫ������Ŀ�ṹ��������м��⣬������վ��Ҫ[��][��][��]¼�����ݽ����Ű棬�ﵽ����Ч��������˻�Ҫ���·���������վ��Ҫ����CSS��ʽ���Ű����ݰ��������õ�[div=xx]xx[/div]�� ����Ƥ���Ǿ���WAP1.0�ˣ���CSS��ʽ����WAP2.0�ˡ�</font>
                                    <br /><font color=red><b>�ر����ѣ�</b>[div=xx]����1[/div][div=xx]����2[/div]���Ŷ���div��WAP2.0��1.0��һ�����Զ����У���[/div][div=���м䲻���ټӻ��С����ֻ��2.0�л��У�1.0�в����У��м�Ӹ��ո񼴡�[/div]�ո�[div=��</font></P>
                                    <br/><br/><a name="wap2"></a>
                                    <br/>
                                    </p>
                                  </TD>
                                </TR>
</table>

</body>

</html>