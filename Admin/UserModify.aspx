<%@ Page Language="C#" AutoEventWireup="true" Codebehind="UserModify.aspx.cs" Inherits="KeLin.WebSite.admin.UserModify" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>修改用户信息</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="/NetCSS/My97DatePicker/WdatePicker.js"></script>

    <script language="javascript" type="text/javascript">
// <!CDATA[
function CheckSave() {
             if (document.getElementById("tb_nickname").value == "") {
                alert("请输入昵称！");
                document.getElementById("tb_nickname").focus();
                return false;
            }
            if (document.getElementById("tb_password").value !="")
            {
                if (document.getElementById("tb_password").value != document.getElementById("tb_repw").value) 
                    {
                        alert("两次密码不一致！");
                        document.getElementById("tb_repw").focus();
                        return false;
                     }
            }
            if (document.getElementById("tb_mybankmoney").value != "") {
                if (checkNum(document.getElementById("tb_mybankmoney").value) == false) 
                {                
                alert("请在此输入数值！");
                document.getElementById("tb_mybankmoney").focus();
                return false;
                }                   
            }            
            if (checkNum(document.getElementById("tb_money").value) == false) {                
                alert("请在此输入数值！");
                document.getElementById("tb_money").focus();
                return false;
            }
            if (checkNum(document.getElementById("tb_age").value) == false) {                
                alert("请在此输入数值！");
                document.getElementById("tb_age").focus();
                return false;
            }
            if (checkNum(document.getElementById("tb_logintimes").value) == false) {                
                alert("请在此输入数值！");
                document.getElementById("tb_logintimes").focus();
                return false;
            }
            if (checkNum(document.getElementById("tb_shenggao").value) == false) {                
                alert("请在此输入数值！");
                document.getElementById("tb_shenggao").focus();
                return false;
            }
            if (checkNum(document.getElementById("tb_tizhong").value) == false) {                
                alert("请在此输入数值！");
                document.getElementById("tb_tizhong").focus();
                return false;
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
    function checkNum(content) {
    if(content != "") {       
      content = "1" + content ;   //可以用"1"-"9"任何一个
      if(parseInt(content) == content) 
        {       
            return true ;
        }    
      return false ;
    }    
   } 
function DoSmall() {
    //window.location.href = "../admin/systemclass.aspx?systype=card";
    window.open("/bbs/smalltypelist.aspx?siteid=<%=base.SiteId %>&systype=card&sid=<%=base.SID %>");
        }   
function bt_return_onclick() 
{
    history.go(-1)
}

// ]]>
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
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
                                            用户管理 &gt;&gt; 修改用户信息
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
                <td valign="top">
                    <table cellspacing="1" cellpadding="3" width="100%" border="0" class="TABLE6">
                        <tbody>
                            <tr>
                                <td valign="top" align="left">
                                    <div class="txt4">
                                        <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td class="column" colspan="2">
                                                        <font face="宋体">基本信息 </font>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">用户ID： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_userid" runat="server" Width="145px" ReadOnly="True"></asp:TextBox>
                                                       
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">用户名： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_username" runat="server" Width="145px" ReadOnly="True"></asp:TextBox>
                                                        <input type="button" onclick="javascript:window.open('/admin/modifyusername00.aspx?siteid=<%=base.SiteId %>&sid=<%=base.SID %>');" class="bt" value="修改我的用户名" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">昵称： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_nickname" runat="server" Width="145px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">重置密码：</font>
                                                    </td>
                                                    <td class="fh3">
                                                        <font face="宋体">
                                                            <asp:TextBox ID="tb_password" runat="server" Width="145px" TextMode="Password"></asp:TextBox>
                                                        </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">密码确认： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_repw" runat="server" Width="145px" TextMode="Password"></asp:TextBox>
                                                        &nbsp;&nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">权限级别： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:DropDownList ID="ddl_right" runat="server">
                                                            <asp:ListItem Value="00">00_超级管理员</asp:ListItem>
                                                            <asp:ListItem Value="01">01_站长</asp:ListItem>                                                            
                                                            <asp:ListItem Value="03">03_总编辑</asp:ListItem>
                                                            <asp:ListItem Value="04">04_总版主</asp:ListItem>
                                                            <asp:ListItem Value="02">02_普通</asp:ListItem>
                                                        </asp:DropDownList>
                                                        <br /><b>[00]超级管理员</b>：管理所有网站及所有数据。分正超级管理员(网站ID等于会员ID)和副超级管理员(网站ID不等于会员ID)，权限一样。
                                                        <br /><b>[01]站长</b>：管理自己网站内的所有数据，分正站长(网站ID等于会员ID)和副站长(网站ID不等于会员ID)，权限一样。
                                                        <br /><b>[03]总编辑</b>：管理自己网站内的所有栏目内容。不包排版，网站设置等，只管理栏目内容。
                                                        <br /><b>[04]总版主</b>：管理自己网站内的论坛栏目内容。
                                                        <br /><b>[02]普通</b>：某网站下的会员，可设为自定义访问角色或VIP等。
                                                        <br /><b>[**]栏目管理员(版主)</b>：只管理设定的栏目内容。此权限需要在修改栏目属性处添加。
                                                        <br /><b>提示:只有正的才能分配权限！副的能分配栏目管理员！</a>
                                                        </td>
                                                </tr>
                                                <tr >
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">会员身份： </font>
                                                    </td>
                                                    <td bgcolor="#C0C0C0">
                                                        <asp:DropDownList ID="ddl_subtype" runat="server">
                                                        </asp:DropDownList>
                                                        【<a style="cursor: hand" onclick="DoSmall()">会员身份管理</a>】
                                                        
                                                        <br />
                                          
                                                        <asp:TextBox ID="tb_showIDEndTime" runat="server" Width="200px" ReadOnly="True"></asp:TextBox> 
                                                        更改日期：<asp:TextBox ID="tb_changDate" runat="server" Columns="20"  
                                                            Width="105px"></asp:TextBox>
                                                        <img id="imgdate" style="cursor: hand;" src="/NetImages/choose.gif" onclick="WdatePicker({el:'tb_changDate'})"
                                                            title="选择日期" /> (不改留空，正站长永久无期限)
                                                        </td>
                                                </tr>
                                                  <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">RMB￥： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_rmb" runat="server" Width="70px" ReadOnly="True"></asp:TextBox> (返回上页有【增减|日志】按钮)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">虚拟币： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_money" runat="server" Width="70px" ReadOnly="True"></asp:TextBox> (返回上页有【增减|日志】按钮)
                                                    </td>
                                                </tr>
                                                <tr>
                                                     <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">经验值： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_expr" runat="server" Width="70px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">银行存款： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_mybankmoney" runat="server" Width="70px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        勋章：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_moneyname" runat="server" Width="118px"></asp:TextBox>(1.gif|2.gif|....WAP上【我的地盘】-&gt;【奖罚勋章】中查看)</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        性别：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:DropDownList ID="ddl_sex" runat="server">
                                                            <asp:ListItem Value="1">男</asp:ListItem>
                                                            <asp:ListItem Value="0">女</asp:ListItem>
                                                        </asp:DropDownList></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        年龄：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_age" runat="server" Width="67px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        身高：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_shenggao" runat="server" Width="67px"></asp:TextBox>cm</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        体重：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_tizhong" runat="server" Width="67px"></asp:TextBox>Kg</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        星座：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_xingzuo" runat="server" Width="68px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        爱好：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_aihao" runat="server" Width="69px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        婚否：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:DropDownList ID="ddl_fenfuo" runat="server">
                                                            <asp:ListItem>已婚</asp:ListItem>
                                                            <asp:ListItem>未婚</asp:ListItem>
                                                            <asp:ListItem> </asp:ListItem>
                                                        </asp:DropDownList></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        城市：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_city" runat="server" Width="133px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        QQ：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_qq" runat="server" Width="133px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        个性签名：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_remark" runat="server" Width="364px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        手机型号：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_MailServerUserName" runat="server" Width="134px"></asp:TextBox> (不用填写WAP界面选择自动保存)</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td class="column" colspan="2">
                                                        <font face="宋体">移动名片 </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">公司全名： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_ltd" runat="server" Width="237px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">用户姓名： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_realname" runat="server" Width="133px"></asp:TextBox>
                                                        (输入真实姓名后方可在名片搜索中搜索)
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">职务/称谓：</font>
                                                    </td>
                                                    <td class="fh3">
                                                        <font face="宋体">
                                                            <asp:TextBox ID="tb_zhiye" runat="server" Width="134px"></asp:TextBox>&nbsp; </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">电话号码： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_tel" runat="server" Width="134px"></asp:TextBox>
                                                        &nbsp;&nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">手机号码： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_mobile" runat="server" Width="133px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">电子邮箱： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_email" runat="server" Width="190px"></asp:TextBox>&nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">网址： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_website" runat="server" Width="237px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        公司地址：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_address" runat="server" Width="309px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        邮政编码：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_postcode" runat="server" Width="73px"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        经营范围：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_sale" runat="server" Width="500px" Height="83px" TextMode="MultiLine"></asp:TextBox></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        身份证号码：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_id" runat="server" Width="190px"></asp:TextBox>（保密）
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        开户银行：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_bank" runat="server" Width="237px"></asp:TextBox>（保密）
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        银行帐号/卡号：
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_account" runat="server" Width="191px"></asp:TextBox>（保密）
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <table class="tableBorder" cellspacing="1" cellpadding="3" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td class="column" colspan="2">
                                                        <font face="宋体">其他信息 </font>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">注册时间： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="lb_regtime" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">最后登录时间： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="lb_lastlogintime" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">最后登录IP： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:Label ID="lb_loginIP" runat="server" Text="Label"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">积时（秒）： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:TextBox ID="tb_logintimes" runat="server" Width="83px"></asp:TextBox>
                                                        (秒)</td>
                                                </tr>
                                                <tr>
                                                    <td class="f" style="width: 16%">
                                                        <font face="宋体">用户状态： </font>
                                                    </td>
                                                    <td class="fh3">
                                                        <asp:DropDownList ID="ddl_LockUser" runat="server">
                                                            <asp:ListItem Value="0">正常</asp:ListItem>
                                                            <asp:ListItem Value="1">锁定</asp:ListItem>
                                                        </asp:DropDownList></td>
                                                </tr>
                                                <tr>
                                                    <td class="fh3" colspan="2" align="center">
                                                        <br />
                                                        &nbsp;<asp:Button ID="bt_ok" runat="server" Text="  保  存  " OnClick="bt_ok_Click"  CssClass="bt"></asp:Button>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <asp:Button ID="bt_return" runat="server" Text="  返  回  " OnClick="bt_return_Click" CssClass="bt"></asp:Button>
                                                        
                                                        <br />
                                                        <br />
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
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
        </table>
    </form>
</body>
</html>
