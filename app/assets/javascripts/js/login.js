function login(){
    var name = document.getElementById("usename");
    var pwd = document.getElementById("key");
    var em_name = document.getElementById("empty_usename");
    var em_pwd = document.getElementById("empty_key");
    if(name.value == ""){
        alert("请输入用户名");
    }
    else if(pwd.value == "")
    {
        alert("请输入密码");
    }
}

var flag_log = 0;
var flag_reg = 0;
// 登录
$(document).ready(function(){
    $("#log").click(function(event){

        event.stopPropagation(); // 阻止冒泡

        $("#login").fadeIn(1000);
        $(".mask").fadeIn("fast");
        flag_log = 1;
    })

    
})
// 登录界面中 注册按钮事件
$("#lo_register").click(function(){
    if(flag_log == 1){
        $("#login").fadeOut("fast");
        $("#register_css").fadeIn(1000);
        flag_log = 0;
        flag_reg = 1;
    }
})

$(document).bind('click', function(e) {  
    var e = e || window.event;
    var elem = e.target || e.srcElement;  
    while (elem) { 
        if (elem.id && elem.id == 'login') {  
            return;  
        }  
        elem = elem.parentNode;  
    }
    if(flag_log == 1)
    {  
        $('#login').fadeOut(100); 
        $(".mask").fadeOut("fast");
        flag_log = 0;
    }   
})



function fun_register(){
    var name = document.getElementById("usename");
    var mail = document.getElementById("mail");
    var key_1 = document.getElementById("key1");
    var key_2 = document.getElementById("key2");

    if(name.value == "")
    {
        alert("得给自己取个名字哦");
    }
    else if(mail.value == "")
    {
        alert("邮箱地址没填呢");
    }
    else if(key_1.value == "")
    {
        alert("请填写密码哦");
    }
    else if(key_2.value == "")
    {
        alert("请再次填写密码哦");
    }
    else(key_1.value == key_2.value)
    {
        alert("两次密码不一致啊");
    }
}

$(document).ready(function(){
    $("#reg").click(function(event){
        event.stopPropagation();

        $("#register_css").fadeIn(1000);
        $(".mask").fadeIn("fast");
        flag_reg = 1;
    })
})

$(document).bind('click', function(e1){
    
    var e1 = e1 || window.event;
    var elem = e1.target || e1.srcElement;
    while(elem){
        if(elem.id && elem.id == "register_css"){
            return;
        }
        elem = elem.parentNode;
    }
    if(flag_reg == 1)
    {
        $("#register_css").fadeOut("fast");
        $(".mask").fadeOut("fast");
    }
})
