<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SelfPay_WAP.aspx.cs" Inherits="KeLin.WebSite.chinabank_WAP.SelfPay_WAP" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("手工转帐汇款支付|手工转帐汇款支付|select bank"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);

    if (this.isclose == "0")
    {
        strhtml.Append("此支付接口关闭中，如果有需要请联系站长开通！");

    }
    else
    {



        strhtml.Append("<br/>");
        strhtml.Append(WapTool.ToWML(this.remark, wmlVo));

    }
    strhtml.Append("<br/><a href=\"" + this.http_start + "chinabank_wap/selbank_wap.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   
    
    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("手工转帐汇款支付|手工转帐汇款支付|select bank") + "</div>");
    strhtml.Append(this.ERROR);
    strhtml.Append("<div class=\"content\">");
    if (this.isclose == "0")
    {
        strhtml.Append("此支付接口关闭中，如果有需要请联系站长开通！");

    }
    else
    {


        strhtml.Append(WapTool.ToWML(this.remark, wmlVo));
    }
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


