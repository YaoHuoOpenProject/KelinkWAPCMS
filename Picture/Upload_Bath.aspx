<%@ Page Language="C#" AutoEventWireup="true" Codebehind="upload_bath.aspx.cs" Inherits="KeLin.WebSite.picture.upload_bath" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>批量上传</title>
    <link href="../css/bbs_default.css" type="text/css" rel="stylesheet" />

    <script language="javascript" type="text/javascript">
// <!CDATA[

function bt_return_onclick() 
{
    history.go(-1)
}
var i=1;   
function addDiv()
{
    var dv_container = document.getElementById("_container");
    
    var dv = document.createElement("div");
    dv.id = "dv"+i;
    var file = document.createElement("input");   
      file.type  = "file";   
      file.id = file.name = "file"+i;   
      file.size = "50";
      file.onpropertychange="Preview(this)";
      dv.appendChild(file);   
             
      
      var btn = document.createElement("input");   
      btn.type = "button";   
      btn.id = btn.name = "btn"+i;     
      btn.value = "删除文件"; 
      
      btn.onclick=function()   {     
  var b=document.getElementById(btn.id);   
  dv_container.removeChild(b.parentNode);
  }       
      dv.appendChild(btn);         
      dv.appendChild(document.createElement("BR"));      
      dv.appendChild(document.createElement("BR")); 
      i++;
  document.getElementById("_container").appendChild(dv);
}  

function Preview(File)
{

var picName=File.value;
var array=new Array();
array=picName.split(".");
var extendName=array[1];
extendName=extendName.toLowerCase();
if(extendName!="txt")
{
var errMessage="对不起！你选择的文件类型有误！请重新选择！";
window.alert(errMessage);
return;
}
}
// ]]>
    </script>

</head>
<body onload="addDiv()">
    <form id="form1" runat="server" enctype="multipart/form-data">
        <table cellspacing="0" cellpadding="0" width="100%" border="0">
            <tbody>
                <tr>
                    <td colspan="4">
                        <table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="1%">
                                    <img src="../Images/main_title_01.gif" width="12" height="24"></td>
                                <td width="98%" background="../Images/main_title_02.gif">
                                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="2%">
                                                <div align="center">
                                                    <img src="../Images/i08.gif" width="16" height="16"></div>
                                            </td>
                                            <td width="98%" height="24" valign="middle">
                                                网站管理 &gt;&gt; 内容管理 &gt;&gt;图片内容 &gt;&gt;批量上传
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="1%">
                                    <img src="../Images/main_title_03.gif" width="13" height="24"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td valign="top" align="left">
                        <table class="TABLE6" cellspacing="1" cellpadding="3" width="100%">
                            <tbody>
                                <tr>
                                    <td class="column" colspan="2">
                                        <font face="宋体">上传文件</font></td>
                                </tr>
                                <tr>
                                    <td class="f3" colspan="2">
                                        <font face="宋体"><span style="color: #ff0000">*允许上传这几种文件类型：zip|doc|rar|jpg|gif|xls|txt|exe|png|bmp|mid|3gp|amr|wma|mmf|wav|mp3|jar|jad
                                            <br />
                                        </span>*如果要上传其它类型文件,请在【网站管理】 -&gt; 【基本信息设置】中设置上传文件类型。
                                            <br />
                                            *注意：文件格式为“文件名_作者.文件扩展名”,如“中国人_刘德华.mp3”，上传后“中国人”即为标题，“刘德华”为作者。 当然，“_作者”可选，如“中国人.mp3”，上传后“中国人”即为标题，作者为空。
                                            &nbsp;</font>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 14%">
                                        是否加入系统资源：
                                    </td>
                                    <td class="fh3">
                                        &nbsp;<asp:CheckBox ID="CheckBox1" runat="server" />(我为人人,人人为我)</td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 14%">
                                        图片统一缩放：
                                    </td>
                                    <td class="fh3">
                                        &nbsp;长：<asp:TextBox ID="tb_length" runat="server" Width="45px"></asp:TextBox>
                                        px &nbsp;宽：<asp:TextBox ID="tb_width" runat="server" Width="45px"></asp:TextBox>px
                                        (最大为500*500，不处理请留空)</td>
                                </tr>
                                <tr>
                                    <td width="16%" class="f" style="width: 16%">
                                        <font face="宋体">需要金币： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_money" runat="server" Width="82px"></asp:TextBox>( 0 表示不需要)
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f3" colspan="2">
                                        <div id="_container">
                                        </div>
                                        <br />
                                        &nbsp;<input type="button" value="增加文件" onclick="addDiv()" />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <table width="100%">
                            <tr>
                                <td style="height: 35px" align="center">
                                    <span class="txt4">
                                        <br />
                                        <asp:Button ID="bt_ok" runat="server" Text=" 保  存 " OnClick="bt_ok_Click" Width="100px">
                                        </asp:Button>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                        <input id="Button2" type="button" value="  返 回   " onclick="javaScript:window.opener=null;window.close();" /><br />
                                    </span>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                </td>
                            </tr>
                            <tr>
                                <td align="center">
                                    页面执行时间：<%=loadpagetime %>&nbsp;&nbsp;毫秒！
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
