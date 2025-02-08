<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

/* Gallery styling */
.gallery img {
    width: 200px;
    height: 300px;
    margin: 10px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.gallery img:hover {
    transform: scale(1.05);
    transition: transform 0.3s;
}


    footer {
        text-align: center;
        margin-top: 30px;
        padding: 10px;
        background-color: #004080;
        color: white;
    }
</style>
<body>
 <jsp:include page="/index.jsp" />

    <section id="gallery">
        <h2>INSTITUTE IMAGE </h2>
        <div class="gallery">
			<img src="<%= request.getContextPath() %>/images/banner_1.png" style="width: 400px; height: 300px;" alt="banner 1.1">
			<img src="<%= request.getContextPath() %>/images/banner_2.jpeg" style="width: 200px; height: 300px;" alt="banner 1.2">
			<img src="<%= request.getContextPath() %>/images/imag_3.jpeg" style="width: 500px; height: 300px;" alt="banner 2">
            <img src="<%= request.getContextPath() %>/images/img_1.jpeg" style="width: 200px; height: 300px;" alt="banner 3">
	        <img src="<%= request.getContextPath() %>/images/img_2.jpeg" style="width: 300px; height: 300px;" alt="banner 4">
	        <img src="<%= request.getContextPath() %>/images/img_3.jpeg" style="width: 300px; height: 300px;" alt="banner 5">
	        <img src="<%= request.getContextPath() %>/images/img_4.jpeg" style="width: 300px; height: 300px;" alt="demo admit">
	        <img src="<%= request.getContextPath() %>/images/img_5.jpeg" style="width: 450px; height: 400px;" alt="demo marksheet">
	        <img src="<%= request.getContextPath() %>/images/img_6.jpeg" style="width: 650px; height: 400px;" alt="class room 1">
	        <img src="<%= request.getContextPath() %>/images/img_7.jpeg" style="width: 600px; height: 300px;" alt="class room 2">
	         <img src="<%= request.getContextPath() %>/images/IMA_8.jpeg" style="width: 600px; height: 300px;" alt="class room 2">
	         
        </div>
	</section>
	
	<jsp:include page="/footer/footer.jsp" />
	
</body>
</html>