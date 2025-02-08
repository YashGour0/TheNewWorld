<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Institute Navigation</title>
    <!-- Include External CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/navbar.css">
</head>
<style>  
 .banner1 {
            background-color:  #666;; /* बैनर का बैकग्राउंड लाल */
            color: white; /* टेक्स्ट का रंग सफेद */
            text-align: center; /* टेक्स्ट को सेंटर में रखें */
            padding: 5px;
        }

        /* "The New World" के लिए स्टाइल */
        .title {
            font-size: 5rem; /* टेक्स्ट का साइज़ */+
            font-weight: bold; /* टेक्स्ट बोल्ड */
           
        }

        /* "O" को हटाकर वर्ल्ड इमेज लगाने के लिए */
        .title .world {
            display: inline-block; /* इमेज को टेक्स्ट के साथ इनलाइन रखें */
            width: 70px; /* इमेज की चौड़ाई */
            height: 70px; /* इमेज की ऊंचाई */
            background: url('<%=request.getContextPath()%>/images/WORLD.png') no-repeat center center;
            background-size: contain; /* इमेज को सही आकार में फिट करें */
            vertical-align: middle; /* इमेज को टेक्स्ट के साथ संरेखित करें */
        }

        /* Subtitle*/
        .subtitle {
            font-size: 1.8rem;
            font-style: italic;
          color: #00ff00; /* टेक्स्ट का रंग हरा */
        }
        .author {
            text-align: right;
            font-size: 2rem;
            color: white;
            margin-top: -30px;
            margin-right: -400px;
        }
        .contact {
            text-align: right;
        }
        .contact p {
         color: white;
            margin: 0;
            font-size: 0.9rem;
        }
        .contact a {
            
            color: #007bff;
            font-weight: bold;
        }
</style>
<body>

    <header>
        <img src="<%=request.getContextPath()%>/images/LOGO 1.png" alt="Institute Logo" style="height: 80px; margin-right: 10px;">
        <div class="banner1">
        <!-- शीर्षक -->
        <div class="title">
            The New W<span class="world"></span>rld <!-- "O" की जगह वर्ल्ड इमेज -->
        </div>

        <!-- उपशीर्षक -->
        <div class="subtitle">Spoken & Communicative English Centre</div>
        <div class="author">By Rajesh Kumar Raj</div>

    </div>
     <div class="contact">
            <p>Mon-Sat: +91 9934705528, 7004547233 
            <a href="mailto:thenewworld4eng@gmail.com">thenewworld4eng@gmail.com</a>
           
        </div>
    </header>

    <nav>
        <a href="/home">Home</a>
        
                <a href="<c:url value='/director'/>">About Us</a>
           
        <div class="dropdown">
            <button class="dropbtn">Library</button>
            <div class="dropdown-content">
                <a href="<%=request.getContextPath()%>/setAppoint">Seat Allotment</a>
                <a href="#center_process">Library Image</a>
            </div>
           
        </div>
        
         <div class="dropdown">
            <button class="dropbtn">Student</button>
            <div class="dropdown-content">
                 <a href="<c:url value='/student_reg'/>">Student Registration</a>
                <a href="<c:url value='/student_login'/>">Student Login</a>
            </div>
        </div>
         <a href="/contact">Contact</a>
 			<a href="gallery">Gallery</a>
          <a href="institute_login">Institute Login</a>
         
         
    </nav>
    

    <!-- Include JavaScript -->
    <script src="<%=request.getContextPath()%>/navbar.js"></script>
</body>
</html>
