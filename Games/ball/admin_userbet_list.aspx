<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_userbet_list.aspx.cs" Inherits="KeLin.WebSite.Games.ball.admin_userbet_list" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
string title="球彩竞猜管理后台";
Response.Write(WapTool.showTop(title, wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    strhtml.Append("<p align=\"" + classVo.position + "\">");
    strhtml.Append(ERROR);

   

    //显示列表
     if (searchtype == "1")
    {
        strhtml.Append("上下盘：<b>上盘</b>下注列表");
     }
     else if (searchtype == "2")
     {
         strhtml.Append("上下盘：<b>下盘</b>下注列表");
     }
     else if (searchtype == "3")
     {
         strhtml.Append("大小盘：<b>大盘</b>下注列表");
     }
     else if (searchtype == "4")
     {
         strhtml.Append("大小盘：<b>小盘</b>下注列表");
     }
     else if (searchtype == "5")
     {
         strhtml.Append("标准盘：<b>主胜</b>下注列表");
     }
     else if (searchtype == "6")
     {
         strhtml.Append("标准盘：<b>平手</b>下注列表");
     }
     else if (searchtype == "7")
     {
         strhtml.Append("标准盘：<b>客胜</b>下注列表");
     }
    

     strhtml.Append("<br/>");
   
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        index = index + kk;        
        strhtml.Append(index);
        strhtml.Append("."+listVo[i].payview);
        
        if (listVo[i].p_active > 0)
        {
            strhtml.Append(",赢:" + listVo[i].p_getMoney.ToString("f2"));

        }
        
        strhtml.Append("<br/>");
        
    }
    if (listVo == null)
    {
        strhtml.Append("没有记录。<br/>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype="+this.ptype+"&amp;id="+this.id+"" + "\">返回上级</a>");

    strhtml.Append(WapTool.GetVS(wmlVo));
    strhtml.Append("</p>");
    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));
    
}
else //2.0界面
{

    
    strhtml.Append(ERROR);
    strhtml.Append("<div class=\"subtitle\">" );
    strhtml.Append(title);    
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"content\">");


    //显示列表
    if (searchtype == "1")
    {
        strhtml.Append("上下盘：<b>上盘</b>下注列表");
    }
    else if (searchtype == "2")
    {
        strhtml.Append("上下盘：<b>下盘</b>下注列表");
    }
    else if (searchtype == "3")
    {
        strhtml.Append("大小盘：<b>大盘</b>下注列表");
    }
    else if (searchtype == "4")
    {
        strhtml.Append("大小盘：<b>小盘</b>下注列表");
    }
    else if (searchtype == "5")
    {
        strhtml.Append("标准盘：<b>主胜</b>下注列表");
    }
    else if (searchtype == "6")
    {
        strhtml.Append("标准盘：<b>平手</b>下注列表");
    }
    else if (searchtype == "7")
    {
        strhtml.Append("标准盘：<b>客胜</b>下注列表");
    }
    
    strhtml.Append("</div>");
    //显示列表
    
    for (int i = 0; (listVo != null && i < listVo.Count); i++)
    {

        index = index + kk;
        if (i % 2 == 0)
        {
            strhtml.Append("<div class=\"line1\">");
        }
        else
        {
            strhtml.Append("<div class=\"line2\">");
        }
        strhtml.Append(index);
        strhtml.Append("." + listVo[i].payview);

        if (listVo[i].p_active > 0)
        {
            strhtml.Append(",赢:" + listVo[i].p_getMoney.ToString("f2"));

        }
        strhtml.Append("</div>");
       
    }
    if (listVo == null)
    {
        strhtml.Append("<div class=\"tip\">没有记录。</div>");
    }
    //显示导航分页
    strhtml.Append(linkURL);
    strhtml.Append("<div class=\"bt1\">");
    strhtml.Append("<a href=\"" + this.http_start + "games/ball/admin_modify.aspx?siteid=" + siteid + "&amp;classid=" + classid + "&amp;ptype=" + this.ptype + "&amp;id=" + this.id + "" + "\">返回上级</a>");

    strhtml.Append("</div>");

    //输出
    Response.Write(WapTool.ToWML(strhtml.ToString(), wmlVo));

    
    




}
                                                                                                                                                                               
                                                                                                                                                                            
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>
