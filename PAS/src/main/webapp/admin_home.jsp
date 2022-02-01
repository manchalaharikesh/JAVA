<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title><%=request.getAttribute("company") %></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

	<style>
	
		body{
		
			background-image: url("data:image/jpg;base64,${logo}");
			background-repeat: no-repeat;
			background-position: center;
			background-attachment: fixed;
			
			background-color: #F5F9FC;
			min-height: 800px;
		
		}
	
	</style>

</head>
	<body>
	
		<div class="container">
		
			<div class="title bg-dark text-info mt-5 p-2">
            
            	<h3 class="text-center"><%=request.getAttribute("company")%></h3>
     
        	</div>
        	
        	<div class="row justify-content-around mt-5">
        	
        		<div class="col-4">
        		
        			<div class="card shadow shadow-5 rounded">
        				<div class="card-layout">
        					<div class="card-body">
        						<img class="w-100" src="https://i.pinimg.com/originals/83/42/0b/83420bb5f95923f8c13028a5053f4908.gif" alt="" />
        						<h3>View Applications</h3>
        					</div>
        					<div class="card-footer">
        						
        						<button class="btn btn-warning">View</button>
        					
        					</div>
        				</div>
        			</div>
        		
        		</div>
        		
        		<div class="col-4">
        		
        			<div class="card shadow shadow-5 rounded">
        				<div class="card-layout">
        					<div class="card-body">
        						<img class="w-100" src="https://cdn.dribbble.com/users/1732368/screenshots/6761107/interview.gif" alt="" />
        						<h3>Schedule Interviews</h3>
        					</div>
        					<div class="card-footer">
        						<button class="btn btn-warning">Schedule</button>
        					</div>
        				</div>
        			</div>
        		
        		</div>
        	
        	
        	</div>
		
		</div>	

	<!--Don't write below this-->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" 
    integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" 
    integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous">
    </script>


	</body>
</html>