<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="toGroupBuy.aspx.cs" Inherits="KeLin.WebSite.bbs.toGroupBuy" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("购买身份级别|购买身份级别|购买身份级别"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("购买成功！|购买成功！|Successfully"));
        strhtml.Append("</b><br/>");

    }
    else if (this.INFO == "CLOSE")
    {
        strhtml.Append("<b>站长关闭购买此身份级别功能！请尝试购买其它身份级别！</b><br/>");

    }
    else if (this.INFO == "MASTERNO")
    {
        strhtml.Append("<b>您是正站长，不能在此购买，请用小号测试。正站长可在修改用户资料处直接设置，不管设置何身份，正站长的身份期限固定为无限期！</b><br/>");

    }
    else if (this.INFO == "NOTRIGHT")
    {
        strhtml.Append("<b>*一次只能购买大于[当前我的身份级别]一级的身份级别！请购买其它身份级别！</b><br/>");

    }
    else if (this.INFO == "PWERR")
    {
        strhtml.Append("<b>密码错误！</b><br/>");

    }
    else if (this.INFO == "NUM")
    {
        strhtml.Append("<b>金额需要数字！</b><br/>");

    }
    else if (this.INFO == "NOTUSER")
    {
        strhtml.Append("<b>用户不存！</b><br/>");

    }

    else if (this.INFO == "NOTMONEY")
    {
        strhtml.Append("<b>你的RMB只有" + userVo.RMB.ToString("f2") + "！</b><br/>");

    }
    
    else if (this.INFO == "WAITING")
    {
        strhtml.Append("<b>请再过" + this.KL_CheckIPTime + "秒后购买！</b><br/>");

    }

    if (this.INFO != "OK" && this.INFO != "CLOSE" && this.INFO != "NOTRIGHT" && this.INFO != "MASTERNO")
    {
        strhtml.Append("我当前RMB:<b>￥" + userVo.RMB.ToString("f2") + "</b>[<a href=\"" + this.http_start + "chinabank_wap/selbank_wap.aspx?siteid=" + this.siteid + "\">充值</a>]<br/>");
        strhtml.Append("我当前身份级别:<b>" + WapTool.GetMyID(userVo.idname, lang) + " " + WapTool.showIDEndTime(userVo.siteid, userVo.userid, userVo.endTime, this.lang) + "</b><br/>");
        strhtml.Append("你要购买的级别:<b>" + WapTool.showImg(idVo.subclassName) + "</b><br/>");
        strhtml.Append(this.GetLang("购买月数|购买月数|month Number") + " <input type=\"text\" name=\"num"+r+"\" value=\"" + this.num + "\" size=\"2\"/>个月");
        
        strhtml.Append("<anchor><go href=\"" + http_start + "bbs/togroupbuy.aspx\" method=\"get\" accept-charset=\"utf-8\">");
        
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + backurl + "\"/>");
        strhtml.Append("<postfield name=\"toid\" value=\"" + toid + "\"/>");
        strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\"/>");        
        strhtml.Append("<postfield name=\"num\" value=\"$(num" + r + ")\"/>");        
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>" + this.GetLang("确定|确定|submit") + "</anchor><br/>");
        
        strhtml.Append("需要RMB:<b>￥" + idVo.rank + ".00</b><br/>");
        strhtml.Append("我的密码：<br/>");
        strhtml.Append("<input type=\"text\" name=\"changePW" + r + "\" value=\"\"/><br/>");


        strhtml.Append("<anchor><go href=\"" + http_start + "bbs/togroupbuy.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield name=\"action\" value=\"add\"/>");
        strhtml.Append("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<postfield name=\"backurl\" value=\"" + backurl + "\"/>");
        strhtml.Append("<postfield name=\"toid\" value=\"" + toid + "\"/>");
        strhtml.Append("<postfield name=\"touserid\" value=\"$(touserid" + r + ")\"/>");
        strhtml.Append("<postfield name=\"tomoney\" value=\"$(tomoney" + r + ")\"/>");
        strhtml.Append("<postfield name=\"num\" value=\"$(num" + r + ")\"/>");
        strhtml.Append("<postfield name=\"changePW\" value=\"$(changePW" + r + ")\"/>");
        strhtml.Append("<postfield name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append("</go>" + this.GetLang("确定支付|确定支付|submit pay") + "</anchor><br/>注意:购买与当前身份级别不一样，有效期从购买日算起。<br/>");

        

    }

    strhtml.Append("<a href=\"" + this.http_start +  "bbs/togroupinfo.aspx?siteid="+this.siteid+"" + "\">返回上级</a> ");
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");
    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("购买身份级别|购买身份级别|购买身份级别") + "</div>");
    strhtml.Append("<div class=\"tip\">");
    strhtml.Append(this.ERROR);
    if (this.INFO == "OK")
    {
        strhtml.Append("<b>");
        strhtml.Append(this.GetLang("购买成功！|购买成功！|Successfully Update"));
        strhtml.Append("</b><br/>");

    }
    else if (this.INFO == "MASTERNO")
    {
        strhtml.Append("<b>您是正站长，不能在此购买，请用小号测试。正站长可在修改用户资料处直接设置，不管设置何身份，正站长的身份期限固定为无限期！</b><br/>");

    }
    else if (this.INFO == "CLOSE")
    {
        strhtml.Append("<b>站长关闭购买此身份级别功能！请尝试购买其它身份级别！</b><br/>");

    }
    else if (this.INFO == "NOTRIGHT")
    {
        strhtml.Append("<b>*一次只能购买大于[当前我的身份级别]一级的身份级别！请购买其它身份级别！</b><br/>");

    }
    else if (this.INFO == "PWERR")
    {
        strhtml.Append("<b>密码错误！</b><br/>");

    }
    else if (this.INFO == "NUM")
    {
        strhtml.Append("<b>金额需要数字！</b><br/>");

    }
   

    else if (this.INFO == "NOTMONEY")
    {
        strhtml.Append("<b>你的RMB只有" + userVo.RMB.ToString("f2") + "！</b><br/>");

    }
    
    strhtml.Append("</div>");
    if (this.INFO != "OK" && this.INFO != "CLOSE" && this.INFO != "NOTRIGHT" && this.INFO != "MASTERNO")
    {
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("我当前RMB:<b>￥" + userVo.RMB.ToString("f2") + "</b>[<a href=\"" + this.http_start + "chinabank_wap/selbank_wap.aspx?siteid=" + this.siteid + "\">充值</a>]<br/>");
        strhtml.Append("我当前身份级别:<b>" + WapTool.GetMyID(userVo.idname, lang) + " " + WapTool.showIDEndTime(userVo.siteid ,userVo.userid ,userVo.endTime ,this.lang )+ "</b><br/>");
        strhtml.Append("你要购买的级别:<b>" + WapTool.showImg(idVo.subclassName) + "</b><br/>");
        
        
        strhtml.Append("<form name=\"g1\" action=\"" + http_start + "bbs/togroupbuy.aspx\" method=\"get\">");
        strhtml.Append(this.GetLang("购买月数|购买月数|month Number") + " <input type=\"text\" name=\"num\" value=\"" + this.num + "\" size=\"2\"/>个月");
        
        strhtml.Append("<input type=\"hidden\"  name=\"classid\" value=\"" + classid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"toid\" value=\"" + toid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");
        strhtml.Append(" <input type=\"submit\"  name=\"bt\" class=\"btn\" value=\"" + this.GetLang("确定|确定|GO") + "\"/></form><br/>");

        strhtml.Append("一共需要RMB:<b>￥" + idVo.rank + ".00</b><br/>");
        
        
        strhtml.Append("<form name=\"f\" action=\"" + http_start + "bbs/togroupbuy.aspx\" method=\"post\">");

        
        strhtml.Append("我的密码：<br/>");
        strhtml.Append("<input type=\"text\" name=\"changePW\" value=\"\"/><br/>");
        strhtml.Append("<input type=\"hidden\"  name=\"siteid\" value=\"" + siteid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"backurl\" value=\"" + backurl + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"toid\" value=\"" + toid + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"num\" value=\"" + num + "\"/>");
        strhtml.Append("<input type=\"hidden\"  name=\"sid\" value=\"" + sid + "\"/>");       
        strhtml.Append("<input type=\"hidden\" name=\"action\" value=\"add\"/>");
        strhtml.Append("<input type=\"submit\"  name=\"g\" class=\"btn\" value=\"" + this.GetLang("确定支付|确定支付|submit play") + "\" /><br/>注意:购买与当前身份级别不一样，有效期从购买日算起。");
       

        strhtml.Append("</form>");
        strhtml.Append("</div>");

    }
    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   
    strhtml.Append("<div class=\"btBox\"><div class=\"bt2\">");
    strhtml.Append("<a href=\"" + this.http_start + "bbs/togroupinfo.aspx?siteid=" + this.siteid + "" + "\">返回上级</a> ");
   
    strhtml.Append("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + siteid + "&amp;classid=0" + "\">返回首页</a>");

    strhtml.Append("</div></div>");

    
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


