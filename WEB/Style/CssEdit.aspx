<html>
<head>
<title>站点样式编辑</title>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312">
<link href="images/css.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="images/cssDesigner.css">
<script language="JavaScript" type="text/javascript" src="images/cssDesigner.js"></script>
</head>
<body style="text-align: center">
<p>&nbsp;</p>
    <form id="form1" runat="server">
    <div style="width:100%; height: 697px">
        <table width="600" border="1" bordercolor="#C2D6E0">
            <tr valign="top">
                
                <td valign="top">
                    <table style="height: 500px; width: 100%;">
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
                                                            <img id="border-width#switch" src="images/arrowclose.gif" onclick="collapseSwitch('border-width');">
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
                                                            <img id="border-color#switch" src="images/arrowclose.gif" onclick="collapseSwitch('border-color');">
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
                                                            <img id="border-style#switch" src="images/arrowclose.gif" onclick="collapseSwitch('border-style');">
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
                                                                        pl.addItem("<img src='images/transparentpixel.gif' style='width:10px;height:10px;border-width:3px;border-style:" + style + ";border-color:red' align='middle'/> " + style, style);
                                                                    }
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;border-width:3px;border-style:none;border-color:red;' align='middle'/> none", "none");
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:10px;height:10px;border-width:3px;border-style:" + style + ";border-color:red' align='middle'/> " + style, style);
                                                                }
                                                                pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;border-width:3px;border-style:none;border-color:red;' align='middle'/> none", "none");
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:10px;height:10px;border-width:3px;border-style:" + style + ";border-color:red' align='middle'/> " + style, style);
                                                                }
                                                                pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;border-width:3px;border-style:none;border-color:red;' align='middle'/> none", "none");
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:10px;height:10px;border-width:3px;border-style:" + style + ";border-color:red' align='middle'/> " + style, style);
                                                                }
                                                                pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;border-width:3px;border-style:none;border-color:red;' align='middle'/> none", "none");
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:10px;height:10px;border-width:3px;border-style:" + style + ";border-color:red' align='middle'/> " + style, style);
                                                                }
                                                                pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;border-width:3px;border-style:none;border-color:red;' align='middle'/> none", "none");
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
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
                                                            <img src="images/arrowclose.gif" id="padding#switch" onclick="collapseSwitch('padding');">
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
                                                            <img id="margin#switch" src="images/arrowclose.gif" onclick="collapseSwitch('margin');">
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> <span style='font-family:" + fontname + "'>" + fontname + "</span>", fontname);
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> <span style='font-family:" + fontname + "'>" + fontname + "</span>", fontname);
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
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
                                                <div style="width: 220px; height: 612px;">
                                                    <center>
                                                        <h2>
                                                            单个 CSS 样式编辑器</h2>
                                                    </center>
                                                    <div style="background-image: url(images/grid.gif); padding: 20px; margin: 5px; width: 200px;">
                                                        <div id="target">
                                                            CSS 样式在线编辑器<br />
                                                            <br />
                                                            CSS 样式效果即时演示区域。
                                                        </div>
                                                    </div>
                                                    <textarea id="output" rows="15" cols="*" style="margin: 5px; width: 210px; border: 1px solid gray;"
                                                        onclick="return Textarea1_onclick()"></textarea><br>
													<font color="#FF0000">说明：<br>
													1.将<b> myclass </b>
													设为自己定义的名，英文或英文+数字。 <br>
													</br> 2.将上面编辑器中生成的样式复制到新增站点<b> 
													CSS样式 </b>中。 <br>
													<br>
													3.复制至<b>&lt;style 
													type=&quot;text/css&quot;&gt;</b>&nbsp; 与<b>&lt;/style&gt; </b>
													中间！<br>
													<br>
													<b>4.UBB调用：<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [div=myclass] </b>网站内容<b> [/div]<br>
													或:<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; [p=myclass] </b>网站内容<b> [/p]<br>
													<br>
													支持嵌套，如[div=myclass]放在“页面综合排版”中第一个[插]，[/div]放在下一个的[插]中。</b><br>
　</font></div>
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + item, item);
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + item, item);
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + item, item);
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + item, item);
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + item, item);
                                                                }
                                                                addItem("url('images/resize-box.gif')");
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + item, item);
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + item, item);
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + item, item);
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
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
                                                                    pl.addItem("<img src='images/transparentpixel.gif' style='width:16px;height:16px;' align='middle'/> " + fontname, fontname);
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
        </form>
        <p>&nbsp;<a href="Csshelp.aspx" target="_blank">CSS2.0在线手册</a></p>
</body>
</html>