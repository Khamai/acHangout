var fieldNum = 0;
var leftMultiCount = 0;
var rightMultiCount = 0;

function incrementField(){
	fieldNum+= 1;
}

function decrementField(){
	fieldNum-= 1;
}
function qSetup(selection) {
	alert("Selection: "+selection);
	document.getElementById("multi").disabled = true;
	document.getElementById("rating").disabled = true;
	if(fieldNum == 0){
		closeBtn();
	}
	switch(selection){

	case "multi":
		setMulti();


		break;

	case "rating":
		alert("rating selected v 2.0");
		setRate();


		break;

	default:
		alert("default case");
	break;
	}



}



function deleteSetup(parentDiv, childDiv) {
	alert("chilDiv "+childDiv+" received. Current fieldNum is "+fieldNum);
	var child = document.getElementById(childDiv);
	var parent = document.getElementById(parentDiv);
	alert(childDiv);
	parent.removeChild(child);
	decrementField();

	alert("Option deleted");
	if(fieldNum === 0){
		document.getElementById("multi").disabled = false;
		document.getElementById("rating").disabled = false;
		removeClose();


	}


}


function setMulti() {
	if(fieldNum != 4){
		incrementField();
		alert("set multi for input "+fieldNum);
		var d = document.createElement('div');
		d.setAttribute("class","row border border-warning");
		d.setAttribute("id","left-field"+fieldNum);


		var r = document.createElement('span');
		r.id = "span"+fieldNum;



		var y = document.createElement("INPUT");
		y.setAttribute("type", "text");
		y.setAttribute("class","dyn-field");
		y.setAttribute("placeholder", "Answer");
		y.setAttribute("maxlength", "32");
		y.setAttribute("required", "required");
		y.name = "option"+fieldNum;

		var g = document.createElement("button");
		g.setAttribute("class", "btn btn-danger");
		g.id = "delete"+fieldNum;
		alert("delete function for"+fieldNum);
		//Setting on click deleteSetup("","left-field"+fieldNum) will always use the newest value and
		//not current value at time of declaration.
		g.onclick = function(){deleteSetup("left-box",d.getAttribute('id'))};


		var c = document.createElement("button");
		c.setAttribute("class", "btn btn-success");
		c.onclick = function(){qSetup("multi")};
		c.id = "add"+fieldNum;

		r.appendChild(y);
		r.appendChild(c);
		r.appendChild(g);

		d.appendChild(r);



		document.getElementById("left-box").appendChild(d);



	}
	else{
		alert("Max field limit reached");
	}
}

function setRate(){
	for(fieldNum=1;fieldNum<6;fieldNum++){
		alert("set multi for input "+fieldNum);
		var d = document.createElement('div');
		d.setAttribute("class","row border border-warning");
		d.setAttribute("id","left-field"+fieldNum);


		var r = document.createElement('span');
		r.id = "span"+fieldNum;
		r.setAttribute("style","color:Gold");

		var s = document.createElement('i');
		s.id = "star"+fieldNum;
		s.setAttribute("class","fas fa-star");
		s.setAttribute("style","");
		


		var y = document.createElement("INPUT");
		y.setAttribute("type", "text");
		y.setAttribute("class","dyn-field");
		y.setAttribute("placeholder", "rating description");
		y.setAttribute("maxlength", "32");
		y.setAttribute("required", "required");
		y.name = "option"+fieldNum;

		r.appendChild(s);
		d.innerHTML = fieldNum;
		
		r.appendChild(y);
		d.appendChild(r);



		document.getElementById("left-box").appendChild(d);
	
	}
	fieldNum = 5;
	
}
//Add [x] button to discard setup section and allow a different answer setup option


function closeBtn(){
	var parent = document.getElementById("right-box");
	var row = document.createElement("div");
	var icon = document.createElement("i");

	row.id = "row";
	close.id = "close";
	icon.id= "icon";
	
	row.setAttribute("class","row");
	row.setAttribute("style","font-size:2em; color:black");
	icon.setAttribute("class","far fa-times-circle");

	

	parent.appendChild(row);
	row.appendChild(icon);
	row.onclick = function(){closePress()};
	alert("close button created");
}

function removeClose(){
//	document.getElementById("close").removeChild(document.getElementById("inner"));
//	document.getElementById("row").removeChild(document.getElementById("close"));
	document.getElementById("right-box").removeChild(document.getElementById("row"));

}


function closePress(){

	while(fieldNum !=0){
		deleteSetup("left-box","left-field"+fieldNum)

	}

}

function submitForm(){
	if(fieldNum < 2){
		alert("minimum 2 options for multiple choice poll");
	}
	else{
	document.getElementById("option").value = fieldNum;
	document.forms[0].submit();
	document.forms[1].submit();
	}

}
