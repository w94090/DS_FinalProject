var time = 5; //時間,秒
var timelong = 0;

function diplaytime(){ //時間遞減
document.all.his.innerHTML = time -timelong ;
timelong   ;
}

function redirect(){ //跳轉頁
//history.back();
window.location.href="googleitem.jsp";//指定要跳轉到的目標頁面
}

timer=setTimeout('redirect()',180000); //跳轉

