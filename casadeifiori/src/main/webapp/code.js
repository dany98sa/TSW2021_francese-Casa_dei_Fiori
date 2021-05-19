tinymce.init({
	selector: '#editortesto',
	plugins: 'autolink autosave charmap emoticons hr link lists advlist paste table searchreplace wordcount',
	paste_data_images: false,
});

function closeNav() {
	var menubar=document.getElementById("menuDropBar");
	menubar.style.width = "0%"
	menubar.className ="menuDrop";
	document.getElementById("main").style.marginLeft = "0%";
}

function openNav() {
	var menubar=document.getElementById("menuDropBar");
	menubar.style.width = "50%"
	menubar.className ="menuDrop border";
	document.getElementById("main").style.marginLeft = "50%";
}

function redirect(dove) {
	window.location.href = dove;
}

function menuMobile2() {
	var bar = document.getElementById("menuDropBar2");
	bar.style.display = "block";
}
function closeMenuMobile2(){
	var bar = document.getElementById("menuDropBar2");
	bar.style.display = "none";
}

function addShop(id,quantitymax) {
	var quantity=document.getElementById("quantity"+id).value
	var page=document.getElementById("page").value
	if(quantity<=quantitymax){
		window.location.href ="addCart?itemID="+id+"&numItems="+quantity+"&page="+page;
	}else{
		document.getElementById("errorQ").style.display="block";
		document.getElementById("acquista").style.display="none";
	}
}


function showPassword(inpsw,none,inline){
	var bar = document.getElementById(inpsw);
	bar.setAttribute("type","text");
	var icon1 = document.getElementById(inline);
	var icon2 = document.getElementById(none);
	icon1.style.display="inline";
	icon2.style.display="none";
}

function hidePassword(inpsw,none,inline){
	var bar = document.getElementById(inpsw);
	bar.setAttribute("type","password");
	document.getElementById(none).style.display="none";
	document.getElementById(inline).style.display="inline";
}
