<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Registration</title>
    <style>
      
        .container {
            width: 70%;
            margin: 50px auto;
            background: #fff;
            padding: 20px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            display: flex;
            flex-wrap: wrap;
        }

        .left-section, .right-section {
            flex: 1;
            margin: 10px;
        }

        .left-section {
            padding-right: 20px;
        }

        .right-section {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .photo-upload {
            width: 150px;
            height: 150px;
            background-color: #f0f0f0;
            border: 2px dashed #007bff;
            border-radius: 10px;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
            margin-bottom: 10px;
            cursor: pointer;
        }

        .photo-upload input {
            opacity: 0;
            position: absolute;
            width: 100%;
            height: 100%;
            cursor: pointer;
        }

        .photo-upload img {
            max-width: 100%;
            max-height: 100%;
            border-radius: 10px;
        }

        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
            width: 100%;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        label {
            font-size: 14px;
            color: #555;
            margin-bottom: 5px;
        }

        input, select {
            padding: 10px;
            font-size: 14px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input:focus, select:focus {
            outline: none;
            border: 1px solid #007bff;
        }

        .error {
            color: red;
            font-size: 12px;
        }

        button {
            background-color: #007bff;
            color: white;
            padding: 10px;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: #0056b3;
        }

        small {
            color: #555;
        }

        @media (max-width: 768px) {
            .container {
                width: 90%;
                flex-direction: column;
            }

            .left-section, .right-section {
                padding: 0;
                margin: 0;
            }

            .right-section {
                margin-top: 20px;
            }
        }
    </style>
    <script>
        function validateForm() {
            let name = document.getElementById("name").value.trim();
            let email = document.getElementById("email").value.trim();
            let phone = document.getElementById("phone").value.trim();
            let course = document.getElementById("course").value;

            let isValid = true;

            // Name validation
            if (name === "") {
                document.getElementById("nameError").innerText = "Name is required.";
                isValid = false;
            } else {
                document.getElementById("nameError").innerText = "";
            }

            // Email validation
            let emailPattern = /^[^ ]+@[^ ]+\.[a-z]{2,3}$/;
            if (email === "") {
                document.getElementById("emailError").innerText = "Email is required.";
                isValid = false;
            } else if (!email.match(emailPattern)) {
                document.getElementById("emailError").innerText = "Invalid email format.";
                isValid = false;
            } else {
                document.getElementById("emailError").innerText = "";
            }

            // Phone validation
            let phonePattern = /^[0-9]{10}$/;
            if (phone === "") {
                document.getElementById("phoneError").innerText = "Phone number is required.";
                isValid = false;
            } else if (!phone.match(phonePattern)) {
                document.getElementById("phoneError").innerText = "Phone number must be 10 digits.";
                isValid = false;
            } else {
                document.getElementById("phoneError").innerText = "";
            }

            // Course validation
            if (course === "none") {
                document.getElementById("courseError").innerText = "Please select a course.";
                isValid = false;
            } else {
                document.getElementById("courseError").innerText = "";
            }

            return isValid;
        }

        function previewPhoto(event) {
            const photoInput = event.target;
            const photoPreview = document.getElementById("photoPreview");
            const file = photoInput.files[0];
           
        }
    </script>
</head>
<body>

<%@ include file="/WEB-INF/views/index.jsp" %>
<div class="container">
    <h2>Student Registration</h2>
    <div class="left-section">
        <form action="student_reg" method="post" >
            <label for="name">Full Name</label>
            <input type="text" id="name" name="name" placeholder="Enter your full name">
            <div class="error" id="nameError"></div>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" placeholder="Enter your email">
            <div class="error" id="emailError"></div>

            <label for="phone">Phone Number</label>
            <input type="text" id="phone" name="phone" placeholder="Enter your phone number">
            <div class="error" id="phoneError"></div>

             <label for="dob">Date Of Birth</label>
            <input type="date" id="dob" name="dob">
            <div class="error" id="dobError"></div>

            <label for="course">Select Course</label>
            <select id="course" name="course">
                <option value="none">-- Select Course --</option>
                <option value="10th ">10TH English</option>
                <option value="11">11th English</option>
                <option value="12th">12th English</option>
                <option value="spoken">Spoken Class</option>
                
           		
           		
            </select>

            <button type="submit">Register</button>
        </form>
   
</div>

 <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>
