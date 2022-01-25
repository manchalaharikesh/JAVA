<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Profile</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://kit.fontawesome.com/259314c312.js" crossorigin="anonymous"></script>
    </head>

    <body>

        <div class="container-fluid">

            <div class="header d-flex bg-black text-info justify-content-center align-items-center" style="height: 100px; position: sticky; top: 0px;z-index: 1; font-family: Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;">
                <h1>VJ Student Internet Banking</h1>
            </div>

            <br>
            <br>

            <div class="card w-75 mx-auto">
            <div class="profile border border-info border-2 rounded p-5 shadow">
                
                <div class="row">
                    <h1>User Profile:</h1>
                    <hr>

                    <div class="col-8 d-inline mt-3">
                        <!-- first name -->
                        <div class="row">
                            <div class="col-4">
                                <h3>First Name:</h3>
                            </div>
                            <div class="col-8 rounded p-0">
                                <input class="w-100 form-control" type="text" placeholder="Mukesh" readonly>
                            </div>
                        </div>
                        <!-- last name -->
                        <div class="row mt-3">
                            <div class="col-4">
                                <h3>Last Name:</h3>
                            </div>
                            <div class="col-8 rounded p-0">
                                <input class="w-100 form-control" type="text" placeholder="Pothala" readonly>
                            </div>
                        </div>
                        <!-- gender -->
                        <div class="row mt-3">
                            <div class="col-4">
                                <h3>Gender:</h3>
                            </div>
                            <div class="col-8 rounded p-0">
                                <input class="w-100 form-control" type="text" placeholder="Male" readonly>
                            </div>
                        </div>
                        <!-- dob -->
                        <div class="row mt-3">
                            <div class="col-4">
                                <h3>Date of Birth:</h3>
                            </div>
                            <div class="col-8 rounded p-0">
                                <input class="w-100 form-control" type="text" placeholder="07-01-2002" readonly>
                            </div>
                        </div>
                        <!-- mobile no -->
                        <div class="row mt-3">
                            <div class="col-4">
                                <h3>Mobile:</h3>
                            </div>
                            <div class="col-8 rounded p-0">
                                <input class="w-100 form-control" type="text" placeholder="9235####98452" readonly>
                            </div>
                        </div>
                        <!-- mail id -->
                        <div class="row mt-3">
                            <div class="col-4">
                                <h3>E-Mail-ID:</h3>
                            </div>
                            <div class="col-8 rounded p-0">
                                <input class="w-100 form-control" type="text" placeholder="mukeshpothala@gmail.com" readonly>
                            </div>
                        </div>
                        <!-- address -->
                        <div class="row mt-3">
                            <div class="col-4">
                                <h3>Address:</h3>
                            </div>
                            <div class="col-8 rounded p-0">
                                <input class="w-100 form-control" type="text" placeholder="H.No: 622, Second zone, Mancherial-504231" readonly>
                            </div>
                        </div>

                    </div>

                    <div class="col-4">
                        <img class="float-end rounded-circle border border-dark border-3" src="https://media1.giphy.com/media/ZXkraFrlIW1D25M6ZJ/200w.webp?cid=ecf05e47o3jjxfi7woj9wd7up2x5us8v4md72ig8kkj05m2v&rid=200w.webp&ct=g" alt="This image is not available">
                    </div>
                </div>

                <button class="btn btn-danger mt-3 float-end m-5"><i class="far fa-edit"></i><prev> Edit</prev></button>

            </div>
            </div>

            <div class="card w-75 mx-auto mt-3">
                <div class="profile border border-info border-2 rounded p-5 shadow">
                    
                    <div class="row">
                        <h1>Change Pin:</h1>
                        <hr>
    
                        <div class="col-8 d-inline mt-3">
                            <!-- first name -->
                            <div class="row">
                                <div class="col-4">
                                    <h3>Old Pin:</h3>
                                </div>
                                <div class="col-8 rounded p-0">
                                    <input class="w-100 form-control" placeholder="Enter Old Pin" type="text">
                                </div>
                            </div>
                            <!-- last name -->
                            <div class="row mt-3">
                                <div class="col-4">
                                    <h3>New Pin:</h3>
                                </div>
                                <div class="col-8 rounded p-0">
                                    <input class="w-100 form-control" placeholder="Enter New Pin" type="text">
                                </div>
                            </div>
                            <!-- gender -->
                            <div class="row mt-3">
                                <div class="col-4">
                                    <h3>Confirm Pin:</h3>
                                </div>
                                <div class="col-8 rounded p-0">
                                    <input class="w-100 form-control" placeholder="Confirm New Pin" type="text">
                                </div>
                            </div>
    
                        </div>

                    </div>
    
                    <div class="float-end">
                        <a href="se.html"><button class="btn btn-danger mt-3">Cancel</button></a>
                        <a href="se.html"><button class="btn btn-success mt-3"><i class="fas fa-save"></i><prev> Save</prev></button></a>
                    </div>
                </div>
                </div>

        </div>

        <!-- Don't write below this line -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" 
        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" 
        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous">
        </script>

    </body>

</html>