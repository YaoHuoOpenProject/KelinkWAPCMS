<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>识别</title>
</head>

<body>

显示标题：<input type="text" name="title" value=""  class="input" style="width:200px;" /> <br />
简介描述：<input type="text" name="description" value=""  class="input" style="width:200px;" />&nbsp; <br />
图片地址：<input type="text" name="picurl" value=""  class="input" style="width:200px;" />  <br />
链接地址：<input type="text" name="url" value=""  class="input" style="width:200px;" />   


<p> 
<input type="button" name="s" value="导 入" onclick ="goDaoRu()" >&nbsp;&nbsp;&nbsp; 
<input type="button" name="shibie" value="识 别" onclick ="goGetInfo()" ></p>
<script language ="javascript">



function goGetInfo()
{


var url = window.parent.document.getElementById('middle').contentWindow.location.href ;


window.url.value =url; //识别的地址



GetHTML(url);

}
function goShow(html){



if(html.indexOf("<title>") != -1 && html.indexOf("</title>") != -1)
{ 

window.title.value = (html.substring(html.indexOf("<title>")+7,html.indexOf("</title>")));  //识别的标题

}



}
function GetHTML(url) {
        

        var tourl = url;
         
        window.shibie.disabled = true;
        window.shibie.value ="进行中...";

       
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
            //alert("22");
            xmlhttp.onreadystatechange = function() {
                if (xmlhttp.readyState == 4) {
                    is_read_falsh = "0";

                    if (xmlhttp.status == 200) {
                        var str = xmlhttp.responseText;
                        if (str != "ERROR") {
                            //alert(str);
                            goShow(str);
                            window.shibie.disabled = false;
                            window.shibie.value ="识 别";

                            
                        }

                    }
                    else {
                        //不做任务

                    }
                }
            }

            xmlhttp.open("GET", tourl, true); //异步
            xmlhttp.send();
            //xmlhttp.Charset = "UTF-8";
            

        } catch (e) {

            
        }
    }
</script>

</body>

</html>