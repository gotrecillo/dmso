//Cambiar el div que estamos viendo en funcion del boton que selecionamos
function changeClass (div) {
	resetButtons();
	div.className = "btnSelected";
	var divId = div.id;
	divId = divId.substring(0, divId.length - 3);
	hideDivs();
	showDiv(divId);
}

function showDiv(id) {
   	document.getElementById(id).style.display = "block";
}

function resetButtons(){
 	var elements = document.getElementsByClassName("btnSelected");
 	for (var i = 0; i < elements.length; i++) {
 		elements[i].className = "btnBlue";
 	};
}

function hideDivs() {
	var elements = document.getElementsByClassName("hideable");
	for (var i = 0; i < elements.length; i++) {
		elements[i].style.display = "none";
	}
}

//Calcular el nivel efectivo y el bonus de proficiencia
function getTotalLevel(){
	var elements = document.getElementsByClassName("classLevel");
	var totalLevels = 0;
	for (var i = 0; i < elements.length; i++) {
		totalLevels += Number(elements[i].value);
	}
	return totalLevels;
}

function calculateLevel(){
	var levels = getTotalLevel();
	document.getElementById("level").innerHTML = levels;
	calculateProficiency(levels);
}

function calculateProficiency(level){
	document.getElementById("profBonus").innerHTML = Math.ceil(level / 4) + 1	
}
