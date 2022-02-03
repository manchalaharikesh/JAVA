<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Resume</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/259314c312.js"
	crossorigin="anonymous"></script>
</head>

<body>

	<div class="container-fluid">

		<div
			class="header d-flex bg-black text-info justify-content-center align-items-center"
			style="height: 100px; position: sticky; top: 0px; z-index: 1; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">
			<h1>RESUME</h1>
		</div>

		<br> <br>

		<form class="w-75 m-4 shadow p-4 mx-auto" id="admin-action" enctype="multipart/form-data" method="post">
			
			<div class="row">
				<h3 class="p-2 bg-primary rounded">Personal Details</h3>
				<div class="col-6">
					<div class="row">
						<div class="col-12 mb-3">
							<div class="w-100 float-start p-2">
								<label for="fname" class="form-label">First Name</label> 
								<input type="text" class="form-control" name="firstname" id="fname"
								value="<c:if test="${not empty firstname}">${firstname}</c:if>" disabled>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 mb-3">
							<div class="w-100 float-start p-2">
								<label for="lname" class="form-label">Last Name</label> <input
								type="text" class="form-control" name="lastname" id="lastname"
								value="<c:if test="${not empty lastname}">${lastname}</c:if>" disabled />
							</div>
						</div>		
					</div>		
					<div class="row">
						<div class="col-12 mb-3">
							<div class="w-100 float-start p-2">
								<label for="email" class="form-label"><i
								class="fa fa-envelope" aria-hidden="true"></i> Email</label> <input
								type="email" class="form-control" name="mail" id="email"
								value="<c:if test="${not empty mail}">${mail}</c:if>" disabled />
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-12 mb-3">
							<div class="w-100 float-start p-2">
								<label for="phno" class="form-label"><i class="fa fa-phone"
								aria-hidden="true"></i> Contact</label> <input type="text"
								class="form-control" name="phone" id="phno"
								value="<c:if test="${not empty phone}">${phone}</c:if>" disabled />
							</div>
						</div>
					</div>	
				</div>
				
				<!-- Profile Picture -->
				
				<div class="col-4 mx-auto my-auto">
					<img class="rounded-circle " src="data:image/jpg;base64,${avatar}" width="300px" height="300px" />
				</div>	
				
			</div>
			<div class="row">
				<div class="col-6 mb-3">
					<div class="w-100 p-2">
						<label for="year" class="form-label">Year</label> 
							<select class="form-select" aria-label="Default select example" id="year" name="year" disabled>
								<option value="0"<c:if test="${empty year}">selected</c:if>">Current year</option>
								<option value="1" <c:if test="${year==1}">selected</c:if>>1st year</option>
								<option value="2" <c:if test="${year==2}">selected</c:if>>2nd year</option>
								<option value="3" <c:if test="${year==3}">selected</c:if>>3rd year</option>
								<option value="4" <c:if test="${year==4}">selected</c:if>>4th year</option>
							</select>
						</div>
					</div>
					<div class="col-6 mb-3">
					<div class="w-100 p-2">
						<label for="branch" class="form-label">Branch</label> 
						<input type="text" class="form-control" name="branch" id="branch"
						value="<c:if test="${not empty branch}">${branch}</c:if>" disabled/>
					</div>
				</div>
			</div>
				
			<hr>
			<h3 class="p-2 bg-success rounded">Academic Details</h3>
			<div class="mb-3">
				<div class="p-2 float-start w-75">
					<label for="school" class="form-label">10th school name</label> <input
						type="text" class="form-control" name="school" id="school"
						value="<c:if test="${not empty school}">${school}</c:if>" disabled />
				</div>
				<div class="p-2 float-end w-25">
					<label for="tenth" class="form-label">10th GPA</label> <input
						type="number" class="form-control" name="tenth" id="tenth" min="0"
						step="any" value="<c:if test="${tenth>=0}">${tenth}</c:if>" disabled />
				</div>
			</div>
			<div class="mb-3">
				<div class="p-2 float-start w-75">
					<label for="college" class="form-label">Intermmediate
						College</label> <input type="text" class="form-control" name="college"
						id="college"
						value="<c:if test="${not empty college}">${college}</c:if>" disabled />
				</div>
				<div class="p-2 float-end w-25">
					<label for="twelfth" class="form-label">12th percentage</label> <input
						type="number" class="form-control" name="twelfth" id="twelfth"
						min="0" step="any"
						value="<c:if test="${twelfth>=0}">${twelfth}</c:if>" disabled />
				</div>
			</div>
			<div class="mb-3">
				<div class="p-2 float-start w-75">
					<label for="institute" class="form-label">Institute</label> <input
						type="text" class="form-control" name="institute" id="institute"
						value="<c:if test="${not empty institute}">${institute}</c:if>" disabled />
				</div>
				<div class="p-2 float-end w-25">
					<label for="btech" class="form-label">Btech CGPA</label> <input
						type="number" class="form-control" name="btech" id="btech" min="0"
						step="any" value="<c:if test="${btech>=0}">${btech}</c:if>" disabled />
				</div>
			</div>
			<div class="mb-3">
				<p class="text-light">Give full school name</p>
			</div>

			<hr>

			<h3 class="p-2 bg-warning rounded">Projects</h3>
			<div class="mb-3 p-2">
				<input type="text" class="form-control mb-2" name="project1"
					placeholder="Description of Project 1" id="project1"
					value="<c:if test="${not empty project1}">${project1}</c:if>" disabled /> 
					<input type="text" class="form-control mb-2" name="project2"
					placeholder="Description of Project 2" id="project2"
					value="<c:if test="${not empty project2}">${project2}</c:if>" disabled />
					<input type="text" class="form-control mb-2" name="project3"
					placeholder="Description of Project 3" id="project3"
					value="<c:if test="${not empty project3}">${project3}</c:if>" disabled />
			</div>

			<hr>
			<h3 class="p-2 bg-info rounded">Achievements & Work Experience</h3>
			<div class="mb-3 p-2">
				<input type="text" class="form-control mb-2" name="achievement1"
					placeholder="Description of achievement 1" id="achievement1"
					value="<c:if test="${not empty achievement1}">${achievement1}</c:if>" disabled />
				<input type="text" class="form-control mb-2" name="achievement2"
					placeholder="Description of achievement 2" id="achievement2"
					value="<c:if test="${not empty achievement2}">${achievement2}</c:if>" disabled />
				<input type="text" class="form-control mb-2" name="achievement3"
					placeholder="Description of achievement 3" id="achievement3"
					value="<c:if test="${not empty achievement3}">${achievement3}</c:if>" disabled />
			</div>
			<div class="mb-3 p-2">
				<label for="workexp">Work Experience</label>
				
				<c:if test="${not empty workexp}">
					<textarea class="form-control" rows="5" id="workexp" name="workexp" value="${workexp}" disabled>${workexp}</textarea>
				</c:if>
				<c:if test="${empty workexp}">
					<textarea class="form-control" rows="5" id="workexp" name="workexp" disabled></textarea>
				</c:if>
				
			</div>
			<hr>
			<h3 class="p-2 bg-secondary rounded">Skills and Interests</h3>
			<div class="mb-3 row p-2">
				<div class="col-sm-4">
					<div>
						<input class="form-check-input" type="checkbox" id="ai" name="ai"
							<c:if test="${ai=='on'}">checked</c:if> disabled> 
							<label class="form-check-label" for="ai">AI</label>
					</div>
					<div>
						<input class="form-check-input" type="checkbox" id="ml" name="ml"
							<c:if test="${ml=='on'}">checked</c:if> disabled> 
							<label class="form-check-label" for="ml">Machine Learning</label>
					</div>
					<div>
						<input class="form-check-input" type="checkbox" id="cs"
							name="hacking" <c:if test="${hacking=='on'}">checked</c:if> disabled>
						<label class="form-check-label" for="cs">Ethical Hacking</label>
					</div>

				</div>
				<div class="col-sm-4">
					<div>
						<input class="form-check-input" type="checkbox" id="cpp"
							name="cpp" <c:if test="${cpp=='on'}">checked</c:if> disabled> 
						<label class="form-check-label" for="cpp">cpp</label>
					</div>
					<div>
						<input class="form-check-input" type="checkbox" id="java"
							name="java" <c:if test="${java=='on'}">checked</c:if> disabled> <label
							class="form-check-label" for="ai">Java</label>
					</div>
					<div>
						<input class="form-check-input" type="checkbox" id="py"
							name="python" <c:if test="${python=='on'}">checked</c:if> disabled />
						<label class="form-check-label" for="py">Python</label>
					</div>
				</div>
				<div class="col-sm-4">
					<div>
						<input class="form-check-input" type="checkbox" id="react"
							name="react" <c:if test="${react=='on'}">checked</c:if> disabled />
						<label class="form-check-label" for="react">ReactJS</label>
					</div>
					<div>
						<input class="form-check-input" type="checkbox" id="ang"
							name="angular" <c:if test="${angular=='on'}">checked</c:if> disabled />
						<label class="form-check-label" for="ang">Angular</label>
					</div>
					<div>
						<input class="form-check-input" type="checkbox" id="flutter"
							name="flutter" <c:if test="${flutter=='on'}">checked</c:if> disabled />
						<label class="form-check-label" for="flutter">Flutter</label>
					</div>
				</div>
			</div>
			<div class="mb-3 p-2">
				<label for="interest">Interests</label>
				
				<c:if test="${not empty interests}">
					<textarea class="form-control" rows="5" id="interests" name="interests" value="${interests}" disabled>${interests}</textarea>
				</c:if>
				
				<c:if test="${empty interests}">
					<textarea class="form-control" rows="5" id="interests" name="interests" value="${workexp}" disabled></textarea>
				</c:if>
				
			</div>
			<hr>
			<h3 class="p-2 bg-success rounded">Social Platforms</h3>
			<div class="mb-3 p-2">
				<label for="coding" class="form-label">Coding Platforms</label>
				<div>
					<input class="form-check-input" type="checkbox" id="hk" name="hk"
						<c:if test="${hk=='on'}">checked</c:if> disabled />
					<label class="form-check-label" for="hk">Hackerrank</label>
				</div>
				<div>
					<input class="form-check-input" type="checkbox" id="cc" name="cc"
						<c:if test="${cc=='on'}">checked</c:if> disabled />
					<label class="form-check-label" for="cc">Code Chef</label>
				</div>
			</div>
			<div class="mb-3 p-2">
				<label for="linkedin" class="form-label"><i
					class="fa fa-linkedin" aria-hidden="true"></i> LinkedIn</label>
				<input type="url" class="form-control" name="linkedin" id="linkedin"
				value="<c:if test="${not empty linkedin}">${linkedin}</c:if>" disabled />
			</div>
			<div class="mb-3 p-2">
				<label for="github" class="form-label">
				<i class="fa fa-github" aria-hidden="true"></i> Github</label>
				<input type="text" class="form-control" name="github" id="github"
				value="<c:if test="${not empty github}">${github}</c:if>" disabled />
			</div>
			
<%-- 			<c:if test="${action eq '/ApplicantResumePage'}">
			
				<div class="mb-3 mx-auto text-center">
				
					<input name="username" value="<c:if test="${not empty username }">${username }</c:if>" type="hidden"/>
					
					
					<button class="btn btn-danger" formaction="RejectApplicant" id="admin-action">Reject</button>
					<button class="btn btn-success" formaction="ShortlistApplicant" id="admin-action">Shortlist</button>	
					
				</div>
			
			</c:if> --%>
		</form>

	</div>

	<!-- Don't write below this line -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
		integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
		crossorigin="anonymous">
        </script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
		crossorigin="anonymous">
        </script>

</body>

</html>