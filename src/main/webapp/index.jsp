<!DOCTYPE html>
<html>
<head>
<title>Student Result Form</title>

<script>
function validateForm() {
    let fields = document.forms["myForm"];

    let roll = fields["rollno"].value;
    let name = fields["name"].value;

    if (roll == "" || name == "") {
        alert("Roll No and Name are required!");
        return false;
    }

    for (let i = 1; i <= 5; i++) {
        let mark = fields["sub" + i].value;

        if (mark == "" || isNaN(mark) || mark < 0 || mark > 100) {
            alert("Enter valid marks (0-100) for all subjects!");
            return false;
        }
    }

    return true;
}
</script>

</head>
<body>

<h2>Student Result Form</h2>

<form name="myForm" action="ResultServlet" method="post" onsubmit="return validateForm()">

Roll No: <input type="text" name="rollno"><br><br>
Student Name: <input type="text" name="name"><br><br>

Sub1: <input type="number" name="sub1"><br><br>
Sub2: <input type="number" name="sub2"><br><br>
Sub3: <input type="number" name="sub3"><br><br>
Sub4: <input type="number" name="sub4"><br><br>
Sub5: <input type="number" name="sub5"><br><br>

<input type="submit" value="Calculate Result">

</form>

</body>
</html>