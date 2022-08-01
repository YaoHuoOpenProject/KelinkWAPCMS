<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" ValidateRequest="false"
    Codebehind="addUser.aspx.cs" Inherits="KeLin.WebSite.article.addUser" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript">
    
 
     function UpLoad(ii) {
        

        window.open("/admin/Upload_Photo.aspx?PhotoUrlID="+ii+"&info=文章编辑页面&delpath=", "addpicwindow", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no");
    }

function daoru() { 
window.open ("../picture/systemindex.aspx?site=69&classid=00&seq=1", "daoruwindow", "height=520, width=790, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")
}
function daoruFile() {
    window.open("../admin/systemindexFiles.aspx?site=69&classid=00&seq=1", "daoruwindow", "height=520, width=790, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")
}
 
function addImgOrFile(a, b) {


    
    
    
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
                show('[url=' + a + ']点击下载[/url]');
                break;
        }
        
        
    } else if(b=="file") {
        show('[url=' + a + ']点击下载[/url]');
    } else if (b == "book_small") {
      
     form1.book_small.value= a;
    
    }else if(b=="book_file"){
    
       if(form1.book_file.value==""){
       
       form1.book_file.value=a;
       
       }else{
       
       form1.book_file.value=form1.book_file.value+ "|"+ a;
       }
    }
    
    
}
function wap2(){
	window.open("/admin/ubb3.aspx");
	
}
function openubb() {
    window.open("/admin/ubb2.aspx");
 
}
function addpic(){
    window.open("/admin/Upload_Photo.aspx?PhotoUrlID=img&info=WEB页面综合排版&delpath=11", "addclasswindow", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 
 
}
function addfile(){
    window.open("/admin/Upload_Photo.aspx?PhotoUrlID=file&info=WEB页面综合排版&delpath=11", "addclasswindow", "height=180, width=380, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no") 
 
}

function setpic(temp){
show(temp);
}

function show(ubb){

var textEl = form1.FreeTextBox1;
            var text = ubb;
            if (textEl.createTextRange && textEl.caretPos) {
                var caretPos = textEl.caretPos;
                caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ? text + ' ' : text;
            }
            else{
            
                textEl.value = textEl.value + text;
                
            }

}
function storeCaret() {
            var textEl = form1.FreeTextBox1;
            if (textEl.createTextRange)
                textEl.caretPos = document.selection.createRange().duplicate();
        }


</script>
    <title>文章内容</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
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
                                                网站管理>>文章模块内容>>文章内容
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
                                        <td class="column" colspan="4">
                                           &nbsp;
                                           <%

if (INFO == "UPOK"){
    Response.Write("<font color=red><b>修改成功！</b></font>");
}
else if (INFO == "ADDOK")
{
    Response.Write("<font color=red><b>新增成功！</b></font>");
    tb_title.Text = "";
    FreeTextBox1.Text = "";

}
else if (INFO == "REP")
{
    Response.Write("<font color=red><b>新增失败，标题已存在！</b></font>");
    //tb_title.Text = "";
   // FreeTextBox1.Text = "";
    
}
Response.Write(ERROR);
                                               
 %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">缩放图地址： </font>
                                        </td>
                                        <td colspan="3" class="fh3">
                                            <asp:TextBox ID="book_small" runat="server" Width="369px"></asp:TextBox>&nbsp;&nbsp; <input type="button" name="back" value=" 上传图片 "  class="bt" style="width:60px;" onclick="UpLoad('book_small');" />
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">展示图地址： </font>
                                        </td>
                                        <td colspan="3" class="fh3">
                                            <asp:TextBox ID="book_file" runat="server" Width="369px"></asp:TextBox>(多个用|区别) &nbsp;&nbsp; <input type="button" name="back" value=" 添加图片 "  class="bt" style="width:60px;" onclick="UpLoad('book_file');" />
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">展示图说明： </font>
                                        </td>
                                        <td colspan="3" class="fh3">
                                            <asp:TextBox ID="book_fileINFO" runat="server" Width="369px"></asp:TextBox>(对应上面,多个用|区别,展示图上传建议用【图文展示上传】)
                                        </td>
                                    </tr>
                                    
                                     <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">  </font>
                                        </td>
                                        <td colspan="3" class="fh3">
                                            &nbsp;
                                        </td>
                                    </tr>
                                    
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">*标题： </font>
                                        </td>
                                        <td colspan="3" class="fh3">
                                            <asp:TextBox ID="tb_title" runat="server" Width="369px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">作者： </font>
                                        </td>
                                        <td colspan="3" class="fh3">
                                            <asp:TextBox ID="tb_author" runat="server" Width="146px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">出处： </font>
                                        </td>
                                        <td colspan="3" class="fh3">
                                            <asp:TextBox ID="tb_source" runat="server" Width="370px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">文章分类：</font>
                                        </td>
                                        <td width="84%" class="fh3">
                                            <font face="宋体">
                                                <asp:DropDownList ID="ddl_type" runat="server">
                                                </asp:DropDownList></font></td>
                                       
                                        
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">是否加入系统资源： </font>
                                        </td>
                                        <td colspan="3" class="fh3">
                                            <asp:DropDownList ID="ddl_systype" runat="server">
                                            </asp:DropDownList>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="f" style="width: 15%">
                                            <font face="宋体">*内容： </font>
                                        </td>
                                        <td colspan="3" class="fh3">
                                        
                                        
                                         <INPUT type="hidden" name="content" id='edit' value="<%=Server.HtmlEncode(this.content)%>">
                <%=this.sb.ToString()%>
                                        
                                        <!--
                                            <asp:TextBox ID="FreeTextBox1" runat="server" Height="274px" 
                                                TextMode="MultiLine" Width="511px" onselect="storeCaret();" onclick="storeCaret();" onkeyup="storeCaret();" ></asp:TextBox>
                                                
                                                
                                                <br />
                                                <br />
                                                【<a href="javascript:daoru()" >导入图片</a>】【<a href="javascript:daoruFile()" >导入文件</a>】【<a href="javascript:addpic()">上传图片</a>】【<a href="javascript:addfile()">上传文件</a>】【<a href="javascript:wap2()">网站资源链接</a>】【<a href="javascript:openubb()">UBB大全</a>】 --><br/> 
<br />自定义分页: <a href="javascript:show('[next]')" >[next]</a>，技巧:内容后面放[next]强制不分页。支持[buyrmb=币数]内容[/buyrmb]
                                       
                                      
                                        </td>
                                    </tr>
                                    
                                    
                                    
                                    <tr>
                                        <td class="fh3" colspan="4" align="center">
                                            <br />
                                            <% if (bookid != "")
                                               {
                                                   bt_ok.Text = "修 改";
                                               }
                                               else
                                               {
                                                   bt_ok.Text = "新 增";

                                               } %>
                                            <asp:Button ID="bt_ok" runat="server" Text="保 存" OnClick="bt_ok_Click" OnClientClick="submits();" Width="70px" CssClass="bt">
                                            </asp:Button>
                                            &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                            <asp:Button ID="Button1" runat="server" Text=" 返 回 " OnClick="Button1_Click" CssClass="bt" Width="70px"/><br />
                                            <br />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td style="height: 15px" align="center">
                        <span class="txt4"></span>
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
