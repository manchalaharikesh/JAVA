<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
      
        <title>Placement Assistant System</title>
    </head>
    <body>

	<div class="container">
	
		<div class="title bg-dark text-info mt-5 p-2">
            
            <h3 class="justify-content-start">Welcome <span class="text-danger"><%=request.getAttribute("username")%></span> !!! </h3>
            
        </div>
	
		<br>
		<br>

		<form id="home-form" method="post">

			<div class="row row-cols-1 row-cols-md-3 mt-5 mb-5 d-flex justify-content-around">
	
				<!--card-1-->
	
				<div class="col-sm-12 col-12 mb-3">
					<div class="card rounded border border-dark"
						style="max-height: fit-content;">
	
						<img class="image-fluid rounded" src="https://tinyurl.com/55pz4xzz" alt="This image is removed">
						<div class="card-body">
							<h3>Resume</h3>
						</div>
						<div class="card-footer">
							<button class="btn btn-primary" formaction="ResumePage" form="home-form">My Resume</button>
						</div>
					</div>
				</div>
	
				<div class="col-sm-12 col-12 mb-3">
					<div class="card rounded border border-dark"
						style="max-height: fit-content;">
	
						<img class="image-fluid rounded" src="https://tinyurl.com/2p8a5n9e" alt="This image is removed">
						<div class="card-body">
							<h3>Apply for Job</h3>
						</div>
						<div class="card-footer">
							<button class="btn btn-primary" formaction="ApplyJob" form="home-form">Apply</button>
						</div>
					</div>
				</div>
	
			</div>
		
		</form>
			
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