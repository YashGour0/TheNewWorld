
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>The New World</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/home.css">
</head>
<style>
.about {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin: 20px;
        }
        .card {
            background-color: white;
            padding: 20px;
            margin: 10px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 45%;
        }
        

 </style>

 
<body>
    <%@ include file="/WEB-INF/views/index.jsp" %>
   
    <section id="home" class="hero">
        <div class="banner-container">
            <img src="<%= request.getContextPath() %>/images/institute.png" alt="Banner" class="banner-image">
            <img src="<%= request.getContextPath() %>/image/back.jpg" alt="Banner" class="banner-image">
            <img src="<%= request.getContextPath() %>/image/bac 2.jpg" alt="Banner" class="banner-image">
            
        </div>
    </section>
 <jsp:include page="/WEB-INF/views/message.jsp" />
 
 <div class="about">
        <div class="card">
            <h2>About Us</h2>
            <p>Ashish Computer Institute running from 2019, conducting various commercial training and Skill Development programs. Generation Next Infotech is working across whole nation with Various Authorized Study Center (ASC) and a wide network in many states of the country. Our society decided to work for "Information & Technology for all", the slogan by the Indian Govt. For formulating the dream of Indian Govt. and to fulfill the requirement of employment of 22 Lac in I.T. Technologist and more than other 10 Lac ancillary requirement of computer operator / specialist in industrial development, small scale industries.</p>
            
        </div>
        <div class="card">
            <h2>Director Message</h2>
            <p>Ashish Computer Institute offers one of the most prestigious (Computer Applications) Program in the Country. Approved by Govt. of Bihar (SR Act 1860) and ISO 9001:2008. The Institute is committed to provide quality education, and to do so a perfect blend of senior, experienced educationist and young breed of energetic teachers comprise the faculty. We encourage the staff to adopt innovative and interactive methods of teaching in order to make the institute an example of posterity. The pursuit of knowledge and understanding has constantly propelled our journey towards excellence.</p>
            
        </div>
        </div>
   <%@ include file="/WEB-INF/views/footer.jsp" %>

 <script src="<%=request.getContextPath()%>/java_Script/home.js"></script>
</body>
</html>
 

