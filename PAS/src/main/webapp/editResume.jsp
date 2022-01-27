<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
        <!DOCTYPE html>
        <html>

        <head>
                <meta charset="ISO-8859-1">
                <title>My Resume</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
                        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
                        crossorigin="anonymous">
                <script src="https://kit.fontawesome.com/259314c312.js" crossorigin="anonymous"></script>
        </head>

        <body>
                <div class="">
                        <div class="bg-secondary bg-gradient w-100">
                                <h2 class="text-center text-light p-2"><i class="fa fa-edit" aria-hidden="true"></i> Update Resume</h2>
                        </div>
                        <form action="" class="w-50 m-4 shadow p-4 mx-auto">
                                <h3 class="p-2 bg-primary rounded">Personal Details</h3>
                                <div class="mb-3">
                                        <div class="w-50 float-start p-2">
                                                <label for="fname" class="form-label">First Name</label>
                                                <input type="text" class="form-control" name="fname" id="fname">
                                        </div>
                                        <div class="w-50 float-end p-2">
                                                <label for="lname" class="form-label">Last Name</label>
                                                <input type="text" class="form-control" name="lname" id="lname">
                                        </div>
                                </div>
                                <div class="mb-3">
                                        <div class="w-50 float-start p-2">
                                                <label for="email" class="form-label"><i class="fa fa-envelope"
                                                                aria-hidden="true"></i> Email</label>
                                                <input type="email" class="form-control" name="email" id="email">
                                        </div>
                                        <div class="w-50 float-end p-2">
                                                <label for="phno" class="form-label"><i class="fa fa-phone"
                                                                aria-hidden="true"></i>
                                                        Contact</label>
                                                <input type="text" class="form-control" name="phno" id="phno">
                                        </div>
                                </div>
                                <div class="mb-3">
                                        <div class="w-50 float-start p-2">
                                                <label for="year" class="form-label">Year</label>
                                                <select class="form-select" aria-label="Default select example"
                                                        id="year">
                                                        <option selected>Current year</option>
                                                        <option value="1">1st year</option>
                                                        <option value="2">2nd year</option>
                                                        <option value="3">3rd year</option>
                                                        <option value="4">4rth year</option>
                                                </select>
                                        </div>
                                        <div class="w-50 float-end p-2">
                                                <label for="branch" class="form-label">Branch</label>
                                                <input type="text" class="form-control" name="branch" id="branch">
                                        </div>
                                </div>
                                <div class="p-2 w-50">
                                        <label for="avatar" class="form-label">Upload image file</label>
                                        <input type="file" name="avatar" id="avatar" class="form-control">
                                </div>
                                <hr>
                                <h3 class="p-2 bg-success rounded">Academic Details</h3>
                                <div class="mb-3">
                                        <div class="p-2 float-start w-75">
                                                <label for="school" class="form-label">10th school name</label>
                                                <input type="text" class="form-control" name="school" id="school">
                                        </div>
                                        <div class="p-2 float-end w-25">
                                                <label for="tenth" class="form-label">10th GPA</label>
                                                <input type="number" class="form-control" name="tenth" id="tenth">
                                        </div>
                                </div>
                                <div class="mb-3">
                                        <div class="p-2 float-start w-75">
                                                <label for="college" class="form-label">Intermmediate College</label>
                                                <input type="text" class="form-control" name="college" id="college">
                                        </div>
                                        <div class="p-2 float-end w-25">
                                                <label for="twelfth" class="form-label">12th percentage</label>
                                                <input type="number" class="form-control" name="twelfth" id="twelfth">
                                        </div>
                                </div>
                                <div class="mb-3">
                                        <div class="p-2 float-start w-75">
                                                <label for="institute" class="form-label">Institute</label>
                                                <input type="text" class="form-control" name="institute" id="institute">
                                        </div>
                                        <div class="p-2 float-end w-25">
                                                <label for="btech" class="form-label">Btech CGPA</label>
                                                <input type="number" class="form-control" name="btech" id="btech">
                                        </div>
                                </div>
                                <div class="mb-3">
                                        <p class="text-light">Give full school name</p>
                                </div>

                                <hr>

                                <h3 class="p-2 bg-warning rounded">Projects</h3>
                                <div class="mb-3 p-2">
                                        <input type="text" class="form-control mb-2" name="project1"
                                                placeholder="Description of Project 1" id="project1">
                                        <input type="text" class="form-control mb-2" name="project2"
                                                placeholder="Description of Project 2" id="project2">
                                        <input type="text" class="form-control mb-2" name="project3"
                                                placeholder="Description of Project 3" id="project3">
                                </div>

                                <hr>
                                <h3 class="p-2 bg-info rounded">Achievements & Work Experience</h3>
                                <div class="mb-3 p-2">
                                        <input type="text" class="form-control mb-2" name="acheivement1"
                                                placeholder="Description of acheivement 1" id="acheivement1">
                                        <input type="text" class="form-control mb-2" name="acheivement2"
                                                placeholder="Description of acheivement 2" id="acheivement2">
                                        <input type="text" class="form-control mb-2" name="acheivement3"
                                                placeholder="Description of acheivement 3" id="acheivement3">
                                </div>
                                <div class="mb-3 p-2">
                                        <label for="workexp">Work Experience</label>
                                        <textarea class="form-control" rows="5" id="workexp" name="workexp"></textarea>
                                </div>
                                <hr>
                                <h3 class="p-2 bg-secondary rounded">Skills and Interests</h3>
                                <div class="mb-3 row p-2">
                                        <div class="col-sm-4">
                                                <div>
                                                        <input class="form-check-input" type="checkbox" value="ai"
                                                                id="ai" name="ai">
                                                        <label class="form-check-label" for="ai">AI</label>
                                                </div>
                                                <div>
                                                        <input class="form-check-input" type="checkbox" value="ml"
                                                                id="ml" name="ml">
                                                        <label class="form-check-label" for="ml">Machine
                                                                Learning</label>
                                                </div>
                                                <div>
                                                        <input class="form-check-input" type="checkbox" value="cs"
                                                                id="cs" name="cs">
                                                        <label class="form-check-label" for="cs">Ethical Hacking</label>
                                                </div>

                                        </div>
                                        <div class="col-sm-4">
                                                <div>
                                                        <input class="form-check-input" type="checkbox" value="cpp"
                                                                id="cpp" name="cpp">
                                                        <label class="form-check-label" for="cpp">cpp</label>
                                                </div>
                                                <div>
                                                        <input class="form-check-input" type="checkbox" value="java"
                                                                id="java" name="java">
                                                        <label class="form-check-label" for="ai">Java</label>
                                                </div>
                                                <div>
                                                        <input class="form-check-input" type="checkbox" value="py"
                                                                id="py" name="py">
                                                        <label class="form-check-label" for="py">Python</label>
                                                </div>
                                        </div>
                                        <div class="col-sm-4">
                                                <div>
                                                        <input class="form-check-input" type="checkbox" value="react"
                                                                id="react" name="react">
                                                        <label class="form-check-label" for="react">ReactJS</label>
                                                </div>
                                                <div>
                                                        <input class="form-check-input" type="checkbox" value="ang"
                                                                id="ang" name="ang">
                                                        <label class="form-check-label" for="ang">Angular</label>
                                                </div>
                                                <div>
                                                        <input class="form-check-input" type="checkbox" value="flutter"
                                                                id="flutter" name="flutter">
                                                        <label class="form-check-label" for="flutter">Flutter</label>
                                                </div>
                                        </div>
                                </div>
                                <div class="mb-3 p-2">
                                        <label for="interest">Interests</label>
                                        <textarea class="form-control" rows="2" id="workexp" name="workexp"></textarea>
                                </div>
                                <hr>
                                <h3 class="p-2 bg-success rounded">Social Platforms</h3>
                                <div class="mb-3 p-2">
                                        <label for="coding" class="form-label">Coding Platforms</label>
                                        <div>
                                                <input class="form-check-input" type="checkbox" value="hk" id="hk"
                                                        name="hk">
                                                <label class="form-check-label" for="hk">Hackerrank</label>
                                        </div>
                                        <div>
                                                <input class="form-check-input" type="checkbox" value="cc" id="cc"
                                                        name="cc">
                                                <label class="form-check-label" for="cc">Code Chef</label>
                                        </div>
                                </div>
                                <div class="mb-3 p-2">
                                        <label for="linkedin" class="form-label"><i class="fa fa-linkedin"
                                                        aria-hidden="true"></i> LinkedIn</label>
                                        <input type="url" class="form-control" name="linkedin" id="linkedin">
                                </div>
                                <div class="mb-3 p-2">
                                        <label for="github" class="form-label"><i class="fa fa-github"
                                                        aria-hidden="true"></i> Github</label>
                                        <input type="text" class="form-control" name="github" id="github">
                                </div>
                                <div class="mb-3 mx-auto text-center">
                                        <button class="btn btn-danger text-center btn-block">Save</button>
                                </div>
                        </form>
                </div>
                <!-- Don't write below this line -->
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"
                        integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB"
                        crossorigin="anonymous">
                        </script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"
                        integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13"
                        crossorigin="anonymous">
                        </script>
        </body>

        </html>