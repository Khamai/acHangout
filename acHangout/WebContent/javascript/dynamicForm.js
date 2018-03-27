var fieldNum = 0;
var leftMultiCount = 0;
var rightMultiCount = 0;

function incrementField(){
	fieldNum++;
}

function decrementField(){
	fieldNum--;
}
		function qSetup(selection) {
			
			
			
			disableType();
			switch(selection){
			
			case "multi":
				setMulti();
				
				
				break;
				
			case "short":
				setShort();
				

				break;
				
			case "rank":
				setRank();
				
				
				break;
			
			default:
			
				break;
			}
			

		}
 

 
		function deleteSetup(parentDiv, childDiv) {
			
			alert("Discard work?");
			var child = document.getElementById(childDiv);
			var parent = document.getElementById(parentDiv);
			parent.removeChild(child);
			
			decrementField();
			
			if(fieldNum == 0){
			enableType();
			alert("fieldNum = "+fieldNum);
			
			}
			
		}
 

		function setMulti() {
			incrementField();
			alert("setMulti called. FieldNum = "+fieldNum);
			
			var d = document.createElement('div');
			d.setAttribute("class","row border border-warning form-group");
			//switch case left or right
			d.setAttribute("id","left-field");
			
			var r = document.createElement('span');
			r.setAttribute("id","span");
			var y = document.createElement("INPUT");
			y.setAttribute("type", "text");
			y.setAttribute("class","dyn-field");
			y.setAttribute("placeholder", "Answer");
			y.setAttribute("maxlength", "32");
			y.setAttribute("required", "required");
			
			var g = document.createElement("button");
			g.setAttribute("class", "btn btn-danger");
			
			g.setAttribute("onclick", "deleteSetup('left-box','left-field')");
			r.appendChild(g);
			
			var c = document.createElement("button");
			c.setAttribute("class", "btn btn-success");
			c.setAttribute("onclick", "setMulti()");
			r.appendChild(c);
			
			y.setAttribute("Name", "multi");
			r.appendChild(y);
			
			
			r.setAttribute("id", "multi");
			if(leftMultiCount != 6){
				document.getElementById("left-box").appendChild(d);
				d.appendChild(r);
				leftMultiCount++;
				alert("Field added to leftt-box. leftMultiCount = "+leftMultiCount);
			}
			else if(rightMultiCount != 6){
				document.getElementById("right-Box").appendChild(d);
				d.appendChild(r);
				rightMultiCount++;
				alert("Field added to right-box. rightMultiCount = "+rightMultiCount);
			}
			else{
				alert("Max field limit reached");
			}
			
			
			
			

		}

		//Add [x] button to discard setup section and allow a different answer setup option

		function setShort() {
			incrementField();
			var r = document.createElement('span');
			var y = document.createElement("INPUT");
			y.setAttribute("type", "text");
			y.setAttribute("placeholder", "Name");
			var g = document.createElement("button");
			g.setAttribute("class", "btn");
			g.setAttribute("class", "btn-danger");
			y.setAttribute("Name", "short");
			r.appendChild(y);
			g.setAttribute("onclick", "deleteSetup('dynamicForm','short')");
			r.appendChild(g);
			r.setAttribute("id", "short");
			document.getElementById("dynamicForm").appendChild(r);
			

		}

		//Allow up to 3 choices with ability to upload an image for each. Rating system implemented either by slider bar or range number input.
		function setRank() {
			incrementField();
			var r = document.createElement('span');
			var y = document.createElement("INPUT");
			y.setAttribute("type", "text");
			y.setAttribute("placeholder", "Name");
			var g = document.createElement("button");
			g.setAttribute("class", "btn");
			g.setAttribute("class", "btn-danger");
			y.setAttribute("Name", "rank");
			r.appendChild(y);
			g.setAttribute("onclick", "deleteSetup('dynamicForm','rank')");
			r.appendChild(g);
			r.setAttribute("id", "rank");
			document.getElementById("dynamicForm").appendChild(r);
			

		}

		//Add [x] button to discard setup section and allow a different answer setup option

		function disableType() {
			var i;
			for (i = 1; i < 4; i++) {
				document.getElementById("qt" + i).disabled = true;
			}
		}

	function enableType(){
		var i;
		for(i=1;i<4;i++){	
			document.getElementById("qt"+i).disabled = false;
		
		
		}
	}
	

