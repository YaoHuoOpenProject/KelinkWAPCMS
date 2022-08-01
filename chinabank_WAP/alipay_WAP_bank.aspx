<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alipay_WAP_bank.aspx.cs" Inherits="KeLin.WebSite.chinabank_WAP.alipay_WAP_bank" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("WAP手机银行|WAP手机银行|select bank"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");
    Response.Write(this.ERROR);

    Response.Write("<a href=\"" + this.http_start + "chinabank_wap/alipay_wap_bank.aspx?siteid=" + this.siteid + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0支付界面|进入WAP2.0界面支付界面|wap2.0 add upfile") + "</a><br/>");

    Response.Write("<br/><a href=\"" + this.http_start + "chinabank_wap/selbank_wap.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + this.GetLang("WAP手机银行|WAP手机银行|select bank") + "</div>");
    //Response.Write(this.ERROR);
    Response.Write("<div class=\"content\">");
    if (this.isclose == "0")
    {
        Response.Write("此支付接口关闭中，如果有需要请联系站长开通！");

    }else if (action == "")
    {
        Response.Write("我当前的RMB:￥" + userVo.RMB.ToString("f2"));
        Response.Write("<br/><form name=\"f\" aciont=\"" + this.http_start + "chinabank_wap/alipay_wap.aspx\" method=\"get\">");
        Response.Write(this.GetLang("输入充值金额|输入充值金额|money") + "*:<br/>");
        Response.Write("<input type=\"text\"  name=\"total_fee\" value=\"\" /><br/>");
        Response.Write("<select name=\"bank_type\">");
        Response.Write("<option value=\"icbc1301\">工行</option>");
        Response.Write("<option value=\"ccb1301\">建行</option>");
        Response.Write("<option value=\"cmb1301\">招行</option>");
        Response.Write("</select><br/>");
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"go\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"r\" value=\"" + r + "\"/>");
        Response.Write("<input type=\"submit\" name=\"g\" value=\"" + this.GetLang("下一步|下一步|Next") + "\"/><br/>");
        Response.Write("</form>");
    }
    else if (action == "go")
    {
        if (bank_type.ToLower() == "icbc1301")
        {
            Response.Write(icbcForm);
        }
        Response.Write("<br/>" + ERROR + "<br/><br/>");

        Response.Write("<a href=\"" + this.http_start + "chinabank_wap/alipay_wap_bank.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回|返回|Back ") + "</a>");
        


    }
    Response.Write("</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(WapTool.ToWML(this.remark, wmlVo));
    Response.Write("</div>");
    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "chinabank_wap/selbank_wap.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a>");

    Response.Write("</div></div>");



}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


