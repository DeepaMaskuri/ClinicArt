
<%@page import="jakarta.servlet.http.HttpSession"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="./home.css">
</head>
<body>


<!-- nav bar is here -->

    <nav id="navigationBar">
        <div id="logo"><div id="clinicArt">ClinicArt</div></div>
        <div id="navItems">
            <ul id="navItemsList">
                <li class="navItemsOnHover">HOME</li>
                <li class="navItemsOnHover">ABOUT</li>
                <li class="navItemsOnHover pageHover">SERVICES
                    <ul class="pageSubList ">
                      <a href="ShowAppointments"><li class="pageSubListOnHover">My Appointments</li></a>
                    </ul>
                </li>
                <li class="navItemsOnHover pageHover">PAGES
                    <ul class="pageSubList">
                        <li class="pageSubListOnHover">Pricing Plan</li>
                        <li class="pageSubListOnHover">Features</li>
                        <li class="pageSubListOnHover">Free Quote</li>
                        <li class="pageSubListOnHover">Our Team</li>
                        <li class="pageSubListOnHover">Testimonial</li>
                        <li class="pageSubListOnHover">404 Page</li>
                    </ul>
                </li>
                <li class="navItemsOnHover">CONTACT</li>
                <a href="logout"><li class="navItemsOnHover">LOGOUT</li></a>
            </ul>
        </div>
    </nav>


<!-- header part starts from here -->


    <header>
        <div id="headingOfHeader">
            <p id="we">WE MADE YOUR HEALTH OUR PRIORITY.</p>
            <h1 id="Healthcare">Healthcare Services Designed with <span id="Care">Care</span></h1>
            <p id="Welcome">Welcome! We have made your health our priority, and we are ready to take steps towards a smiling future.</p>
            <div id="buttonContainer">
                
               <a href="appointment"> <input  id="Appointment" value="Appointment" type="submit"></a>
               
               <a> <input id="Contact"value="Contact Us" type="submit"></a>
                
            </div>
            <div id="doc">
                <input type="button" value="<" class="commonbtn left" >
                <input type="button" value=">" class="commonbtn right" >
                </div>
        </div>
        <img id="headerDoctor" src="./img/doctor_img.jpg" alt="">
    </header>

<!-- aboutUs part starts from here -->


    <div id="aboutUs">
        <h2 class="mainHeading">ABOUT US</h2>
        <div id="alignImgInfo">
            <div id="imgDiv"><img id="about_doctor_img" src="./img/about_doctor_img.jpg" alt=""></div>
            <div id="aboutUsInfo">
                <h2 id="aNew">A New Standard in Clinical Experience</h2>
                <p id="For">For us, patient satisfaction is a top priority. We consider every detail to provide you with a personalized and specialized healthcare experience. For us, patient satisfaction is a top priority. We consider every detail to provide you with a personalized and specialized healthcare experience. For us, patient satisfaction is a top priority. We consider every detail to provide you with a personalized and specialized healthcare experience. For us, patient satisfaction is a top priority. We consider every detail to provide you with a personalized and specialized healthcare experience.</p>
                <button id="Con">Contact Us</button>
            </div>
        </div>
       
        
    </div>

<!-- someFacts starts from here -->

    <div id="someFacts">
        <h2 id="some">SOME FACTS</h2>
        <h2 id="here">Here Are Our Statistics.</h2>
        <p id="since">Since our establishment, our focus has been on our patients, successful surgeries, and the achievements we have gained. Since our establishment, our focus has been on our patients, successful surgeries, and the achievements we have gained. Since our establishment, our focus has been on our patients, successful surgeries, and the achievements we have gained. Since our establishment, our focus has been on our patients, successful surgeries, and the achievements we have gained. Since our establishment, our focus has been on our patients, successful surgeries, and the achievements we have gained.</p>
        <p id="call">Call for any query!</p>
        <p id="n214">+214-509-0000</p>
        <div id="box">
            <div class="subBox" id="patients"><i class="fa-solid fa-users lariconn"></i><p class="lariconn num">865</p><p class="para">Patients</p></div>
            <div class="subBox" id="completeSurgeries"><i class="fa-solid fa-heart lariconn"></i><p class="lariconn num">254</p><p class="para">Complete Surgeries</p></div>
            <div class="subBox" id="ourAwards"><i class="fa-solid fa-star lariconn"></i><p class="lariconn num">32</p><p class="para">Our Awards</p></div>
        </div>
    </div>

<!-- ourServices starts from here -->


    <div id="ourServices">
        <h2 id="our">OUR SERVICES</h2> 
        <h2 id="explore">Explore Our Services</h2>
        <div id="firstDiv">
            <div class="subDivCon"> <img class="imgOurSer" src="./img/Ourservice_dental.jpg" alt=""> <p  class="paraOurSer uni">Dental</p> <p class="paraOurSer des"> In our dental department, we provide services for healthy and smiles </p>  <button class="readMore">Read More</button> </div>
            <div class="subDivCon"> <img class="imgOurSer" src="./img/Ourservice_neurologie.jpg" alt=""> <p class="paraOurSer uni" >Neurologie</p> <p class="paraOurSer des" >To protect brain health and transform lives, we are here.</p> <button class="readMore">Read More</button> </div>
            <div class="subDivCon"> <img class="imgOurSer" src="./img/Ourservice_cardio.jpg" alt=""> <p class="paraOurSer uni" >Cardio</p> <p class="paraOurSer des" >We are here to enhance the rhythm of your heart. Transforming your life.</p> <button class="readMore">Read More</button> </div>
        </div>
        <div id="secondDiv">
            <div  class="subDivCon"> <img class="imgOurSer" src="./img/Ourservice_orthopedy.jpg" alt=""> <p class="paraOurSer uni" >Orthopedy</p>  <p class="paraOurSer des" >We enhance your quality of life by restoring your freedom of movement.</p> <button class="readMore">Read More</button> </div>
            <div  class="subDivCon"> <img class="imgOurSer" src="./img/Ourservice_laboratory.jpg" alt=""> <p class="paraOurSer uni" >Laboratory</p>  <p class="paraOurSer des" >We open new horizons by supporting your mental well-being.</p> <button class="readMore">Read More</button> </div>
            <div  class="subDivCon"> <img class="imgOurSer" src="./img/Ourservice_psychiatry.jpg" alt=""> <p class="paraOurSer uni" >Psychiatry</p>  <p class="paraOurSer des" >We offer inner balance and happiness by healing your mind.</p> <button class="readMore">Read More</button> </div>
        </div>   
    </div>
   
<!-- ourFeatures starts from here -->


    <div id="ourFeatures">
        <div id="ourFeaturesInfo">
            <h2 id="ourFea">OUR FEATURES</h2>
            <h2 id="well">Wellness and Healing Center: Here to Transform Your Life</h2>
            <div class="miniFeature">  <div class="forIconOF"> <i class="fa-solid fa-stethoscope"></i> </div>  <div class="data">  <p class="headOF">Our Team Of Experts</p>    <p class="ofInfo">Our team consists of expert doctors who are experienced and skilled in their respective fields. They form a dedicated team that is committed to continuously enhancing their knowledge and skills in order to provide our patients</p></div> </div>
            <div class="miniFeature">  <div class="forIconOF"> <i class="fa-solid fa-hospital"></i> </div>     <div class="data">  <p class="headOF">Clinical Hygiene</p>       <p class="ofInfo">We maintain the highest level of clinical hygiene standards to ensure the health and well-being of our patients.</p> </div> </div>
            <div class="miniFeature">  <div class="forIconOF"> <i class="fa-solid fa-headphones"></i> </div>   <div class="data">  <p class="headOF">24/7 Telephone Support</p> <p class="ofInfo">To ensure the highest level of customer satisfaction, we provide 24/7 telephone support. Our team of experts is always just a phone call away, ready to assist you with any inquiries, requests, or emergencies. We understand the importance of being accessible and responsive to our patients' needs, and our dedicated team is here to provide support and guidance whenever you need it.</p> </div> </div>
        </div>
        <div id="ourFeaturesImg"> <img src="./img/ourfeature_doctor.jpg" alt=""> </div>
    </div>

  <!-- pricingPlan starts from here -->
   
    <div id="pricingPlan">
        <h2 id="priPla">PRICING PLAN</h2>
        <h2 id="ouSerPri">Our Service Prices</h2>
        <div id="ppdeal">
            <div class="common dental">
                <p class="pph">Dental Procedures</p>
                <p class="ppp">$5000. 00 -</p>
                <ul class="ppu">
                    <li> <i class="fa-solid fa-check tickIco"></i> Dental Cleaning</li>
                    <li> <i class="fa-solid fa-check tickIco"></i> Dental Filling</li>
                    <li> <i class="fa-solid fa-check tickIco"></i> Root Canal Treatment</li>
                    <li> <i class="fa-solid fa-check tickIco"></i> Tooth Extraction</li>
                    <li> <i class="fa-solid fa-check tickIco"></i> Dental Implant</li>
                </ul>
                <button class="ppconbut">Contact Now</button>
            </div>
            <div class="common brain">
                <p class="pph">Brain Surgery</p>
                <p class="ppp">$15.000.00</p>
                <ul class="ppu">
                    <li> <i class="fa-solid fa-check tickIco"></i> Tumor Removal</li>
                    <li> <i class="fa-solid fa-check tickIco"></i> Aneurysm Repair.</li>
                    <li> <i class="fa-solid fa-check tickIco"></i> Epilepsy Surgery.</li>
                    <li> <i class="fa-solid fa-check tickIco"></i> Hydrocephalus Treatment</li>
                    <li> <i class="fa-solid fa-check tickIco"></i> Parkinson's Surgery</li>
                </ul>
                <button class="ppconbut">Contact Now</button>
            </div>
            <div class="common ortho"> 
                <p class="pph">Orthopedic Surgery</p>
                <p class="ppp">$15.000. 00</p>
                <ul class="ppu">
                    <li> <i class="fa-solid fa-check tickIco"></i> Knee Arthroscopy</li>
                    <li> <i class="fa-solid fa-check tickIco"></i> Shoulder Surgeries</li>
                    <li> <i class="fa-solid fa-check tickIco"></i> Hip Replacement</li>
                    <li> <i class="fa-solid fa-check tickIco"></i> Spine Surgery</li>
                    <li> <i class="fa-solid fa-check tickIco"></i> Hand and Foot Surgery</li>
                </ul>
                <button class="ppconbut">Contact Now</button>
            </div>
        </div>
    </div>


 <!-- getAQuote starts from here -->


    <div id="getAQuote">
        <div id="forForm">
            <form action="usernote" method="post">
                <input  class="gaqForm spc2"  type="text" placeholder="Your Name" name="uname">
                <input  class="gaqForm spc2"  type="text" placeholder="Your Email" name="umail">
                <input  class="gaqForm spc3"  type="text" placeholder="Your Mobile" name="umobile">
                <select class="gaqForm spc spc3"   name="uchoice" id="" > 
                    <option value="Select A Section">Select A Section</option>
                    <option value="Dental">Dental</option>
                    <option value="Neurologie">Neurologie</option>
                    <option value="Cardio">Cardio</option>
                    <option value="Orthopedy">Orthopedy</option>
                    <option value="Laboratory">Laboratory</option>
                    <option value="Psychiatry">Psychiatry</option>

                </select>
                <textarea id="formTextArea" cols="30" rows="10" placeholder="Note" name="unote"></textarea>
                <button id="formsubBut">Submit</button>
            </form>
        </div>
        <div id="forInfoQuote">
            <h2 id="formGet">GET A QUOTE</h2>
            <h2 id="formReq">Request A Free Qoute!</h2>
            <p id="formPara">Our experienced staff is available to assist you in scheduling appointments or answering your questions. You can reach out to us to share any concerns regarding your health condition. We recommend booking an appointment before visiting our clinic so that we can allocate a suitable time for you.</p>
            <div id="comboCallPhone">
                <div id="forHeadPhoneIco"> <i class="fa-solid fa-headphones headAlign"></i> </div>
                <div id="formQuoteCall">  <p class="formQuote">Call for any query!</p> <p class="formQuote formNum2">+214-509-0000</p> </div>
            </div>
           
        </div>
    </div>



<!-- ourTeam starts from here -->
    

    <div id="ourTeam">
        <h2 id="teamHeading">OUR TEAM</h2>
        <h2 id="teamExpert">Expert Team Members</h2>
        <div id="dotorTeam">
            <div class="innerTeamImg"><img class="teamImgD" src="./img/team_Lovato.jpg" alt=""> <p class="teamName">Prof.Dr. Arthur Lovato</p> <p class="teamProfession">Chief Medical Officer</p> <button class="teamButton"> <i class="fa-brands fa-facebook-f"></i> <i class="fa-brands fa-twitter"></i> <i class="fa-brands fa-instagram"></i> </button> </div>
            <div class="innerTeamImg"><img class="teamImgD" src="./img/team-Wilson.jpg" alt=""> <p class="teamName">Dr. Danican Wilson</p>     <p class="teamProfession">Orthopedic Surgeon</p>    <button class="teamButton"> <i class="fa-brands fa-facebook-f"></i> <i class="fa-brands fa-twitter"></i> <i class="fa-brands fa-instagram"></i> </button>  </div>
            <div class="innerTeamImg"><img class="teamImgD" src="./img/team-Brown.jpg" alt="">  <p class="teamName">Dr. Adam Brown</p>         <p class="teamProfession">Neurosurgeon</p>          <button class="teamButton"> <i class="fa-brands fa-facebook-f"></i> <i class="fa-brands fa-twitter"></i> <i class="fa-brands fa-instagram"></i> </button>   </div>
            <div class="innerTeamImg"><img class="teamImgD" src="./img/team-Taylor.jpg" alt=""> <p class="teamName">Nurse Nikita Taylor</p>    <p class="teamProfession">Chief Nurse</p>           <button class="teamButton"> <i class="fa-brands fa-facebook-f"></i> <i class="fa-brands fa-twitter"></i> <i class="fa-brands fa-instagram"></i> </button>   </div>
        </div>
    </div>

<!-- testimonial starts from here -->

    <div id="testimonial">
        <h2 id="testimonialHeding">TESTIMONIAL</h2>
        <h2 id="testimonialhed2">Our Patients Say!</h2>
        <div id="outerTestiPep">
            <div class="testimonialPep"> 
                <div class="forPhoName"> <img class="testimonialImg" src="./img/testimonial-Emily.jpg" alt=""> <div class="tesNamePain">  <p class="tesNam">Emily Johnson</p>  <p class="tesfade">Arm Sprain</p> </div> </div>
                <p class="tesfade">Since I started coming to your clinic, I have received excellent service and care. Thanks to the expertise of the doctors and the attentiveness of the nurses, I have regained my health. I am grateful to the entire clinic team.</p>
             </div>
            <div class="testimonialPep">
                <div class="forPhoName"> <img class="testimonialImg" src="./img/testimonial-Olivia.jpg" alt="">  <div class="tesNamePain" > <p class="tesNam" >Olivia Davis</p> <p class="tesfade">Dental Patient</p>  </div>  </div>
                <p class="tesfade">I am extremely satisfied with the services at your clinic. The professional approach of the nurses and doctors made me feel secure about my health issues. I would like to thank them for their support throughout my recovery.</p>
            </div>
            <div class="testimonialPep">
                <div class="forPhoName"> <img class="testimonialImg" src="./img/testimonial-Ethan.jpg" alt=""> <div class="tesNamePain" >  <p class="tesNam" >Ethan Thompson</p> <p class="tesfade">Tumor Patient</p> </div>  </div>
                <p class="tesfade">I had a wonderful experience during my treatment at your clinic. Thanks to the warm care of the nurses and the expertise of the doctors, I experienced a speedy recovery. I would like to thank you and the entire team.</p>
            </div>
            <!-- pending i should after js <div class="testimonialPep"></div> -->
        </div>
        
    </div>

<!-- footer starts from here -->

    <footer id="footerId">
        <div id="footer1stContainer">
            <div id="address " class="footerInInCon">
                <h2 class="fooHed1st fooAds">Address</h2>
                <p> <i class="fa-solid fa-location-dot "></i> 123 Main Street, Anytown, United States </p>
                <p> <i class="fa-solid fa-phone-flip"></i> +214-509-0000 </p>
                <p> <i class="fa-solid fa-envelope"></i> info@example.com </p>
                <p> <span class="fooSocial"> <i class="fa-brands fa-twitter"></i> </span> <span class="fooSocial" > <i class="fa-brands fa-facebook-f"></i> </span>  <span class="fooSocial" > <i class="fa-brands fa-youtube"></i> </span> <span class="fooSocial" > <i class="fa-brands fa-linkedin-in"></i> </span> </p>
            </div>
            <div id="services" class="footerInInCon">
                <h2  class="fooHed1st">Services</h2>
                <ul class="fooServiLis">
                    <li  class="footerLis"> <i class="fa-solid fa-chevron-right foMov"></i> Dental</li>
                    <li  class="footerLis"> <i class="fa-solid fa-chevron-right foMov"></i> Neurologie</li>
                    <li  class="footerLis"> <i class="fa-solid fa-chevron-right foMov"></i> Cardio</li>
                    <li  class="footerLis"> <i class="fa-solid fa-chevron-right foMov"></i> Orthopedy</li>
                    <li  class="footerLis"> <i class="fa-solid fa-chevron-right foMov"></i> Laboratory</li>
                    <li  class="footerLis"> <i class="fa-solid fa-chevron-right foMov"></i> Psychiatry</li>
                </ul>
            </div>
            <div id="quickLinks" class="footerInInCon">
                <h2  class="fooHed1st fooQuick">Quick Links</h2>
                <ul class="fooQuiviLis">
                    <li  class="footerLis"> <i class="fa-solid fa-chevron-right foMov"></i> About Us</li>
                    <li  class="footerLis"> <i class="fa-solid fa-chevron-right foMov"></i> Contact Us</li>
                    <li  class="footerLis"> <i class="fa-solid fa-chevron-right foMov"></i> Our Services</li>
                    <li  class="footerLis"> <i class="fa-solid fa-chevron-right foMov"></i> Terms & Condition</li>
                    <li  class="footerLis"> <i class="fa-solid fa-chevron-right foMov"></i> Support</li>
                </ul>      
            </div>
            <div id="newsletter" class="footerInInCon">
                <h2  class="fooHed1st fooNews">Newsletter</h2>
                <p id="fooNewPara">Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                <div id="foEmailBut">
                 <%
                    HttpSession s1 = request.getSession();
                    String status = (String)s1.getAttribute("signin");
                	 if(status==null)
                	 {
                		 s1.setAttribute("signin", "false");
                	 }
                	 boolean b = Boolean.parseBoolean(status);
                	 if(b==false)
                	 {
                	%>
					    <form action="signin" method="post">
						<input id="footemail" type="email" placeholder="Your email" name="mail">
						<button id="footBut">Sign In</button>
						</form>
				    <%
                	 }
				  %>
					</div>
               
            </div>
        </div>
        <div id="footer2ndContainer"> <hr id="hrFooter"> </div>
        <div id="footer3rdContainer"> <p>© <u>Your Site</u> , All Right Reserved.</p> </div>
    </footer>
</body>
</html>