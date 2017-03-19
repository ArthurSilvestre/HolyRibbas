<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>
			Login - Controle Acadêmico
		</title>

		<!-- Compiled and minified CSS -->
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">
		
		<style type="text/css">
			footer.page-footer{
				background-color:#1250cc
			}
			html,
			body {
			    height: 100%;
			}
			html {
			    display: table;
			    margin: auto;
			}
			body {
			    display: table-cell;
			    vertical-align: middle;
			}
			.margin {
				margin: 0 !important;
			}		
			.btn, .btn-large{
				background-color: #1250cc;
			}
			input:not([type]):focus:not([readonly]),input[type=text]:focus:not([readonly]),input[type=password]:focus:not([readonly]),input[type=email]:focus:not([readonly]),input[type=url]:focus:not([readonly]),input[type=time]:focus:not([readonly]),input[type=date]:focus:not([readonly]),input[type=datetime]:focus:not([readonly]),input[type=datetime-local]:focus:not([readonly]),input[type=tel]:focus:not([readonly]),input[type=number]:focus:not([readonly]),input[type=search]:focus:not([readonly]),textarea.materialize-textarea:focus:not([readonly]) {
				border-bottom:1px solid #1250cc;
				box-shadow:0 1px 0 0 #1250cc
			}
			input:not([type]):focus:not([readonly])+label,input[type=text]:focus:not([readonly])+label,input[type=password]:focus:not([readonly])+label,input[type=email]:focus:not([readonly])+label,input[type=url]:focus:not([readonly])+label,input[type=time]:focus:not([readonly])+label,input[type=date]:focus:not([readonly])+label,input[type=datetime]:focus:not([readonly])+label,input[type=datetime-local]:focus:not([readonly])+label,input[type=tel]:focus:not([readonly])+label,input[type=number]:focus:not([readonly])+label,input[type=search]:focus:not([readonly])+label,textarea.materialize-textarea:focus:not([readonly])+label {
				color:#1250cc
			}
			.btn:hover, .btn-large:hover {
    			background-color: #1250cc;
			}
		</style>
		
	</head>
	<body>
		<!-- Header -->
	
		<!-- Body -->	
		<div id="login-page" class="row">
		  <div class="col s12 z-depth-6 card-panel">
		    <form class="login-form">
		      <div class="row">
		        <div class="input-field col s12 center">
		          <img src="http://commitsoft.com.br/img/fsfs.png" alt="" class="responsive-img valign profile-image-login" width="300" height="300">
		          <p class="center login-form-text">Login - Controle Acadêmico</p>
		        </div>
		      </div>
		      <div class="row margin">
		        <div class="input-field col s12">
		          <input class="validate" id="email" type="email">
		          <label for="email" data-error="wrong">Login</label>
		        </div>
		      </div>
		      <div class="row margin">
		        <div class="input-field col s12">
		          <input id="password" type="password">
		          <label for="password">Senha</label>
		        </div>
		      </div>
		      <div class="row">
		        <div class="input-field col s12">
		          <a href="mainpage.jsp" class="btn waves-effect waves-light col s12">Login</a>
		        </div>
		      </div>
		    </form>
		  </div>
		</div>
		  	
	    <!-- Footer -->
        <footer class="page-footer">
          <div class="footer-copyright">
            <div class="container">
            © 2017 Desenvolvido pelos alunos de CC
            </div>
          </div>
        </footer>

		<!-- Scripts -->
		<!-- jQuery Library -->
		<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<!--materialize js-->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/js/materialize.min.js"></script>

	</body>
</html>