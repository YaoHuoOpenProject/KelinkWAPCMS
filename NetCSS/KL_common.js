 var xmlhttp = null;
 var KL_now_currpage = 0;
 var KL_page_total=0;
 var KL_scoll_downEnd= 0;

function KL_show_next(KL_total,KL_pagesize,KL_currpage,tourl,pagetype){  
	
 
 	 KL_page_total = parseInt(KL_total);
 	 var pagesize = parseInt(KL_pagesize);
 	 var currpage =  parseInt(KL_currpage);
 	
 	 
 	 if (KL_now_currpage==0){
 	 	
 	 	   KL_now_currpage=currpage + 1 ;
 	 	 
 	 }else{
 	 	
 	    KL_now_currpage = KL_now_currpage + 1;  	 
 	 } 
    
   document.getElementById('KL_show_loadimg').innerHTML = '<span id=\"loadimg\">&nbsp;</span>';
 	 document.getElementById('KL_show_tip').innerHTML = '正在努力加载('+KL_now_currpage+'/'+KL_page_total+')中'; 
     	
     
    	
    	
    	
    if( (KL_now_currpage) > KL_page_total){
    	
       document.getElementById('KL_show_loadimg').innerHTML = '';
       document.getElementById('KL_show_tip').innerHTML = '没有更多了';
      	    	
    }else{    	
    	tourl=tourl + '&' + pagetype + '=' + KL_now_currpage;    	
    	LoadXML_YiBu(tourl);
    	
    	
    }   
    
}


function LoadXML_YiBu(tourl) {  	
        try { 
            if (window.XMLHttpRequest) {           
            xmlhttp = new XMLHttpRequest();           
            if (xmlhttp.overrideMimeType) {
                xmlhttp.overrideMimeType("text/xml");
            }
            } else if (window.ActiveXObject) {           
            var activexName = ["MSXML2.XMLHTTP", "Microsoft.XMLHTTP", ""];
            for (var i = 0; i < activexName.length; i++) {
                try {                   
                    xmlhttp = new ActiveXObject(activexName[i]);
                    break;
                } catch (e) { }
            }
            }
            
            xmlhttp.onreadystatechange = KL_CallBack;
            xmlhttp.open("GET", tourl, true); 
            xmlhttp.send(null);
            //xmlhttp.Charset = "UTF-8";
        } catch (e) {        	
          document.getElementById('KL_show_loadimg').innerHTML = '<span id=\"loadimg\">&nbsp;</span>';
          document.getElementById('KL_show_tip').innerHTML = '加载出错了！';            
        }
    }    
    
function KL_CallBack() {
	
        if (xmlhttp == null) {
            return;
        }       
        if (xmlhttp.readyState == 4) {           
            if (xmlhttp.status == 200) {
                var responseText = xmlhttp.responseText;                
                //alert(responseText);
                //var a=document.createElement("KL_b");
                //a.appendChild(document.createTextNode(responseText));
                 //a.innerHTML(responseText);                      
                //document.getElementById('KL_show_next_list').appendChild(a);
                var st=responseText.indexOf("<!--listS-->");
                var et=responseText.indexOf("<!--listE-->");
                if(st < 0 || et < 0){
                	                	
                	document.getElementById('KL_show_loadimg').innerHTML = '';
                  document.getElementById('KL_show_tip').innerHTML = '加载完全部了！';
                  
                }else{  
                responseText = responseText.substring(st + 12,et);
                document.getElementById('KL_show_next_list').style.display = 'block';                
                document.getElementById('KL_show_next_list').innerHTML +=responseText;   //查看列表
                
                if(KL_now_currpage==KL_page_total){
    		           document.getElementById('KL_show_loadimg').innerHTML = '';
                   document.getElementById('KL_show_tip').innerHTML = '没有更多了';
    	         }else{
    	             document.getElementById('KL_show_loadimg').innerHTML = '';
                   document.getElementById('KL_show_tip').innerHTML = '加载更多('+(KL_now_currpage)+'/'+KL_page_total+')';
               }
                
              }
            }
        }
    }


