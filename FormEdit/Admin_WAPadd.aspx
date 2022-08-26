<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_WAPadd.aspx.cs" Inherits="KeLin.WebSite.FormEdit.admin_WAPadd" %><%@ Import namespace="KeLin.ClassManager.Tool" %><%
Response.Write(WapTool.showTop(this.GetLang("新增内容|新增內容|content add"), wmlVo));//显示头                                                                                                                                                                       
if (ver == "1")
{
    Response.Write("<p>");    
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write(this.whickOK);
        Response.Write("</b><br/>");
        Response.Write("<a href=\"" + this.http_start + "FormEdit/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.toclassid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a><br/>");
    }

    Response.Write("<a href=\"" + this.http_start + "FormEdit/admin_WAPadd.aspx?action=go&amp;siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "&amp;sid=" + this.sid1 + "-2-" + this.cs + "-" + this.lang + "-" + this.myua + "-"+this.width+"\">" + this.GetLang("WAP2.0界面操作|WAP2.0界面操作|WAP2.0 interface") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</p>");
}
else //2.0界面
{

    Response.Write("<div class=\"title\">" + this.GetLang("新增操作|新增操作|Add operation") + "</div>");
    Response.Write("<div class=\"tip\">");
    Response.Write(this.ERROR);
    if (this.INFO == "OK")
    {
        Response.Write("<b>");
        Response.Write("新增成功！");
        Response.Write("</b> ");
        Response.Write("<a href=\"" + this.http_start + "FormEdit/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.toclassid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    } else if (this.INFO == "NULL")
    {
        Response.Write("<b>");
        Response.Write("必选项不能为空！");
        Response.Write("</b> ");
    }

    Response.Write("</div>");
   
    if (this.INFO != "OK")
    {
        Response.Write("<div class=\"content2\">");

        //选择栏目
        Response.Write("<form name=\"gt\" action=\"" + http_start + "FormEdit/admin_WAPadd.aspx\" method=\"post\">");
        Response.Write("<select name=\"toclassid\" value=\"" + this.classid + "\">");
        Response.Write("<option value=\"" + this.classid + "\">" + this.classid + "</option>");
        for (int i = 0; (classList != null && i < classList.Count); i++)
        {

            Response.Write("<option value=\"" + classList[i].classid + "\">" + classList[i].classid + "_" + classList[i].classname + "</option>");

        }
        Response.Write("</select><br/>");


        Response.Write(this.GetLang("标题|標題|Title") + "*:<br/>");
        Response.Write("<input type=\"text\" name=\"book_title\" value=\""+book_title+"\"/><br/>");

        Response.Write(this.GetLang("描述|描述|Content") + ":<br/>");
        Response.Write("<textarea name=\"book_content\" rows=\"3\" style=\"width:100%\">"+book_content+"</textarea><br/>");
        %>

      <table id="batchTableAdd" width="735" bordercolorlight="#C0C0C0" border="1" cellpadding="0" cellspacing="0" bordercolor="#C0C0C0" bordercolordark="#C0C0C0">
	<tr>
		<td width="120" align="center">操作</td>
		<td width="98" align="center">名称</td>
		<td width="110" align="center">类型</td>
		<td width="98" align="center">长度</td>
		<td width="98" align="center">初始值</td>
		<td width="69" align="center">必填</td>
		<td width="66" align="center">排序号</td>
	</tr>
	<tr id="TRLine">
		<td>
		<p align="center">
		<a href="#" onClick="addRow('batchTableAdd','TRLine')">添加</a>/<a href="#" onClick="deleteRow('batchTableAdd','TRLine')">删除</a></td>
		<td>
		<input type="text" name="formName" id="formName" size="10"></td>
		<td><select name="formType" id="formType">
		<option value="0">单行文本</option>
		<option value="1">多行文本</option>
		<option value="2">下拉框</option>
		<option value="3">多选框</option>
		</select></td>
		<td><input type="text" name="formLenth" id="formLenth" value="5-50"  size="10"></td>
		<td><input type="text" name="formText" id="formText" value=""  size="10"></td>
		<td>
		<select name="formNeed" id="formNeed">
		<option value="0">是</option>
		<option value="1">否</option>		
		</select>
		</td>
		<td><input type="text" name="rank" id="rank" value=""  size="6"></td>

	</tr>
</table>

<br>
<font color="#FF0000">初始值：下拉框和多选框类型请使用半角;隔开。【删除】从最后一条删起。投票模式只有“名称”有效。

</font><br />
（1）表单提交按钮文字：<input type="text" name="submitName" value="<%=this.submitName %>"  size="10">
<br />
（2）表单类型：<select name="book_type" id="book_type">
		<option value="0" <%if(this.book_type=="0") Response.Write("selected"); %>>0_提交到后台+可发送手机或邮件提醒(配合3,4,5，可留空)</option>
		<option value="1" <%if(this.book_type=="1") Response.Write("selected"); %>>1_投票模式</option>
		<option value="2" <%if(this.book_type=="2") Response.Write("selected"); %>>2_提交到后台+手机验证码(4,5要填写)</option>	
		</select>
<br />
（3）“提交到后台”模式是否同时发送到邮箱：<br />
<input type="text" name="toEmail" value="<%=this.toEmail %>"  size="20">
<br />(不发送留空，web.config中的KL_SMTP_ADRRESS等配置发送参数，多个;区分。)
<br />----------<br />
（4）"提交到后台"模式是否同时发送到手机号码上,不发送留空，<br />手机号码在第几个录入框：
<input type="text" name="toMobile" value="<%=this.toMobile %>"  size="20"><br />
(手机号码在第一个录入框为[0]，第二个为[1]，第三个为[2]以此类推)
<br />----------<br />
（5）短信内容：<input type="text" name="toContent" value="<%=this.toContent %>"  size="50"><br />
(取录入框内容为第一个为[0]，第二个为[1]，第三个为[2]以此类推，手机验证模式显示随机码用：[rnd])<br />
(短信会写入“网站管理”---“短信发送会员”中查到)<br />
<script language="JavaScript">
    function addRow(tableId, trId) {
        var tableObj = document.getElementById(tableId);
        var trObj = document.getElementById(trId);
        //var trIndex = trObj.rowIndex+1;  
        var rows = tableObj.rows.length;
        var cell = "";
        var tr = tableObj.insertRow(rows);
        for (i = 0; i < trObj.cells.length; i++) {
            cell = tableObj.rows(rows).insertCell(i);
            cell.innerText = trObj.cells(i).innerText;
            cell.className = trObj.cells(i).className;
            cell.innerHTML = trObj.cells(i).innerHTML;
        }
    }
    function deleteRow(tableId, trId) {

        var tableObj = document.getElementById(tableId);
        var trObj = document.getElementById(trId);

        //var trIndex = trObj.rowIndex;//复制tr的行号  
        var rows = tableObj.rows.length;
        if (rows > 2) {
            tableObj.deleteRow(rows - 1);
        } else if (rows == 2) {
             alert("第一行不能删除！");
        } else {
            alert("无可删除的信息！");
        }
    }  
</script>



       <%
        Response.Write("<input type=\"hidden\" name=\"action\" value=\"gomod\"/>");
        Response.Write("<input type=\"hidden\" name=\"classid\" value=\"" + classid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"siteid\" value=\"" + siteid + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"page\" value=\"" + page + "\"/>");
        Response.Write("<input type=\"hidden\" name=\"sid\" value=\"" + sid + "\"/>");
        Response.Write("<br/><br/><input type=\"submit\"  name=\"bt\" value=\"" + this.GetLang("确定提交|确定提交|Add") + "\"/>");
        Response.Write("</form></div>");
    }
    Response.Write("<div class=\"mylink\">");
    Response.Write("<br/><a href=\"" + this.http_start + "FormEdit/admin_userlistWAP.aspx?siteid=" + this.siteid + "&amp;classid=" + this.classid + "&amp;page=" + this.page + "\">" + this.GetLang("返回列表|返回列表|Back to list") + "</a>");
    Response.Write(WapTool.GetVS(wmlVo));
    Response.Write("</div>");
 

}
                                                                                                                                                                               
                                                                                                                                                                             
//显示底部
Response.Write(WapTool.showDown(wmlVo)); %>


