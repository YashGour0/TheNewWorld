<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Director Message</title>
<style>
  
  
    h1 {
        text-align: center;
        color: #004080;
        font-size: 2.5em;
        margin-top: 20px;
        text-transform: uppercase;
    }

    p1 {
        display: block;
        margin: 20px auto;
        padding: 20px;
        width: 80%;
        background-color: #ffffff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        font-size: 1em;
        line-height: 1.8;
        text-align: justify;
        color: #333;
        border-left: 5px solid #004080;
    }

    blockquote {
        margin: 20px auto;
        padding: 15px;
        width: 80%;
        background-color: #f9f9f9;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        font-style: italic;
        font-size: 1.2em;
        color: #555;
        border-left: 5px solid #004080;
    }

    .signature {
        text-align: right;
        margin: 20px 10%;
        font-size: 1.2em;
        color: #004080;
        font-weight: bold;
    }

    .subtitle2 {
        text-align: center;
        margin: 10px;
        font-size: 1.2em;
        font-weight: bold;
        color: #0066cc;
    }

    .container {
        width: 80%;
        margin: auto;
        overflow: hidden;
    }

    @media (max-width: 768px) {
        h1 {
            font-size: 2em;
        }

        p1, blockquote {
            width: 90%;
            margin: 10px auto;
            padding: 15px;
        }
    }

    /* Hover effects for blockquotes */
    blockquote {
        transition: all 0.3s ease-in-out;
    }

    blockquote:hover {
        transform: scale(1.05);
        background-color: #e6f7ff;
    }
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/index.jsp" />

<h1>Director Message</h1>

<p1><b>Dear Students,</b><br>
Firstly, I would like to welcome you to our Ashish Computer Institute. We at Ashish Computer Institute have been equipped with the most advanced and professional courses offered in the field of Information Technology. A lot of young students like you have enrolled with Ashish Computer Institute and made a bright & successful career in the field of Information Technology like Computer Teacher, Graphic Designer, Web Developer, Accountant Programmer, Hardware and Networking.
I am so gratified you have chosen Ashish Computer Institute as your platform to a successful career. This is especially true of the IT industry, which has been witnessing unprecedented growth, with our country displaying all the signs of emerging as a knowledge-based global superpower.
The blistering pace of development has meant that this sector has an almost insatiable demand for skilled professionals. Ashish Computer Institute programs have been expertly drawn up and designed to perfectly suit the needs of not only regular students but also of those seeking to update and upgrade their domain knowledge and skills. We have harnessed the talents of a distinguished faculty and employed the most advanced communication and technological tools to deliver quality education at our IT Computer Institute, spread right across the country. So that we provide you with the perfect springboard to reach greater heights in your career. I invite you to use this opportunity and build your proud career with IT Computer Institute.
All the best.
</p1>

<blockquote>
    “We Are Providing A Professional IT Education With Affordable Fee Through Our Scholarship Program”
</blockquote>

<blockquote>
    <b>Education is the most powerful weapon<br>
    Which you can use to change the world<br>
    .........Nelson Mandela............</b>
</blockquote>

<div class="signature">
    Rajesh Kumar Raj<br>
    (Director)
</div><br>


 <%@ include file="/WEB-INF/views/footer.jsp" %>
</body>
</html>
