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
			
			document.getElementById("multi").disabled = true;
			document.getElementById("rating").disabled = true;
			
			switch(selection){
			
			case "multi":
				setMulti();
				
				
				break;
				
			case "rating":
				setRate();
				

				break;
				
			default:
				alert("default case");
				break;
			}
		closeBtn();
		

		}
 

 
		function deleteSetup(parentDiv, childDiv) {
			
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
			alert("fieldNum = "+fieldNum);
			
			}
			
		}
 

		function setMulti() {
			if(fieldNum != 4){
			incrementField();
			var d = document.createElement('div');
			d.setAttribute("class","row border border-warning");
			//switch case left or right
			d.setAttribute("id","left-field"+fieldNum);
			alert("left-field"+fieldNum);
			var r = document.createElement('span');
			r.id = "span"+fieldNum;
			
			
			var y = document.createElement("INPUT");
			y.setAttribute("type", "text");
			y.setAttribute("class","dyn-field");
			y.setAttribute("placeholder", "Answer");
			y.setAttribute("maxlength", "32");
			y.setAttribute("required", "required");
		
			var g = document.createElement("button");
			g.setAttribute("class", "btn btn-danger");
			g.id = "delete"+fieldNum;
			g.onclick = function(){deleteSetup("left-box","left-field"+fieldNum)};
			
			
			var c = document.createElement("button");
			c.setAttribute("class", "btn btn-success");
			c.onclick = function(){setMulti()};
			c.id = "add"+fieldNum;
			
			
			r.appendChild(c);
			r.appendChild(g);
			y.setAttribute("Name", "multi");
			r.appendChild(y);
			
			
			r.id= "multi"+fieldNum;
			
				document.getElementById("left-box").appendChild(d);
				d.appendChild(r);
				alert("setMulti called. FieldNum = "+fieldNum)
				
		}
		else{
				alert("Max field limit reached");
			}
		}
		
		function setRate(){
			
		}
		//Add [x] button to discard setup section and allow a different answer setup option

	
	function closeBtn(){
		var parent = document.getElementById("right-box");
		var row = document.createElement("div");
		var close = document.createElement("button");
		var inner = document.createElement("span");
		
		row.id = "row";
		close.id = "close";
		inner.id = "inner";
		row.setAttribute("class","row");
		
		
		close.className = "col-md-1 offset-md-10 border border border-dark";
		close.setAttribute("aria-label","Close");
		close.setAttribute("style","border-radius:100px; background-color:#e6e6e6;padding: 4px;");
		
		inner.setAttribute("aria-hidden","true");
		inner.innerHTML = "&times;";
		
		parent.appendChild(row);
		row.appendChild(close);
		close.appendChild(inner);
		close.onclick = function(){closePress()};
		alert("close button created");
	}
	
	function removeClose(){
//		document.getElementById("close").removeChild(document.getElementById("inner"));
//		document.getElementById("row").removeChild(document.getElementById("close"));
		document.getElementById("right-box").removeChild(document.getElementById("row"));
		
	}
	
/*	<div class="row">
	<button type="button" class="close offset-md-10 border border-dark" aria-label="Close" style="border-radius:100px; background-color:#e6e6e6;padding: 10px;">
<span aria-hidden="true">&times;</span>
</button>
</div> */

	function closePress(){
		
		while(fieldNum !=0){
			deleteSetup("left-box","left-field"+fieldNum)
			
		}
		
	}
