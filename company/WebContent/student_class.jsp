<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"  %>
<%@ page import="javax.naming.InitialContext"  %>
<%@ page import="javax.naming.InitialContext"  %>
<%@ page import="javax.naming.Context"  %>
<%@ page import="javax.naming.InitialContext"  %>
<%@ page import="javax.servlet.http.HttpSession"  %>
<%@ page import="javax.sql.DataSource"  %>

<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>동국대학교 서울캠퍼스 출석 WebSite</title>
	<script src="https://code.jquery.com/jquery-3.1.1.js"></script>
<script>

$(document).ready(function(){

$("form").show("slow");

$("#tip").hover(function(){
  $("#div2").show("slow");
  $("#tip").css('background-color', '#0067A3');

},function(){
  $("#div2").slideUp("slow");
  $("#tip").css('background-color', '#50bcdf');
});

$("#bbb1").hover(function(){	  
	  $("#bbb1").css('background-color', '#0067A3');
	},function(){	 
	  $("#bbb1").css('background-color', '#50bcdf');
	});
	
$("#bbb2").hover(function(){	  
	  $("#bbb2").css('background-color', '#0067A3');
	},function(){	 
	  $("#bbb2").css('background-color', '#50bcdf');
	});
	
$("#bbb3").hover(function(){	  
	  $("#bbb3").css('background-color', '#0067A3');
	},function(){	 
	  $("#bbb3").css('background-color', '#50bcdf');
	});
	
$("#bbb4").hover(function(){	  
	  $("#bbb4").css('background-color', '#0067A3');
	},function(){	 
	  $("#bbb4").css('background-color', '#50bcdf');
	});
	
$("#bbb5").hover(function(){	  
	  $("#bbb5").css('background-color', '#0067A3');
	},function(){	 
	  $("#bbb5").css('background-color', '#50bcdf');
	});
});

</script>
	
<style type = "text/css">
		/* 배경화면을 꽉차게 설정 */
	    html {
			background: url("res/background.png") no-repeat center center fixed;
	        -webkit-background-size: cover;
	        -moz-background-size: cover;
	        -o-background-size: cover;
	        background-size: cover;
		}
	       
		div.fixed {
			-webkit-background-size: cover;
	        -moz-background-size: cover;
	        -o-background-size: cover;
	        background-size: cover;
	  		position : fixed;
	  		top : 50px;
	  		left : 450px;
	 		width : 1040px;
	  		height : 600px;
	  		border : none;
	  		background-color : #D4F4FA;
	  		padding-top: 8px;
	        padding-bottom: 15px;
	        padding-left : 8px;
	        padding-right : 8px;
			border-radius: 15px;    
	        -moz-border-radius: 15px;    
	        -webkit-border-radius: 15px;
		}
	
		.form {
		  position: relative;
		  z-index: 1;
		}
	
		.form button {
		  font-family: "Roboto", sans-serif;
		  /* 배경색 */
		  background: #50bcdf ;
		  /* 아래로 글자가사리지지 않음 */
		  width: 100%;
		  border: 0;
		  padding: 15px;
		  /*글씨체 색깔 */
		  color: #FFFFFF;
		  font-size: 14px;
		}
		
		.form_caja {
			width: 500px;
	        padding-top: 8px;
	        padding-bottom: 8px; /*15*/
	        padding-left : 8px;
	        padding-right : 8px;
	        margin: 0 auto 20px auto;
	        background-color: #D4F4FA;    /*#f0ffff*/
	        border-radius: 15px;    
	        -moz-border-radius: 15px;    
	        -webkit-border-radius: 15px;
	        color: #f0ffff;
	        position:fixed center;
	        overflow:auto; /*hidden->auto*/
	        position : fixed;
	        top : 50px;
			left : 450px;
	  		width : 1040px;
	  		height : 600px;
	  		border :3px solid #FFFFFF;
	    }
	 
	    table { 
	    	background-color : #FFFFFF; /*#f0ffff*/
	    	color : #000000; 
	    	align:center; 
	    	height : 200px; 
	    	top : 50px;
	  		left : 450px;
	  		width : 1000px; /*1040*/
	  		height : 300px; /*600*/
	  		
	    }
	    
	    thead { 
	    	background-color: #a0efff; 
	    	color :#000000; 
	    	padding:4px; 
	    	/*line-height:30px */
	    	border :1px solid #000000;
	    }
	    
	    th, td {
	    height : 5px;
		    padding: 10px; 
		    text-align: center;
		    border :1px solid #000000;
	  	}
	  	
	  /*  tbody tr:nth-child(even) { background: #FBF8EF }
	    tbody tr:nth-child(odd) { background: #FFF }*/
	</style>
	
		<script type="text/javascript">
	function getElement(k) {
		alert("여기는 되니");
		alert("k"+k);
		var msg = document.getElementById(k).innerText;
		alert("여기는 " + msg);
		alert(msg);
		//String class_name='';
		session.setAttribute("class_name", msg);	



	
			}
	</script>
	</head>
	

	
	<body>
		<div style="border :1px solid none; width : 400px; height : 150px;" class="form">
			<a href = "student_main.jsp"><img width = 400px height = 150px src = "res/dgl.png"></a>
			<center> 
				<div>
				<img width = 45px height = 45px src = "res/user.png">
				<%=(String)session.getAttribute("name") %> 님 환영합니다.
				 </div>
			</center>
			
	<form style="display:none"><br><br>
	    <button type="button" id = "bbb1" onclick="location.href='student_main.jsp' ">출석하기</button>
          <button type="button" id = "bbb3" onclick="location.href='student_class.jsp' ">수강 과목 출석 확인</button><!--<br><br><br><br>  -->
          <button type="button" id = "bbb4" onclick="location.href='student_info.jsp' ">마이페이지</button>
          <button name = "s" type="button" id = "bbb5" onclick="location.href='index.jsp' ">로그아웃</button>
	    </form>
		</div>
		
		
		
		<%
		String student_id=(String)session.getAttribute("id");
		String []class_id=new String[40];
		String []class_name=new String[40];
		String []professor_name=new String[40];
		int []class_unit=new int[40];
		int i = 0;
		
		Class.forName("org.mariadb.jdbc.Driver");
		
		try{
		// 보안상 연결 정보 비공개
		String url = "jdbc:mariadb://"; 
		Connection conn = DriverManager.getConnection(url, "", ""); 
		
			Statement stmt = conn.createStatement();
//  select class.class_id, class.class_name, class.class_professor_name , class.class_unit from professor, class, student, enroll where enroll.student_id = "2017113506" and student.student_id = "2017113506" and enroll.class_id = class.class_id and professor.professor_name = class.class_professor_name;
			String strSQL = "select class.class_id, class.class_name, class.class_professor_name , class.class_unit from professor, class, student, enroll where enroll.student_id = ? and student.student_id = ? and enroll.class_id = class.class_id and professor.professor_name = class.class_professor_name";
			
			PreparedStatement pstmt = conn.prepareStatement(strSQL); 
			pstmt.setString(1,student_id);
		    pstmt.setString(2,student_id);
			
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				class_id[i]=rs.getString(1);
				class_name[i]=rs.getString(2);
				professor_name[i]=rs.getString(3);
				class_unit[i]=rs.getInt(4);
				i++;
				}	
			%>
			
		 <%} 
		catch (SQLException e) { e.printStackTrace(); }
		 %>
		<div class="form_caja">
		<center><font size="6" color="black"><b><%=(String)session.getAttribute("name")%> 학생의 수강 과목</b></font></center>
			<table align="center" style="overflow:auto">
				<thead>
					<tr>
						<td>학수번호</td>
						<td>과목명</td>
						<td>교수명</td>
						<td>학점</td>
						<td>관리</td>
						
					</tr>
				</thead>
				<tbody>
				<% for(int k=0;k<i;k++){
				String name = class_name[k];
				%>
				
				
				  <form action="/company/BoardServlet?class_name=<%=class_name[k]%>&class_id=<%=class_id[k]%>" method="post"> 
				
					<tr>
						<td><%=class_id[k] %></td>
						
						<td><%=class_name[k] %></td>
						<td><%=professor_name[k] %></td>
						<td><%=class_unit[k] %></td>
					
	<td><button type="submit" value="stu_attend" name ="submit">관리</button></td>		
		</form>
					</tr>
					
				<%} %> }</tbody>
			</table>
		</div>
		</body>
		</html>
		
		