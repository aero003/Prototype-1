<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
</head>
<script>
function validateform()
 {
	var fname = document.myform.fname.value;  
	var lname = document.myform.lname.value;  
 	var mname = document.myform.mname.value;
 	var country = document.myform.country.value;
 	var state = document.myform.state.value;
 	var zip = document.myform.zip.value;
 	var gmail = document.myform.gmail.value;
 	var code = document.myform.code.value;
 	var number = document.myform.number.value;
 	var height = document.myform.height.value;
 	var weight = document.myform.weight.value;
 		
 	if(fname==null||fname=="")
 	{  
 		 alert("First Name filed must not be empty");  
 		 return false;  
 	}
 	else if(lname==null||lname==""){
 		alert("Last Name field must not be empty");
 		return false;
 	}
 	else if(mname==null||mname=="")
 	{
 		alert("Middle Name field must not be empty");
 		return false;
 	}
 	else if(country==null||country==""){
 		alert("Country field must not be empty");
 		return false;
 	}
 	else if(state==null||state==""){
 		alert("State field must not be empty");
 		return false;
 	}
 	else if(zip==null||zip==""){
 		alert("Zip field must not be empty");
 		return false;
 	}
 	else if(gmail==null||gmail=="")
 	{
 		alert("Gmail field must not be empty");
 		return false;
 	}
 	else if(code==null||code==""){
 		alert("Country Code field must not be empty");
 		return false;
 	}
 	else if(number==null||number=="")
 	{
 		alert("Phone Number field must not be empty");
 		return false;
 	}
 	else if(height==null||height=="")
 	{
 		alert("Height field must not be empty");
 		return false;
 	}
 	else if(weight==null||weight=="")
 	{
 		alert("weight field must not be empty");
 		return false;
 	} 
 }
 
	var countriesAndStates = {};
	countriesAndStates['India'] = ['New Delhi','Tamil Nadu','Karnataka','Kerala'];
	countriesAndStates['USA'] = ['New York','California','New Jersey','Chicago'];
	countriesAndStates['UK'] = ['London','Manchester','Edinburgh','Nottingham'];
	countriesAndStates['France'] = ['Paris','Lyon','Bordeaux','Marseille'];
	
	function loadStates(){
		var countryList = document.getElementById("country");
		var stateList = document.getElementById("state");
		var selectedCountry = countryList.options[countryList.selectedIndex].value;
		while(stateList.options.length){
			stateList.remove(0);
		}
		var countries = countriesAndStates[selectedCountry];
		if(countries){
			var i;
			for(i=0; i<countries.length; i++){
				var country = new Option(countries[i], countries[i]);
				stateList.options.add(country);
			}
		}	
		
	}
 
</script>

<body>
     <form name="myform" method="post" action="view.jsp" onsubmit="return validateform()" >  
 
	 <div id="form-wrapper" style="max-width:800px;margin:50px;">
	
        <div>
			First Name :&nbsp;<input type = "text" name = "fname" >
		</div><br>
		
		<div>
			Middle Name :&nbsp;<input type = "text"  name = "mname">
		</div><br>
		
		<div>
			Last Name :&nbsp;<input type = "text"  name = "lname">
		</div><br>
		
		<div>Address :</div><br>
		
		<div>
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Country :&nbsp;<select id = "country"  name = "country" onclick = "loadStates()" style = "width:120px">
		      <option value = ""></option>
		      <option value = "India">India</option>
      		  <option value = "USA">USA</option>
      		  <option value = "UK">UK</option>
      		  <option value = "France">France</option>
		    </select>
		</div><br>
		
		<div>
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;State :&nbsp;<select id = "state" name = "state" style = "width:120px"></select>
		</div><br>
		
		<div>
		    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Zip :&nbsp;<input type="text" name = "zip">
		</div><br>
    
        <div>
        	Gmail :&nbsp;<input type = "email" name = "gmail">
        </div><br>
        
        <div>
        	Country Code :&nbsp;
        	<select id = "code" name = "code"style = "width:50px">
        	    <option value = ""></option>
        		<option value = "+91">+91</option>
        		<option value = "+1">+1</option>
        		<option value = "+44">+44</option>
        		<option value = "+33">+33</option>
        	</select>&nbsp;&nbsp;&nbsp;&nbsp;
        	Phone Number :&nbsp;<input type = "number" name = "number">
        </div><br>
        
        <div>
        	Height :&nbsp;<input type = "text" name = "height">
        </div><br>
        
        <div>
        	Weight :&nbsp;<input type = "text" name = "weight">
        </div><br>
        
        <div>
		    <input type="submit" value="Submit">
        </div>
	</div>	 
	</form>  
	
</body>
</html>