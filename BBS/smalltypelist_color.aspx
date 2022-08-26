<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="smalltypelist_color.aspx.cs" Inherits="KeLin.WebSite.bbs.smalltypelist_color" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%

StringBuilder strhtml=new StringBuilder ();
Response.Write(WapTool.showTop(this.GetLang("查看常用颜色|查看常用颜色|delete"), wmlVo));//显示头                                                                                                                                                                       
string color = "<TABLE cellPadding='8' align='center' border='1' >  <TBODY>  <TR>  <TD bgColor='#000000' ><TT><FONT face='楷体_GB2312' color='#ffffff' >000000 </FONT></TT></TD>  <TD bgColor='#000020' ><TT><FONT face='楷体_GB2312' color='#ffffc0' >000020 </FONT></TT></TD>  <TD bgColor='#000040' ><TT><FONT face='楷体_GB2312' color='#ffffa0' >000040 </FONT></TT></TD>  <TD bgColor='#000060' ><TT><FONT face='楷体_GB2312' color='#ffff80' >000060 </FONT></TT></TD>  <TD bgColor='#000080' ><TT><FONT face='楷体_GB2312' color='#ffff60' >000080 </FONT></TT></TD>  <TD bgColor='#0000a0' ><TT><FONT face='楷体_GB2312' color='#ffff40' >0000a0 </FONT></TT></TD>  <TD bgColor='#0000c0' ><TT><FONT face='楷体_GB2312' color='#ffff20' >0000c0 </FONT></TT></TD>  <TD bgColor='#0000ff' ><TT><FONT face='楷体_GB2312' color='#ffff00' >0000ff</FONT></TT></TD></TR></TABLE><br/>  <TABLE cellPadding='8' align='center' border='1' >  <TBODY>  <TR>  <TD bgColor='#008000' ><TT><FONT face='楷体_GB2312' color='#ff60ff' >008000 </FONT></TT></TD>  <TD bgColor='#008020' ><TT><FONT face='楷体_GB2312' color='#ff60c0' >008020 </FONT></TT></TD>  <TD bgColor='#008040' ><TT><FONT face='楷体_GB2312' color='#ff60a0' >008040 </FONT></TT></TD>  <TD bgColor='#008060' ><TT><FONT face='楷体_GB2312' color='#ff6080' >008060 </FONT></TT></TD>  <TD bgColor='#008080' ><TT><FONT face='楷体_GB2312' color='#ff6060' >008080 </FONT></TT></TD>  <TD bgColor='#0080a0' ><TT><FONT face='楷体_GB2312' color='#ff6040' >0080a0 </FONT></TT></TD>  <TD bgColor='#0080c0' ><TT><FONT face='楷体_GB2312' color='#ff6020' >0080c0 </FONT></TT></TD>  <TD bgColor='#0080ff' ><TT><FONT face='楷体_GB2312' color='#ff6000' >0080ff </FONT></TT></TD></TR></TABLE><br/>  <TABLE cellPadding='8' align='center' border='1' >  <TBODY>  <TR>  <TD bgColor='#00ff00' ><TT><FONT face='楷体_GB2312' color='#ff00ff' >00ff00 </FONT></TT></TD>  <TD bgColor='#00ff20' ><TT><FONT face='楷体_GB2312' color='#ff00c0' >00ff20 </FONT></TT></TD>  <TD bgColor='#00ff40' ><TT><FONT face='楷体_GB2312' color='#ff00a0' >00ff40 </FONT></TT></TD>  <TD bgColor='#00ff60' ><TT><FONT face='楷体_GB2312' color='#ff0080' >00ff60 </FONT></TT></TD>  <TD bgColor='#00ff80' ><TT><FONT face='楷体_GB2312' color='#ff0060' >00ff80 </FONT></TT></TD>  <TD bgColor='#00ffa0' ><TT><FONT face='楷体_GB2312' color='#ff0040' >00ffa0 </FONT></TT></TD>  <TD bgColor='#00ffc0' ><TT><FONT face='楷体_GB2312' color='#ff0020' >00ffc0 </FONT></TT></TD>  <TD bgColor='#00ffff' ><TT><FONT face='楷体_GB2312' color='#ff0000' >00ffff </FONT></TT></TD></TR></TABLE><br/>  <TABLE cellPadding='8' align='center' border='1' >  <TBODY>  <TR>  <TD bgColor='#c00000' ><TT><FONT face='楷体_GB2312' color='#20ffff' >c00000 </FONT></TT></TD>  <TD bgColor='#c00020' ><TT><FONT face='楷体_GB2312' color='#20ffc0' >c00020 </FONT></TT></TD>  <TD bgColor='#c00040' ><TT><FONT face='楷体_GB2312' color='#20ffa0' >c00040 </FONT></TT></TD>  <TD bgColor='#c00060' ><TT><FONT face='楷体_GB2312' color='#20ff80' >c00060 </FONT></TT></TD>  <TD bgColor='#c00080' ><TT><FONT face='楷体_GB2312' color='#20ff60' >c00080 </FONT></TT></TD>  <TD bgColor='#c000a0' ><TT><FONT face='楷体_GB2312' color='#20ff40' >c000a0 </FONT></TT></TD>  <TD bgColor='#c000c0' ><TT><FONT face='楷体_GB2312' color='#20ff20' >c000c0 </FONT></TT></TD>  <TD bgColor='#c000ff' ><TT><FONT face='楷体_GB2312' color='#20ff00' >c000ff </FONT></TT></TD></TR></TABLE><br/>  <TABLE cellPadding='8' border='1' >  <TBODY>  <TR>  <TD bgColor='#ff0000' >  <P align='center' ><TT><FONT face='楷体_GB2312' color='#00ffff' >ff0000 </FONT></TT></P></TD>  <TD bgColor='#ff0020' >  <P align='center' ><TT><FONT face='楷体_GB2312' color='#00ffc0' >ff0020 </FONT></TT></P></TD>  <TD bgColor='#ff0040' >  <P align='center' ><TT><FONT face='楷体_GB2312' color='#00ffa0' >ff0040 </FONT></TT></P></TD>  <TD bgColor='#ff0060' >  <P align='center' ><TT><FONT face='楷体_GB2312' color='#00ff80' >ff0060 </FONT></TT></P></TD>  <TD bgColor='#ff0080' >  <P align='center' ><TT><FONT face='楷体_GB2312' color='#00ff60' >ff0080 </FONT></TT></P></TD>  <TD bgColor='#ff00a0' >  <P align='center' ><TT><FONT face='楷体_GB2312' color='#00ff40' >ff00a0 </FONT></TT></P></TD>  <TD bgColor='#ff00c0' >  <P align='center' ><TT><FONT face='楷体_GB2312' color='#00ff20' >ff00c0 </FONT></TT></P></TD>  <TD bgColor='#ff00ff' >  <P align='center' ><TT><FONT face='楷体_GB2312' color='#00ff00' >ff00ff </FONT></TT></P></TD></TR></TABLE>";
if (ver == "1")
{
    strhtml.Append("<p>");
    strhtml.Append(color);




    strhtml.Append("<a href=\"" + http_start + HttpUtility.UrlDecode(backurl) + "" + "\">返回上级</a>");

    strhtml.Append("</p>");
    Response.Write(strhtml);
}
else //2.0界面
{

    strhtml.Append("<div class=\"subtitle\">" + this.GetLang("查看常用颜色|查看常用颜色|delete") + "</div>");

    strhtml.Append("<div class=\"content\">");


    strhtml.Append(color);
    strhtml.Append("</div>");
    strhtml.Append("<div class=\"btBox\"><div class=\"bt1\">");
    strhtml.Append("<a href=\"" + http_start +  HttpUtility.UrlDecode(backurl) + "" + "\">返回上级</a>");

    strhtml.Append("</div></div>");

    string isWebHtml = this.ShowWEB_view(this.classid); //看是存在html代码   
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


