<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
   <link rel="stylesheet" href="./Appointment.css">
</head>
<body>
       <div>
        <!-- <img src="./img/docAppointment.jpg" alt=""> -->
          <div id="formcontainer">
             <form action="AppDetails" method="post">
                <h2 class="det">Doctors Appointment Form</h2>
                <h3 class="det">Patient's Information</h3>
                  <div class="det">
                    <label>Patient Name</label><br>
                    <input type="text" placeholder="First Name" class="flname" name="fname">&nbsp;&nbsp;&nbsp;
                    <input type="text" placeholder="Last Name" class="flname" name="lname"><br>
                  </div>
                  <div  >
                    <label>Gender</label><br>
                    <input type="radio" value="Male" name="mygender"><span>Male</span>&nbsp;&nbsp;&nbsp;
                    <input type="radio" value="Female" name="mygender"><span>Female</span><br>
                  </div>
                  <div class="det">
                    <label>Date of Birth</label><br>
                    <input type="date" name="dob">
                  </div>
                 

                  <div class="det">
                    <label>Phone</label><br>
                    <input type="tel" name="phone">
                  </div>
                  <div class="det">
                    <label>Address</label><br>
                      <textarea name="add" cols="50" rows="10"></textarea>
                  </div>
                  <div>
                    <label>Is this First Visit to this Office?</label><br>
                    <input type="radio" name="visit" value="Yes">Yes
                    <input type="radio" name="visit"value="No">No
                  </div>
                  <div class="det">
                    <h5  class="det">Appointment Details</h5>
                    <div class="det">
                      <input type="hidden" name="doctor" value="${param.doctor}">
                    </div>
                    <div class="det">
                      <label for="">Purpose Of Appointment</label><br>
                      <textarea name="details"  cols="50" rows="10"></textarea>
                    </div>
                    <input type="hidden" name="id" value="${param.id}"> 
                    <input type="hidden" name="slot" value="${param.slot }"><br>
                    <input type="submit" value="submit">
                  </div>
             </form>
          </div>
</body>
</html>