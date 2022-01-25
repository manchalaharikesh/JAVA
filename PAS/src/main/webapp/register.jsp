<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>register</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="register.css">
    </head>

    <body>
    
        <div class="container-fluid">

            <div class="title" style="position: sticky;top: 0px;z-index: 1;">

                <h3>Placement Assistant System</h3>
    
            </div>

            <!--personal details-->

            <form class="border border-dark p-3 w-75 mx-auto mt-3 rounded shadow" action="RegisterServlet" method="post">

                <legend>Registration</legend>

                <div class="form">
            
                    <div class="row mb-3 row-cols-1 row-cols-sm-2">

                        <div class="col-sm-6 mb-3">

                            <label for="firstname" class="form-label">First Name</label>
                            <input type="text" name="firstname" id="firstname" class="form-control" required>
                            <label for="firstname" class="form-text">This field is required</label>

                        </div>

                        <div class="col-sm-6">

                            <label for="lastname" class="form-label">Last Name</label>
                            <input type="text" name="lastname" id="lastname" class="form-control">

                        </div>

                    </div>

                    <div class="row mb-3 row-cols-1 row-cols-sm-2">

                        <div class="col-sm-6 form-floating mb-3">
                            
                            <input type="number" name="age" id="age" class="form-control" placeholder="Mobile Number">
                            <label for="age" class="form-label">Age</label>

                        </div>
                        <div class="col-sm-6 form-floating mb-3">

                            <input type="text" name="roll" id="roll" class="form-control" placeholder="Roll Number">
                            <label for="roll" class="form-label">Roll Number</label>

                        </div>

                        <div class="col-sm-6 form-floating">

                            <input type="email" name="email" id="email" class="form-control" placeholder="mail">
                            <label for="email" class="form-label">E-Mail Address</label>

                        </div>
                        

                    </div>

                    <div class="row">

                        <div class="col-sm-6 mb-3">

                            <label for="username" class="form-label">Username</label>
                            <input type="text" name="username" id="username" class="form-control" required>
                            <label for="username" class="form-text">This field is required</label>

                        </div>
                    </div>
                    <div class="row">
                    

                        <div class="col col-sm-6">

                            <div class="row mb-3">
                                <label for="password" class=" col-sm-4">Password</label>
                                <div class="col-sm-8">
                                    <input type="password" name="password" id="password" class="form-control" placeholder="Enter Password" required>
                                    <label class="form-text">Enter your 8-digit password</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                    

                        <div class="col col-sm-6">

                            <div class="row mb-3">
                                <label for="confirmpassword" class=" col-sm-4">Confirm Password</label>
                                <div class="col-sm-8">
                                    <input type="confirmpassword" name="confirmpassword" id="confirmpassword" class="form-control" placeholder="Confirm Password">
                                    <label class="form-text">Enter your 8-digit password</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                
                            <div class="row">
                                
                                <div class="col-8 col-sm-8">
                                    <button type="submit" class="btn btn-primary rounded float-end">Sign-in</button>
                                </div>
                            </div>   

                    </div>

                    <div>

                        <h5 class="text-danger text-center"><%
                            
                            if(request.getAttribute("errorMessage")!=null){

                                out.println(request.getAttribute("errorMessage"));

                            }
                            
                        %></h3>

                    </div>

                </div>

                <!--first name, last name, mobile number, email, age, date of birth, gender, country, proof-->
            
            </form>

        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" 
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" 
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous">
        </script>

    </body>

</html>
