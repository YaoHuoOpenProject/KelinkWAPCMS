<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd.aspx.cs" Inherits="KeLin.WebSite.guessbook.admin_WAPadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string showtitle="发表留言";
if (isSubmit == "1") showtitle = "提交订单";
Response.Write(WapTool.showTop(showtitle, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write("标题和内容不能小于2个字符！  ");
        Response.Write("</b><br/>");
    }
    else if (this.INFO == "ERR_FORMAT")
    {
        Response.Write("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
    }
    else if (this.INFO == "REPEAT")
    {

        Response.Write("<b>请不要发重复内容！</b><br/>");
    }
    else if (this.INFO == "WAITING")
    {
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");

    }
    else if (this.INFO == "LOCK")
    {

        Response.Write("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
    }
    else if (this.INFO == "OK")
    {
        Response.Write("<b>");
        if (isSubmit  == "1")
        {
            Response.Write("提交成功！  ");
        }
        else
        {
            Response.Write("留言成功！  ");
        }
        if (siteVo.isCheck == 1)
        {
            Response.Write(" 审核后显示！  ");
        }
        Response.Write("</b><br/>");

    }
   


  if (this.INFO != "OK"){

      if (isSubmit == "1")
      {
          //选择栏目
          Response.Write("套餐：");
          Response.Write("<select name=\"toproductlist" + r + "\">");
          for (int i = 0; (isProductlist != null && i < isProductlist.Length ); i++)
          {

              Response.Write("<option value=\"" + isProductlist[i] + "\">" + isProductlist[i] + "</option>");

          }
          Response.Write("</select><br/>");
          Response.Write("姓名：");
          Response.Write("<input type=\"text\" name=\"toname" + r + "\" value=\"" + toname + "\"/><br/>");
          Response.Write("手机：");
          Response.Write("<input type=\"text\"  name=\"tomobile" + r + "\" value=\"" + tomobile + "\" /><br/>");
          Response.Write("地址：");
          Response.Write("<input type=\"text\"  name=\"toaddress" + r + "\" value=\"" + toaddress + "\" /><br/>");
          
         
          Response.Write("<anchor><go href=\"" + http_start + "guessbook/admin_WAPadd.aspx\" method=\"post\" accept-charset=\"utf-8\">");
          Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
          Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
          Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
          Response.Write("<postfield name=\"ishidden\" value=\"1\"/>");
          Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
          Response.Write("<postfield name=\"page\" value=\"" + page + "\"/>");
          Response.Write("<postfield name=\"toproductlist\" value=\"$(toproductlist" + r + ")\"/>");
          Response.Write("<postfield name=\"toname\" value=\"$(toname" + r + ")\"/>");
          Response.Write("<postfield name=\"tomobile\" value=\"$(tomobile" + r + ")\"/>");
          Response.Write("<postfield name=\"toaddress\" value=\"$(toaddress" + r + ")\"/>");
          Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
          Response.Write("</go>" + this.GetLang("提 交|提 交|submit") + "</anchor><br/><br/>");

      }
      else if (isSubmit == "2")
      {
          //选择栏目
          
          Response.Write("姓名：<br/>");
          Response.Write("<input type=\"text\" name=\"toname" + r + "\" value=\"" + toname + "\"/><br/>");
          Response.Write("手机(或其它联系方式)：<br/>");
          Response.Write("<input type=\"text\"  name=\"tomobile" + r + "\" value=\"" + tomobile + "\" /><br/>");
          Response.Write("内容：<br/>");
          Response.Write("<input type=\"text\"  name=\"toaddress" + r + "\" value=\"" + toaddress + "\" /><br/>");


          Response.Write("<anchor><go href=\"" + http_start + "guessbook/admin_WAPadd.aspx\" method=\"post\" accept-charset=\"utf-8\">");
          Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
          Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
          Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
          Response.Write("<postfield name=\"ishidden\" value=\"1\"/>");
          Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
          Response.Write("<postfield name=\"page\" value=\"" + page + "\"/>");
          //Response.Write("<postfield name=\"toproductlist\" value=\"$(toproductlist" + r + ")\"/>");
          Response.Write("<postfield name=\"toname\" value=\"$(toname" + r + ")\"/>");
          Response.Write("<postfield name=\"tomobile\" value=\"$(tomobile" + r + ")\"/>");
          Response.Write("<postfield name=\"toaddress\" value=\"$(toaddress" + r + ")\"/>");
          Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
          Response.Write("</go>" + this.GetLang("提 交|提 交|submit") + "</anchor><br/><br/>");
      }
      else
      {
          //选择栏目
          if (classList != null && classList.Count == 1)
          {

          }else{
              
          
              Response.Write("选择分类:<br/>");
              Response.Write("<select name=\"toclassid" + r + "\" value=\"" + this.toclassid + "\">");
              for (int i = 0; (classList != null && i < classList.Count); i++)
              {

                  Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

              }
              Response.Write("</select><br/>");
          }
         
          
          Response.Write(this.GetLang("标题|標題|Title") + "*:<br/>");
          Response.Write("<input type=\"text\" name=\"book_title" + r + "\" value=\"" + book_title + "\"/><br/>");
          Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
          Response.Write("<input type=\"text\"  name=\"book_content" + r + "\" value=\"" + book_content + "\" /><br/>");
          //Response.Write("悄悄话:");
          Response.Write("<select name=\"ishidden" + r + "\" value=\"" + this.ishidden + "\">");
          if (qiaoqiao == "1")
          {
             
              Response.Write("<option value=\"1\">1_悄悄话</option>");
          }
          else
          {
              Response.Write("<option value=\"0\">0_公开</option>");
              Response.Write("<option value=\"1\">1_悄悄话</option>");
          }
          Response.Write("</select><br/>");
          Response.Write("<anchor><go href=\"" + http_start + "guessbook/admin_WAPadd.aspx\" method=\"post\" accept-charset=\"utf-8\">");
          Response.Write("<postfield name=\"action\" value=\"gomod\"/>");
          Response.Write("<postfield name=\"id\" value=\"" + id + "\"/>");
          Response.Write("<postfield name=\"classid\" value=\"" + classid + "\"/>");
          Response.Write("<postfield name=\"siteid\" value=\"" + siteid + "\"/>");
          Response.Write("<postfield name=\"page\" value=\"" + page + "\"/>");
          if (classList != null && classList.Count == 1)
          {
              Response.Write("<postfield name=\"toclassid\" value=\"" + classList[0].classid + "\"/>");
          }
          else
          {
              Response.Write("<postfield name=\"toclassid\" value=\"$(toclassid" + r + ")\"/>");
          }
          Response.Write("<postfield name=\"book_title\" value=\"$(book_title" + r + ")\"/>");
          Response.Write("<postfield name=\"book_content\" value=\"$(book_content" + r + ")\"/>");
          Response.Write("<postfield name=\"ishidden\" value=\"$(ishidden" + r + ")\"/>");
          
              
          Response.Write("<postfield name=\"sid\" value=\"" + sid + "\"/>");
          Response.Write("</go>" + this.GetLang("提 交|提 交|submit") + "</anchor><br/><br/>");
      }
    }
  if (isSubmit == "0" || isBack == "1") Response.Write("<a href=\"" + this.http_start + "guessbook/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid="+this.siteid+"\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"subtitle\">" + showtitle + "</div>");
    
    Response.Write(this.ERROR);
    if (this.INFO == "NULL")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("标题和内容不能小于2个字符！  ");
        Response.Write("</div>");
    }
    else if (this.INFO == "ERR_FORMAT")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>取到非法值:“$$(”请更换手机浏览器或重新编辑！</b><br/>");
        Response.Write("</div>");
    }
    else if (this.INFO == "REPEAT")
    {
        Response.Write("<div class=\"tip\">");
        Response.Write("<b>请不要发重复内容！</b><br/>");
        Response.Write("</div>");
    }
    else if (this.INFO == "WAITING")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>请再过" + this.KL_CheckIPTime + "秒后操作！</b><br/>");
        Response.Write("</div>");

    }
    else if (this.INFO == "LOCK")
    {
        Response.Write("<div class=\"tip\">");  
        Response.Write("<b>抱歉，您已经被加入黑名单，请注意发贴规则！</b><br/>");
        Response.Write("</div>");
    
    }else if (this.INFO == "OK")
    {
        Response.Write("<div class=\"tip\">");
        if (isSubmit  == "1")
        {
            Response.Write("提交成功！  ");
        }
        else
        {
            Response.Write("留言成功！  ");
        }
        if (siteVo.isCheck == 1)
        {
            Response.Write(" 审核后显示！  ");
        } 
        Response.Write("</div>");

    }

    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content\">");

        
            Response.Write("<form name=\"gt\" action=\"" + http_start + "guessbook/admin_WAPadd.aspx\" method=\"post\">");
               
            //选择栏目
            if (classList != null && classList.Count == 1)
            {
                Response.Write("<input type=\"hidden\" name=\"toclassid\" value=\"" + classList[0].classid + "\"/>");
            }
            else
            {

                Response.Write("选择分类:<br/>");
                Response.Write("<select name=\"toclassid\">");
                Response.Write("<option value=\"" + toclassid + "\">" + toclassid + "</option>");
                for (int i = 0; (classList != null && i < classList.Count); i++)
                {

                    Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

                }
                Response.Write("</select><br/>");
            }
            Response.Write(this.GetLang("标题|標題|Title") + "*:<br/>");
            Response.Write("<input type=\"text\" name=\"book_title\" class=\"txt\" value=\"" + book_title + "\"/><br/>");
            Response.Write(this.GetLang("内容|內容|Content") + "*:<br/>");
            Response.Write("<textarea name=\"book_content\" class=\"KL_textarea\" rows=\"5\" style=\"width:100%\">" + book_content + "</textarea><br/>");
            //Response.Write("悄悄话:");
            Response.Write("<select name=\"ishidden\">");
            if (qiaoqiao == "1")
            {
                Response.Write("<option value=\"1\">1_悄悄话</option>");
            }
            else
            {
                Response.Write("<option value=\"0\">0_公开</option>");
                Response.Write("<option value=\"1\">1_悄悄话</option>");
            }
            Response.Write("</select><br/>");
            Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
            Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
            Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
            Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
            Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
            Response.Write("<input type=\"submit\"  name=\"bt\" class=\"btn\" value=\"" + this.GetLang("提 交|提 交|submit") + "\"/></form>");
        
            
            Response.Write("</div>");
    }

    Response.Write("<div class=\"btBox\"><div class=\"bt2\">");
    Response.Write("<a href=\"" + this.http_start + "guessbook/book_list.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回上级|返回上级|Back to list") + "</a> ");
    Response.Write("<a href=\"" + this.http_start + "wapindex.aspx?siteid=" + this.siteid + "\">" + this.GetLang("返回首页|返回首页|Back to list") + "</a>");    
   
    Response.Write("</div></div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


