<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Footer Example</title>
<style>
    /* Footer Styles */
    footer {
        background-color: #333;
        color: #fff;
        padding: 15px 0;
        font-family: Arial, sans-serif;
    }

    .footer-container {
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
        max-width: 1200px;
        margin: auto;
        padding: 15px;
    }

    .footer-logo, .footer-links, .footer-contact {
        flex: 1;
        margin: 5px;
    }

    .footer-logo img {
        width: 100px;
        margin-bottom: 5px;
    }

    .footer-logo p {
        font-size: 14px;
        line-height: 1.6;
    }

    .footer-links h3, .footer-contact h3 {
        margin-bottom: 15px;
        font-size: 18px;
        text-transform: uppercase;
        color: #ff9900;
    }

    .footer-links ul {
        list-style-type: none;
        padding: 0;
    }

    .footer-links ul li {
        margin-bottom: 10px;
    }

    .footer-links ul li a {
        text-decoration: none;
        color: #00bfff;
    }

    .footer-links ul li a:hover {
        text-decoration: underline;
    }

    .footer-contact p {
        margin-bottom: 10px;
        font-size: 14px;
    }

    .footer-contact i {
        margin-right: 10px;
        color: #00ff00;
    }

    .footer-bottom {
        text-align: center;
        padding: 6px 0;
        background-color: #222;
        font-size: 14px;
    }

    .footer-bottom a {
        color: #00bfff;
        text-decoration: none;
    }

    .footer-bottom a:hover {
        text-decoration: underline;
    }
</style>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        // Highlight links on hover
        const footerLinks = document.querySelectorAll('.footer-links a');
        footerLinks.forEach(link => {
            link.addEventListener('mouseover', () => {
                link.style.color = '#ff9900';
            });
            link.addEventListener('mouseout', () => {
                link.style.color = '#00bfff';
            });
        });
    });
</script>
</head>
<body>
    <!-- Footer Section -->
    <footer>
        <div class="footer-container">
            <!-- Logo and About Section -->
            <div class="footer-logo">
               <img src="<%= request.getContextPath() %>/images/LOGO23.jpg" style="width: 450px; height: 150px;" alt="institute_logo">
                <p>
                    The, Warisaliganj is a premiere educational institution offering undergraduate education since 1967. Now it's a constituent of Magadh University, Bodh Gaya.
                </p>
            </div>

            <!-- Useful Links Section -->
            <div class="footer-links">
                <h3>USEFUL LINKS</h3>
                <ul>
                	<li><a href="<c:url value='/home'/>">Home</a></li>            
                    <li><a href="<c:url value='/director'/>">About Us</a></li>
                    <li> <a href="<c:url value='/mess'/>">Principle's Message</a></li>
                    <li> <a href="<c:url value='/student_login'/>">Student Login</a></li>
                    <li>  <a href="<c:url value='/gallery'/>">Gallery</a></li>
                    <li> <a href="<c:url value='/institute_login'/>">Institute Login</a></li>
                    
                </ul>
            </div>

            <!-- Contact Section -->
            <div class="footer-contact">
                <h3>CONTACT</h3>
                <p><i class="fa fa-map-marker"></i>Badi Durga Sthan, Kabaiya Road, Naya Bazar,Lakhisarai,Bihar, 811311</p>
                <p><i class="fa fa-phone"></i> Main:+91 9934705528,7004547233</p>
                <p><i class="fa fa-envelope"></i> thenewworld4eng@gmail.com</p>
            </div>
        </div>

        <!-- Bottom Footer Section -->
        <div class="footer-bottom">
            <p>Copyright © 2025 the new world| All Rights Reserved | Designed & Developed By - 
                <a href="https://bhavyatech.com" target="_blank">Surbhit kumar </a>
            </p>
        </div>
    </footer>
</body>
</html>
