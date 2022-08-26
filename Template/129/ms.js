
function SetCookie(name, value) {
    var Days = 30;
    var exp = new Date();
    exp.setTime(exp.getTime() + Days * 24 * 60 * 60 * 1000);
    document.cookie = name + "=" + escape(value) + ";expires=" + exp.toGMTString();
}
function getCookie(name) {
    var arr = document.cookie.match(new RegExp("(^| )" + name + "=([^;]*)(;|$)"));
    if (arr != null) return unescape(arr[2]); return null;

}

function countdown(time/*秒*/) {

    var c = getCookie("mytime3");
    c=0;
    if (c == "1") {
        //document.getElementById('f_btn').setAttribute('onClick', 'buynow();');

       // document.getElementById('counter_msg').innerHTML = vMsContent2;
       // document.getElementById('f_btn').className = 'counter_btn counter_btn_buy';
        //document.getElementById('f_btn').href = 'javascript:void(0);';
    } else {
        //小时
        var h = parseInt(time / 3600) > 0 ? parseInt(time / 3600) : 0;
        //分
        var m = parseInt((time % 3600) / 60) > 0 ? parseInt((time % 3600) / 60) : 0;
        //秒
        var s = time % 60;

        document.getElementById('f_hh').innerHTML = h;
        document.getElementById('f_mm').innerHTML = m;
        document.getElementById('f_ss').innerHTML = s;

        if (time == 0) {

            //document.getElementById('f_btn').setAttribute('onClick', 'buynow();');

            //document.getElementById('counter_msg').innerHTML = vMsContent2;
            //document.getElementById('f_btn').className = 'counter_btn counter_btn_buy';
            //document.getElementById('f_btn').href = 'javascript:void(0);';
        }

        //开始执行倒计时
        var timeInterval = setInterval(function () {
            //如果时、分、秒都为0时将停止当前的倒计时
            if (h == 0 && m == 0 && s == 0) { clearInterval(timeInterval); return; }
            //当秒走到0时，再次为60秒
            if (s == 0) { s = 60; }
            if (s == 60) {
                //每次当秒走到60秒时，分钟减一
                m -= 1;
                //当分等于0时并且小时还多余1个小时的时候进里面看看
                if (m == 0 && h > 0) {
                    //小时减一
                    h -= 1;
                    //分钟自动默认为60分
                    m = 60;
                    //秒自动默认为60秒
                    s = 60;
                }
            }
            //秒继续跳动，减一
            s -= 1;
            document.getElementById('f_hh').innerHTML = h;
            document.getElementById('f_mm').innerHTML = m;
            document.getElementById('f_ss').innerHTML = s;

            if (s < 15) {
                document.getElementById('shuzi').innerHTML = '<br><br>1293 人正在等待秒杀开始';
            }

            if (s < 5) {
                document.getElementById('shuzi').innerHTML = '<br><br>1636 人正在等待秒杀开始';
            }

            // 结束
            if (h == 0 && m == 0 && s == 0) {
                //document.getElementById('f_btn').className = 'counter_btn counter_btn_buy';
                //document.getElementById('f_btn').setAttribute('onClick', 'buynow();');
                  TimeOutShow();
                
                //document.getElementById('counter_msg').style='width:100%';
                
                
                //SetCookie("mytime3", "1"); var aa = getCookie("mytime3");
            }
        }, 1000);

    }
}


function jump(h) {
    var url = location.href;
    location.href = "#" + h;
    history.replaceState(null, null, url);
}

if (typeof (nMsDjs) != "undefined") {
    countdown(nMsDjs);
}