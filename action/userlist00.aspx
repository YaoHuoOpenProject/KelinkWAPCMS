<%@ Page Language="C#" AutoEventWireup="true" Codebehind="userlist00.aspx.cs" Inherits="KeLin.WebSite.action.userlist00" %><%@ Import namespace="KeLin.ClassManager.Tool" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>文章资源</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/NetCSS/style.css" rel="stylesheet" type="text/css">

    <script language="javascript" type="text/javascript">
		<!--
        function openViewCach() {
            window.open("/admin/applicationadmin.aspx?action=remove&siteid=<%=base.SiteId %>&sid=<%=base.SID %>", "viewSite2", "height=400, width=520, toolbar= no, menubar=no, scrollbars=yes, resizable=yes, location=yes, status=yes")
        }   
        function DoEdit(types) {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("请选择需要修改的记录！")
                return;
            }
            if (SelectNo > 1) {
                alert("修改数据时不能多选！")
                return;
            }
            
            var edtHangBiaoShis = GetOnChecked();
            var toclassid = document.getElementsByName('toclassid').value;
            
            if (types == 1) {
                window.location.href = "addUser.aspx?bookid=" + edtHangBiaoShis;

            } else {
            
            window.open('/action/admin_WAPmodify.aspx?action=go&id=' + edtHangBiaoShis + '&classid=' + toclassid + '&siteid=<%=base.SiteId %>&page=1&sid=<%=base.SID %>');
            }
            
        }
        function DoDel() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("请选择删除项！")
                return;
            }
            if (window.confirm("请确认删除，否则选择取消?")) {
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "Del";
                document.getElementById("form1").submit();
            }
        }
        function DoNew() {
            window.location.href="addUser.aspx?classid="+document.getElementById("TextBox4").value;
        }
        function DoAd() {
        /*
        var edtHangBiaoShis=document.getElementById("TextBox4").value;
        if (edtHangBiaoShis == "")
        {
        var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("请选择需要插放广告的栏目！")
                return;
            }
            if (SelectNo > 1) {
                alert("插放广告的栏目不能多选！")
                return;
            }
            edtHangBiaoShis = GetOnChecked();
         }
         **/
            window.location.href = "/admin/modifyAD.aspx?systype=action";
        }
        function DoContent() {
            window.location.href="userlist.aspx?classid="+document.getElementById("TextBox4").value;
            }
        function DoReBack() {
            window.location.href="guestlist.aspx?classid="+document.getElementById("TextBox4").value;        
        }
        function DoSmall() {
            window.location.href="../admin/systemclass.aspx?systype=action&classid="+document.getElementById("TextBox4").value;  
        }
        function DoMyItem() {
            var delHangBiaoShis = GetOnChecked();
            if (delHangBiaoShis == null || delHangBiaoShis == "") {
                alert("请选择要转移项！")
                return;
            }  
            if (document.getElementById("DropDownList2").value == "")          
            {
                alert("请选择要转移到的栏目！")
                return;
            }
                document.getElementById("hidHangBiaoShis").value = delHangBiaoShis;
                document.getElementById("CommandType").value = "myitem";
                document.getElementById("form1").submit();           
        }
        function DoCheck() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("请选择需要审核的记录！")
                return;
            }                        
            var locHangBiaoShis = GetOnChecked();
            document.getElementById("hidHangBiaoShis").value = locHangBiaoShis;
            document.getElementById("CommandType").value = "Check";
            document.getElementById("form1").submit();            
        }
        function DoUnCheck() {
            var SelectNo = checkSelectNo('chkAll');
            if (SelectNo == 0) {
                alert("请选择需要弃审的记录！")
                return;
            }                        
            var locHangBiaoShis = GetOnChecked();
            document.getElementById("hidHangBiaoShis").value = locHangBiaoShis;
            document.getElementById("CommandType").value = "UnCheck";
            document.getElementById("form1").submit();            
        }
        function GetOnChecked() {
            var sRet = '';
            var sChar = '';
            var varHangBiaoShi = "";
            var a = document.getElementsByName('chkSelect');
            var classidtemp = document.getElementsByName('classidtemp');
            var toclassid = document.getElementsByName('toclassid');
            var n = a.length;
            //alert(n);			
            for (var i = 0; i < n; i++) {
                if (a[i].checked) {
                    varHangBiaoShi = varHangBiaoShi + sChar + a[i].value;
                    toclassid.value = classidtemp[i].value;
                    sChar = ',';
                }

            }
            return varHangBiaoShi;
        }
        

        function shSearch() {
            //alert("aa");
            //var a = document.all.item("searchtable").style.display;
            if (document.all.item("formSearch").style.display == "none")
                document.all.item("formSearch").style.display = "block";
            else
                document.all.item("formSearch").style.display = "none";
        }
		//-->
function checkAll(chkAllID,thisObj) 
{ 
    var chkAll = document.getElementById(chkAllID); 
    var chks = document.getElementsByTagName("input"); 
    var chkNo = 0; 
    var selectNo = 0; 
    for(var i =0; i < chks.length; i++) 
    { 
       if(chks[i].type == "checkbox") 
       { 
          //全选触发事件    
          if(chkAll == thisObj) 
          { 
             chks[i].checked = thisObj.checked;               
          }            
          //非全选触发 
          else 
          { 
            if(chks[i].checked && chks[i].id != chkAllID) 
             selectNo++; 
          } 
          if(chks[i].id != chkAllID) 
          { 
            chkNo++; 
          } 
       } 
    }   
    if(chkAll != thisObj) 
    { 
        chkAll.checked = chkNo==selectNo; 
    } 
} 
function checkSelectNo(chkAllID) 
{ 
    var chks = document.getElementsByTagName("input"); 
    var selectNo =0; 
    for(var i =0; i < chks.length; i++) 
    { 
       if(chks[i].type == "checkbox") 
       { 
            if(chks[i].id != chkAllID && chks[i].checked) 
            { 
                selectNo++; 
            } 
       } 
    }    
    return selectNo; 
} 

function bathdaoru() { 
var ItemID = document.getElementById("TextBox4").value;
window.location.href="upload_bath.aspx?systype=action&classid="+ItemID;
//window.open ("upload_bath.aspx?systype=action&classid=<%=classid%>", "addsystemwindow", "height=450, width=550, toolbar= no, menubar=no, scrollbars=no, resizable=no, location=no, status=no");
}
function daoru() { 
window.open ("systemindex.aspx?site=<%=base.SiteId%>&classid=<%=classid%>", "daoruwindow", "height=520, width=720, toolbar= no, menubar=no, scrollbars=yes, resizable=no, location=no, status=no")
}

//window.location.href = "/action/admin_userlistwap.aspx?classid=<%=classid%>&siteid=<%=base.SiteId %>&page=1&sid=<%=base.SID %>";
       
    </script>

</head>
<body>
   此插件暂时无超级管理员后台。
</body>
</html>
