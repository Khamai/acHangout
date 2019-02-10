<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.io.*,java.util.*"%>

<c:if test="${empty List}">
	<jsp:forward page="extract" />
</c:if>

<!DOCTYPE html>
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>acHangout</title>
<link rel="shortcut icon" type="image/x-icon" href="Resources/k.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="style.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.row.mt {
	margin-top: 1.25em;
}

.lpad {
	padding: 20px;
}

.forum-category {
	background-color: hsl(195, 73%, 58%);
	color: white;
	font-size: 16px;
}

.forum-head {
	background-color: hsl(206, 35%, 13%);
	color: hsl(0, 0%, 100%);
	font-size: 14px;
	text-align: center;
}

.forum-head>.child {
	border-right: 2px solid hsl(212, 35%, 15%);
	border-left: 2px solid hsl(212, 28%, 12%);
}

.forum-topic {
	background-color: hsl(0, 0%, 96%);
	border-bottom: 1px solid hsl(0, 0%, 90%);
	color: hsl(0, 0%, 50%);
	font-size: 14px;
	text-align: center;
}

.forum-topic>.child:first-child {
	color: hsl(0, 0%, 60%);
	text-align: left;
}

.forum-topic>.child {
	padding: 0;
}
</style>

</head>

<body>
	<!-- I include header and top-menu separately because the other web pages also need to have both of them 
		so don't need to do again one more time
	-->
	<div class="header">
		<jsp:include page="header.jsp" />
	</div>

	<div class="top-menu">
		<jsp:include page="top-menu.html" />
	</div>
	<br />
	<br />

	<div class="container">
		<div class="row">
			<ul class="breadcrumb">
				<li><a href="index.jsp"><i class="fa fa-home fa-2x"></i></a></li>
				<li class="active">Asian Foods</li>
			</ul>
		</div>
		<br /> <br />
		<div class="row text-right">
			<div class="btn-group btn-group-md">
				<button type="button" name="" class="btn btn-primary">Update</button>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row mt">
			<div class="col-sm-12 forum-category lpad">
				<h3>User Information</h3>
			</div>


			<div class="col-sm-12 forum-head lpad">
				<div class="col-sm-1">ID</div>
				<div class="col-sm-3">Username</div>
				<div class="col-sm-2">Name</div>
				<div class="col-sm-1 child">Level</div>
				<div class="col-sm-2 child">Date Created</div>
				<div class="col-sm-3">Operations</div>

				<%-- <div class="col-sm-2 child" style="border-left: 2px solid hsl(212, 35%, 15%);">User</div> --%>
			</div>

			<div class="records">
				<c:if test="${not empty List}">
					<c:forEach items="${List}" var="ok">
						<fmt:parseNumber var="i" type="number" value="${ok.get(4)}" />
						<div class="col-sm-12 forum-topic pad">
							<div class="col-sm-1">${ok.get(0)}</div>
							<div class="col-sm-3">${ok.get(1)}</div>
							<div class="col-sm-2">${ok.get(6)}${ok.get(7)}</div>
							<div class="col-sm-1 child" id="${ok.get(0)}">${ok.get(4)}
							</div>
							<div class="col-sm-2 child">${ok.get(3)}</div>
							<div class="col-sm-3" id="${ok.get(0)}">
								<c:choose>
									<c:when test="${i > 0}">
										<button id='${ok.get(0)}' name="valid" class="btn btn-danger">Disable</button>
									</c:when>
									<c:otherwise>
										<button id='${ok.get(0)}' name="valid" class="btn btn-success">Enable</button>
									</c:otherwise>
								</c:choose>

								<button id='${ok.get(0)}' name="edit" class="btn btn-info">Edit</button>
							</div>
						</div>
					</c:forEach>
				</c:if>
				<c:if test="${empty List}">
					<div class="col-sm-12 forum-topic pad">
						<h4>Currently, there are no user!!</h4>
					</div>
				</c:if>
			</div>
		</div>
	</div>

	<br />
	<br />

	<div class="container">
		<div class="row text-right">
			<div class="btn-group btn-group-md">
				<button type="button" name="update" class="btn btn-primary">Update</button>
			</div>
		</div>
		<br /> <br />
		<div class="row">
			<ul class="breadcrumb">
				<li><a href="index.jsp"><i class="fa fa-home fa-2x"></i></a></li>
				<li class="active">Asian Foods</li>
			</ul>
		</div>
	</div>

	<br />
	<br />
	<br />
	<br />
	<br />
	<br />

	<script>
	var ids = [],values = [];
	$(document).ready(function(){
		$(".btn[name=edit]").hide();
		
		$(".btn[name=valid]").on('click',function(){
			var tid = $(this).attr('id');
			
			if($.inArray(tid, ids) == -1){
				ids.push(tid);
			}
			
			if($(this).html() == "Enable"){
				$(".col-sm-1.child#"+tid).html("1");
				$(this).removeClass('btn-success').addClass('btn-danger');
				$(this).html("Disable");
			} else{
				$(".col-sm-1.child#"+tid).html("0");
				$(this).removeClass('btn-danger').addClass('btn-success');
				$(this).html("Enable");
			}
		})
		
		$(".btn[name=edit]").on('click',function(){
			var tid = $(this).attr('id'),
				lvl = $(".col-sm-1.child#"+tid).html();
			
			if($.inArray(tid, ids) == -1){
				ids.push(tid);
			}
			
			$(".col-sm-1.child#"+tid).html("<input type='number' class='form-control' id="+
					tid+" value="+lvl+" min= 1 max = 10>");
		})
		
		
		$(".btn[name=update]").on('click',function(){
			$.each( ids, function( key, value ) {
				if ($(".col-sm-1.child#"+value+" input").length > 0){
					var num = $(".form-control#"+value).val();
					alert(num);
					values.push($(".form-control#"+value).val());
				} else {
					values.push($(".col-sm-1.child#"+value).html());
				}
				
			});
			
			
			$.ajax({
				  url: "updatelvl",
				  data: {values:values,ids:ids},
				  type: 'post',
				  success: function() {
				 	values = [];
				 	ids = [];
				 	location.reload();
				  }
				});
		})
	})
</script>

	<jsp:include page="footer.jsp" />
</body>
</html>