var Quote = 0;
var Bold  = 0;
var Italic = 0;
var Underline = 0;
var Code = 0;
var Center = 0;
var Strike = 0;
var Sound = 0;
var Swf = 0;
var Ra = 0;
var Rm = 0;
var Marquee = 0;
var Fly = 0;
var fanzi=0;
var text_enter_url      = "请输入连接网址";
var text_enter_txt      = "请输入连接说明";
var text_enter_image    = "请输入图片网址";
var text_enter_sound    = "请输入声音文件网址";
var text_enter_swf      = "请输入FLASH动画网址";
var text_enter_ra      = "请输入Real音乐网址";
var text_enter_rm      = "请输入Real影片网址";
var text_enter_wmv      = "请输入Media影片网址";
var text_enter_wma      = "请输入Media音乐网址";
var text_enter_mov      = "请输入QuickTime音乐网址";
var text_enter_sw      = "请输入shockwave音乐网址";
var text_enter_email    = "请输入邮件网址";
var error_no_url        = "您必须输入网址";
var error_no_txt        = "您必须连接说明";
var error_no_title      = "您必须输入首页标题";
var error_no_email      = "您必须输入邮件网址";
var error_no_gset       = "必须正确按照各式输入！";
var error_no_gtxt       = "必须输入文字！";
var text_enter_guang1   = "文字的长度、颜色和边界大小";
var text_enter_guang2   = "要产生效果的文字！";
var text_enter_points    = "请输入数值,如：1000 (即限制积分在1000点以下的用户不能浏览该内容!)";
var error_no_points       = "您必须输入数值,如：1000";
var text_enter_money    = "请输入数值,如：1000 (即限制金钱在1000点以下的用户不能浏览该内容!)";
var error_no_moeny       = "您必须输入数值,如：1000";
var text_enter_power    = "请输入数值,如：1000 (即限制威望在1000点以下的用户不能浏览该内容!)";
var error_no_power       = "您必须输入数值,如：1000";
var text_enter_post    = "请输入数值,如：1000 (即限制发表文章在1000点以下的用户不能浏览该内容!)";
var error_no_post       = "您必须输入数值,如：1000";
var text_enter_usercp    = "请输入数值,如：1000 (即限制魅力值在1000点以下的用户不能浏览该内容!)";
var error_no_usercp       = "您必须输入数值,如：1000";
var text_enter_usemoney    = "请输入数值,如：1000 (即只有用户支付了1000点金钱才能浏览该内容!)";
var error_no_usemoney       = "您必须输入数值,如：1000";
var Dvbbs_bIsIE5=document.all
function commentWrite(NewCode) {
IframeID.document.body.innerHTML+=NewCode;
IframeID.focus();
return;
}
function storeCaret(text) { 
	if (text.createTextRange) {
		text.caretPos = document.selection.createRange().duplicate();
	}
        if(event.ctrlKey && window.event.keyCode==13){i++;if (i>1) {alert('帖子正在发出，请耐心等待！');return false;}this.document.form.submit();}
}
function AddText(text) {
	if (IframeID.document.body.createTextRange && IframeID.document.body.caretPos) {      
		var caretPos = IframeID.document.body.caretPos;      
		caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ?
		text + ' ' : text;
	}
	else IframeID.document.body.innerHTML += text;
	IframeID.focus(caretPos);
}
function inputs(str)
{
AddText(str);
}
function Curl() {
var FoundErrors = '';
var enterURL   = prompt(text_enter_url, "http://");
var enterTxT   = prompt(text_enter_txt, enterURL);
if (!enterURL)    {
FoundErrors += "\n" + error_no_url;
}
if (!enterTxT)    {
FoundErrors += "\n" + error_no_txt;
}
if (FoundErrors)  {
alert("错误！"+FoundErrors);
return;
}
var ToAdd = "[URL="+enterURL+"]"+enterTxT+"[/URL]";
IframeID.document.body.innerHTML+=ToAdd;
IframeID.focus();
}
function Cimage() {
var FoundErrors = '';
var enterURL   = prompt(text_enter_image, "http://");
if (!enterURL) {
FoundErrors += "\n" + error_no_url;
}
if (FoundErrors) {
alert("错误！"+FoundErrors);
return;
}
var ToAdd = "[IMG]"+enterURL+"[/IMG]";
IframeID.document.body.innerHTML+=ToAdd;
IframeID.focus();
}
function Cemail() {
var emailAddress = prompt(text_enter_email,"");
if (!emailAddress) { alert(error_no_email); return; }
var ToAdd = "[EMAIL]"+emailAddress+"[/EMAIL]";
commentWrite(ToAdd);
}
function Ccode() {
if (Code == 0) {
ToAdd = "[CODE]";
document.form.code.value = " 代码*";
Code = 1;
} else {
ToAdd = "[/CODE]";
document.form.code.value = " 代码 ";
Code = 0;
}
commentWrite(ToAdd);
}
function Cquote() {
fontbegin="[QUOTE]";
fontend="[/QUOTE]";
fontchuli();
}
function Cbold() {
fontbegin="[B]";
fontend="[/B]";
fontchuli();
}
function Citalic() {
fontbegin="[I]";
fontend="[/I]";
fontchuli();
}
function Cunder() {
fontbegin="[U]";
fontend="[/U]";
fontchuli();
}
function Ccenter() {
fontbegin="[center]";
fontend="[/center]";
fontchuli();
}
function Cstrike() {
fontbegin="[strike]";
fontend="[/strike]";
fontchuli();
}
function point() {
var FoundErrors = '';
var enterpoints  =prompt(text_enter_points,"1000");
if (!enterpoints) {
FoundErrors += "\n" + error_no_points;
}
if (FoundErrors) {
alert("错误！"+FoundErrors);
return;
}
var ToAdd = "[Point="+enterpoints+"][/Point]";
IframeID.document.body.innerHTML+=ToAdd;
IframeID.focus();
}
function money() {
var FoundErrors = '';
var entermoney  =prompt(text_enter_money,"1000");
if (!entermoney) {
FoundErrors += error_no_moenyo_moeny;
}
if (FoundErrors) {
alert("错误！"+FoundErrors);
return;
}
var ToAdd = "[Money="+entermoney+"][/Money]";
IframeID.document.body.innerHTML+=ToAdd;
IframeID.focus();
}
function usemoney() {
var FoundErrors = '';
var entermoney  =prompt(text_enter_usemoney,"1000");
if (!entermoney) {
FoundErrors += "\n" + error_no_usemoney;
}
if (FoundErrors) {
alert("错误！"+FoundErrors);
return;
}
var ToAdd = "[UseMoney="+entermoney+"][/UseMoney]";
IframeID.document.body.innerHTML+=ToAdd;
IframeID.focus();
}
function usercp() {
var FoundErrors = '';
var enterusercp  =prompt(text_enter_usercp,"1000");
if (!enterusercp) {
FoundErrors += "\n" + error_no_usercp;
}
if (FoundErrors) {
alert("错误！"+FoundErrors);
return;
}
var ToAdd = "[UserCP="+enterusercp+"][/UserCP]";
IframeID.document.body.innerHTML+=ToAdd;
IframeID.focus();
}
function power() {
var FoundErrors = '';
var enterpower  =prompt(text_enter_power,"1000");
if (!enterpower) {
FoundErrors += "\n" + error_no_power;
}
if (FoundErrors) {
alert("错误！"+FoundErrors);
return;
}
var ToAdd = "[Power="+enterpower+"][/Power]";
IframeID.document.body.innerHTML+=ToAdd;
IframeID.focus();
}
function article() {
var FoundErrors = '';
var enterpost  =prompt(text_enter_post,"1000");
if (!enterpost) {
FoundErrors += "\n" + error_no_post;
}
if (FoundErrors) {
alert("错误！"+FoundErrors);
return;
}
var ToAdd = "[Post="+enterpost+"][/Post]";
IframeID.document.body.innerHTML+=ToAdd;
IframeID.focus();
}
function replyview() {
var ToAdd = "[replyview][/replyview]";
IframeID.document.body.innerHTML+=ToAdd;
IframeID.focus();
}
function Csound() {
var FoundErrors = '';
var enterURL   = prompt(text_enter_sound, "http://");
if (!enterURL) {
FoundErrors += "\n" + error_no_url;
}
if (FoundErrors) {
alert("错误！"+FoundErrors);
return;
}
var ToAdd = "[SOUND]"+enterURL+"[/SOUND]";
IframeID.document.body.innerHTML+=ToAdd;
IframeID.focus();
}

helpstat = false;
stprompt = true;
basic = false;
function thelp(swtch){
	if (swtch == 1){
		basic = false;
		stprompt = false;
		helpstat = true;
	} else if (swtch == 0) {
		helpstat = false;
		stprompt = false;
		basic = true;
	} else if (swtch == 2) {
		helpstat = false;
		basic = false;
		stprompt = true;
	}
}

function Cswf() {
 	if (helpstat){
		alert("Flash\nFlash 动画.\n用法: [flash=宽度, 高度]Flash 文件的地址[/flash]");
	} else if (basic) {
		AddTxt="[flash=500,350][/flash]";
		AddText(AddTxt);
	} else {                  
		txt2=prompt("flash宽度，高度","500,350"); 
		if (txt2!=null) {
                txt=prompt("Flash 文件的地址","http://");
		if (txt!=null) {
                          if (txt2=="") {             
			AddTxt="[flash=500,350]"+txt;
			AddText(AddTxt);
			AddTxt="[/flash]";
			AddText(AddTxt);
               } else {
		        AddTxt="[flash="+txt2+"]"+txt;
			AddText(AddTxt);
			AddTxt="[/flash]";
			AddText(AddTxt);
		 }        
	    }  
       }
    }
}

function Crm() {
	if (helpstat) {
               alert("realplay\n播放realplay文件.\n用法: [rm=宽度, 高度 ,播放参数]文件地址[/rm]");
	} else if (basic) {
		AddTxt="[rm=500,350][/rm]";
		AddText(AddTxt);
	} else { 
		txt2=prompt("视频的宽度，高度，播放参数\r(播放参数：0＝手动播放，1＝自动播放)","500,350,1"); 
		if (txt2!=null) {
			txt=prompt("视频文件的地址","请输入");
			if (txt!=null) {
				if (txt2=="") {
					AddTxt="[rm=500,350]"+txt;
					AddText(AddTxt);
					AddTxt="[/rm]";
					AddText(AddTxt);
				} else {
					AddTxt="[rm="+txt2+"]"+txt;
					AddText(AddTxt);
					AddTxt="[/rm]";
					AddText(AddTxt);
				}         
			} 
		}
	}
}

function Cwmv() {
	if (helpstat) {
               alert("Media Player\n播放Media Player文件.\n用法: [mp=宽度, 高度 ,播放参数]文件地址[/mp]");
	} else if (basic) {
		AddTxt="[mp=500,350][/mp]";
		AddText(AddTxt);
	} else { 
		txt2=prompt("视频的宽度，高度，播放参数\r(播放参数：0＝手动播放，1＝自动播放)","500,350,1"); 
		if (txt2!=null) {
			txt=prompt("视频文件的地址","请输入");
			if (txt!=null) {
				if (txt2=="") {
					AddTxt="[mp=500,350]"+txt;
					AddText(AddTxt);
					AddTxt="[/mp]";
					AddText(AddTxt);
				} else {
					AddTxt="[mp="+txt2+"]"+txt;
					AddText(AddTxt);
					AddTxt="[/mp]";
					AddText(AddTxt);
				}         
			} 
		}
	}
}

function Cmov() {
	if (helpstat) {
               alert("QuickTime\n播放QuickTime文件.\n用法: [qt=宽度, 高度]文件地址[/qt]");
	} else if (basic) {
		AddTxt="[qt=500,350][/qt]";
		AddText(AddTxt);
	} else { 
		txt2=prompt("视频的宽度，高度","500,350"); 
		if (txt2!=null) {
			txt=prompt("视频文件的地址","请输入");
			if (txt!=null) {
				if (txt2=="") {
					AddTxt="[qt=500,350]"+txt;
					AddText(AddTxt);
					AddTxt="[/qt]";
					AddText(AddTxt);
				} else {
					AddTxt="[qt="+txt2+"]"+txt;
					AddText(AddTxt);
					AddTxt="[/qt]";
					AddText(AddTxt);
				}         
			} 
		}
	}
}

function Cdir() {
	if (helpstat) {
               alert("Shockwave\n插入Shockwave文件.\n用法: [dir=宽度, 高度]文件地址[/dir]");
	} else if (basic) {
		AddTxt="[dir=500,350][/dir]";
		AddText(AddTxt);
	} else { 
		txt2=prompt("Shockwave文件的宽度，高度","500,350"); 
		if (txt2!=null) {
			txt=prompt("Shockwave文件的地址","请输入地址");
			if (txt!=null) {
				if (txt2=="") {
					AddTxt="[dir=500,350]"+txt;
					AddText(AddTxt);
					AddTxt="[/dir]";
					AddText(AddTxt);
				} else {
					AddTxt="[dir="+txt2+"]"+txt;
					AddText(AddTxt);
					AddTxt="[/dir]";
					AddText(AddTxt);
				}         
			} 
		}
	}
}
function Cfanzi() {
fontbegin="[xray]";
fontend="[/xray]";
fontchuli();
}

function Cwma() {
var FoundErrors = '';
var enterURL   = prompt(text_enter_wma, "http://");
if (!enterURL) {
FoundErrors += "\n" + error_no_url;
}
if (FoundErrors) {
alert("错误！"+FoundErrors);
return;
}
var ToAdd = "[wma]"+enterURL+"[/wma]";
IframeID.document.body.innerHTML+=ToAdd;
IframeID.focus();
}
function Cmarquee() {
fontbegin="[move]";
fontend="[/move]";
fontchuli();
}
function Cfly() {
fontbegin="[fly]";
fontend="[/fly]";
fontchuli();
}

function paste(text) {
	if (opener.IframeID.document.body.createTextRange && opener.IframeID.document.body.caretPos) {      
		var caretPos = opener.IframeID.document.body.caretPos;      
		caretPos.text = caretPos.text.charAt(caretPos.text.length - 1) == ' ' ?
		text + ' ' : text;
	}
	else opener.IframeID.document.body.innerHTML += text;
	opener.IframeID.document.body.focus(caretPos);
}

function showsize(size){
fontbegin="[size="+size+"]";
fontend="[/size]";
fontchuli();
}

function showfont(font){
fontbegin="[face="+font+"]";
fontend="[/face]";
fontchuli();
}
function showcolor(color){
fontbegin="[color="+color+"]";
fontend="[/color]";
fontchuli();
}

function fontchuli(){
if ((IframeID.document.selection)&&(IframeID.document.selection.type == "Text")) {
var range = IframeID.document.selection.createRange();
var ch_text=range.text;
range.text = fontbegin + ch_text + fontend;
} 
else {
IframeID.document.body.innerHTML=fontbegin+IframeID.document.body.innerHTML+fontend;
IframeID.focus();
}
}

function Cguang() {
var FoundErrors = '';
var enterSET   = prompt(text_enter_guang1, "255,red,2");
var enterTxT   = prompt(text_enter_guang2, "文字");
if (!enterSET)    {
FoundErrors += "\n" + error_no_gset;
}
if (!enterTxT)    {
FoundErrors += "\n" + error_no_gtxt;
}
if (FoundErrors)  {
alert("错误！"+FoundErrors);
return;
}
var ToAdd = "[glow="+enterSET+"]"+enterTxT+"[/glow]";
IframeID.document.body.innerHTML+=ToAdd;
IframeID.focus();
}
function Cying() {
var FoundErrors = '';
var enterSET   = prompt(text_enter_guang1, "255,blue,1");
var enterTxT   = prompt(text_enter_guang2, "文字");
if (!enterSET)    {
FoundErrors += "\n" + error_no_gset;
}
if (!enterTxT)    {
FoundErrors += "\n" + error_no_gtxt;
}
if (FoundErrors)  {
alert("错误！"+FoundErrors);
return;
}
var ToAdd = "[SHADOW="+enterSET+"]"+enterTxT+"[/SHADOW]";
IframeID.document.body.innerHTML+=ToAdd;
IframeID.focus();
}

function DoTitle(addTitle) { 
var revisedTitle; 
var currentTitle = document.Dvform.topic.value; 
revisedTitle = addTitle+currentTitle; 
document.Dvform.topic.value=revisedTitle; 
document.Dvform.topic.focus(); 
return; }

function ctlent()
{
	var ispost=0;
	if (Dvbbs_bIsIE5)
	{	
		if(event.ctrlKey && window.event.keyCode==13&&ispost==0)
		{
			ispost=1;
			Dvbbs_CopyData('Body');
			this.document.Dvform.submit();
		}
	}
}

//清除表单
function ClearReset()
{
	IframeID.document.body.innerHTML='';
	IframeID.focus();
}