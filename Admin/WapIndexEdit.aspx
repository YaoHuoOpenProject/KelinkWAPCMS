<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WapIndexEdit.aspx.cs" Inherits="KeLin.WebSite.admin.WapIndexEdit" %>

<!DOCTYPE html><html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<%=myCss %>
<style>
.klbt {
 BORDER-RIGHT: #99ccff 1px solid; PADDING-RIGHT: 2px; BORDER-TOP: #99ccff 1px solid; PADDING-LEFT: 2px; FONT-SIZE: 12px; FILTER: progid:DXImageTransform.Microsoft.Gradient(GradientType=0, StartColorStr=#FFFFFF, EndColorStr=#9DBCEA); BORDER-LEFT: #99ccff 1px solid; CURSOR:pointer; COLOR: black; PADDING-TOP: 2px; BORDER-BOTTOM: #99ccff 1px solid
}
</style>
</head>
<script>
function selectid(classid){
    window.parent.preview2.location.href = "modifyClass.aspx?classid=" + classid

}
function selectid2(classid){
    window.parent.preview2.location.href = "modifyClass.aspx?classid=" + classid + "&action2=hidden"
}
function selectid3(classid,flag){
    window.parent.preview2.location.href = "isclosereg.aspx?classid=" + classid + "&flag=" + flag;
}
function gotonew(classid, pic) {

    window.parent.preview2.location.href = "addpic.aspx?classid=" + classid + "&pic=" + pic
    var winPar = window.showModalDialog('addpic.aspx?classid=' + classid + '&pic=' + pic, null, 'dialogWidth=600px;dialogHeight=450px;menuba=no;resizable=yes');
    if (winPar == "refresh") {
        window.location.reload();
    }

}


function gototop(classid,top){
window.parent.preview2.location.href="addtop.aspx?classid="+classid

}
function KL_gototop() {
    window.parent.preview2.location.href = "addtop.aspx?classid=<%=classid%>";

}
function gototopALL(classid, top) {
    window.parent.preview2.location.href = "addtopALL.aspx?classid=" + classid

}
function KL_gototopALL() {

    window.parent.preview2.location.href = "addtopALL.aspx?classid=<%=classid%>"

}
function gotodown(classid,top){
window.parent.preview2.location.href="adddown.aspx?classid="+classid

}
function KL_gotodown() {
    window.parent.preview2.location.href = "adddown.aspx?classid=<%=classid%>" 

}
function gotodownALL(classid, top) {
    window.parent.preview2.location.href = "adddownALL.aspx?classid=" + classid

}
function KL_gotodownALL(classid, top) {
    window.parent.preview2.location.href = "adddownALL.aspx?classid=<%=classid%>" 

}
function gotorow(rowid,top,classid){
window.parent.preview2.location.href="addrowinfo.aspx?classid="+classid
}
function KL_gotorow(classid) {
    window.parent.preview2.location.href = "addrowinfo.aspx?classid=" + classid
}
function KL_gotoView(classid) {
    window.location.href = "/admin/wapindexedit.aspx?siteid=<%=base.SiteId%>&classid=" + classid
}
function gotoopen(classid){
window.open ("/admin/addClass.aspx?classid="+classid, "window", "height=380, width=450, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")

}
function gotoopen2() {
    window.parent.preview2.location.href = "addClass.aspx?classid=<%=classid%>";
}

function backpre() {
    window.location.href = "wapindexedit.aspx?siteid=<%=base.SiteId%>&classid=<%=classVo.childid %>";
}
function backpindex() {
    window.location.href = "/admin/wapindexedit.aspx?siteid=<%=base.SiteId%>";
}


window.parent.title1.innerHTML = "<a href=\"javascript:editTitle('<%=classid %>');\"><%=classVo.classname%> <img border='0' src='/NetImages/left/available.gif' alt='修改' align='absmiddle'/></a>";


window.parent.preview2.location.href = "addClass.aspx?siteid=<%=base.SiteId%>&classid=<%=classid%>";

if(window.parent.isCheck()){
window.parent.preview3.location.href="<%=base.http_start%>wapindex.aspx?siteid=<%=base.SiteId%>&classid=<%=classid%>";
}

//移动栏目
function up(id){
	//alert(id);
	var toid
	strtemp=edit.rank;
	//alert(strtemp);
  for(i=0;i<strtemp.length;i++) {
    if(strtemp[i].value==id && i>0){
       toid=strtemp[i-1].value;
       window.location="wapindexedit.aspx?action=order&moveid="+id+"_"+toid+"&classid=<%=classid%>&childid=<%=childid%>";
       //edit.submit();
       return;
    }
 }
 alert("到了最顶端了~");
 //alert(id+'->'+toid);
}
function down(id){
	//alert(id);
	var toid
	strtemp=edit.rank;
	//alert(strtemp);
  for(i=0;i<strtemp.length;i++) {
    if(strtemp[i].value==id && i<strtemp.length-1){
       toid=strtemp[i+1].value;
       window.location = "wapindexedit.aspx?action=order&moveid=" + id + "_" + toid + "&classid=<%=this.classid%>&childid=<%=this.childid%>";
       //edit.submit();
       return;
    }
 }
  alert("到了最底端了~");
 //alert(id+'->'+toid);
}

function T(a) {
   /*
    
    //取所有body内容
    var strBody = document.body.innerHTML;
    //分析UBB位置

    //alert(document.body.innerHTML);

    var whereMe = strBody.indexOf("<a href=\"javascript:T('" + a + "');\">");

    var parStart = strBody.indexOf("<a name=\"kl", whereMe);

    var parEnd = strBody.indexOf("\"></a>", parStart);

    var needClass = strBody.substring(parStart + 11, parEnd);

    //alert(strBody);
    //alert(whereMe + "---" + parStart + "---" + parEnd + "--" + needClass);
    */
   var winPar= window.showModalDialog('/admin/UBBEdit.aspx?toclassid=<%=classid %>&ubb=' + encodeURIComponent(a), null, 'dialogWidth=600px;dialogHeight=450px;menuba=no;resizable=yes');
   if (winPar == "refresh") {
       window.location.reload();
   }
}


window.parent.sitepv.vers.value = "<%=this.vers %>";
</script>
<body>
<form name="edit" action="wapindexedit.aspx" method="get">
<%=strShowHtml%>
<input type="hidden" name="action" value="">
<input type="hidden" name="classid" value="<%=classid%>">
<input type="hidden" name="siteposition" value="">
<input type="hidden" name="css" value="">
<input type="hidden" name="vers" value="">
<input type="hidden" name="sitelist" value="">
</form>

</body>
</html>