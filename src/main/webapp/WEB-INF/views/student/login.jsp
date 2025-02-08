<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - THE NEW WORLD</title>

    <style>
        /* Login Container */
        .login-container {
            max-width: 400px;
            margin: 100px auto;
            padding: 30px;
            background-color: #fff;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        /* Heading */
        .login-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        /* Form styling */
        form {
            display: flex;
            flex-direction: column;
        }

        label {
            margin-bottom: 5px;
            font-size: 14px;
            color: #333;
        }

        input {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
            width: 100%;
        }

        button {
            padding: 10px;
            background-color: #ff0000;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }

        button:hover {
            background-color: #cc0000;
        }

        /* Result message */
        #resultMessage {
            text-align: center;
            color: red;
            font-size: 14px;
            margin-top: 10px;
        }

        /* Sign up link */
        p {
            text-align: center;
            margin-top: 10px;
        }

        p a {
            color: #ff0000;
            text-decoration: none;
        }

        p a:hover {
            text-decoration: underline;
        }

        /* Forgot Password link */
        .forgot-password {
            text-align: center;
            margin-top: 10px;
        }

        .forgot-password a {
            color: #007bff;
            text-decoration: none;
        }

        .forgot-password a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <jsp:include page="/index.jsp" />

    <div class="login-container">
        <h2>LOGIN TO STUDENT</h2>
        <form id="loginForm" action="login" method="post" onsubmit="return validateLoginForm()">
            <label for="username">Username:</label>
            <input type="number" id="mobile" name="mobile" placeholder="Register Mobile No." required>

            <label for="password">D.O.B:</label>
            <input type="date" id="dob" name="dob" required>

            <button type="submit">Login</button>
        </form>
        
        

    </div>
    <jsp:include page="/footer/footer.jsp" />

    <script>
        // Form validation function
        function validateLoginForm() {
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            if (!username || !password) {
                alert("Both fields are required!");
                return false;
            }

            // Optional: Add additional validation if necessary (e.g., password length, username format)
            return true;
        }
    </script>

</body>
</html>
