<%@ Page Language="C#" AutoEventWireup="true" ValidateRequest="false" Codebehind="systemdetails.aspx.cs"
    Inherits="KeLin.WebSite.video.systemdetails" %>

<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>视频内容</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">


    <script language="javascript" type="text/javascript">
// <!CDATA[

function bt_return_onclick() 
{
    history.go(-1)
}

// ]]>
    </script>

    <script type="text/javascript" language="javascript">
    function addFile() {
      var div = document.createElement("div");
      var f = document.createElement("input");
      f.setAttribute("type", "file")
      f.setAttribute("name", "File")
      f.setAttribute("size", "50")
      div.appendChild(f)
      var d = document.createElement("input");
      d.setAttribute("type", "button")
      d.setAttribute("onclick", "deteFile()"); //deteFile(this)
      d.setAttribute("value", "移除")
      div.appendChild(d)
      document.getElementById("_container").appendChild(div);
    }

    function deteFile() {
      alert("OK");
      var o = event.srcElement;
      //while (o.tagName != "DIV")o = o.parentNode;
      while (o.tagName != "DIV") o = o.parentElement;
      //o.parentNode.removeChild(o);
      o.parentElement.removeChild(o);
    }
    function delFile()
    {
        div.parentNode.removeChild(div)
    }
    
    //----------------------------如下使用-------------------------
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
      dv.appendChild(file);   
      /*
      //dv.appendChild(document.createElement("BR"));  
      //dv.appendChild(document.createTextNode("附件文件描述："));
      
      var txt = document.createElement("input");
      txt.type = "text";
      txt.id = txt.name = "txt"+i;
      txt.size="35";
      dv.appendChild(txt);
      **/
      var btn = document.createElement("input");   
      btn.type = "button";   
      btn.id = btn.name = "btn"+i;     
      btn.value = "删除视频"; 
      
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
                                <td width="12">
                                    <img src="/NetImages/main_title_01.gif" width="12" height="24"></td>
                                <td width="100%" background="/NetImages/main_title_02.gif">
                                    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="2%">
                                                <div align="center">
                                                    <img src="/NetImages/i08.gif" width="16" height="16"></div>
                                            </td>
                                            <td width="98%" height="24" valign="middle">
                                                系统资源>>视频内容>>编辑视频内容
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="13">
                                    <img src="/NetImages/main_title_03.gif" width="13" height="24"></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td valign="top" align="left">
                        <div class="txt4">
                            <table class="TABLE6" cellspacing="1" cellpadding="3" width="100%">
                                <tbody>
                                    <tr>
                                        <td class="column" colspan="2">
                                            <font face="宋体">编辑视频内容 </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">标题： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="tb_title" runat="server" Width="369px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">视频文件： </font>
                                        </td>
                                        <td class="fh3">
                                            <div id="dvFiles">
                                            </div>
                                            <div id="_container">
                                            </div>
                                            <input type="button" value="增加视频" onclick="addDiv()" />
                                            <font color="red"><b>(注意：可批量上传,但同时上传多个文件比较占用资源及带宽)</b></font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">导演： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="tb_book_director" runat="server" Width="146px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">主演： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="tb_author" runat="server" Width="146px"></asp:TextBox>
                                        </td>
                                    </tr>
                                      <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">地区： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="tb_book_city" runat="server" Width="146px"></asp:TextBox>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">年份： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="tb_book_year" runat="server" Width="146px"></asp:TextBox>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">语言： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="tb_book_lang" runat="server" Width="146px"></asp:TextBox>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">评分： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="tb_book_score" runat="server" Width="146px"></asp:TextBox>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">标签： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="tb_book_lable" runat="server" Width="146px"></asp:TextBox> (多个用空格区分)
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">扩展名： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="tb_ext" runat="server" Width="85px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">文件大小： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="tb_size" runat="server" Width="85px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">资源分类：</font>
                                        </td>
                                        <td class="fh3">
                                            <font face="宋体">
                                                <asp:DropDownList ID="ddl_type" runat="server">
                                                </asp:DropDownList></font></td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">详情简介： </font>
                                        </td>
                                        <td class="fh3">
                                            <asp:TextBox ID="FreeTextBox1" runat="server" Height="274px" TextMode="MultiLine" Width="614px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 16%">
                                            <font face="宋体">&nbsp;&nbsp;</font>
                                        </td>
                                        <td class="fh3">
                                            <font face="宋体">
                                                <asp:DataList ID="DataList1" runat="server" Height="100%" Width="100%" DataKeyField="url"                                                    
                                                    OnDeleteCommand="DataList1_DeleteCommand" 
                                                OnItemCommand="DataList1_ItemCommand" BorderWidth="0" 
                                                onselectedindexchanged="DataList1_SelectedIndexChanged">
                                                    <HeaderTemplate>
                                                        <table id="tblManageRanks"  cellspacing="1" cellpadding="3" border="0"
                                                            width="100%">
                                                            <tr>
                                                                <td colspan="2" class="fh" >
                                                                    </td>                                                                                                                                                                                                
                                                            </tr>
                                                    </HeaderTemplate>
                                                    
                                                    <ItemTemplate>
                                                        <tr>
                                                            <td class="f">
                                                            <a href="<%# DataBinder.Eval(Container.DataItem, "url") %>" target=_blank><%# DataBinder.Eval(Container.DataItem, "url") %></a>                                                             
                                                            </td>                                                            
                                                            <td class="f">                                                                
                                                                <asp:Button ID="bt_Del" CommandName="Delete" runat="server" Width="60" Text='删除' CssClass="bt" OnClientClick="return confirm('确认要删除操作吗？')"></asp:Button>
                                                            </td>
                                                        </tr>
                                                    </ItemTemplate>
                                                    <AlternatingItemTemplate>
                                                        <tr>
                                                            <td class="fh">
                                                               <a href="<%# DataBinder.Eval(Container.DataItem, "url") %>" target=_blank><%# DataBinder.Eval(Container.DataItem, "url") %></a>                                                                  
                                                            </td>                                                            
                                                            <td class="fh">                                                                
                                                                <asp:Button ID="bt_Del" CommandName="Delete" runat="server" Width="60" Text='删除' CssClass="bt" OnClientClick="return confirm('确认要删除操作吗？')"></asp:Button>
                                                            </td>
                                                        </tr>
                                                    </AlternatingItemTemplate>                                                    
                                                </asp:DataList>
                                            </font>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="fh3" colspan="2" align="center">
                                            
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="height: 15px" align="center" colspan="2">
                        <br />
                                            <asp:Button ID="bt_ok" runat="server" Text="保 存" OnClick="bt_ok_Click" Width="70px" CssClass="bt">
                                            </asp:Button>
                                            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="bt_return" runat="server" Text="返 回" Width="70px" OnClick="bt_return_Click" CssClass="bt">
                                            </asp:Button>
                                            <br />
                                            <br />
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        页面执行时间：<%=loadpagetime %>&nbsp;毫秒！
                    </td>
                </tr>
            </tbody>
        </table>
        <input type="hidden" name="bookfile" value="<%=bookfile %>" />
    </form>
</body>
</html>
