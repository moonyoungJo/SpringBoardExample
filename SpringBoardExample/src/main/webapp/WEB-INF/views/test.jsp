<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>Ajax Test Page</h2>
	<ul id="replies"></ul>
	
	<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script>
		var bno = 378;
		
		getAllList();
		
		function getAllList(){
			$.getJSON("/replies/all" + bno, function(data){
				var str="";
				console.log(data.length);
				
				$(data).each(function(){
					str += "<li data-rno='" + this.rno + "' class='replyLi'>"
							+ this.rno + ":" + this.replytext + "</li>";
				})		
				$("#replies").html(str);
			});
		}
	</script>
</body>
</html>