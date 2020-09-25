<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lotto</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style type="text/css">
    h1,h2,li {text-align: center;}
    li {font-size: 50px;}
</style>
<script type="text/javascript" src="./js/jquery-3.5.1.min.js"></script>
<script type="text/javascript" src="./js/jquery-ui.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#accordion').accordion();
		
		function lotto() {
		    var oneSet = [];
		    for (var i = 0; i < 6; i++) {
		        var num = parseInt(Math.random() * 45) + 1;
		        if(oneSet.indexOf(num) == -1) {
		            oneSet.push(num);
		        } else {
		            i--;
		        } 
		    }
		    oneSet.sort((a,b) => {return a-b});
		    return oneSet.join(' ');
		}
		
		$('#btn1').on('click',function() {
			
			$('#accordion').empty();
			
			var html = '';
			html += '<ul class="list-group">';
			html += '<li class="list-group-item">';
			html += lotto();
			html += '</li>';
			html += '</ui>';
			html += '<hr>';
			
			$('#accordion').append(html);
			$('#accordion').accordion('refresh');
		});
	
		$('#btn2').on('click',function() {
			
			$('#accordion').empty();
			
			var html = '';
			for (var i = 0; i < 5; i++) {
				html += '<ul class="list-group">';
				html += '<li class="list-group-item">';
				html += lotto();
				html += '</li>';
				html += '</ui>';
				html += '<hr>';
			}
			
			$('#accordion').append(html);
			$('#accordion').accordion('refresh');
		});
	});
</script>
</head>
<body>

	<br><br><br><br><br>
	<h1><strong>로또 번호 생성기</strong></h1><br><br>
	<button type="button" id="btn1" class="btn btn-primary btn-lg btn-block">1세트 생성버튼</button>
	<button type="button" id="btn2" class="btn btn-success btn-lg btn-block">5세트 생성버튼</button>

<br><hr>

<div align="center">
	<button type="button" class="btn btn-warning" onclick="window.open('https://www.dhlottery.co.kr/gameResult.do?method=byWin')">지난 회차 당첨 번호</button>
</div>

<div class="container"><br><br>
	<p class="text-primary" id="accordion"></p>
</div>

</body>
</html>
