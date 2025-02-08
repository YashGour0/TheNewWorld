<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Details Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .card {
            background-color: #ffffff;
            border: 2px solid #000000;
            border-radius: 10px;
            padding: 20px;
            text-align: center;
            width: 400px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .card h1 {
            color: red;
            margin-bottom: 10px;
        }

        .card h3 {
            color: green;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        form label {
            margin-bottom: 5px;
            text-align: left;
        }

        form input {
            margin-bottom: 15px;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        button {
            padding: 10px;
            background-color: blue;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        button:hover {
            background-color: darkblue;
        }
    </style>
</head>
<body>
    <div class="card">
        <h1>The New World English Classes</h1>
        <h3>Join Us For: 10th, 11th, 12th & English Speaking Course</h3>
        <form id="studentForm">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="subject">Subject:</label>
            <input type="text" id="subject" name="subject" required>

            <label for="batchTime">Batch Time:</label>
            <input type="text" id="batchTime" name="batchTime" required>

            <label for="rollNo">Roll No:</label>
            <input type="text" id="rollNo" name="rollNo" required>

            <label for="address">Address:</label>
            <input type="text" id="address" name="address" required>

            <button type="submit">Submit</button>
        </form>
    </div>

    <script>
        document.getElementById('studentForm').addEventListener('submit', function (e) {
            e.preventDefault();

            // फॉर्म डेटा को वैरिएबल्स में सेव करें
            const name = document.getElementById('name').value;
            const subject = document.getElementById('subject').value;
            const batchTime = document.getElementById('batchTime').value;
            const rollNo = document.getElementById('rollNo').value;
            const address = document.getElementById('address').value;

            // डेटा को एक ऑब्जेक्ट में स्टोर करें
            const studentDetails = {
                name,
                subject,
                batchTime,
                rollNo,
                address,
            };

            // कंसोल में प्रिंट करें (आप इसे सर्वर पर भेज सकते हैं)
            console.log('Student Details:', studentDetails);

            // उपयोगकर्ता को सफलता का संदेश दिखाएं
            alert('Details submitted successfully!');
        });
    </script>
</body>
</html>
