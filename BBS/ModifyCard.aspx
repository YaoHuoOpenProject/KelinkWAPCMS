<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifyCard.aspx.cs" Inherits="KeLin.WebSite.bbs.ModifyCard" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("修改我的名片|修改我的名片|Change My Card"), wmlVo));//显示头 
StringBuilder strhtml = new StringBuilder();
    if (ver == "1")
    {
        strhtml.Append("<p>");
        if (ERROR != "")
        {
           
            strhtml.Append(ERROR);
            strhtml.Append("<br/>");
        }
        if (INFO == "ADDOK")
        {
           
            strhtml.Append("<b>新增成功！</b>");
            strhtml.Append("<br/>");
        }
        else if (INFO == "UPOK")
        {
           
            strhtml.Append("<b>更新成功！</b>");
            strhtml.Append("<br/>");
        }
       
        
        strhtml.Append("<strong>移动名片(名片搜索)：</strong><br/>");
      
        strhtml.Append("公司全称：");
        strhtml.Append("<input type=\"text\" name=\"ltd" + r + "\" value=\"" + strltd + "\" maxlength=\"100\" /><br/>");
        strhtml.Append("姓名：");
        strhtml.Append("<input type=\"text\" name=\"realname" + r + "\" value=\"" + strrealname + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("职务：");
        strhtml.Append("<input type=\"text\" name=\"zhiye" + r + "\" value=\"" + strzhiye + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("手机：");
        strhtml.Append("<input type=\"text\" name=\"mobile" + r + "\" value=\"" + strmobile + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("电话：");
        strhtml.Append("<input type=\"text\" name=\"tel" + r + "\" value=\"" + strtel + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("Email：");
        strhtml.Append("<input type=\"text\" name=\"email" + r + "\" value=\"" + stremail + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("网址：");
        strhtml.Append("<input type=\"text\" name=\"website" + r + "\" value=\"" + strwebsite + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("地址：");
        strhtml.Append("<input type=\"text\" name=\"address" + r + "\" value=\"" + straddress + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("邮编：");
        strhtml.Append("<input type=\"text\" name=\"post" + r + "\" value=\"" + strpost + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("经营范围：");
        strhtml.Append("<input type=\"text\" name=\"sale" + r + "\" value=\"" + strsale + "\"  /><br/>");
        strhtml.Append("身份证号码：");
        strhtml.Append("<input type=\"text\" name=\"nameid" + r + "\" value=\"" + strnameid + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("开户银行：");
        strhtml.Append("<input type=\"text\" name=\"bank" + r + "\" value=\"" + strbank + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("银行帐号：");
        strhtml.Append("<input type=\"text\" name=\"cardnum" + r + "\" value=\"" + strcardnum + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("是否公开:");
        strhtml.Append("<select name=\"ishidden" + r + "\" value=\"" + this.ishidden + "\">");
        strhtml.Append("<option value=\"0\">0_是</option>");
        strhtml.Append("<option value=\"1\">1_否</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("<anchor><go href=\"" + http_start + "bbs/ModifyCard.aspx\" method=\"post\" accept-charset=\"utf-8\">");
        strhtml.Append("<postfield  name=\"action\"  value=\"gomod\" />");
        strhtml.Append("<postfield  name=\"siteid\" value=\"" + this.siteid + "\"  />");
        strhtml.Append("<postfield  name=\"classid\"  value=\"" + this.classid + "\"  />");
        strhtml.Append("<postfield  name=\"sid\"  value=\"" + this.sid + "\"  />");
        strhtml.Append("<postfield name=\"ltd\" value=\"$(ltd" + r + ")\"/>");
        strhtml.Append("<postfield name=\"realname\" value=\"$(realname" + r + ")\"/>");
        strhtml.Append("<postfield name=\"zhiye\" value=\"$(zhiye" + r + ")\"/>");
        strhtml.Append("<postfield name=\"mobile\" value=\"$(mobile" + r + ")\"/>");
        strhtml.Append("<postfield name=\"tel\" value=\"$(tel" + r + ")\"/>");
        strhtml.Append("<postfield name=\"email\" value=\"$(email" + r + ")\"/>");
        strhtml.Append("<postfield name=\"website\" value=\"$(website" + r + ")\"/>");
        strhtml.Append("<postfield name=\"address\" value=\"$(address" + r + ")\"/>");
        strhtml.Append("<postfield name=\"post\" value=\"$(post" + r + ")\"/>");
        strhtml.Append("<postfield name=\"sale\" value=\"$(sale" + r + ")\"/>");
        strhtml.Append("<postfield name=\"nameid\" value=\"$(nameid" + r + ")\"/>");
        strhtml.Append("<postfield name=\"bank\" value=\"$(bank" + r + ")\"/>");
        strhtml.Append("<postfield name=\"ishidden\" value=\"$(ishidden" + r + ")\"/>");
        strhtml.Append("<postfield name=\"cardnum\" value=\"$(cardnum" + r + ")\"/>");
        strhtml.Append("</go>" + this.GetLang("修改|修改|Update") + "</anchor><br/>");
     
        strhtml.Append("<a href=\"" + this.http_start + "bbs/modifyuserinfo.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");
        strhtml.Append(WapTool.GetVS(wmlVo));
        strhtml.Append("</p>");
        Response.Write(strhtml);
    }
    else
    {
        strhtml.Append("<div class=\"subtitle\">修改我的名片</div>");
        if (ERROR != "")
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append(ERROR);
            strhtml.Append("</div>");
        }
        if (INFO == "ADDOK")
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append("<b>新增成功！</b>");
            strhtml.Append("</div>");
        }
        else if (INFO == "UPOK")
        {
            strhtml.Append("<div class=\"tip\">");
            strhtml.Append("<b>更新成功！</b>");
            strhtml.Append("</div>");
        }   
        strhtml.Append("<div class=\"content\">");
        strhtml.Append("<strong>移动名片(名片搜索)：</strong><br/>");
        strhtml.Append("<form name =\"f\" action=\"" + http_start + "bbs/ModifyCard.aspx\" method=\"post\">");       
  
        strhtml.Append("公司全称：");
        strhtml.Append("<input type=\"text\" name=\"ltd\" value=\"" + strltd + "\" maxlength=\"150\" /><br/>");
        strhtml.Append("姓名：");
        strhtml.Append("<input type=\"text\" name=\"realname\" value=\"" + strrealname + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("职务：");
        strhtml.Append("<input type=\"text\" name=\"zhiye\" value=\"" + strzhiye + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("手机：");
        strhtml.Append("<input type=\"text\" name=\"mobile\" value=\"" + strmobile + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("电话：");
        strhtml.Append("<input type=\"text\" name=\"tel\" value=\"" + strtel + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("Email：");
        strhtml.Append("<input type=\"text\" name=\"email\" value=\"" + stremail + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("网址：");
        strhtml.Append("<input type=\"text\" name=\"website\" value=\"" + strwebsite + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("地址：");
        strhtml.Append("<input type=\"text\" name=\"address\" value=\"" + straddress + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("邮编：");
        strhtml.Append("<input type=\"text\" name=\"post\" value=\"" + strpost + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("经营范围：");
        strhtml.Append("<input type=\"text\" name=\"sale\" value=\"" + strsale + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("身份证号码：");
        strhtml.Append("<input type=\"text\" name=\"nameid\" value=\"" + strnameid + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("开户银行：");
        strhtml.Append("<input type=\"text\" name=\"bank\" value=\"" + strbank + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("银行帐号：");
        strhtml.Append("<input type=\"text\" name=\"cardnum\" value=\"" + strcardnum + "\" maxlength=\"50\" /><br/>");
        strhtml.Append("是否公开:");
        strhtml.Append("<select name=\"ishidden\"\">");
        strhtml.Append("<option value=\"" + ishidden + "\">" + ishidden + "</option>");
        strhtml.Append("<option value=\"0\">0_是</option>");
        strhtml.Append("<option value=\"1\">1_否</option>");
        strhtml.Append("</select><br/>");
        strhtml.Append("<input name=\"action\"  type=\"hidden\" value=\"gomod\" />");
        strhtml.Append("<input name=\"siteid\"  type=\"hidden\" value=\"" + this.siteid + "\"  />");
        strhtml.Append("<input name=\"classid\"  type=\"hidden\" value=\"" + this.classid + "\"  />");
        strhtml.Append("<input name=\"sid\"  type=\"hidden\" value=\"" + this.sid + "\"  />");       
        strhtml.Append("<input type=\"submit\" id=\"submit\" name=\"submit\" class=\"btn\" value=\"修 改\" /><br/>");
        strhtml.Append("</form>");
        strhtml.Append("</div>");
        
        string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码  


        strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
        strhtml.Append("<a href=\"" + this.http_start + "bbs/modifyuserinfo.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回上级|返回上级|Back to set") + "</a> ");

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

Response.Write(WapTool.showDown(wmlVo));   //显示底部
 %>