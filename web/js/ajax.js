//-----------------------------------------------------------
//重要的话！！！！
//已经被废弃不再使用了，这些都是用于ajax的js代码
//但是仍然可以以后查看备忘


//定义增加页面加载完成的操作
function addOnLoad(func){
    var oldOnLoad=window.onload;
    if(typeof oldOnLoad!='function'){
        window.onload=func;
    }else{
        window.onload=function(){
            oldOnLoad();
            func();
        }
    }
}


function addSubmitListener(){
    var save=document.getElementById("save");

    save.onclick=function () {
        doAjaxSubmit();
        return false;
    }
}

//----------------------------------------------------------
function doAjaxSubmit() {
    var req=new XMLHttpRequest();
    req.open("GET","AjaxNewPost",true);
    req.send();
    req.onreadystatechange=function () {
        if(req.readyState==4&&this.status==200){
            //document.getElementById("content").innerHTML=req.responseText;
            alert("保存成功");
        }
    }

}
