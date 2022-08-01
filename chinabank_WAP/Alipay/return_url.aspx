<%@ Page Language="C#" AutoEventWireup="true" CodeFile="return_url.aspx.cs" Inherits="return_url" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>支付宝即时到帐付款——支付完成跳转返回页面文件（页面跳转同步通知页面）</title>
    <style type="text/css">
.font_content{
    font-family:"宋体";
    font-size:14px;
    color:#FF6600;
}
.font_title{
    font-family:"宋体";
    font-size:16px;
    color:#FF0000;
    font-weight:bold;
}
table{
    border: 1px solid #CCCCCC;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center" width="350" cellpadding="5" cellspacing="0">
            <tr>
                <td align="center" class="font_title" colspan="2">
                    通知返回</td>
            </tr>
            <tr>
                <td class="font_content" align="right">
                    支付宝交易号：</td>
                <td class="font_content" align="left">
                 <input type="text" name="lbTrade_no" value="<%= trade_no%>" />
               </td>
            </tr>
            <tr>
                <td class="font_content" align="right">
                    订单号：</td>
                <td class="font_content" align="left">
                <input type="text" name="lbOut_trade_no" value="<%= out_trade_n%>" />
                    </td>
            </tr>
            <tr>
                <td class="font_content" align="right">
                    付款总金额：</td>
                <td class="font_content" align="left">
                <input type="text" name="lbTotal_fee" value="<%= total_fee%>" />
                   </td>
            </tr>
            <tr>
                <td class="font_content" align="right">
                    商品标题：</td>
                <td class="font_content" align="left">
                <input type="text" name="lbSubject" value="<%= subject%>" />
                    </td>
            </tr>
            <tr>
                <td class="font_content" align="right">
                    商品描述：</td>
                <td class="font_content" align="left">
                <input type="text" name="lbBody" value="<%= body%>" />
                    </td>
            </tr>
            <tr>
                <td class="font_content" align="right">
                    买家账号：</td>
                <td class="font_content" align="left">
                <input type="text" name="lbBuyer_email" value="<%= email%>" />
                   </td>
            </tr>
            <tr>
                <td class="font_content" align="right">
                    交易状态：</td>
                <td class="font_content" align="left">
                <input type="text" name="lbTrade_status" value="<%= status%>" />
                   </td>
            </tr>
            <tr>
                <td class="font_content" align="right">
                    验证状态：</td>
                <td class="font_content" align="left">
                <input type="text" name="lbVerify" value="<%= lbVerify%>" />
                   </td>
            </tr>
        </table>
    </form>
</body>
</html>