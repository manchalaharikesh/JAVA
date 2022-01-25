<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>login</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="login.css">
    </head>

    <body>
        
        <div class="container">
        <div class="title bg-dark text-center text-info p-5" style="position: sticky;top: 0px;z-index: 1;min-width: 550px;">

            <h3 class="d-inline">Placement Assistance System</h3>
            <a href="register.jsp"><button class="btn btn-primary float-end">Register</button></a>

        </div>

        <h3 class="text-center mt-5" style="font-family: Verdana, Geneva, Tahoma, sans-serif;">Account Login</h3>

        <form class="d-block mx-auto mt-5 mb-5 border border-dark rounded p-2 shadow" style="width: 500px;" action="LoginServlet" method="post">

            <!--username-->
            <div class="row mb-3">
                <label for="username" class=" col-sm-4">Username</label>
                <div class="col-sm-8">
                    <input type="text" name="username" id="username" class="form-control" placeholder="Enter your Username" required>
                </div>
            </div>

            <!--password-->
            <div class="row mb-3">
                <label for="password" class=" col-sm-4">Password</label>
                <div class="col-sm-8">
                    <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password" required>
                    <label class="form-text">Enter your 8-digit password</label>
                </div>
            </div>


            <div class="row">
                <a href="#" target="_blank" class="col-4 col-sm-4">Forgot Password?</a>
                <div class="col-8 col-sm-8">
                    <button class="btn btn-primary rounded float-end">Sign-in</button>
                </div>
            </div>
        
        </form>

            <h5 class="text-danger text-center"><%
                            
                if(request.getAttribute("errorMessage")!=null){

                    out.println(request.getAttribute("errorMessage"));

                }
            
            %></h3>

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
