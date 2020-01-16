

var obt=document.getElementById(".loadingBtn");
var odiv=document.getElementById(".wrapper");



function loading()
{
	setTimeout(odiv.style.display="true",200);

}


function showMain()
{
	document.getElementById("over").style.visibility ="visible";
	document.getElementById("thediv").style.display = "block";

}