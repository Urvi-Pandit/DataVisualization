<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta charset="ISO-8859-1">
	<link href='https://fonts.googleapis.com/css?family=Advent Pro' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Archivo' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Bai Jamjuree' rel='stylesheet'>
	<link href='https://fonts.googleapis.com/css?family=Baumans' rel='stylesheet'>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"/></script>


	<style>
	body {
	  margin: 0;
	  font-family: 'Bai Jamjuree', Archivo;
	  background-image: linear-gradient(to left, rgba(193, 6, 249, 0.5), rgba(0, 0, 0, 0.8)),
                  url(BodyBg.jpg);
	  background-attachment: fixed;
	}

	#header { font: 35px Baumans,'Advent pro',Helvetica;
	  color: white;
	  text-align: center;
	  padding: 8px 0px 1px 200px;
	  height: 11%;
	  margin-left: 15%;
	}

	ul {
	  background-image: linear-gradient(to right, rgba(255, 255, 255, 0), rgba(0, 0, 0, 0.1));
	  list-style-type: none;
	  font-size: 16px;
	  margin: 0;
	  padding: 0;
	  width: 15%;
	  background-color: #f1f1f1;
	  position: fixed;
	  height: 100%;
	  overflow: auto;
	}

	li a {
	  display: block;
	  color: #000;
	  padding: 8px 16px;
	  text-decoration: none;
	  transition: transform 0.3s; 
	}

	li a.active {
	  background-color: #112049;
	  color: white;
	  text-decoration: none;
	}

	li a:hover:not(.active) {
	  background-color: #555;
	  color: white;
	  transform: translateX(0.5em);
	  text-decoration: none;
	}

	#step { 
	  font-size: 16px;
	  border: 
	}

	#input {
	  margin: 10px 0px 0px 0px;
	  float: bottom;
	  color: #4F0071;
	}

	#enter {
	  margin-top: 600px;
	  margin-left: 445px;
	  color: white;
	  font-size: 20px;
	}

	#allign { display: flex;
	  justify-content: center;
	  margin-left: 150px;
	}

	div.dropdown {
	  margin-top: 20px;
	  margin-left: 460px;
	  text-align: left;
	  color: #B01FEF;
	}
	/*-------------------------dropdown---------------------------*/
	.dropdown {
				  margin-left : 0px;
				  position: relative;
				  display: inline-block;
				}
		.dropdown-content {
				  display: none;
				  position: absolute;
				  background-color: #f9f9f9;
				  min-width: 160px;
				  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
				  padding: 12px 16px;
				  z-index : 1;
				}
		.dropdown:hover .dropdown-content {
				  display: block;
				}
	/*------------------------------------------------------------*/
	
	/*-------------------------side menu design-------------------*/
	#barDesign {
	  float: left;
	  height: 70px;
	  background-color: #9608D4;
	  width: 10%;
	  margin-left: 40px;
	  animation-name: sidemenu;
	  animation-duration: 1s;
	  animation-iteration-count: 1;
	  animation-timing-function: ease-out;
	  animation-fill-mode: forwards;
	}
	
	#barDesign1 {
	  float: left;
	  height: 150px;
	  background-color: #BF3CF8;
	  width: 10%;
	  margin-left: 5px;
	  animation-name: sidemenu1;
	  animation-duration: 1s;
	  animation-iteration-count: 1;
	  animation-timing-function: ease-out;
	  animation-fill-mode: forwards;
	}
	
	#barDesign2 {
	  float: left;
	  height: 170px;
	  background-color: #B01FEF;
	  width: 10%;
	  margin-left: 5px;
	  animation-name: sidemenu2;
	  animation-duration: 1s;
	  animation-iteration-count: 1;
	  animation-timing-function: ease-out;
	  animation-fill-mode: forwards;
	}
	
	#barDesign3 {
	  float: left;
	  height: 100px;
	  background-color: #D589F6;
	  width: 10%;
	  margin-left: 5px;
	  animation-name: sidemenu3;
	  animation-duration: 1s;
	  animation-iteration-count: 1;
	  animation-timing-function: ease-out;
	  animation-fill-mode: forwards;
	}
	
	#barDesign4 {
	  float: left;
	  height: 30px;
	  background-color: #FFFFFF;
	  width: 10%;
	  margin-left: 5px;
	  animation-name: sidemenu4;
	  animation-duration: 1s;
	  animation-iteration-count: 1;
	  animation-timing-function: ease-out;
	  animation-fill-mode: forwards;
	}
	/*-----------------------------------------------------------*/
	
	/*--------------------------------animations-----------------*/
	@keyframes sidemenu {
	  0% { height: 0px; }
	  100% { height: 450px; }
	}
	
	@keyframes sidemenu1 {
	  0% { height: 0px; }
	  100% { height: 350px; }
	}
	
	@keyframes sidemenu2 {
	  0% { height: 0px; }
	  100% { height: 250px; }
	}
	
	@keyframes sidemenu3 {
	  0% { height: 0px; }
	  100% { height: 300px; }
	}
	
	@keyframes sidemenu4 {
	  0% { height: 0px; }
	  100% { height: 200px; }
	}
	/*------------------------------------------------------------*/

	#footer { 
	  color: black;
	  font-size: 13px;
	  position : fixed;
	  overflow : hidden;
	  height : auto;
	  left : 0;
	  bottom : 0;
	  width : 85%;
	  margin-top:600px;
	  margin-left: 15%;
	  text-align : center;
	  background-color : rgba(219, 104, 194, 0.9);
	}


	</style>
	</head>
<body>

<ul>
  <li> <a class="active" href="#home"><span class="glyphicon glyphicon-home"></span>Home</a></li>
  <li><a href="#news"><span class="glyphicon glyphicon-edit"></span> Edit profile</a></li>
  <li><a href="#contact"><i class="fa fa-street-view"></i> View profile</a></li>
  <li><a href="<%=request.getContextPath()%>/Logout"	><i class="fa fa-sign-out"></i> Logout</a></li>
  <!--<li id="barDesign"></li>
  <li id="barDesign1"></li>
  <li id="barDesign2"></li>
  <li id="barDesign3"></li>
  <li id="barDesign4"></li>-->
</ul>



<div style="margin-left:15%;padding:1px 16px;height:1000px;">
  <div id="header" style="margin-left:15%;">
	  <p style="border-width: 0px 0px 4px 4px; border-style: solid; border-color: white; border-radius: 0px 0px 2px 5px; width: 300px; padding-left: 0px;"><b>Let's visualize!</b></p>
  </div>

  <h3 style="font-size:24px; padding-top:5px; color: white;"><b>How to use</b><i class="fa fa-question"></i></h3>

	  <div class="container p-3 my-3 text-white" style="max-width: 600px; float: right; /*background-color: #7F0A7F*/background-image: url(BodyBg7.jpg); background-attachment: fixed; border-radius: 0px 2px 5px 50px;">

		  <p id="step">Get a correct dataset</p>
		  <p id="step">We accept any dataset. The scope of your dataset should be global. Which means the data should be of diabetic patients present anywhere globally.</p>
	  </div>

	  <div class="container p-3 my-3 text-white" style="max-width: 600px; float: left; /*background-color: #7F0A7F*/background-image: url(BodyBg7.jpg); background-attachment: fixed; border-radius: 5px 0px 50px 2px;">
		  <p id="step">Make sure the file format of our dataset is CSV</p>
		  <p id="step">CSV stands for Comma Separated Values. For checking the file format, make sure the file extension is .csv<br>You can check this by hovering on the file, or by checking it in its properties.</p>
	  </div>

	  <div class="container p-3 my-3 text-white" style="max-width: 600px; float: left; /*background-color: #7F0A7F*/background-image: url(BodyBg7.jpg); background-attachment: fixed; border-radius: 5px 50px 0px 2px;">
		  <p id="step">You can make use of <a class="active" href="https://cloudconvert.com/xls-to-csv">this site</a> for conversion of format</p>
	  </div>

	  <div class="container p-3 my-3 text-white" style="max-width: 600px; float: right; /*background-color: #7F0A7F*/background-image: url(BodyBg7.jpg); background-attachment: fixed; border-radius: 0px 2px 5px 50px;">
		  <p id="step">Upload your csv below</p>
		  <p id="step">After uploading your file, you will be given an option to select the attributes you want to compare.</p>
	  </div>

	  <div class="container p-3 my-3 text-white" style="max-width: 600px; float: left; /*background-color: #7F0A7F*/background-image: url(BodyBg7.jpg); background-attachment: fixed; border-radius: 5px 0px 50px 2px;">
		  <p id="step">Simply click on Generate, that's it!</p>
	  </div>
	  
	  <%
			Boolean fileUpload="true".equalsIgnoreCase(""+request.getSession().getAttribute("fileUpload"));
			Boolean generateGrpah="true".equalsIgnoreCase(""+request.getSession().getAttribute("fileUpload")) &&  "YES".equalsIgnoreCase(""+request.getAttribute("generateGrpah"));
		%>
		<%if(!fileUpload){%>
	  	
	  <p id="enter">Add your file below :</p>

	  <div id="allign">
		  <form method="post" action="FileAccept" enctype="multipart/form-data">
		<table>
			<tr>
				<td style="color : white;">Upload a csv file</td>
				<td style="color : white;"><input type="file" accept=".csv" name="inputFile" id="inputFile" /></td>
			</tr>
			<tr>
				<td style="color : rgba (0,0,0,0);">------------</td> 
				<td><input type="submit" name="submit" value="Import" /></td>
			</tr>	
		</table>
	</form>
	  </div>
	  <%} else{%>
	   <a href="<%=request.getContextPath()%>/FileAccept" style = "color : pink;">Home</a>
	   <%}%>
	   <div style = "color : white;">
	<% if(null!=request.getAttribute("msg")) out.print(" Result "+request.getAttribute("msg")); %></div>
	
	<% if(fileUpload && null!=request.getSession().getAttribute("headerList")){
		String headerList[]=(""+request.getSession().getAttribute("headerList")).split(",");
		int indexCounter=0;
		%>
		<div class="dropdown">
		<form action="generateGraph" method="post">
		<table align="center">
		<tr align="center">
		<td colspan="2" style="color : white;">Create Graph with the Categories </td>
		</tr>
		<tr align="left">
		<td  style="color : white;">
		Select two Categories:&nbsp;</td>
		 <td>  <select name="category" multiple id="category" class="form-select" multiple aria-label="multiple select example">
		    <%for (String header : headerList) {%>
		           <option value="<%=indexCounter++%>"><%=header%></option>
		           <%}%>
		   </select>
		   </td>
		</tr>
		<tr align="center">
		<td colspan="2"><input type="submit" id="GenerateGraph" class="GenerateGraph" value="Generate Graph"></td>
		</tr>
		
		</table>
		</form>
		</div>
		<%if( generateGrpah){
				 out.println(request.getAttribute("col1Name")+" "+request.getAttribute("col1List")+"\n");
		         out.println(request.getAttribute("col2Name")+" "+request.getAttribute("col2List"));
		%>
		<div id = "container" style = "width: 550px; height: 400px; margin: 0 auto"></div>
		<%}} %> 

	 <!--   <div id="graphs" style="padding: 100px 20px 5px 90px;"><img src="Graph1.jpg"></div><br>
	  <div id="graphs" style="padding: 5px 20px 5px 90px;"><img src="Graph2.png"></div>
	  <div id="graphs" style="padding: 20px 20px 20px 90px;"><img src="Graph3.png"></div> -->

 </div>

<div id="footer">
  <p><b>Created by Bhargav Bodhankar, Urvi Pandit, and Varun Motiyani
	<br>Vivekananda Education Society's Educational Trust</b>
  </p>
</div>

<%if(fileUpload){%>
		 <script src = "https://code.highcharts.com/highcharts.js"></script>
		<script language = "JavaScript">
         $(document).ready(function() {
        $("select").on('click', 'option', function() {
           if ($("select option:selected").length > 2) {
               $(this).removeAttr("selected");
               //alert('You can select upto 2 options only');
           }
         
        });
       
        $('form').on('submit', function() {
        if ($("select option:selected").length != 2) {
        alert("Select only two Categories" );
        return false;
        }
        });
       
       
        <%if( generateGrpah){ %>
        var title = {
                      text: 'CSV File Data'  
                   };
                   var subtitle = {
                      text: 'Upload File : <%=request.getSession().getAttribute("fileName")%>'
                   };
                   var xAxis = {
                    title: {
                               text: '<%=request.getAttribute("col1Name")%>'
                            },
                            plotLines: [{
                               value: 0,
                               width: 1,
                               color: '#808080'
                            }]
                     
                   };
                   var yAxis = {
                      title: {
                         text: '<%=request.getAttribute("col2Name")%>'
                      },
                      plotLines: [{
                         value: 0,
                         width: 1,
                         color: '#808080'
                      }]
                   };  

                   var tooltip = {
                      valueSuffix: '\xB0C'
                   }
                   var legend = {
                      layout: 'vertical',
                      align: 'right',
                      verticalAlign: 'middle',
                      borderWidth: 0
                   };                   
                    var series= [{
                	   name: '<%= request.getAttribute("col1Name")%>',
                       data: <%= request.getAttribute("col1List")%>
                   },
                   {
                	   name: '<%= request.getAttribute("col2Name")%>',
	                   data: <%= request.getAttribute("col2List")%>		
                   }];
                   
                   var chart = {
                   }
                   var json = {};
                   json.title = title;
                   json.subtitle = subtitle;
                   json.xAxis = xAxis;
                   json.yAxis = yAxis;
                   json.tooltip = tooltip;
                   json.legend = legend;
                   json.series = series;
                   json.chart = chart;

                   $('#container').highcharts(json);
                   
                   <%} %>
         });
      </script>
	    <%}%>

</body>
</html>