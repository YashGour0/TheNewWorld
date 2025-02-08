<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Principal's Page</title>
</head>

<style>
.container1 {
    max-width: 1100px;
    margin: 20px auto;
    background-color: #ffffff;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    padding: 20px;
    display: flex;
    gap: 20px;
}

.info {
    flex: 1; /* Allow info section to take up less space */
    text-align: left;
}

.info img {
    margin-top: 40px;
    width: 150px;
    height: auto;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
}

.info h2 {
    color: #2e7d32;
    margin: 10px 0;
    font-size: 1.5rem;
}

.info h3 {
    color: #d32f2f;
    margin: 5px 0 0 0;
    font-size: 1.2rem;
}

.info p {
    margin: 5px 0;
    font-size: 1rem;
}

.header1 {
    flex: 2; /* Allow the message section to take up more space */
    display: flex;
    flex-direction: column;
    gap: 10px;
}

.message {
    line-height: 1.6;
    color: #333;
}

.message h1 {
    color: #d32f2f;
    margin-bottom: 10px;
}

.message h2 {
    color: #d10000;
    font-weight: normal;
    margin-bottom: 10px;
}

.message p {
    margin-bottom: 15px;
    text-align: justify;
}
</style>
<body>


<div class="container1">
    <!-- Info Section -->
    <div class="info">
       <img src="<%= request.getContextPath() %>/images/sir_image.jpeg" style="width: 320px; height: 350px;" alt="Principle Image">
        <h2>Teacher (Dr.) Rajesh Kumar Raj</h2>
        <h3>M.A, Ph.D (English Literature)</h3>
       
        <p>(The New World )</p>
        <p>(Spoken & Commincative English Centre)</p>
    </div>

    <!-- Message Section -->
    <div class="header1">
        <div class="message">
            <h1>Principal's Message</h1>
            <h2>Greetings of peace!</h2>
            <p>Welcome to Satyendra Narayan Sinha College, Warisaliganj, Nawada, Bihar-805 130, one of the best constituent unit of Magadh University, Bodh Gaya. S.N. Sinha College has come a long way after the establishment in the year 1967. We take pride in saying that our college is shaping and redefining quality of holistic curriculum for students.</p>
            <p>A holistic view of education that is guiding students to develop capacities to acquire virtues and provide service to the society in future. We also feel immense pleasure and satisfaction by providing the best quality of knowledge to the students through top qualified and devoted teachers. I feel that students are the most eminent building blocks of any educational institution.</p>
            <p>I wish teachers to become perpetual learners gathering lots of information from primary sources that lean heavily on unsubstantiated floating news. I wish all the very best to my beloved students, my passionate faculty members, and my hardworking non-teaching employees for joining my hands throughout the journey of development. I always encourage all the students, teachers, and non-teachers to work as a family and come up with the best ideas for the development of our college.</p>
            <p>I hereby wish <strong>"ALL THE VERY BEST"</strong> to my college family.</p>
        </div>
    </div>
</div>



	
</body>
</html>
