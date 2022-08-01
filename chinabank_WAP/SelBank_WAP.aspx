<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelBank_WAP.aspx.cs" Inherits="KeLin.WebSite.chinabank_WAP.SelBank_WAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("选择支付方式|論壇回複|select bank"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    strhtml.Append("我当前的RMB:￥" + userVo.RMB.ToString("f2") + "<br/>");
    strhtml.Append("<a href=\"" + this.http_start + "chinabank_wap/alipay_WAP_web.aspx?siteid=" + this.siteid + "\" target=\"_blank\">1." + this.GetLang("支付宝“电脑版”支付|支付宝“电脑版”支付|alipay web") + "</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "chinabank_wap/alipay_WAP.aspx?siteid=" + this.siteid + "\">2." + this.GetLang("WAP支付宝|WAP支付付宝|Back to list") + "</a><br/>");
    //strhtml.Append("<a href=\"" + this.http_start + "chinabank_wap/alipay_WAP_bank.aspx?siteid=" + this.siteid + "\">2." + this.GetLang("手机网银|手机网银|Back to list") + "</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "chinabank_wap/myinfo.asp?siteid=" + this.siteid + "&amp;sid="+this.sid+"\">3." + this.GetLang("易宝支付（各类卡充值）|易宝支付（各类卡充值）|Back to list") + "</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "chinabank_wap/Selfpay_WAP.aspx?siteid=" + this.siteid + "\">4." + this.GetLang("手工转帐汇款支付|手工转帐汇款支付|Back to list") + "</a><br/>");
    strhtml.Append("说明:直接将款充值到我的RMB帐户，如需要转成本站虚拟货币，请在上一级点击“购买" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, lang) + "”<br/>");
    strhtml.Append("<br/><a href=\"" + this.http_start + "myfile.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("选择支付方式|选择支付方式|select bank") + "</div>");
    strhtml.Append(this.ERROR);
    strhtml.Append("<div class=\"content\">");
    strhtml.Append("<div class=\"line\">我当前的RMB:￥" + userVo.RMB.ToString("f2") + "</div>");
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "chinabank_wap/alipay_WAP_web.aspx?siteid=" + this.siteid + "\" target=\"_blank\">1." + this.GetLang("支付宝“电脑版”支付|支付宝“电脑版”支付|alipay web") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "chinabank_wap/alipay_WAP.aspx?siteid=" + this.siteid + "\">2." + this.GetLang("支付宝“手机版”支付|支付宝“手机版”支付|alipay wap") + "</a> ");
    //strhtml.Append("<a href=\"" + this.http_start + "chinabank_wap/alipay_WAP_bank.aspx?siteid=" + this.siteid + "\">2." + this.GetLang("手机网银|手机网银|Back to list") + "</a><br/>");
    strhtml.Append("<a href=\"" + this.http_start + "chinabank_wap/myinfo.asp?siteid=" + this.siteid + "&amp;sid="+this.sid+"\">3." + this.GetLang("易宝支付（各类卡充值）|易宝支付（各类卡充值）|Back to list") + "</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "chinabank_wap/Selfpay_WAP.aspx?siteid=" + this.siteid + "\">4." + this.GetLang("手工转帐汇款支付|手工转帐汇款支付|Back to list") + "</a><br/>");
    strhtml.Append("</div>");
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"tip\">说明:直接将款充值到我的RMB帐户，如需要转成本站虚拟货币，请在上一级点击“购买" + WapTool.GetSiteMoneyName(siteVo.sitemoneyname, lang) + "”</div>");
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "myfile.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a>");
   
    strhtml.Append("</div>");

    if (isWebHtml != "")
    {
        //string strhtml_list = strhtml.ToString();
        //int s = strhtml_list.IndexOf("<div class=\"title\">");
        //strhtml_list = strhtml_list.Substring(s, strhtml_list.Length - s);

        Response.Clear();
        Response.Write(WapTool.ToWML(isWebHtml, wmlVo).Replace("[view]", strhtml.ToString()));
        Response.End();
    }
    Response.Write(strhtml);



}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


