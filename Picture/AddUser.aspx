<%@ Page Language="C#" AutoEventWireup="true" Codebehind="addUser.aspx.cs" Inherits="KeLin.WebSite.picture.addUser" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>图片资源</title>
    <link href="../css/bbs_default.css" type="text/css" rel="stylesheet" />

    <script language="javascript" type="text/javascript">
// <!CDATA[
function CheckSave() {
            if (document.getElementById("tb_title").value == "") {
                alert("标题不能为空！");
                document.getElementById("tb_title").focus();
                return false;
            }
            else
            {
                if (document.getElementById("tb_title").length>120)
                {
                    alert("标题的字数不能大于120个汉字!");
		            return false;
                }
            }
            if (document.getElementById("tb_money").value == "") {
                alert("需要金币不能为空,0表示不需要！");
                document.getElementById("tb_money").focus();
                return false;
            }
            if (document.getElementById("tb_length").value != "")
            {
                if (checkTelNum(document.getElementById("tb_length").value) == false) {                
                    alert("请在此输入数值！");
                    document.getElementById("tb_length").focus();
                    return false;
                }
            } 
            if (document.getElementById("tb_width").value != "")
            {
                if (checkTelNum(document.getElementById("tb_width").value) == false) {                
                    alert("请在此输入数值！");
                    document.getElementById("tb_width").focus();
                    return false;
                }
            } 
                                 
            return true;
        }
//判断是否数值   
   function checkTelNum(content) {
    if(content == "") {       
       return false ;
    }
    content = "1" + content ;   //可以用"1"-"9"任何一个
    if(parseInt(content) == content) {       
       return true ;
    }    
    return false ;
    }   
    
function bt_return_onclick() 
{
    history.go(-1)
}
var i=1;   
function addFile()   
  {   
      var dv = document.getElementById("dvFiles");       
      var file = document.createElement("input");   
      file.type  = "file";   
      file.id = file.name = "file"+i;   
      file.size = "30";
      dv.appendChild(file);   
        
      var txt = document.createElement("input");
      txt.type = "text";
      txt.id = txt.name = "txt"+i;
      dv.appendChild(txt);
      
      var btn = document.createElement("input");   
      btn.type = "button";   
      btn.id = btn.name   =   "btn"   +   i;     
      btn.value = " 删 除 ";   
    
      btn.onclick=function()   {     
  var b=document.getElementById(btn.id);   
  dv.removeChild(b.nextSibling);   //remove   <BR>   
  dv.removeChild(b.previousSibling);   //file   
  dv.removeChild(b);   //btn   
      }       
      dv.appendChild(btn);         
      dv.appendChild(document.createElement("BR"));      
      i++;    
}
function addDiv()
{
    var dv_container = document.getElementById("_container");
    
    var dv = document.createElement("div");
    dv.id = "dv"+i;
    var file = document.createElement("input");   
      file.type  = "file";   
      file.id = file.name = "file"+i;   
      file.size = "50";
      dv.appendChild(file);   
      
      dv.appendChild(document.createElement("BR"));  
      dv.appendChild(document.createTextNode("附件文件描述："));
      
      var txt = document.createElement("input");
      txt.type = "text";
      txt.id = txt.name = "txt"+i;
      txt.size="35";
      dv.appendChild(txt);
      
      var btn = document.createElement("input");   
      btn.type = "button";   
      btn.id = btn.name = "btn"+i;     
      btn.value = "删除附件"; 
      
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
                                                网站管理 &gt;&gt; 内容管理 &gt;&gt;图片内容
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
                                    <td class="column" colspan="4">
                                        <font face="宋体">编辑内容 </font>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="16%" class="f" style="width: 16%">
                                        <font face="宋体">标题： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:TextBox ID="tb_title" runat="server" Width="369px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="16%" class="f" style="width: 16%">
                                        <font face="宋体">图片统一缩放： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        长：<asp:TextBox ID="tb_length" runat="server" Width="45px"></asp:TextBox>
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
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">资源分类：</font>
                                    </td>
                                    <td width="35%" class="fh3">
                                        <font face="宋体">
                                            <asp:DropDownList ID="ddl_type" runat="server">
                                            </asp:DropDownList></font></td>
                                    <td class="fh3" style="width: 20%">
                                        </td>
                                    <td width="32%" class="fh3">
                                        </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">分页：</font>
                                    </td>
                                    <td width="35%" class="fh3">
                                        <font face="宋体">
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem Value="0">不分页</asp:ListItem>
                                                <asp:ListItem Value="1">每隔1张分页</asp:ListItem>
                                                <asp:ListItem Selected="True" Value="2">每隔2张分页</asp:ListItem>
                                                <asp:ListItem Value="3">每隔3张分页</asp:ListItem>
                                                <asp:ListItem Value="4">每隔4张分页</asp:ListItem>
                                                <asp:ListItem Value="5">每隔5张分页</asp:ListItem>
                                                <asp:ListItem Value="6">每隔6张分页</asp:ListItem>
                                                <asp:ListItem Value="7">每隔7张分页</asp:ListItem>
                                                <asp:ListItem Value="8">每隔8张分页</asp:ListItem>
                                                <asp:ListItem Value="9">每隔9张分页</asp:ListItem>
                                            </asp:DropDownList></font></td>
                                    <td class="fh3" style="width: 20%">
                                        是否加入系统资源：</td>
                                    <td width="32%" class="fh3">
                                        <asp:DropDownList ID="ddl_systype" runat="server">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体"></font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">内容描述： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                       <asp:TextBox ID="FreeTextBox1" runat="server" Height="274px" TextMode="MultiLine" Width="614px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="f" style="width: 16%">
                                        <font face="宋体">附件列表： </font>
                                    </td>
                                    <td colspan="3" class="fh3">
                                        <asp:Repeater ID="attRepeater" runat="server">
                                            <ItemTemplate>
                                                <table width="100%" border="0">
                                                    <tr>
                                                        <td>
                                                            &nbsp;<a href="<%#DataBinder.Eval(Container.DataItem,"book_file") %>" target="_blank"
                                                                title="下载附件"><%#DataBinder.Eval(Container.DataItem, "book_name")%></a>
                                                        </td>
                                                        <td>
                                                            &nbsp;</td>
                                                    </tr>
                                                </table>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                        <div id="dvFiles">
                                        </div>
                                        <div id="_container">
                                        </div>
                                        <input type="button" value="增加附件" onclick="addDiv()" />
                                        <font color="red"><b>(注意：可批量上传,但同时上传多个文件比较占用资源及带宽)</b></font>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="fh3" colspan="4" align="center">
                                        <br />
                                        <asp:Button ID="bt_ok" runat="server" Text="保 存" Width="70px" OnClick="bt_ok_Click">
                                        </asp:Button>
                                        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server" Text=" 返 回 " OnClick="Button1_Click" /><br />
                                        <br />
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
</body>
</html>
