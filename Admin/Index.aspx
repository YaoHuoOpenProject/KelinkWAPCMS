<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="KeLin.WebSite.admin.Index" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head runat="server">
<script language="javascript">
    function ToReload() {

        document.getElementById("top").src = "top.aspx?r=123";
       // window.top.location.reload();
    }
    function getURL() {        
        //var contentWnd = document.getElementById("main").attr('contentWindow');
        //var url = contentWnd.window.location.href;
        //alert(document.getElementById('main').contentDocument.title);
        return (document.getElementById('main').contentDocument.location.href);

    }
    function getURLName() {
        //var contentWnd = document.getElementById("main").attr('contentWindow');
        //var url = contentWnd.window.location.href;
        return  (document.getElementById('main').contentDocument.title);
        

    }
    function ToAddURL(name,url){
     //alert(name);
     //
      document.getElementById('top').contentWindow.ToAddURL(name,url);
    }
</script>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title><%=strIndexTitle%></title>
</head>
<frameset rows="70,*" cols="*" frameborder="NO" border="0" framespacing="0">
  <frame src="top.aspx" id="top" name="top" scrolling="NO" noresize >
  <frameset cols="145,10,*" framespacing="0" frameborder="no" border="0" name="forum">
    <frame src="left.aspx" name="left" scrolling="auto" noresize>
    <frame src="mid.aspx" name="mid" scrolling="NO" noresize>
    <%if (base.ManagerLvl == "03")
      { %>
    <frame src="ContentTreeSel.aspx" id="main" name="main" frameborder="no" scrolling="yes">
    <%}
      else if (base.ManagerLvl == "04")
      { %>
    <frame src="/bbs/index.aspx?action=webAdmin" id="main" name="main" frameborder="no" scrolling="yes">
    <%}
      else
      { %>
    <frame src="/visiteCount/CountTree.aspx" id="main" name="main" frameborder="no" scrolling="yes">
    <%} %>
  </frameset>
</frameset>
<noframes><body>
</body></noframes>
</html>
