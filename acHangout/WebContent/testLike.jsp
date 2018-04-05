<%@ page contentType="text/html; charset=iso-8859-1" language="java"%>
<meta charset="utf-8">
<link rel="stylesheet"
	href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script
	src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<html>

<script type="text/javascript">
function priase(articleid,commentid,praiseN,pra){
                var type = "json";
                var praiseNum = parseInt(document.getElementById(praiseN).innerHTML); 
                $.ajax({
                    url:"${pageContext.request.contextPath}/RecivePraiseServlet?sendType=post&dataType="+type,
                    data:{"anthorid":'${sessionScope.user.userId}',"articleid":articleid,"commentid":commentid},
                    type: "post",
                    dataType:type,
                    success:function(data){
                    	
                        if("json" == type)
                        {
                            if(data != undefined && data != null)
                            {
                                var flag = data.praiseflag;  //already clicked like!
                                if(flag == 0)
                                {
                                    document.getElementById(praiseN).innerHTML = praiseNum + 1;
                                    $('#'+pra).css("color","red");
                                }
                                else if(flag == 1)
                                {
                                    alert("You already clicked!");
                                    $('#'+pra).css("color","red");
                                }
                            }
                        }
                    }
                });

            }
</script>

<body>
	<a href="javascript:void(0)"
		onclick="priase(${Article.aid },0,'praiseOne','praiseTwo')"> <spanid="praiseTwo">Like</span></a>
	<span id="praiseOne">${Article.articlePraiseNum }</span>


</body>
</html>