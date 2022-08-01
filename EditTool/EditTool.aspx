<link rel="STYLESHEET" type="text/css" href="/EditTool/images/edit.css">
<Script Src="/EditTool/images/DhtmlEdit.js"></Script>
<table id="oblog_Container" class="oblog_Body" height="300" width="100%" cellpadding=3 cellspacing=0 border=0 >
        <tr> <td>
          <table cellpadding=0 cellspacing=0 >
            <tr class="yToolbar" ID="ExtToolbar0" > <td>
              <select ID="oblog_formatSelect" class="oblog_TBGen" onchange="oblog_doSelectClick('FormatBlock',this)">
                <option>段落格式</option>
                <option VALUE="&lt;P&gt;">普通格式 
                <option VALUE="&lt;H1&gt;">标题 1 
                <option VALUE="&lt;H2&gt;">标题 2 
                <option VALUE="&lt;H3&gt;">标题 3 
                <option VALUE="&lt;H4&gt;">标题 4 
                <option VALUE="&lt;H5&gt;">标题 5 
                <option VALUE="&lt;H6&gt;">标题 6 
                <option VALUE="&lt;H7&gt;">标题 7 
                <option VALUE="&lt;PRE&gt;">已编排格式 
                <option VALUE="&lt;ADDRESS&gt;">地址 
				</select></td><td><select language="javascript" class="oblog_TBGen" id="FontName" onchange="FormatText ('fontname',this[this.selectedIndex].value);">
                <option class="heading" selected>字体 
                <option value="宋体">宋体 
                <option value="黑体">黑体 
                <option value="楷体_GB2312">楷体 
                <option value="仿宋_GB2312">仿宋 
                <option value="隶书">隶书 
                <option value="幼圆">幼圆 
                <option value="新宋体">新宋体 
                <option value="细明体">细明体 
                <option value="Arial">Arial 
                <option value="Arial Black">Arial Black 
                <option value="Arial Narrow">Arial Narrow 
                <option value="Bradley Hand ITC">Bradley Hand ITC 
                <option value="Brush Script	MT">Brush Script MT 
                <option value="Century Gothic">Century Gothic 
                <option value="Comic Sans MS">Comic Sans MS 
                <option value="Courier">Courier 
                <option value="Courier New">Courier New 
                <option value="MS Sans Serif">MS Sans Serif 
                <option value="Script">Script 
                <option value="System">System 
                <option value="Times New Roman">Times New Roman 
                <option value="Viner Hand ITC">Viner Hand ITC 
                <option value="Verdana">Verdana 
                <option value="Wide Latin">Wide Latin 
                <option value="Wingdings">Wingdings</option>
              </select>
              <select language="javascript" class="oblog_TBGen" id="FontSize" onchange="FormatText('fontsize',this[this.selectedIndex].value);">                                   
                <option class="heading" selected>字号 
                <option value="1">1 
                <option value="2">2 
                <option value="3">3 
                <option value="4">4 
                <option value="5">5 
                <option value="6">6 
                <option value="7">7</option>
              </select>
            <td id="forecolor" name=forecolor class="oblog_Btn" TITLE="字体颜色" LANGUAGE="javascript" onclick="oblog_foreColor();" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
              <img class="oblog_Ico" src="/EditTool/images/fgcolor.gif" WIDTH="16" HEIGHT="16" unselectable="on" > 
            </td>
            <td id="backcolor" class="oblog_Btn" TITLE="字体背景颜色" LANGUAGE="javascript" onclick="oblog_backColor();ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn';> 
              <img class="oblog_Ico" src="/EditTool/images/fbcolor.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
            </td>
            <td class="oblog_Btn" TITLE="插入特殊符号" LANGUAGE="javascript" onclick="insertSpecialChar();" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn';> 
              <img class="oblog_Ico" src="/EditTool/images/specialchar.gif" ></td>
            <td><img src="/EditTool/images/separator.gif"> </td>
            <td class="oblog_Btn" TITLE="替换" LANGUAGE="javascript" onclick="oblog_replace();" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn';> 
              <img class="oblog_Ico" src="/EditTool/images/replace.gif" WIDTH="16" HEIGHT="16"> 
            </td>
            <td class="oblog_Btn" TITLE="清理代码" LANGUAGE="javascript" onclick="oblog_CleanCode();ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn';> 
              <img class="oblog_Ico" src="/EditTool/images/cleancode.gif" WIDTH="16" HEIGHT="16"></td>
            <td><img src="/EditTool/images/separator.gif"></td>
			<td> 
              <select ID="Zoom" class="oblog_TBGen" onchange="doZoom(this)" >
                <option VALUE="100">100% 
                <option VALUE="50">50% 
                <option VALUE="75">75% 
                <option VALUE="100">100% 
                <option VALUE="125">125% 
                <option VALUE="150">150% 
                <option VALUE="175">175% 
                <option VALUE="200">200%</option>
              </select>
            </td>
            <td class="oblog_Btn" TITLE="帮助" LANGUAGE="javascript" onclick="oblog_help();ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn';> 
              <img class="oblog_Ico" src="/EditTool/images/help.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
            </td>        
            </tr>
          </table>
          <table cellpadding=0 cellspacing=0 >
            <tr class="yToolbar" ID="ExtToolbar1"> 
              <td class="oblog_Btn" TITLE="全选" LANGUAGE="javascript" onclick="FormatText('selectAll');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn' > 
                <img class="oblog_Ico" src="/EditTool/images/selectAll.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="剪切" LANGUAGE="javascript" onclick="FormatText('cut');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/cut.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="复制" LANGUAGE="javascript" onclick="FormatText('copy');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/copy.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="粘贴" LANGUAGE="javascript" onclick="FormatText('paste');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/paste.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="撤消" LANGUAGE="javascript" onclick="FormatText('undo');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/undo.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="恢复" LANGUAGE="javascript" onclick="FormatText('redo');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/redo.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td><img src="/EditTool/images/separator.gif"></td>
              <td class="oblog_Btn" TITLE="插入超级链接" LANGUAGE="javascript" onclick="oblog_forlink();ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/wlink.gif" WIDTH="18" HEIGHT="18" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="去掉超级链接" LANGUAGE="javascript" onclick="FormatText('Unlink');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/unlink.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="插入图片" LANGUAGE="javascript" onclick="oblog_forimg();ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/img.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="插入水平线" LANGUAGE="javascript" onclick="FormatText('InsertHorizontalRule', '');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/hr.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td><img src="/EditTool/images/separator.gif"></td>
              <td class="oblog_Btn" TITLE="插入表格" LANGUAGE="javascript" onclick="oblog_fortable();ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/table.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="插入行" LANGUAGE="javascript" onclick="oblog_InsertRow();ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/insertrow.gif" WIDTH="16" HEIGHT="16"> 
              </td>
              <td class="oblog_Btn" TITLE="删除行" LANGUAGE="javascript" onclick="oblog_DeleteRow();ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/deleterow.gif" WIDTH="16" HEIGHT="16"> 
              </td>
              <td class="oblog_Btn" TITLE="插入列" LANGUAGE="javascript" onclick="oblog_InsertColumn();ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/insertcolumn.gif" WIDTH="16" HEIGHT="16"> 
              </td>
              <td class="oblog_Btn" TITLE="删除列" LANGUAGE="javascript" onclick="oblog_DeleteColumn();ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/deletecolumn.gif" WIDTH="16" HEIGHT="16"> 
              </td>
              <td><img src="/EditTool/images/separator.gif"></td>
              <td class="oblog_Btn" TITLE="插入Flash" LANGUAGE="javascript" onclick="oblog_forswf();ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/swf.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="插入Windows Media" LANGUAGE="javascript" onclick="oblog_forwmv();ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/wmv.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="插入Real Media" LANGUAGE="javascript" onclick="oblog_forrm();ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/rm.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              
            <td class="oblog_Btn" TITLE="【插入系统图片资源】" LANGUAGE="javascript" onclick="DaoRuSysPicture()" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn';>
			<img class="oblog_Ico" src="/EditTool/images/c1.gif" WIDTH="115" HEIGHT="16"></td>
			<td class="oblog_Btn" TITLE="【插入上传文件资源】" LANGUAGE="javascript" onclick="DaoRuSysFile()" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn';>
			<img class="oblog_Ico" src="/EditTool/images/c2.gif" WIDTH="115" HEIGHT="16"></td>
	<td class="oblog_Btn" TITLE="【插入网站资源链接】" LANGUAGE="javascript" onclick="DaoRuSysLink()" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn';>
			<img class="oblog_Ico" src="/EditTool/images/c6.gif" WIDTH="115" HEIGHT="16"></td>
            </tr>
          </table>
          <table cellpadding=0 cellspacing=0 >
            <tr class="yToolbar" ID="ExtToolbar2"> 
              <td class="oblog_Btn" TITLE="加粗" LANGUAGE="javascript" onclick="FormatText('bold', '');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/bold.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="斜体" LANGUAGE="javascript" onclick="FormatText('italic', '');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/italic.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="下划线" LANGUAGE="javascript" onclick="FormatText('underline', '');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/underline.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="上标" LANGUAGE="javascript" onclick="FormatText('superscript', '');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/superscript.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="下标" LANGUAGE="javascript" onclick="FormatText('subscript', '');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/subscript.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="删除线" LANGUAGE="javascript" onclick="FormatText('strikethrough', '');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/strikethrough.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="取消格式" LANGUAGE="javascript" onclick="FormatText('RemoveFormat', '');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/removeformat.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td><img src="/EditTool/images/separator.gif"></td>
              <td class="oblog_Btn" TITLE="左对齐" NAME="Justify" LANGUAGE="javascript" onclick="FormatText('justifyleft', '');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/aleft.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="居中" NAME="Justify" LANGUAGE="javascript" onclick="FormatText('justifycenter', '');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/center.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="右对齐" NAME="Justify" LANGUAGE="javascript" onclick="FormatText('justifyright', '');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/aright.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td><img src="/EditTool/images/separator.gif"></td>
              <td class="oblog_Btn" TITLE="编号" LANGUAGE="javascript" onclick="FormatText('insertorderedlist', '');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/numlist.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="项目符号" LANGUAGE="javascript" onclick="FormatText('insertunorderedlist', '');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/bullist.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="减少缩进量" LANGUAGE="javascript" onclick="FormatText('outdent', '');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/outdent.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
              <td class="oblog_Btn" TITLE="增加缩进量" LANGUAGE="javascript" onclick="FormatText('indent', '');ondrag='return false;'" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/indent.gif" WIDTH="16" HEIGHT="16" unselectable="on"> 
              </td>
			  <td><img src="/EditTool/images/separator.gif"></td>
               <td class="oblog_Btn" TITLE="插入表情" LANGUAGE="javascript" onclick="oblog_foremot()" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; > 
                <img class="oblog_Ico" src="/EditTool/images/smiley.gif" WIDTH="16" HEIGHT="16" unselectable="on" > 
              </td>
			  <td class="oblog_Btn" TITLE="上传文件" LANGUAGE="javascript" onclick="oblog_forfile()" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn';>
				<img class="oblog_Ico" src="/EditTool/images/file.gif" WIDTH="16" HEIGHT="16" unselectable="on">
			  </td>
			  	<td class="oblog_Btn" TITLE="插入代码:选择内容后再点击此会表格包住内容" LANGUAGE="javascript" onclick="oblog_code()" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn';>
			<img class="oblog_Ico" src="/EditTool/images/code.gif" WIDTH="16" HEIGHT="16">
			<td class="oblog_Btn" TITLE="插入引用" LANGUAGE="javascript" onclick="oblog_quote()" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn';>
			<img class="oblog_Ico" src="/EditTool/images/quote.gif" WIDTH="16" HEIGHT="16">
			</td>
			
			<td class="oblog_Btn" TITLE="导入系统网页模板" LANGUAGE="javascript" onclick="DaoRuSysPage()" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn'; >
			<img class="oblog_Ico" src="/EditTool/images/c4.gif" WIDTH="115" HEIGHT="16"></td>
			<td class="oblog_Btn" TITLE="插入我的单独模块" LANGUAGE="javascript" onclick="DaoRuMyFunc()" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn';>
			<img class="oblog_Ico" src="/EditTool/images/c3.gif" WIDTH="115" HEIGHT="16"></td>			
			<td class="oblog_Btn" TITLE="【插入 UBB 资源】" LANGUAGE="javascript" onclick="DaoRuUBB()" onmouseover=this.className='oblog_BtnMouseOverUp'; onmouseout=this.className='oblog_Btn';>
			<img class="oblog_Ico" src="/EditTool/images/c5.gif" WIDTH="115" HEIGHT="16"></td>

			  </td>
            </tr>
          </table>
         </tr>
        <tr> 
          <td height="100%" id=PostiFrame><iframe class="oblog_Composition" ID="oblog_Composition" MARGINHEIGHT="5" MARGINWIDTH="5" width="100%" height="100%"></iframe> 
          </td>
        </tr>
        <tr> 
          <td> 
            <TABLE CELLPADDING=0 CELLSPACING=0 BORDER=0 width='100%'>
              <TR> 
                <TD width='10'>&nbsp;</TD>
                <TD CLASS="oblog_TabOn" id="oblog_TabDesign" onClick="if (oblog_bTextMode!=1) {oblog_setMode(1);}" unselectable="on" width='60' > 
                  <IMG unselectable="on" SRC="/EditTool/images/mode.design.gif" ALIGN="absmiddle" width=21 height=20>&nbsp;设计</TD>
                <td style="width:10px"></td>
                <TD CLASS="oblog_TabOff" id="oblog_TabView" onClick="oblog_View();" unselectable="on" width='60' > 
                  <IMG unselectable="on" SRC="/EditTool/images/mode.view.gif" ALIGN="absmiddle" width=20 height=20>&nbsp;预览 
                </TD>
                <td style="width:10px"></td>
                <TD CLASS="oblog_TabOff" id="oblog_TabHtml" onClick="if (oblog_bTextMode!=2) {oblog_setMode(2);}" unselectable="on" width='60' style="cursor: pointer;"><IMG unselectable="on" SRC="/EditTool/images/mode.html.gif" ALIGN="absmiddle" width=21 height=20>&nbsp;源码</TD>
                <TD align='right'><a href="javascript:oblog_Size(-300)"><img src="/EditTool/images/minus.gif" unselectable="on" border='0'></a> 
                  <a href="javascript:oblog_Size(300)"><img src="/EditTool/images/plus.gif" unselectable="on" border='0'></a></TD>
                <TD width='20'></TD>
              </TR>
            </TABLE>
          </td>
        </tr>
    </table>
<Script>
var oblog_bIsIE5=document.all;
var canusehtml='1';
var PostType=1;

if (oblog_bIsIE5){
	var IframeID=frames["oblog_Composition"];
}
else{
	var IframeID=document.getElementById("oblog_Composition").contentWindow;
	var oblog_bIsNC=true;
}

if (oblog_bLoad==false)
{
	oblog_InitDocument("Body","GB2312");
}
function submits(){
	var html;
	html =oblog_getText();
	//html=oblog_rCode(html,"<a>　</a>","");
	
	//var RegExp = /<style[^>]*>(.*)<\/style>/gi;
	//html = html.replace(RegExp, "");
	
	document.all("edit").value=html;
}
function initx(){
IframeID.document.body.innerHTML=""+document.all("edit").value;
}
initx();


</Script>
<Script Src="/EditTool/images/editor.js"></Script>
