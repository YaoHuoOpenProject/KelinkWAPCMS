<%@ Page Language="C#" AutoEventWireup="true" Codebehind="Top.aspx.cs" Inherits="KeLin.WebSite.admin.Top" %>
<%
    Response.Buffer = true;
    Response.Expires = -1;
    Response.ExpiresAbsolute = DateTime.Now.AddDays(-1);
    Response.Expires = 0;
    Response.CacheControl = "no-cache"; 
 %><html>
<head>
    <title>top</title>
    <meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
    <script language="JavaScript" src="/NetCSS/LinkQuick.js" type="text/JavaScript"></script>
    <link href="../NetCSS/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css" id="internalStyle">
DIV {
	FONT-SIZE: 12px; COLOR: #333333
}
TD {
	FONT-SIZE: 12px; COLOR: #333333; FONT-FAMILY: "宋体"
}
A:link {
	COLOR: #3366cc; FONT-FAMILY: "宋体"; TEXT-DECORATION: none
}
A:visited {
	COLOR: #3366cc; TEXT-DECORATION: none
}
A:active {
	COLOR: #6699ff; TEXT-DECORATION: none
}
A:hover {
	COLOR: #ff4400; TEXT-DECORATION: none
}
</style>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" style="margin:0; padding:0;">
    <div style="position: absolute; top: 5; left: 15; width: 130px; height: 52px;">
        <img src="<%=strLogo %>" width="120" height="50">
    </div>
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="1%" rowspan="2">
                            <img src="/NetImages/top_01.jpg" width="180" height="72"></td>
                        <td width="98%" background="/NetImages/top_03.jpg">
                            <table border="0" width="100%" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td width="50%">
                                        <img src="/NetImages/top_02.jpg"></td>
                                     <td align="right" width="30%" ><a href="LinkQuick.aspx" target="main"  ><img style=" float:right;" border="0" src="/NetImages/kuaijie.gif"  onMouseMove="document.getElementById('Div1').style.display='block';" /></a>
                                     
 </td>
                                    <td width="10%" align ="right">
                                    <p align="right">
                                       <a href="updateZS.aspx" target="_blank"><img border="0" src="/NetImages/zhishi.gif" ></a>
                                        </p>
                                    </td>
                                </tr>
                            </table>
<div style="padding:0 30px; display:none; width: auto; height:30px; background:#ffffff; line-height:28px; text-align:center; position:absolute; top:0; right:250px; z-index:999;" id="Div1">
     <%=this.linkquick.ToString() %>

<script language="javascript">    document.write(GetLink('<%=base.SiteId %>', '<%=base.UserID %>', '<%=base.ManagerLvl %>', '<%=base.SID %>'));</script>
[<a href="#" onclick="document.getElementById('Div1').style.display='none';" ><font color="red">关闭</font></a>.<a href="javascript:AddURL();"><font color="red">添加</font></a>]           
</div>
                        </td>
                        <td width="12" rowspan="2">
                            <img src="/NetImages/top_04.jpg" width="11" height="72"></td>
                    </tr>
                    <tr>
                        <td background="/NetImages/top_06.jpg">
                            <table width="96%" border="0" cellpadding="0" cellspacing="0">
                                <tr align="center">
                                    <td width="0%" height="30">
                                        <img src="/NetImages/top_06.jpg" width="6" height="33"></td>
                                    <td height="30" width="50%" align="left">
                                        <img border="0" src="/NetImages/me.gif" align="absbottom">
                                        <b>您好, <%=LoginUserName %>(<font color=red><%=sitevip %><%=idname%> <a href="javascript:openView();"><%=ischeck %></a></font>) ID：<%=LoginUserID %></b> &nbsp;&nbsp;<img border="0" src="/NetImages/logout.gif" align="absbottom">
                                        <a href="#" onClick="Logout()">注销</a>
                                        <%=LinkUrl %>
                                    </td>
                                    <td height="30" width="50%" align="center">
                                    <marquee align="middle" scrolldelay="120"><%=strMsgTitle%> </marquee>

                           
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>

<script type="text/javascript"> 
 
function openView() {
    window.open("/admin/loginwap.aspx?siteid=<%=base.SiteId %>&sid=<%=base.SID %>#check", "viewSite", "height=600, width=530, toolbar= no, menubar=no, scrollbars=yes, resizable=yes, location=yes, status=yes")
}
function openwin() {
parent.main.location="../sysmessage/systemlist.aspx";
}
function Logout() {
parent.location="logout.aspx";
}
function AddURL() {

var url = window.parent.getURL();
var urlname = window.parent.getURLName();
var info = "是否将以下地址加入快捷键：\n\n名称："+urlname +"\n\n地址："+url;
if (confirm(info)) {
    //保存操作
    url = encodeURIComponent(url);
    urlname = encodeURIComponent(urlname);
    var info = loadXml("LinkQuick.aspx?action=save&url=" + url + "&urlname=" + urlname + "&go=" + Math.random(), "GET");
    //alert(info);
    if (info!="OK") {
        alert("出错了！");
    } else {
    alert("保存成功!");  
        window.location.reload();     
    }

}

}
function ToAddURL(name,url) {

    var url = url;
    var urlname = name;
    var info = "是否将以下地址加入快捷键：\n\n名称：" + urlname + "\n\n地址：" + url;
    if (confirm(info)) {
        //保存操作
        url = encodeURIComponent(url);
        urlname = encodeURIComponent(urlname);
        var info = loadXml("LinkQuick.aspx?action=save&url=" + url + "&urlname=" + urlname + "&go=" + Math.random(), "GET");
        //alert(info);
        if (info != "OK") {
            alert("出错了！");
        } else {
            alert("保存成功!");
            window.location.reload();
        }

    }

}

function loadXml(url, tomethod) {
    if (tomethod == "") {
        tomethod = "GET"
    }

    try {
        var xmlhttp = null;
        if (window.XMLHttpRequest) {
            //针对FF,Mozilar,Opera,Safari,IE7,IE8
            xmlhttp = new XMLHttpRequest();
            //修正某些浏览器bug
            if (xmlhttp.overrideMimeType) {
                xmlhttp.overrideMimeType("text/xml");
            }
        } else if (window.ActiveXObject) {
            //针对IE6以下的浏览器
            var activexName = ["MSXML2.XMLHTTP", "Microsoft.XMLHTTP", ""];
            for (var i = 0; i < activexName.length; i++) {
                try {
                    //取出一个控件名称创建,如果创建成功则停止,反之抛出异常
                    xmlhttp = new ActiveXObject(activexName[i]);
                    break;
                } catch (e) { }
            }
        }
        xmlhttp.open(tomethod, url, false); //同步
        xmlhttp.send();
        //xmlhttp.Charset = "UTF-8";
        return xmlhttp.responseText;
        
    } catch (e) {
      
        return "ERROR:调用接收地址错误:" + url + "\n请检查地址是否正确";
    }
}
    </script>

</body>
</html>
