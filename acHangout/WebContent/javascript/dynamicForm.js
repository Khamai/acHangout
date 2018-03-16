var fieldNum = 0;

function incrementField(){
	fieldNum++;
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
			enableType();
		}
 

		function setMulti() {
			
			var r = document.createElement('span');
			var y = document.createElement("INPUT");
			y.setAttribute("type", "text");
			y.setAttribute("placeholder", "Name");
			y.setAttribute("maxlength", "32");
			y.setAttribute("required", "required");
			var g = document.createElement("button");
			g.setAttribute("class", "btn");
			g.setAttribute("class", "btn-danger");
			y.setAttribute("Name", "multi");
			r.appendChild(y);
			g.setAttribute("onclick", "deleteSetup('dynamicForm','multi')");
			r.appendChild(g);
			r.setAttribute("id", "multi");
			document.getElementById("dynamicForm").appendChild(r);
			
			

		}

		//Add [x] button to discard setup section and allow a different answer setup option

		function setShort() {
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


		function setRank() {
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
	

