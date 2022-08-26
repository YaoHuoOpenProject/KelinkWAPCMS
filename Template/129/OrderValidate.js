    function inputValidate() {
        var vname = document.getElementById('name');
        var vtel=document.getElementById('tel');
        var vaddr = document.getElementById('addr');
        if (vname.value == "") {
            alert("姓名不能为空！");
            vname.focus();
            return false;
        }
        
        if(vtel.value=="")
        {
            alert("电话不能为空！");
            vtel.focus();
            return false;
        }
        else if (vtel.value.length != 11)
        {
            alert("电话号码必须为11位数字！");
            vtel.focus();
            return false;
        }

        if(vaddr.value=="")
        {
            alert("地址不能为空！");
            vaddr.focus();
            return false;
        }
        return true;
    }