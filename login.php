


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TAT CAMERA</title>
    <!--font font-awesome link-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- custom css file link-->
    <link rel="stylesheet" href="css/s.css">

    <!-------slide-link--->
    <link rel="stylesheet" href="OwlCarousel2-2.3.4/dist/assets/owl.carousel.min.css">    
    <link rel="stylesheet" href="OwlCarousel2-2.3.4/dist/assets/owl.theme.default.min.css">
    <script src="js/ss.js"></script> 

<style>
.form-container {
	width: 40rem;
    min-height:auto;
    border-radius: .5rem;
    /* border: var(--border); */
    padding: 1rem;
    position: relative;
    margin: auto;
    align-items: center;
    justify-content: center;
    overflow: hidden;
    /* box-shadow: var(--box-shadow); */
}

.form-container form {
	padding: 2rem;
    /* width: 40rem; */
    border-radius: .5rem;
    box-shadow: var(--box-shadow);
    border: var(--border);
    background: #fff;

    /* text-align: center; */
	/* transform: translateY(-50%) scale(.8);
	opacity: 0;
	z-index: 100;
	transition: all .3s ease;
	transition-delay: 0s; */
}
/* 
.form-container form.active {
	transform: translateY(-50%);
	opacity: 1;
	z-index: 200;
	transition-delay: .3s;
} */

.form-container form h3{
    font-size: 3rem;
    text-transform: uppercase;
    color: var(--black);
    text-align: center;
    padding-bottom: 1.5rem;
}

.form-container form .error-msg{
    margin: 10px 0;
    display: block;
    background: var(--red);
    color: var(--grey);
    border-radius: 1rem;
    font-size: 1.5rem;
    padding: 1rem;
    text-align: center;
}

.form-container form .form-group label{
    display: block;
    font-size: 1.6rem;
    padding-top: .9rem;
}

.form-container form .form-group .input-group {
	position: relative;
}

.form-container form .form-group .input-group input {
	padding: 1rem 1.2rem;
    margin: .6rem 0;
	outline: none;
	border-radius: .5rem;
	border: var(--border);
	width: 100%;
    font-size: 1.5rem;
    color: var(--black);
    text-transform: none;
	transition: all .3s ease;
}

.form-container form .box{
    width: 100%;
    border-radius: .5rem;
    background-color: var(--light-bg);
    padding:1.2rem 1.4rem;
    font-size: 1.5rem;
    color:var(--black);
    border:var(--border);
    margin:1rem 0;
 }

.form-container form .form-group .input-group input:hover,
.form-container form .box:hover{
    box-shadow: 0 0 0 1px var(--light-green);
    border: 1px solid var(--green);
}

.form-container form .form-group .input-group input:focus,
.form-container form .form-group .input-group input:not(:placeholder-shown) {
	border-color: var(--green);
	background: var(--grey);
}
.form-container form .form-group .input-group input:focus + i,
.form-container form .form-group .input-group input:not(:placeholder-shown) + i {
	color: var(--green);
}
.form-container form .form-group .input-group input:focus:valid {
	box-shadow: 0 0 0 .1rem var(--light-green);
}
.form-container form .form-group .input-group input:valid:not(:placeholder-shown) {
	border-color: var(--green);
}
.form-container form .form-group .input-group input:valid:not(:placeholder-shown) + i {
	color: var(--green);
}
.form-container form .form-group .input-group input:invalid:not(:placeholder-shown) {
	border-color: var(--red);
}
.form-container form .form-group .input-group input:invalid:not(:placeholder-shown) + i {
	color: var(--red);
}
.form-container form .form-group .input-group input:focus:invalid {
	box-shadow: 0 0 0 .1rem var(--light-red);
}
.form-container form .form-group .input-group input:focus,
.form-container form .form-group .input-group input:focus:placeholder-shown {
	box-shadow: 0 0 0 .1rem rgb(137, 213, 139);
}

.form-container form select:focus,
.form-container form select:focus:placeholder-shown{
    border-color: var(--green);
	background: var(--grey);
}

.form-container form .form-group .input-group i {
	position: absolute;
    font-size: 1.4rem;
	top: 50%;
	transform: translateY(-50%);
	right: 20px;
	color: var(--text);
	pointer-events: none;
	transition: all .3s ease;
}
.form-container form .form-group span {
	font-size: 1.2rem;
	text-transform: none;
}
/* 
.form-container form .remember{
    margin: 1.8rem .5rem .8rem .5rem;
}

.form-container form .remember label{
    color: var(--black);
    font-size: 1.3rem;
}

.form-container form .remember input{
    accent-color: var(--green);
} */


.form-container form .btn {
	text-align: center;
    width: 100%;
    margin: 1rem 0;
}

.form-container form .signUp-link{
    font-size: 1.5rem;
    text-align: center;
    margin: 1.5rem 0 ;
}

.form-container form .signUp-link a{
    text-decoration: none;
    color: var(--green);
    font-size: 1.4rem;
}

.form-container form .signUp-link a:hover{
    color: var(--dark-color);
    text-decoration: underline;
}

.form-container form .signUp-link p{
    color: var(--light-color);
    text-transform: none;
}

.form-container form .signUp-link p a{
    font-size: 1.5rem;
    text-decoration: none;
    color: var(--green);
}

.form-container form .signUp-link p a:hover{
    color: var(--dark-color);
    text-decoration: underline;
    padding-left: .5rem;
}

.form-container form .social-flatform{
    font-size: 1.4rem;
    color: var(--light-color);
    text-align: center;
}

.form-container form .social-flatform .social-icons a{
    display: inline-block;
    width: 3rem;
    height: 3rem;
    background: transparent;
    border: var(--border);
    border-color: var(--green);
    border-radius: 50%;
    text-align: center;
    line-height: 3rem;
    margin: .8rem .5rem 0;
}


.form-container form .social-flatform .social-icons a i{
    color: var(--green);
    font-size: 1.5rem;
    transition: .3s;
}


.form-container form .social-flatform .social-icons a:hover{
    background: var(--dark-color);
    color: #fff;
}

/* 
.form-container form .form-group .input-group i {
	position: absolute;
    font-size: 1.4rem;
	top: 50%;
	transform: translateY(-50%);
	right: 20px;
	color: var(--text);
	pointer-events: none;
	transition: all .3s ease;
}
.form-container form .form-group span {
	font-size: 1.2rem;
	text-transform: none;
}
/* 
.form-container form .remember{
    margin: 1.8rem .5rem .8rem .5rem;
}

.form-container form .remember label{
    color: var(--black);
    font-size: 1.3rem;
}

.form-container form .remember input{
    accent-color: var(--green);
} */


.form-container form .btn {
	text-align: center;
    width: 100%;
    margin: 1rem 0;
}

.form-container form .signUp-link{
    font-size: 1.5rem;
    text-align: center;
    margin: 1.5rem 0 ;
}

.form-container form .signUp-link a{
    text-decoration: none;
    color: var(--green);
    font-size: 1.4rem;
}

.form-container form .signUp-link a:hover{
    color: var(--dark-color);
    text-decoration: underline;
}

.form-container form .signUp-link p{
    color: var(--light-color);
    text-transform: none;
}

.form-container form .signUp-link p a{
    font-size: 1.5rem;
    text-decoration: none;
    color: var(--green);
}

.form-container form .signUp-link p a:hover{
    color: var(--dark-color);
    text-decoration: underline;
    padding-left: .5rem;
}

.form-container form .social-flatform{
    font-size: 1.4rem;
    color: var(--light-color);
    text-align: center;
}

.form-container form .social-flatform .social-icons a{
    display: inline-block;
    width: 3rem;
    height: 3rem;
    background: transparent;
    border: var(--border);
    border-color: var(--green);
    border-radius: 50%;
    text-align: center;
    line-height: 3rem;
    margin: .8rem .5rem 0;
}


.form-container form .social-flatform .social-icons a i{
    color: var(--green);
    font-size: 1.5rem;
    transition: .3s;
}


/* .form-container form .social-flatform .social-icons a:hover{
    background: var(--dark-color);
    color: #fff;
} */

/* .form-container form .social-flatform .social-icons a:hover i{
    color: #fff;
    font-size: 1.6rem;
} */



</style>
</head>
<body>

<section>
    <div class="form-container">
        <form action="" class="login active" method="post">
            <h3>sign in</h3>

            <div class="form-group">
                <label for="email">Email</label>
                <div class="input-group">
                    <input type="email" name="email" id="email" required placeholder="Email address">
                    <i class='bx bx-envelope'></i>
                </div>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <div class="input-group">
                    <input type="password" name="pass" required pattern=".{8,}" id="password"
                        placeholder="Your password">
                    <i class='bx bx-lock-alt'></i>
                </div>
                <span>At least 8 characters</span>
            </div>

            <input type="submit" class="btn" name="submit" value="sign in">

            <div class="signUp-link">
                <a href="#">Forgot password?</a>
                <p>I don't have an account. <a href="?act=res">sign up now</a></p>
            </div>

            <div class="social-flatform">
                <p>Or sign in with</p>
                <div class="social-icons">
                    <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                    <a href="#"><i class="fa-brands fa-google"></i></a>
                    <a href="#"><i class="fa-brands fa-twitter"></i></a>
                </div>
            </div>
        </form>
        <!-------------------- signin form --------------------->


    </div>
</section>

</body>
</html>




















