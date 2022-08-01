<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifySMS.aspx.cs" Inherits="KeLin.WebSite.bbs.ModifySMS" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("开通短信注册设置|开通短信注册设置|SMS Registry Settings"), wmlVo));//显示头       

if (ver == "1")
{
    Response.Write("<p>");
    
    if (ERROR != "")
    {
        
        Response.Write(ERROR);
        Response.Write("<br/>");
    }
    if (INFO == "UPOK")
    {
        
        Response.Write("<b>更新成功！</b>");
        Response.Write("<br/>");
    }
    else if (INFO == "ADDOK")
    {
       
        Response.Write("<b>保存成功！</b>");
        Response.Write("<br/>");
    }
    
    Response.Write("短信指令：<br />");
    Response.Write("<input type=\"text\" name=\"myorder"+r+"\" value=\"" + strmyorder + "\" maxlength=\"50\" /><br/>");
    Response.Write("短信指令ID：<br />");
    Response.Write("<input type=\"text\" name=\"myorderid" + r + "\" value=\"" + strmyorderid + "\" maxlength=\"50\" /><br/>");
    Response.Write("校验码：(英文或数字)：<br />");
    Response.Write("<input type=\"text\" name=\"checkcode" + r + "\" value=\"" + strcheckcode + "\" maxlength=\"50\" /><br/>");
    Response.Write("默认昵称(四个字内)：<br />");
    Response.Write("<input type=\"text\" name=\"firstname" + r + "\" value=\"" + firstname + "\" maxlength=\"4\" /><br/>");

    Response.Write("备注说明：<br />");
    Response.Write("<input type=\"text\" name=\"remark" + r + "\" value=\"" + strremark + "\" /><br/>");
    Response.Write("是否开启：<br />");
    Response.Write("<select name=\"isclose" + r + "\" value=\"" + strisclose + "\"><option value=\"0\">0_只开手动注册</option><option value=\"1\">1_只开短信注册</option><option value=\"2\">2_关闭所有注册</option><option value=\"3\">3_显示短信注册和手动注册</option><option value=\"4\">4_只开手动注册+邀请码验证</option></select><br/>");
    Response.Write("<anchor><go href=\"" + http_start + "bbs/ModifySMS.aspx\" method=\"post\" accept-charset=\"utf-8\">");
    Response.Write("<postfield  name=\"action\"  value=\"edit\" />");
    Response.Write("<postfield  name=\"siteid\" value=\"" + this.siteid + "\"  />");
    Response.Write("<postfield  name=\"classid\"  value=\"" + this.classid + "\"  />");
    Response.Write("<postfield  name=\"sid\"  value=\"" + this.sid + "\"  />");
    Response.Write("<postfield name=\"myorder\" value=\"$(myorder" + r + ")\"/>");
    Response.Write("<postfield name=\"myorderid\" value=\"$(myorderid" + r + ")\"/>");
    Response.Write("<postfield name=\"checkcode\" value=\"$(checkcode" + r + ")\"/>");
    Response.Write("<postfield name=\"firstname\" value=\"$(firstname" + r + ")\"/>");
    Response.Write("<postfield name=\"remark\" value=\"$(remark" + r + ")\"/>");
    Response.Write("<postfield name=\"isclose\" value=\"$(isclose" + r + ")\"/>"); 
    Response.Write("</go>" + this.GetLang("保 存|保 存|Save") + "</anchor>");
 
    

    Response.Write("<br/>");
    Response.Write("<b>步骤一:</b>电脑IE或WAP访问<a href=\"http://sms.kelink.com\">http://sms.kelink.com</a>，没注册的先注册。<br/>");
    Response.Write("<b>步骤二:</b>登录后点击：【短信指令业务】&gt;&gt;【短信指令管理 &gt;&gt;【我要申请短信指令】， 短信指令：输入你要的短信指令，如hello 接收地址输入:<u>" + this.toMylink + "admin/smsreg.aspx?siteid=" + this.siteid + "&amp;checkcode=校验码(英文或数字)</u><br/>");
    Response.Write("<b>步骤三:</b>申请完成后，可以查看到指令ID，将短信指令，指令ID，校验码 三个参数分别填入上边的输入框，并选择开启短信注册！<br/>");
    Response.Write("<b>步骤四:</b>打开WAP网站，点击免费注册查看注册说明是否正确显示。<br/>");
    Response.Write("<b>步骤五:</b>等待五分钟后，短信注册会员生效！<br/>");
    Response.Write("<b>请注意:</b><br/>注册会员短信指令格式为： 短信指令  <br/>");
    Response.Write("注册会员奖励推荐格式为： 短信指令#推荐人ID  <br/>");
    Response.Write("奖励分值在基本信息设置--&gt;币种使用规则中 设置。 <br/>");

    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
    Response.Write(WapTool.GetVS(wmlVo));


    Response.Write("</p>");


}
else
{
    Response.Write("<div class=\"subtitle\">开通短信注册设置</div>");
    if (ERROR != "")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write(ERROR);
        Response.Write("</div>");
    }
    if (INFO == "UPOK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>更新成功！</b>");
        Response.Write("</div>");
    }
    else if (INFO == "ADDOK")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>保存成功！</b>");
        Response.Write("</div>");
    }
    Response.Write("<div class=\"content\">");
    Response.Write("<form name=\"f\" action=\"" + http_start + "bbs/ModifySMS.aspx\" method=\"post\">");
    Response.Write("<input name=\"action\"  type=\"hidden\" value=\"edit\" />");
    Response.Write("<input name=\"siteid\"  type=\"hidden\" value=\"" + this.siteid + "\"  />");
    Response.Write("<input name=\"classid\"  type=\"hidden\" value=\"" + this.classid + "\"  />");
    Response.Write("<input name=\"sid\"  type=\"hidden\" value=\"" + this.sid + "\"  />");
    Response.Write("短信指令：<br />");
    Response.Write("<input type=\"text\" name=\"myorder\" value=\"" + strmyorder + "\" maxlength=\"50\" /><br/>");
    Response.Write("短信指令ID：<br />");
    Response.Write("<input type=\"text\" name=\"myorderid\" value=\"" + strmyorderid + "\" maxlength=\"50\" /><br/>");
    Response.Write("校验码：(英文或数字)：<br />");
    Response.Write("<input type=\"text\" name=\"checkcode\" value=\"" + strcheckcode + "\" maxlength=\"50\" /><br/>");
    Response.Write("默认昵称(四个字内)：<br />");
    Response.Write("<input type=\"text\" name=\"firstname\" value=\"" + firstname + "\" maxlength=\"4\" /><br/>");

    Response.Write("备注说明：<br />");
    Response.Write("<input type=\"text\" name=\"remark\" value=\"" + strremark + "\" /><br/>");
    Response.Write("是否开启：<br />");
    Response.Write("<select name=\"isclose\" value=\"" + strisclose + "\"><option value=\"" + this.strisclose + "\">" + this.strisclose + "</option><option value=\"0\">0_只开手动注册</option><option value=\"1\">1_只开短信注册</option><option value=\"2\">2_关闭所有注册</option><option value=\"3\">3_显示短信注册和手动注册</option><option value=\"4\">4_只开手动注册+邀请码验证</option></select><br/>");
    Response.Write("<input type=\"submit\" name=\"submit\" value=\"确 定\" /><br/>");
    Response.Write("</form>");
    Response.Write("</div>");
    
    Response.Write("<div class=\"line1\">");
    Response.Write("<b>步骤一:</b>电脑IE或WAP访问<a href=\"http://sms.kelink.com\">http://sms.kelink.com</a>，没注册的先注册。<br/>");
    Response.Write("<b>步骤二:</b>登录后点击：【短信指令业务】&gt;&gt;【短信指令管理 &gt;&gt;【我要申请短信指令】， 短信指令：输入你要的短信指令，如hello 接收地址输入:<u>" + this.toMylink + "admin/smsreg.aspx?siteid=" + this.siteid + "&amp;checkcode=校验码(英文或数字)</u><br/>");
    Response.Write("<b>步骤三:</b>申请完成后，可以查看到指令ID，将短信指令，指令ID，校验码 三个参数分别填入上边的输入框，并选择开启短信注册！<br/>");
    Response.Write("<b>步骤四:</b>打开WAP网站，点击免费注册查看注册说明是否正确显示。<br/>");
    Response.Write("<b>步骤五:</b>等待五分钟后，短信注册会员生效！<br/>");
    Response.Write("<b>请注意:</b><br/>注册会员短信指令格式为： 短信指令  <br/>");
    Response.Write("注册会员奖励推荐格式为： 短信指令#推荐人ID  <br/>");
    Response.Write("奖励分值在基本信息设置--&gt;币种使用规则中 设置。 <br/>");
    Response.Write("</div>");

    Response.Write("<div class=\"btBox\"><div class=\"bt1\">");
    Response.Write("<a href=\"" + this.http_start + "admin/basesitemodifywml.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");

    Response.Write("</div></div>");
}


Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>