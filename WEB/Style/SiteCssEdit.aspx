<%@ Page validateRequest="false" Language="C#" AutoEventWireup="true" CodeBehind="SiteCssEdit.aspx.cs" Inherits="KeLin.WebSite.WEB.Style.SiteCssEdit" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>站点样式编辑</title>
    <link href="css.css" type="text/css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="cssDesigner.css">
    <script language="JavaScript" type="text/javascript" src="cssDesigner.js"></script>
    <script language="javascript" type="text/javascript">
        window.onload = function () {
            var strCommandResult = "<%=strCommandResult%>";
            if (strCommandResult == "1") {
                alert("保存成功!");
                //returnValue="true";
                window.document.location.href = "../admin/SitePreview.aspx";
            }
        }

        function save() {
            form1.submit();
        }

        function back() {
            var Url = "../WapStyle/StyleManage_List.aspx?siteid=<%=strUserID %>";
            document.location.href = Url;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="width: 100%; height: 100%;">
        <table width="100%">
            <tr valign="top">
                <td valign="top" style="width: 100%;">
                    <table style="width: 100%; height: 500px;">
                        <tr style="height: 50px;">
                            <td>
                                <table width="100%">
                                    <tr>
                                        <td>
                                            <center>
                                                <h2>
                                                    <%=strName %></h2>
                                            </center>
                                            <br />
                                            样式名称：<input type="text" id="style_name" name="style_name" value="<%=strStyle_Name %>" />&nbsp;&nbsp;&nbsp;
                                            <input type="button" id="btn_save" name="btn_save" value=" 保 存 " onclick="save()" />
                                            <input type="button" id="Button1" name="btn_save" value=" 返 回 " onclick="back()" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr valign="top">
                            <td>
                                <textarea id="SiteCss" name="SiteCss" rows="50" cols="*" style="margin: 5px; width: 100%;
                                    border: 1px solid gray;"><%=strSiteCss %></textarea>
                            </td>
                        </tr>
                    </table>
                </td>
                <td valign="top">
                    <table style="height: 500px; width: 100%;">
                        <tr valign="top" style="height: 50px;">
                            <td>
                            </td>
                        </tr>
                        <tr valign="top">
                            <td>
                                <div id="Head">
                                    <table class="Tabwidth" border="0" cellspacing="0" cellpadding="0" align="center">
                                        <tr>
                                            <td valign="top" class="leftW" style="border-left: 1px solid #DBE9F4; border-right: 1px solid #DBE9F4;">
                                                <table border="0" cellpadding="1" cellspacing="1" class="QrCSSDesignerPad">
                                                    <tr>
                                                        <td width="20">
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            字体颜色：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript">
<!--                                                                //
                                                                var cp = new QrColorPicker("#000000");
                                                                cp.render();
                                                                connectCSS(cp, "color");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            背景颜色：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var cp = new QrColorPicker("transparent");
                                                                cp.render();
                                                                connectCSS(cp, "background-color");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" align="center">
                                                            <hr size="1" width="100%" color="#A5BAC6">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img id="border-width#switch" src="arrowclose.gif" onclick="collapseSwitch('border-width');">
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            边框宽度：
                                                        </td>
                                                        <td>
                                                            <span id="border-width">
                                                                <script language="JavaScript" type="text/javascript"><!--
                                                                    var pl = new QrSpinner;
                                                                    pl.render();
                                                                    var override = new Array;
                                                                    override["border-top-width"] = "";
                                                                    override["border-left-width"] = "";
                                                                    override["border-right-width"] = "";
                                                                    override["border-bottom-width"] = "";
--></script>
                                                                <script language="JavaScript" type="text/javascript"><!--
                                                                    var tan = createTaniComponent();
                                                                    connectCSS2(pl, tan, "border-width", override);
--></script>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr id="border-top-width" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            上边宽度：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent();
                                                                connectCSS2(pl, tan, "border-top-width");
--></script>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr id="border-left-width" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            左边宽度：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent();
                                                                connectCSS2(pl, tan, "border-left-width");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr id="border-right-width" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            右边宽度：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent();
                                                                connectCSS2(pl, tan, "border-right-width");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr id="border-bottom-width" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            底边宽度：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent();
                                                                connectCSS2(pl, tan, "border-bottom-width");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img id="border-color#switch" src="arrowclose.gif" onclick="collapseSwitch('border-color');">
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            边框颜色：
                                                        </td>
                                                        <td>
                                                            <span id="border-color">
                                                                <script language="JavaScript" type="text/javascript"><!--
                                                                    var cp = new QrColorPicker("transparent");
                                                                    cp.render();
                                                                    var override = new Array;
                                                                    override["border-top-color"] = "";
                                                                    override["border-left-color"] = "";
                                                                    override["border-right-color"] = "";
                                                                    override["border-bottom-color"] = "";
                                                                    connectCSS(cp, "border-color", override);
--></script>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr id="border-top-color" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            上边颜色：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var cp = new QrColorPicker("transparent");
                                                                cp.render();
                                                                connectCSS(cp, "border-top-color");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr id="border-left-color" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            左边颜色：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var cp = new QrColorPicker("transparent");
                                                                cp.render();
                                                                connectCSS(cp, "border-left-color");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr id="border-right-color" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            右边颜色：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var cp = new QrColorPicker("transparent");
                                                                cp.render();
                                                                connectCSS(cp, "border-right-color");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr id="border-bottom-color" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            底边颜色：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var cp = new QrColorPicker("transparent");
                                                                cp.render();
                                                                connectCSS(cp, "border-bottom-color");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img id="border-style#switch" src="arrowclose.gif" onclick="collapseSwitch('border-style');">
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            边框样式：
                                                        </td>
                                                        <td>
                                                            <span id="border-style">
                                                                <script language="JavaScript" type="text/javascript"><!--

                                                                    var pl = new QrPulldown;
                                                                    pl.render();

                                                                    function addStyle(style) {
                                                                        pl.addItem("<img src='transparentpixel.gif' style='width:10px;height:10px;border-width:3px;border-style:" + style + ";border-color:red' align='middle'/> " + style, style);
                                                                    }
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;border-width:3px;border-style:none;border-color:red;' align='middle'/> none", "none");
                                                                    addStyle("solid");
                                                                    addStyle("double");
                                                                    addStyle("groove");
                                                                    addStyle("ridge");
                                                                    addStyle("inset");
                                                                    addStyle("outset");
                                                                    addStyle("dashed");
                                                                    addStyle("dotted");
                                                                    var override = new Array;
                                                                    override["border-top-style"] = "";
                                                                    override["border-left-style"] = "";
                                                                    override["border-right-style"] = "";
                                                                    override["border-bottom-style"] = "";
                                                                    connectCSS(pl, "border-style", override);
 
 
--></script>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr id="border-top-style" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            上边样式：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--

                                                                var pl = new QrPulldown;
                                                                pl.render();

                                                                function addStyle(style) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:10px;height:10px;border-width:3px;border-style:" + style + ";border-color:red' align='middle'/> " + style, style);
                                                                }
                                                                pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;border-width:3px;border-style:none;border-color:red;' align='middle'/> none", "none");
                                                                addStyle("solid");
                                                                addStyle("double");
                                                                addStyle("groove");
                                                                addStyle("ridge");
                                                                addStyle("inset");
                                                                addStyle("outset");
                                                                addStyle("dashed");
                                                                addStyle("dotted");
                                                                connectCSS(pl, "border-top-style");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr id="border-left-style" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            左边样式：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--

                                                                var pl = new QrPulldown;
                                                                pl.render();

                                                                function addStyle(style) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:10px;height:10px;border-width:3px;border-style:" + style + ";border-color:red' align='middle'/> " + style, style);
                                                                }
                                                                pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;border-width:3px;border-style:none;border-color:red;' align='middle'/> none", "none");
                                                                addStyle("solid");
                                                                addStyle("double");
                                                                addStyle("groove");
                                                                addStyle("ridge");
                                                                addStyle("inset");
                                                                addStyle("outset");
                                                                addStyle("dashed");
                                                                addStyle("dotted");
                                                                connectCSS(pl, "border-left-style");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr id="border-right-style" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            右边样式：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--

                                                                var pl = new QrPulldown;
                                                                pl.render();

                                                                function addStyle(style) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:10px;height:10px;border-width:3px;border-style:" + style + ";border-color:red' align='middle'/> " + style, style);
                                                                }
                                                                pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;border-width:3px;border-style:none;border-color:red;' align='middle'/> none", "none");
                                                                addStyle("solid");
                                                                addStyle("double");
                                                                addStyle("groove");
                                                                addStyle("ridge");
                                                                addStyle("inset");
                                                                addStyle("outset");
                                                                addStyle("dashed");
                                                                addStyle("dotted");
                                                                connectCSS(pl, "border-right-style");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr id="border-bottom-style" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            底边样式：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--

                                                                var pl = new QrPulldown;
                                                                pl.render();

                                                                function addStyle(style) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:10px;height:10px;border-width:3px;border-style:" + style + ";border-color:red' align='middle'/> " + style, style);
                                                                }
                                                                pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;border-width:3px;border-style:none;border-color:red;' align='middle'/> none", "none");
                                                                addStyle("solid");
                                                                addStyle("double");
                                                                addStyle("groove");
                                                                addStyle("ridge");
                                                                addStyle("inset");
                                                                addStyle("outset");
                                                                addStyle("dashed");
                                                                addStyle("dotted");
                                                                connectCSS(pl, "border-bottom-style");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" align="center">
                                                            <hr size="1" width="100%" color="#A5BAC6">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            整体宽度：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent();
                                                                connectCSS2(pl, tan, "width");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            整体高度：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent();
                                                                connectCSS2(pl, tan, "height");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            溢出选项：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--

                                                                var pl = new QrPulldown;
                                                                pl.render();

                                                                function addItem(fontname) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
                                                                }
                                                                addItem("visible");
                                                                addItem("hidden");
                                                                addItem("scroll");
                                                                addItem("auto");
                                                                connectCSS(pl, "overflow");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" align="center">
                                                            <hr size="1" width="100%" color="#A5BAC6">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img src="arrowclose.gif" id="padding#switch" onclick="collapseSwitch('padding');">
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            内侧边距：
                                                        </td>
                                                        <td>
                                                            <span id="padding">
                                                                <script language="JavaScript" type="text/javascript"><!--
                                                                    var pl = new QrSpinner;
                                                                    pl.render();
                                                                    var override = new Array;
                                                                    override["padding-top"] = "";
                                                                    override["padding-left"] = "";
                                                                    override["padding-right"] = "";
                                                                    override["padding-bottom"] = "";
--></script>
                                                                <script language="JavaScript" type="text/javascript"><!--
                                                                    var tan = createTaniComponent();
                                                                    connectCSS2(pl, tan, "padding", override);
 
--></script>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr id="padding-top" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            上内边距：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent();
                                                                connectCSS2(pl, tan, "padding-top");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr id="padding-left" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            左内边距：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent();
                                                                connectCSS2(pl, tan, "padding-left");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr id="padding-right" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            右内边距：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent();
                                                                connectCSS2(pl, tan, "padding-right");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr id="padding-bottom" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            底内边距：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent();
                                                                connectCSS2(pl, tan, "padding-bottom");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" align="center">
                                                            <hr size="1" width="100%" color="#A5BAC6">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <img id="margin#switch" src="arrowclose.gif" onclick="collapseSwitch('margin');">
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            外侧边距：
                                                        </td>
                                                        <td>
                                                            <span id="margin">
                                                                <script language="JavaScript" type="text/javascript"><!--
                                                                    var pl = new QrSpinner;
                                                                    pl.render();
                                                                    var override = new Array;
                                                                    override["margin-top"] = "";
                                                                    override["margin-left"] = "";
                                                                    override["margin-right"] = "";
                                                                    override["margin-bottom"] = "";
--></script>
                                                                <script language="JavaScript" type="text/javascript"><!--
                                                                    var tan = createTaniComponent();
                                                                    connectCSS2(pl, tan, "margin", override);
--></script>
                                                            </span>
                                                        </td>
                                                    </tr>
                                                    <tr id="margin-top" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            上外边距：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent();
                                                                connectCSS2(pl, tan, "margin-top");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr id="margin-left" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            左外边距：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent();
                                                                connectCSS2(pl, tan, "margin-left");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr id="margin-right" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            右外边距：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent();
                                                                connectCSS2(pl, tan, "margin-right");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr id="margin-bottom" style="display: none;">
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            底外边距：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent();
                                                                connectCSS2(pl, tan, "margin-bottom");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" align="center">
                                                            <hr size="1" width="100%" color="#A5BAC6">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            文字字体：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--

                                                                var pl = new QrPulldown;
                                                                pl.render();

                                                                function addFont(fontname) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> <span style='font-family:" + fontname + "'>" + fontname + "</span>", fontname);
                                                                }
                                                                addFont("serif");
                                                                addFont("sans-serif");
                                                                addFont("cursive");
                                                                addFont("fantasy");
                                                                addFont("monospace");
                                                                connectCSS(pl, "font-family");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            文字大小：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--

                                                                var pl = new QrPulldown;
                                                                pl.render();

                                                                function addFont(fontname) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> <span style='font-family:" + fontname + "'>" + fontname + "</span>", fontname);
                                                                }
                                                                addFont("9pt");
                                                                addFont("10pt");
                                                                addFont("12pt");
                                                                addFont("14pt");
                                                                addFont("16pt");
                                                                addFont("xx-small");
                                                                addFont("x-small");
                                                                addFont("small");
                                                                addFont("large");
                                                                addFont("x-large");
                                                                addFont("xx-large");
                                                                connectCSS(pl, "font-size");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            文字粗细：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--

                                                                var pl = new QrPulldown;
                                                                pl.render();

                                                                function addItem(fontname) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
                                                                }
                                                                addItem("normal");
                                                                addItem("bold");
                                                                addItem("600");
                                                                addItem("900");
                                                                connectCSS(pl, "font-weight");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            文字样式：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--

                                                                var pl = new QrPulldown;
                                                                pl.render();

                                                                function addItem(fontname) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
                                                                }
                                                                addItem("normal");
                                                                addItem("italic");
                                                                addItem("oblique");
                                                                connectCSS(pl, "font-style");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            文字变量：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--

                                                                var pl = new QrPulldown;
                                                                pl.render();

                                                                function addItem(fontname) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
                                                                }
                                                                addItem("normal");
                                                                addItem("small-caps");
                                                                connectCSS(pl, "font-variant");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            文字行高：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner(100);
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent("%");
                                                                connectCSS2(pl, tan, "line-height");
--></script>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td valign="top" class="mainr">
                                                <div style="width: 210px; height: 260px;">
                                                    <center>
                                                        <h2>
                                                            单个 CSS 样式编辑器</h2>
                                                    </center>
                                                    <div style="background-image: url('grid.gif'); padding: 20px; margin: 5px; width: 200px;">
                                                        <div id="target">
                                                            CSS 样式在线编辑器<br />
                                                            <br />
                                                            CSS 样式效果即时演示区域。
                                                        </div>
                                                    </div>
                                                    <textarea id="output" rows="15" cols="*" style="margin: 5px; width: 210px; border: 1px solid gray;"
                                                        onclick="return Textarea1_onclick()"></textarea><br />
                                                    说明：1.设置好样式后，记得修改someclass为自己定义的样式标签。 </br> 2.将样式编辑器中生成的样式复制到左边的站点样式中。
                                                </div>
                                            </td>
                                            <td valign="top" class="leftW" style="border-left: 1px solid #DBE9F4; border-right: 1px solid #DBE9F4;">
                                                <table border="0" cellpadding="1" cellspacing="1" class="QrCSSDesignerPad">
                                                    <tr>
                                                        <td colspan="3" align="center">
                                                            <hr size="1" width="100%" color="#A5BAC6">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            清除属性：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--

                                                                var pl = new QrPulldown;
                                                                pl.render();

                                                                function addItem(fontname) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
                                                                }
                                                                addItem("left");
                                                                addItem("right");
                                                                addItem("both");
                                                                addItem("none");
                                                                connectCSS(pl, "clear");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            浮动属性：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--

                                                                var pl = new QrPulldown;
                                                                pl.render();

                                                                function addItem(fontname) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
                                                                }
                                                                addItem("left");
                                                                addItem("right");
                                                                addItem("none");
                                                                connectCSS(pl, "float");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            水平排列：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--

                                                                var pl = new QrPulldown;
                                                                pl.render();

                                                                function addItem(item) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + item, item);
                                                                }
                                                                addItem("left");
                                                                addItem("right");
                                                                addItem("center");
                                                                addItem("justify");
                                                                connectCSS(pl, "text-align");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            文本修饰：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrPulldown;
                                                                pl.render();

                                                                function addItem(item) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + item, item);
                                                                }
                                                                addItem("none");
                                                                addItem("underline");
                                                                addItem("overline");
                                                                addItem("underline overline");
                                                                addItem("line-through");
                                                                addItem("blink");
                                                                connectCSS(pl, "text-decoration");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            文本缩进：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent("em");
                                                                connectCSS2(pl, tan, "text-indent");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            文字间距：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent("px");
                                                                connectCSS2(pl, tan, "letter-spacing");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            字母间距：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent("px");
                                                                connectCSS2(pl, tan, "word-spacing");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            文本转换：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrPulldown;
                                                                pl.render();
                                                                function addItem(item) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + item, item);
                                                                }
                                                                addItem("none");
                                                                addItem("capitalize");
                                                                addItem("lowercase");
                                                                addItem("uppercase");
                                                                connectCSS(pl, "text-transform");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            垂直排列：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrPulldown;
                                                                pl.render();

                                                                function addItem(item) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + item, item);
                                                                }
                                                                addItem("baseline");
                                                                addItem("top");
                                                                addItem("middle");
                                                                addItem("bottom");
                                                                addItem("text-top");
                                                                addItem("text-bottom");
                                                                addItem("super");
                                                                addItem("sub");
                                                                addItem("3em");
                                                                addItem("30%");
                                                                connectCSS(pl, "vertical-align");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" align="center">
                                                            <hr size="1" width="100%" color="#A5BAC6">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            背景图片：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrPulldown;
                                                                pl.render();
                                                                function addItem(item) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + item, item);
                                                                }
                                                                addItem("url(resize-box.gif)");
                                                                connectCSS(pl, "background-image");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            背景拉伸：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrPulldown;
                                                                pl.render();
                                                                function addItem(item) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + item, item);
                                                                }
                                                                addItem("repeat");
                                                                addItem("repeat-x");
                                                                addItem("repeat-y");
                                                                addItem("no-repeat");
                                                                connectCSS(pl, "background-repeat");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            背景定位：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrPulldown;
                                                                pl.render();
                                                                function addItem(item) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + item, item);
                                                                }
                                                                addItem("left");
                                                                addItem("right");
                                                                addItem("top");
                                                                addItem("left top");
                                                                addItem("right bottom");
                                                                addItem("30% 50%");
                                                                connectCSS(pl, "background-position");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            附加属性：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrPulldown;
                                                                pl.render();

                                                                function addItem(item) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + item, item);
                                                                }
                                                                addItem("fixed");
                                                                addItem("scroll");
                                                                connectCSS(pl, "background-attachment");
 
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" align="center">
                                                            <hr size="1" width="100%" color="#A5BAC6">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            显示属性：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrPulldown;
                                                                pl.render();
                                                                function addItem(fontname) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
                                                                }
                                                                addItem("");
                                                                addItem("none");
                                                                addItem("block");
                                                                addItem("inline");
                                                                addItem("run-in");
                                                                addItem("compact");
                                                                addItem("list-item");
                                                                addItem("marker");
                                                                connectCSS(pl, "display");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            是否可见：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrPulldown;
                                                                pl.render();
                                                                function addItem(fontname) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
                                                                }
                                                                addItem("");
                                                                addItem("visible");
                                                                addItem("hidden");
                                                                connectCSS(pl, "visibility");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            资源定位：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrPulldown;
                                                                pl.render();
                                                                function addItem(fontname) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
                                                                }
                                                                addItem("static");
                                                                addItem("relative");
                                                                addItem("absolute");
                                                                addItem("fixed");
                                                                connectCSS(pl, "position");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            距离顶部：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent("px");
                                                                connectCSS2(pl, tan, "top");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            距离左边：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent("px");
                                                                connectCSS2(pl, tan, "left");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            距离右边：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent("px");
                                                                connectCSS2(pl, tan, "right");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            距离底边：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
--></script>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var tan = createTaniComponent("px");
                                                                connectCSS2(pl, tan, "bottom");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            优先等级：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"><!--
                                                                var pl = new QrSpinner;
                                                                pl.render();
                                                                connectCSS(pl, "z-index");
--></script>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3" align="center">
                                                            <hr size="1" width="100%" color="#A5BAC6">
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                        </td>
                                                        <td class="QrCSSDesignerPadLeft">
                                                            鼠标指针：
                                                        </td>
                                                        <td>
                                                            <script language="JavaScript" type="text/javascript"> 
<!--
                                                                var pl = new QrPulldown;
                                                                pl.render();
                                                                function addItem(fontname) {
                                                                    pl.addItem("<img src='transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
                                                                }
                                                                addItem("crosshair");
                                                                addItem("default");
                                                                addItem("hand");
                                                                addItem("pointer");
                                                                addItem("move");
                                                                addItem("text");
                                                                addItem("wait");
                                                                addItem("help");
                                                                addItem("n-resize");
                                                                addItem("s-resize");
                                                                addItem("w-resize");
                                                                addItem("e-resize");
                                                                addItem("ne-resize");
                                                                addItem("nw-resize");
                                                                addItem("se-resize");
                                                                addItem("sw-resize");
                                                                connectCSS(pl, "cursor");
                                                                function Textarea1_onclick() {

                                                                }

-->
                                                            </script>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
    <input type="hidden" id="action" name="action" value="<%=strAction %>" />
    </form>
</body>
</html>
