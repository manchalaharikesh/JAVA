<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Job Applicants Page</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="login.css">
	</head>
	<body>
	
		<div class="container">
		
			<h3 class="text-center text-success"><%
			
				if(request.getAttribute("shortlist_status")!=null){
					
					if(request.getAttribute("shortlist_status").equals(true))
						out.println("shortlist status: Successful");
					
					request.setAttribute("rejection_status", null);
					
				}
			
			%></h3>
			
			<h3 class="text-center text-danger"><%
			
				if(request.getAttribute("rejection_status")!=null){
					
					if(request.getAttribute("rejection_status").equals(true))
						out.println("rejection status: Successful");
					
					request.setAttribute("rejection_status", null);
					
				}
			
			%></h3>
		
			<c:if test="${status==true}">
		
				<table class="table text-center">
				
					<thead>
					
						<tr>
							<th>Username</th>
							<th>Resume</th>
							<th></th>
						</tr>
					
					</thead>
						
						<%
							
							ArrayList<String> applicantsUsernames = (ArrayList<String>) request.getAttribute("applicantsUsernames");
							ArrayList<Integer> applicantsStatus = (ArrayList<Integer>) request.getAttribute("applicantsStatus");
							
						%>
						
						<%
							
							String username;
							int status;
							for(int i=0; i<applicantsUsernames.size(); i++){
								
								username=applicantsUsernames.get(i);
								status=applicantsStatus.get(i);
						
						%>
					
						<tr>
						
							<td><strong><%=username %></strong></td>
							<td>
							
								<form method="post" action="ApplicantResumePage">
							
									<input name="username" value="<%=username %>" type="hidden" />
									<button type="submit" class="btn btn-warning">View Resume</button>
							
								</form>
								
							</td>
					
							<td>
							
								<form method="post" id="admin-action">
								
									<input name="username" value="<%=username %>" type="hidden" />
									<input name="status" value="<%=status %>" type="hidden" />
									
									<button class="btn btn-danger" formaction="RejectApplicant" id="admin-action">Reject</button>
									<button class="btn btn-success" formaction="ShortlistApplicant" id="admin-action">Shortlist</button>							
								</form>
							
							</td>
					
						</tr>
						
						<%}; %>
				
				</table>
			</c:if>
		
			<c:if test="${status==false }">
				
				<h1 class="text-center text-info">This section is empty</h1>
			
			</c:if>
		
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