<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="KeLin.WebSite.test" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
<script type="text/javascript" language="javascript">
    var i=1;   
    function addFile() {
      var dv = document.getElementById("UpFile");  //var dv = document.getElementById("UpFile");  
      var f = document.createElement("input");     //var file = document.createElement("input");    
      f.type = "file";                              //file.type  = "file";   
      f.id = f.name = "file" + i;                  //file.id = file.name = "file"+i;  
      f.size = "50";                                //file.size = "50" ;
      
      dv.appendChild(f);                            //dv.appendChild(file);  
      
      var btn = document.createElement("input");   //var btn = document.createElement("input");   
      btn.type = "button";                          //btn.type = "button";  
      btn.id = btn.name = "btn" + i;               //btn.id = btn.name   =   "btn"   +   i;     
      btn.value = "Delete" + i;                          //btn.value = "删除"   +i;      
      btn.onclick=function() {                      //btn.onclick=function()   {     
  var bt = document.getElementById(btn.id);          // var b=document.getElementById(btn.id);   
  dv.removeChild(bt.nextSibling);   //remove   <BR>   dv.removeChild(b.nextSibling);
  dv.removeChild(bt.previousSibling);   //file      dv.removeChild(b.previousSibling);
  dv.removeChild(bt);   //btn                       dv.removeChild(b);  
      }      
      dv.appendChild(btn);                                  //dv.appendChild(btn);
      dv.appendChild(document.createElement("BR"));         //dv.appendChild(document.createElement("BR"));    
      i++;                                                  //i++;  
    }    
  function addFile2()   
  {   
      var dv = document.getElementById("dvFiles");       
      var file = document.createElement("input");   
      file.type  = "file";   
      file.id = file.name = "file"+i;   
    
      dv.appendChild(file);   
    
      var btn = document.createElement("input");   
      btn.type = "button";   
      btn.id = btn.name   =   "btn"   +   i;     
      btn.value = "deletefile"   +i;   
    
      btn.onclick=function()   {     
  var b=document.getElementById(btn.id);   
  dv.removeChild(b.nextSibling);   //remove   <BR>   
  dv.removeChild(b.previousSibling);   //file   
  dv.removeChild(b);   //btn   
      }       
      dv.appendChild(btn);         
      dv.appendChild(document.createElement("BR"));      
      i++;   
  }   
 
  function addFile3()   
  {   
      var dv = document.getElementById("UpFile");       
      var file = document.createElement("input");   
      file.type  = "file";   
      file.id = file.name = "file"+i;  
      file.size = "50" ;
    
      dv.appendChild(file);   
    
      var btn = document.createElement("input");   
      btn.type = "button";   
      btn.id = btn.name   =   "btn"   +   i;     
      btn.value = "删除"   +i;   
    
      btn.onclick=function()   {     
  var b=document.getElementById(btn.id);   
  dv.removeChild(b.nextSibling);   //remove   <BR>   
  dv.removeChild(b.previousSibling);   //file   
  dv.removeChild(b);   //btn   
      }       
      dv.appendChild(btn);         
      dv.appendChild(document.createElement("BR"));      
      i++;         
  }   
 function addDiv()
{
    var dv_container = document.getElementById("_container");
    
    var dv = document.createElement("div");
    dv.id = "dv"+i;
    var file = document.createElement("input");   
      file.type  = "file";   
      file.id = file.name = "file"+i;   
      file.size = "50";
      dv.appendChild(file);   
      
      dv.appendChild(document.createElement("BR"));  
      dv.appendChild(document.createTextNode("附件文件描述："));
      
      var txt = document.createElement("input");
      txt.type = "text";
      txt.id = txt.name = "txt"+i;
      txt.size="30";
      dv.appendChild(txt);
      
      var btn = document.createElement("input");   
      btn.type = "button";   
      btn.id = btn.name   =   "btn"+i;     
      btn.value = "删除附件"; 
      
      btn.onclick=function()   {     
  var b=document.getElementById(btn.id);   
  dv_container.removeChild(b.parentNode);
  }       
      dv.appendChild(btn);         
      dv.appendChild(document.createElement("BR"));      
      dv.appendChild(document.createElement("BR")); 
      i++;
  document.getElementById("_container").appendChild(dv);
}  
  </script>       
</head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div id="UpFile"></div>
                                                            <br />
                                                            
                                                            <input type="file" name="File" style="width: 381px" /><br />
                                                            <input type="button" value="添加文件(Add)" onclick="addFile()" />
                                                            
                                                            
   <div   id="dvFiles"></div>   
  <input type="button"  value="add"  onclick="addFile2()">   
        <input id="Text1" type="text" />
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <asp:Label ID="Label1" runat="server" Text="文件描述："></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        
<div id="_container">

</div> 
<input type="button" value="添加文件(Add)" onclick="addDiv()" />       
    </form>
</body>
</html>
