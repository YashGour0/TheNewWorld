<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Info</title>
    <style>
       


        /* Contact Container Styling */
        .contact-container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            margin: 20px auto;
            max-width: 1000px;
            gap: 20px;
            padding: 20px;
        }

        .contact-card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 20px;
            width: 240px;
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .contact-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
        }

        .contact-card i {
            font-size: 60px;
            color: #007bff;
            margin-bottom: 10px;
        }

        .contact-card h3 {
            font-size: 20px;
            margin: 10px 0;
            color: #333;
        }

        .contact-card p {
            font-size: 14px;
            color: #555;
            margin: 0;
        }

        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

       
        /* Google Maps Container */
        .map-container {
            margin: 20px auto;
            max-width: 800px;
            height: 350px;
            border-radius: 8px;
            overflow: hidden;
            border: 2px solid #ddd;
        }

        iframe {
            width: 100%;
            height: 100%;
            border: none;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .contact-container {
                flex-direction: column;
                align-items: center;
            }

            .contact-card {
                width: 100%;
                max-width: 350px;
                margin-bottom: 20px;
            }
        }

        /* Scroll to Top Button */
        .scroll-to-top {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #007bff;
            color: white;
            padding: 10px 15px;
            border-radius: 50%;
            font-size: 20px;
            display: none;
            cursor: pointer;
            border: none;
        }

        .scroll-to-top:hover {
            background-color: #004080;
        }
    </style>
    <!-- Font Awesome for Icons -->
   
</head>

<body>
   
<%@ include file="/WEB-INF/views/index.jsp" %>
    

    <!-- Contact Info -->
   <b> <div class="contact-container">
        <div class="contact-card">
            <i class="fas fa-phone-alt"></i>
            <h3>Contact Us</h3>
            <p><a href="tel:+91 9934705528, 7004547233">+91 9934705528, 7004547233</a></p>
        </div>
        
        <div class="contact-card">
            <i class="fas fa-map-marker-alt"></i>
            <h3>Address</h3>
            <p>Badi Durga Sthan, Kabaiya Road<br> Naya Bazar Lakhisarai,Bihar, 811311</p>
        </div>
        <div class="contact-card">
            <i class="fas fa-envelope"></i>
            <h3>Email</h3>
            <p><a href="mailto:thenewworld4eng@gmail.com">thenewworld4eng@gmail.com</a></p>
        </div>
        
    </div></b>

    <h2 style="text-align:center;">Live Location</h2>
    <div class="map-container">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.0192473095036!2d144.96328!3d-37.814563!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6ad642af0f11fd81%3A0x5045675218cce6e0!2sMelbourne%20VIC%2C%20Australia!5e0!3m2!1sen!2sin!4v1610966985890!5m2!1sen!2sin" allowfullscreen="" loading="lazy"></iframe>
    </div>

    

    <!-- Scroll to Top Button -->
    <button class="scroll-to-top" onclick="scrollToTop()">↑</button>


<%@ include file="/WEB-INF/views/footer.jsp" %>

    <script>
        // Scroll to Top Functionality
        window.onscroll = function () {
            toggleScrollButton();
        };

        function toggleScrollButton() {
            const scrollButton = document.querySelector('.scroll-to-top');
            if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
                scrollButton.style.display = "block";
            } else {
                scrollButton.style.display = "none";
            }
        }

        function scrollToTop() {
            window.scrollTo({ top: 0, behavior: 'smooth' });
        }
    </script>
</body>

</html>
