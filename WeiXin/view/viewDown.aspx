<html>

<head>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>ʶ��</title>
</head>

<body>

��ʾ���⣺<input type="text" name="title" value=""  class="input" style="width:200px;" /> <br />
���������<input type="text" name="description" value=""  class="input" style="width:200px;" />&nbsp; <br />
ͼƬ��ַ��<input type="text" name="picurl" value=""  class="input" style="width:200px;" />  <br />
���ӵ�ַ��<input type="text" name="url" value=""  class="input" style="width:200px;" />   


<p> 
<input type="button" name="s" value="�� ��" onclick ="goDaoRu()" >&nbsp;&nbsp;&nbsp; 
<input type="button" name="shibie" value="ʶ ��" onclick ="goGetInfo()" ></p>
<script language ="javascript">



function goGetInfo()
{


var url = window.parent.document.getElementById('middle').contentWindow.location.href ;


window.url.value =url; //ʶ��ĵ�ַ



GetHTML(url);

}
function goShow(html){



if(html.indexOf("<title>") != -1 && html.indexOf("</title>") != -1)
{ 

window.title.value = (html.substring(html.indexOf("<title>")+7,html.indexOf("</title>")));  //ʶ��ı���

}



}
function GetHTML(url) {
        

        var tourl = url;
         
        window.shibie.disabled = true;
        window.shibie.value ="������...";

       
        try {
            
            var xmlhttp = null;
            if (window.XMLHttpRequest) {
                //���FF,Mozilar,Opera,Safari,IE7,IE8
                xmlhttp = new XMLHttpRequest();
                //����ĳЩ�����bug
                if (xmlhttp.overrideMimeType) {
                    xmlhttp.overrideMimeType("text/xml");
                }
            } else if (window.ActiveXObject) {
                //���IE6���µ������
                var activexName = ["MSXML2.XMLHTTP", "Microsoft.XMLHTTP", ""];
                for (var i = 0; i < activexName.length; i++) {
                    try {
                        //ȡ��һ���ؼ����ƴ���,��������ɹ���ֹͣ,��֮�׳��쳣
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
                            window.shibie.value ="ʶ ��";

                            
                        }

                    }
                    else {
                        //��������

                    }
                }
            }

            xmlhttp.open("GET", tourl, true); //�첽
            xmlhttp.send();
            //xmlhttp.Charset = "UTF-8";
            

        } catch (e) {

            
        }
    }
</script>

</body>

</html>