
		function submit() {

			document.forms["pollForm"].submit();
			document.forms["pollForm"].submit();

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
			var g = document.createElement("button");
			g.setAttribute("class", "btn");
			g.setAttribute("class", "btn-danger");
			y.setAttribute("Name", "multi");
			r.appendChild(y);
			g.setAttribute("onclick", "deleteSetup('dynamicForm','multi')");
			r.appendChild(g);
			r.setAttribute("id", "multi");
			document.getElementById("dynamicForm").appendChild(r);
			document.getElementById("multi").setAttribute("class","jumbotron");
			disableType();

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
			disableType();

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
			disableType();

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
	

