<%@ Page Language="C#" AutoEventWireup="true" validateRequest="false" CodeBehind="add.aspx.cs" Inherits="KeLin.WebSite.WapStyle.add" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="../NetCSS/style.css" rel="stylesheet" type="text/css">
<link href="../NetCSS/day.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="../NetCSS/day.js" type="text/JavaScript"></script>
<script language="JavaScript" src="../NetCSS/table.js" type="text/JavaScript"></script>
<script language="JavaScript" type="text/JavaScript">
    function add() {
        if (messageForm.rank.value == "") {
            alert("����Ų���Ϊ�գ�");
            messageForm.rank.focus();
            return;
        } else if (messageForm.style_color.value == "") {
            alert("�����ɫ�Ų���Ϊ�գ�");
            messageForm.style_color.focus();
            return;
        } else if (messageForm.style_name.value == "") {
            alert("���Ʋ���Ϊ�գ�");
            messageForm.style_name.focus();
            return;
        } else if (messageForm.style.value == "") {
            alert("��ʽ����Ϊ�գ�");
            messageForm.style.focus();
            return;
        }

        showDoing();
        messageForm.submit();
      
    }

    function showDoing() {
        document.all("panel").style.visibility = "visible";
        document.all("panel").style.cursor = "wait";
    }
</script>
<title>������ʽ</title>
    <style type="text/css">
        .style1
        {
            FONT-SIZE: 12px;
            BORDER-LEFT: #d2d2d2 1px solid;
            COLOR: #333333;
            BORDER-BOTTOM: #d2d2d2 1px solid;
            FONT-FAMILY: "����";
            width: 88px;
        }
    </style>
    </head>
<body topmargin="0">	
<div id="panel" style="visibility:hidden;position:absolute;border:1px;left:150px;top:150px">
<table align='center' cellpadding="4" style="width:180px;height:100px;border:1px solid #345487;background-color:#F5F9FD;padding:6px; font-family:Arial, sans-serif, ??��?; font-size: 12px; color: #000;">
 <tr>
	<td width="100%" align="center" nowrap="nowrap">
	<img  src="../NetImages/hourglass.gif">���ڴ������������ĵȴ�......
	</td>
  </tr>
</table>
</div>

<table width="100%"  border="0" cellpadding="0" cellspacing="0">
  <tr>	
    <td valign="top">
      <table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
          <td colspan="4" ><table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="12"><img src="../NetImages/main_title_01.gif" width="12" height="24"></td>
              <td width="100%" background="../NetImages/main_title_02.gif"><table width="100%"  border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="2%"><img src="../NetImages/i08.gif" width="16" height="16"></td>
                  <td width="98%" height="24" valign="middle">ҳ���ۺ��Ű� &gt;&gt; CSS��ʽ���� &gt;&gt; ����CSS��ʽ</td>
                </tr>
              </table></td>
              <td width="13"><img src="../NetImages/main_title_03.gif" width="13" height="24"></td>
            </tr>
          </table></td>
        </tr>
        <tr>
          <td width="100%" colspan="4"><table width="100%"  border="0" cellpadding="0" cellspacing="0" class="TABLE6">
            <tr>
              <td height="24"><table width="100%"  border="0" background="../NetImages/dw.gif">
                    <tr>
                      <td> 
 
 
 
<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr> 
    <td width="100%" align="center" valign="top"> 
      <FORM name="messageForm" action="add.aspx" method="post">
      	<input type="hidden" name="action" value="add" />
                              <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" height="554">
                                <TR align=center class='title'> 
                                  <TD  height=20 colSpan=2 class="TD_title3"><b> &nbsp;
                                    </b></TD>
                                </TR>
                                <TR class="tdbg" > 
                                  <TD height="26" align="right" class="style1" width="186" ><b>����ţ�</b></TD>
                                  <TD class="TD3"> <div align="left">&nbsp;  
                                      <INPUT Class="input" name="rank" value="0" size=50>
                                    </div></TD>
                                </TR>
                                <TR class="tdbg" > 
                                  <TD height="32" align="right" class="style1" width="186"><strong>�����ɫ��</strong></TD>
                                  <TD class="TD3"><div align="left">&nbsp;#<INPUT Class="input" name="style_color" value="" size=50>
                                    </div>
                                  </TD>
                                </TR>
                                <TR class="tdbg" >
                                  <TD height="32" align="right" class="style1" width="186"><strong>���ƣ�</strong></TD>
                                  <TD class="TD3"><div align="left">&nbsp;  
                                      <INPUT Class="input" name="style_name" value="" size=50> (���������ʽ��HTML5Ч�������������ϼ���"[HTML5]"������ѡƤ��ʱ��ʾ)
                                    </div> 
                                  </TD>
                                </TR>
                                <TR class="tdbg" > 
                                  <TD height="32" align="right" class="style1" width="186">��</TD>
                                  <TD class="TD3"> <div align="left">&nbsp;  
                                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                    
                                    
                                    
                                    </div></TD>
                                </TR>
                                <TR class="tdbg" > 
                                  <TD height="29" width="186" align="right" class="style1"><strong>*CSS��ʽ��<br /><br />ϵͳ���� <br />+<br /> �Լ�����</strong></TD>
                                  <TD class="TD3" width="87%"> <div align="left">&nbsp;
								      <textarea name="style" rows="16" style="width:100%">
<style type="text/css">
body   {color: #000000; background-color: #054D05; margin: 0px; text-align: center;}
img    {border: none;}
a      {text-decoration: none;color: #007C01;}
a:hover {color: #DE0000;text-decoration: underline}
a:visited {color: #C300E0;text-decoration: underline}
input.ipma {background-color: #FFFFFF; color: #000000; width:335px;}
textarea.ipmb {background-color: #FFFFFF; color: #000000; width:335px; height:167px;}
form  {margin: 0px;display: inline;}
font.z {color: #FF0000;}
div   {width:[width]px;padding: 5px;border: none;background-color:#FFFFFF;color: #000000; margin: auto; text-align:left;word-break:break-all;word-wrap:break-word;}
div.line1{padding: 5px;border: none;background-color:#FFFFFF;color: #000000; margin: auto; text-align:left;}
div.line2{padding: 5px;border: none;background-color:#EAEAEA;color: #000000; margin: auto; text-align:left;}
div.title {padding: 5px;border: none;background-color:#D2691E;color: #FFFFFF; margin: auto; text-align:left;}
div.subtitle {padding: 5px;border: none;background-color:#FFC394;color: #FFFFFF; margin: auto; text-align:left;}
div.logo{padding: 5px;border: none;background-color:#FFFFFF;color: #FFFFFF; margin: auto; text-align:center;}
div.welcome{padding: 5px;border: none;background-color:#FF5081;color: #FFFFFF; margin: auto; text-align:left;}
div.tip{padding: 5px;border: none;background-color:#FF2801;color: #FFFFFF; margin: auto; text-align:left;}
div.content{padding: 5px;border: none;background-color:#FFFFFF;color: #000000; margin: auto; text-align:left;}
div.showpage{padding: 5px;border: none;background-color:#D0D0FF;color: #000000; margin: auto; text-align:left;}
div.mylink{padding: 5px;border: none;background-color:#C8FFBC;color: #000000; margin: auto; text-align:left;}
div.nexttitle{padding: 5px;border: none;background-color:#FAFFC0;color: #000000; margin: auto; text-align:left;}
div.sysad{padding: 5px;border: none;background-color:#FFE15C;color: #000000; margin: auto; text-align:left;}
.commentHolder{border-bottom:1px solid #aaa;}
.comment{padding:5px 8px;background:#f8fcff;border:1px solid #aaa;font-size:14px;border-bottom:none;}
.comment div{background:#ffe;padding:3px;border:1px solid #aaa;line-height:140%;margin-bottom:5px;}

</style>
</textarea>
 <br />
								      
								      <font color="red"><b>���������+�������ݣ�</b></font><br />
<hr />
һ��������¼���������û�йؼ��� .btBox ʱϵͳ�����һ���Զ�����������ݣ�
<p>
<font  COLOR="#0000ff">&lt;</font><font  COLOR="#a31515">link</font><font >
</font><font  COLOR="#ff0000">rel</font><font  COLOR="#0000ff">=&quot;stylesheet&quot;</font><font >
</font><font  COLOR="#ff0000">href</font><font  COLOR="#0000ff">=&quot;/Template/default/default.css&quot;</font><font >
</font><font  COLOR="#ff0000">type</font><font  COLOR="#0000ff">=&quot;text/css&quot;</font><font >
</font><font  COLOR="#0000ff">/&gt;</font></p>
���ļ���Ҫ�Ǵ�����ť�͵����˵�Ч������<a href="/Template/default/default.css">����������</a>���������ü��±��򿪸��ƴ��벢ճ��������¼������б༭CSS��ʽ��
								      
								      
								      <hr />
								      ����������¼�������û�йؼ��֣�author,keywords,description ʱϵͳ�Զ�����������ݡ������и��������ݷŵ���һ���У��������ݸĳ�����Ҫ��SEOЧ����

<p><font  COLOR="#0000ff">
&lt;</font><font SIZE="2" COLOR="#a31515">meta</font><font SIZE="2"> </font>
<font SIZE="2" COLOR="#ff0000">name</font><font SIZE="2" COLOR="#0000ff">=&quot;keywords&quot;</font><font SIZE="2">
</font><font SIZE="2" COLOR="#ff0000">content</font><font SIZE="2" COLOR="#0000ff">=&quot;[title] [classname]&quot;</font><font SIZE="2">
</font><font SIZE="2" COLOR="#0000ff">/&gt;<br>
&lt;</font><font SIZE="2" COLOR="#a31515">meta</font><font SIZE="2"> </font>
<font SIZE="2" COLOR="#ff0000">name</font><font SIZE="2" COLOR="#0000ff">=&quot;description&quot;</font><font SIZE="2">
</font><font SIZE="2" COLOR="#ff0000">content</font><font SIZE="2" COLOR="#0000ff">=&quot;[title] [sitename] [sitename] [domain] &quot;</font><font SIZE="2">
</font><font SIZE="2" COLOR="#0000ff">/&gt;</font><br />
<font  COLOR="#0000ff">&lt;</font><font SIZE="2" COLOR="#a31515">meta</font><font SIZE="2"> </font>
<font SIZE="2" COLOR="#ff0000">name</font><font SIZE="2" COLOR="#0000ff">=&quot;author&quot;</font><font SIZE="2">
</font><font SIZE="2" COLOR="#ff0000">content</font><font SIZE="2" COLOR="#0000ff">=&quot;[sitename] [domain]&quot;</font><font SIZE="2">
</font><font SIZE="2" COLOR="#0000ff">/&gt;<br></font>
<br />[title]�Ƕ�̬ȡ���⣻[classname]��Ŀ���ƣ�[sitename]��վ���ƣ�[domain]����;  

<br />���˴˴�SEO�⣬ҳ�������Ű�ʱ����Ŀ������ĳɶ̵�ַ����[url=/bbs/list.aspx?classid=��ĿID]��̳[/url]������ģ��һ�������һ������
</p>
								      <hr />
����������¼�������û�йؼ��֣�viewport ʱϵͳ�Զ�����������ݣ�����Խ�maximum-scale=1.0�ĳ�maximum-scale=2.0�����Ƶ������һ��֧��ҳ������<br />

<p><font  COLOR="#0000ff">&lt;</font><font SIZE="2" COLOR="#a31515">meta</font><font SIZE="2"> </font>
<font SIZE="2" COLOR="#ff0000">name</font><font SIZE="2" COLOR="#0000ff">=&quot;viewport&quot;</font><font SIZE="2">
</font><font SIZE="2" COLOR="#ff0000">content</font><font SIZE="2" COLOR="#0000ff">=&quot;width=device-width; 
initial-scale=1.0; minimum-scale=1.0; maximum-scale=1.0&quot;&gt;</font></p>

	<hr />							      
�ġ�����¼����еĲ��width������[width]���涯̬ȡ��ǰ���ÿ�����д����ȣ���320px
<br />
<hr />	
�塢����Ӧ�ã�
<p>*���ýű��ļ�.js�� 
<font  COLOR="#0000ff">&lt;</font><font  COLOR="#a31515">script</font><font >
</font><font  COLOR="#ff0000">type</font><font  COLOR="#0000ff">=&quot;text/javascript&quot;</font><font >
</font><font  COLOR="#ff0000">src</font><font  COLOR="#0000ff">=&quot;js�ļ���ַ&quot;&gt;&lt;/</font><font  COLOR="#a31515">script</font><font  COLOR="#0000ff">&gt;</p>
</font>
<p>*������ʽ�ļ�.css�� 
<font  COLOR="#0000ff">&lt;</font><font  COLOR="#a31515">link</font><font >
</font><font  COLOR="#ff0000">rel</font><font  COLOR="#0000ff">=&quot;stylesheet&quot;</font><font >
</font><font  COLOR="#ff0000">href</font><font  COLOR="#0000ff">=&quot;css�ļ���ַ&quot;</font><font >
</font><font  COLOR="#ff0000">type</font><font  COLOR="#0000ff">=&quot;text/css&quot;</font><font >
</font><font  COLOR="#0000ff">/&gt;</p>
</font>
*��ʾ��ַ��Сͼ�꣺
<font SIZE="2" COLOR="#0000ff">
&lt;</font><font SIZE="2" COLOR="#a31515">link</font><font SIZE="2"> </font>
<font SIZE="2" COLOR="#ff0000">rel</font><font SIZE="2" COLOR="#0000ff">=&quot;SHORTCUT 
ICON&quot;</font><font SIZE="2"> </font><font SIZE="2" COLOR="#ff0000">href</font><font SIZE="2" COLOR="#0000ff">=&quot;favicon.ico��ַ&quot;</font><font SIZE="2">
</font><font SIZE="2" COLOR="#0000ff">/&gt;</font>
<br />
<hr />����
<b>�ڡ�ҳ���ۺ��Ű桿��¼������UBB����CSS��ʽ��</b><br />


[div=logo]��ʾLOGOλ��[/div]<br />
[div=welcome]��ʾ��ӭλ��[/div]<br />
[div=tip]��ʾλ��[/div]<br />
[div=title]��ʾ����λ��[/div]<br />
[div=subtitle]��ʾ������λ��[/div]<br />
[div=content]��ʾ����λ��[/div]<br />
[div=topre]��ʾ���»ظ�λ��[/div]<br />
[div=showpage]��ʾ��ҳλ��[/div]<br />
[div=line1]��ʾ�ı���һ[/div]<br />
[div=line2]��ʾ�ı��ж�[/div]<br />
[div=mylink]��ʾ����λ��[/div]<br />
[div=nexttitle]��һ����һ��λ��[/div]<br />
[div=sysad]ȫ�ֶ�����ײ�[/div]<br /><br />
������ťЧ��һ����,��������[url=xx]xx[/url]������UBB����(UBB���Ӳ��ޣ��Զ�ʶ��)��<br />
ÿ��һ����ť��[div=bt1]���UBB����[/div]<br />
ÿ�ж�����ť��[div=bt2]���UBB����[/div]<br />
ÿ��������ť��[div=bt3]���UBB����[/div]<br />
ÿ���ĸ���ť��[div=bt4]���UBB����[/div]<br />
ÿ�������ť��[div=bt5]���UBB����[/div]<br />
Ϊ�˿��ư�ť֮��ļ�������DIVǶ��һ��<br />
����[div=btBox][div1=bt1]UBB����[/div1][/div]<br /><br />
DIVǶ��ִ��˳��,���Ƕ�������
[div=x] [div1=x] [div2=x] [div3=x]...[/div3] [/div2] [/div1] [/div]<br /><br /><br />
������ťЧ�������ã�[div=linkbtn]UBB���Ӳ��ޣ��Զ�ʶ��[/div]<br />
������ťЧ�������ã�[div=linetouch]UBB���Ӳ��ޣ��Զ�ʶ��[/div]<br />

<br />                                      
                                      </TD>
                                  
                                  
                                </TR>
                                <TR align="center" class="tdbg" > 
                                  <TD height="59" colspan="2" class="TD3">
                                      <input name="" type="button" value=" �� �� �� �� " onclick="add()" id="Button3" size="20" class="bt"/>
                                       &nbsp;<input name="" type="button" value=" �� �� " onclick="jacascript:window.location='Style_List.aspx';" id="Button1" class="bt"/></TD>
                                </TR>
                              	<tr>
                                  <TD height="34" colspan="2" class="TD3" height="1000" >
                                      <p align="center">
                                      
                                        <iframe name="edit" id="I1" frameborder="no" width="100%" height="1000"  src='CssEdit.aspx' ">

                                      </TD>
                                </tr>
                              </TABLE>
                </td>
            </tr>
          </table></td>
        </tr>
    </table></td>
  </tr>
  <tr>
    <td class="bg"></td>
  </tr>
</table>


</body>
</html>