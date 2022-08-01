<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="alipay_WAP.aspx.cs" Inherits="KeLin.WebSite.chinabank_WAP.alipay_WAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
if(this.INFO =="OK"){
    wmlVo.timer = "1";
    wmlVo.strUrl = this.toURL;   

}
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("WAP支付宝余额支付|WAP支付宝余额支付|select bank"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);

    strhtml.Append("<a href=\"" + this.http_start + "chinabank_wap/alipay_wap.aspx?siteid=" + this.siteid + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-" + this.width + "\">" + this.GetLang("进入WAP2.0支付界面|进入WAP2.0界面支付界面|wap2.0 add upfile") + "</a><br/>");

    strhtml.Append("<br/><a href=\"" + this.http_start + "chinabank_wap/selbank_wap.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   
    
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("WAP支付宝余额支付|WAP支付宝余额支付|select bank") + "</div>");
    
    strhtml.Append("<div class=\"content\">");
    if (this.isclose == "0")
    {
        strhtml.Append("此支付接口关闭中，如果有需要请联系站长开通！");

    }else if (action == "")
    {
        strhtml.Append("我当前的RMB:￥" + userVo.RMB.ToString("f2"));
        strhtml.Append("<br/><form name=\"f\" action=\"" + this.http_start + "chinabank_wap/alipay_wap.aspx\" method=\"get\">");
        strhtml.Append(this.GetLang("输入充值金额|输入充值金额|money") + "*:<br/>");
        strhtml.Append("<input type=\"text\" class=\"txt\" name=\"total_fee\" value=\"\" /><br/>");

   
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"go\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("<input type=\"hidden\" name=\"r\" value=\"" + r + "\"/>");
        strhtml.Append("<input type=\"submit\" name=\"g\" class=\"btn\" value=\"" + this.GetLang("下一步|下一步|Next") + "\"/><br/>");
        strhtml.Append("注意:支付成功后点击“<b>返回商户</b>”即可回到本站。<br/>");
        strhtml.Append("</form>");
    }
    else if (action == "go")
    {
        if (this.ERROR != "")
        {
            strhtml.Append("错误信息:<br/>" +token + this.ERROR + "<br/><br/>");
        }
        if (this.INFO == "OK")
        {
            strhtml.Append("正在进入支付宝支付界面，请稍后...<br/>如不能自动跳转请<a href=\"" + this.toURL  + "\">点击此进入</a>。<br/><br/>");
        }
        //strhtml.Append("总价￥" + total_fee+"<br/>");
        //strhtml.Append(sHtmlText);
        strhtml.Append("<br/>");
        strhtml.Append("<a href=\"" + this.http_start + "chinabank_wap/alipay_wap.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回|返回|Back ") + "</a>");
        


    }
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append(WapTool.ToWML(this.remark, wmlVo));
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "chinabank_wap/selbank_wap.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a>");
 
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


