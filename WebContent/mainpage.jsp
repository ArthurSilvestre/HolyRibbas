<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>
			Login - Controle Academico
		</title>

		<!-- Compiled and minified CSS -->
		<link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.0/css/materialize.min.css">

  		<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  
		<style type="text/css">
			footer.page-footer{
				background-color:#1250cc
			}
			nav {
    			background-color: #1250cc;
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
		  <nav class="nav-extended">
		    <div class="nav-wrapper">
		      <a href="#" class="brand-logo">Controle Academico</a>
		      <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">Menu</i></a>
		      <ul id="nav-mobile" class="right hide-on-med-and-down">
		        <li>Bem vindo {usuario.nome} ({usuario.tipo})</li>
		        <li><a href="collapsible.html">Sair</a></li>
		      </ul>
		      <ul class="side-nav" id="mobile-demo">
		        <li><a href="collapsible.html">Sair</a></li>
		      </ul>
		    </div>
		    <div class="nav-content">
		      <ul class="tabs tabs-transparent">
		        <li class="tab"><a href="#cursos" class="active" >Cursos</a></li>
		        <li class="tab"><a href="#disciplinas">Disciplinas</a></li>
		        <li class="tab"><a href="#turmas">Turmas</a></li>
		        <li class="tab"><a href="#alunos">Alunos</a></li>
		        <li class="tab"><a href="#professores">Professores</a></li>
		      </ul>
		    </div>
		  </nav>

		  <!-- Body -->	
		  	
		  <div id="cursos" class="col s12">
			  <h4>
				Listagem de cursos
			  </h1>

			  <div class="row">
			    <form class="col s12">
			      <div class="row">
			        <div class="col s12">
			          Buscar por nome:
			          <div class="input-field inline">
			            <input id="email" type="email">
			            <label for="email">Ex: Janio</label>
			          </div>
					  <a class="waves-effect waves-light btn"><i class="material-icons left">search</i>Pesquisar</a>	          
			        </div>
			      </div>
			    </form>
			  </div>
			  
			  <a class="waves-effect waves-light btn"><i class="material-icons left">library_add</i>Novo Curso</a>
			  
			  <div id="demo">
				  <!-- Responsive table starts here -->
				  <!-- For correct display on small screens you must add 'data-title' to each 'td' in your table -->
				  <div class="table-responsive-vertical shadow-z-1">
				  <!-- Table starts here -->
				  <table id="table" class="table table-hover table-mc-light-blue">
				      <thead>
				        <tr>
				          <th>ID</th>
				          <th>Name</th>
				          <th>Link</th>
				          <th>Status</th>
				        </tr>
				      </thead>
				      <tbody>
				        <tr>
				          <td data-title="ID">1</td>
				          <td data-title="Name">Material Design Color Palette</td>
				          <td data-title="Link">
				            <a href="https://github.com/zavoloklom/material-design-color-palette" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">2</td>
				          <td data-title="Name">Material Design Iconic Font</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/uqCsB" target="_blank">Codepen</a>
				            <a href="https://github.com/zavoloklom/material-design-iconic-font" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">3</td>
				          <td data-title="Name">Material Design Hierarchical Display</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/eNaEBM" target="_blank">Codepen</a>
				            <a href="https://github.com/zavoloklom/material-design-hierarchical-display" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">4</td>
				          <td data-title="Name">Material Design Sidebar</td>
				          <td data-title="Link"><a href="http://codepen.io/zavoloklom/pen/dIgco" target="_blank">Codepen</a></td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">5</td>
				          <td data-title="Name">Material Design Tiles</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/wtApI" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">6</td>
				          <td data-title="Name">Material Design Typography</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/IkaFL" target="_blank">Codepen</a>
				            <a href="https://github.com/zavoloklom/material-design-typography" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">7</td>
				          <td data-title="Name">Material Design Buttons</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/Gubja" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">In progress</td>
				        </tr>
				        <tr>
				          <td data-title="ID">8</td>
				          <td data-title="Name">Material Design Form Elements</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/yaozl" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">In progress</td>
				        </tr>
				        <tr>
				          <td data-title="ID">9</td>
				          <td data-title="Name">Material Design Email Template</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/qEVqzx" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">10</td>
				          <td data-title="Name">Material Design Animation Timing (old one)</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/Jbrho" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				      </tbody>
				    </table>
				  </div>
				</div>			  			
		  </div>
		  
		  <div id="disciplinas" class="col s12">
			  <h4>
				Listagem de disciplinas
			  </h1>

			  <div class="row">
			    <form class="col s12">
			      <div class="row">
			        <div class="col s12">
			          Buscar por nome:
			          <div class="input-field inline">
			            <input id="email" type="email">
			            <label for="email">Ex: Janio</label>
			          </div>
					  <a class="waves-effect waves-light btn"><i class="material-icons left">search</i>Pesquisar</a>	          
			        </div>
			      </div>
			    </form>
			  </div>
			  
			  <a class="waves-effect waves-light btn"><i class="material-icons left">library_add</i>Novo Curso</a>
			  
			  <div id="demo">
				  <!-- Responsive table starts here -->
				  <!-- For correct display on small screens you must add 'data-title' to each 'td' in your table -->
				  <div class="table-responsive-vertical shadow-z-1">
				  <!-- Table starts here -->
				  <table id="table" class="table table-hover table-mc-light-blue">
				      <thead>
				        <tr>
				          <th>ID</th>
				          <th>Name</th>
				          <th>Link</th>
				          <th>Status</th>
				        </tr>
				      </thead>
				      <tbody>
				        <tr>
				          <td data-title="ID">1</td>
				          <td data-title="Name">Material Design Color Palette</td>
				          <td data-title="Link">
				            <a href="https://github.com/zavoloklom/material-design-color-palette" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">2</td>
				          <td data-title="Name">Material Design Iconic Font</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/uqCsB" target="_blank">Codepen</a>
				            <a href="https://github.com/zavoloklom/material-design-iconic-font" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">3</td>
				          <td data-title="Name">Material Design Hierarchical Display</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/eNaEBM" target="_blank">Codepen</a>
				            <a href="https://github.com/zavoloklom/material-design-hierarchical-display" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">4</td>
				          <td data-title="Name">Material Design Sidebar</td>
				          <td data-title="Link"><a href="http://codepen.io/zavoloklom/pen/dIgco" target="_blank">Codepen</a></td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">5</td>
				          <td data-title="Name">Material Design Tiles</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/wtApI" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">6</td>
				          <td data-title="Name">Material Design Typography</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/IkaFL" target="_blank">Codepen</a>
				            <a href="https://github.com/zavoloklom/material-design-typography" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">7</td>
				          <td data-title="Name">Material Design Buttons</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/Gubja" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">In progress</td>
				        </tr>
				        <tr>
				          <td data-title="ID">8</td>
				          <td data-title="Name">Material Design Form Elements</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/yaozl" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">In progress</td>
				        </tr>
				        <tr>
				          <td data-title="ID">9</td>
				          <td data-title="Name">Material Design Email Template</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/qEVqzx" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">10</td>
				          <td data-title="Name">Material Design Animation Timing (old one)</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/Jbrho" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				      </tbody>
				    </table>
				  </div>
				</div>	
		  </div>
		  <div id="turmas" class="col s12">
			  <h4>
				Listagem de turmas
			  </h1>

			  <div class="row">
			    <form class="col s12">
			      <div class="row">
			        <div class="col s12">
			          Buscar por nome:
			          <div class="input-field inline">
			            <input id="email" type="email">
			            <label for="email">Ex: Janio</label>
			          </div>
			          Semestre:
			          <div class="input-field inline">
			            <input id="email" type="email">
			            <label for="email">Ex: Janio</label>
			          </div>
			          Curso:
					  <div class="input-field inline">
					    <select>
					      <option value="" disabled selected>Choose your option</option>
					      <option value="1">Option 1</option>
					      <option value="2">Option 2</option>
					      <option value="3">Option 3</option>
					    </select>
					    <label>Materialize Select</label>
					  </div>			          			          
					  <a class="waves-effect waves-light btn"><i class="material-icons left">search</i>Pesquisar</a>	          
			        </div>
			      </div>
			    </form>
			  </div>
			  
			  <a class="waves-effect waves-light btn"><i class="material-icons left">library_add</i>Novo Curso</a>
			  
			  <div id="demo">
				  <!-- Responsive table starts here -->
				  <!-- For correct display on small screens you must add 'data-title' to each 'td' in your table -->
				  <div class="table-responsive-vertical shadow-z-1">
				  <!-- Table starts here -->
				  <table id="table" class="table table-hover table-mc-light-blue">
				      <thead>
				        <tr>
				          <th>ID</th>
				          <th>Name</th>
				          <th>Link</th>
				          <th>Status</th>
				        </tr>
				      </thead>
				      <tbody>
				        <tr>
				          <td data-title="ID">1</td>
				          <td data-title="Name">Material Design Color Palette</td>
				          <td data-title="Link">
				            <a href="https://github.com/zavoloklom/material-design-color-palette" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">2</td>
				          <td data-title="Name">Material Design Iconic Font</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/uqCsB" target="_blank">Codepen</a>
				            <a href="https://github.com/zavoloklom/material-design-iconic-font" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">3</td>
				          <td data-title="Name">Material Design Hierarchical Display</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/eNaEBM" target="_blank">Codepen</a>
				            <a href="https://github.com/zavoloklom/material-design-hierarchical-display" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">4</td>
				          <td data-title="Name">Material Design Sidebar</td>
				          <td data-title="Link"><a href="http://codepen.io/zavoloklom/pen/dIgco" target="_blank">Codepen</a></td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">5</td>
				          <td data-title="Name">Material Design Tiles</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/wtApI" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">6</td>
				          <td data-title="Name">Material Design Typography</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/IkaFL" target="_blank">Codepen</a>
				            <a href="https://github.com/zavoloklom/material-design-typography" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">7</td>
				          <td data-title="Name">Material Design Buttons</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/Gubja" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">In progress</td>
				        </tr>
				        <tr>
				          <td data-title="ID">8</td>
				          <td data-title="Name">Material Design Form Elements</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/yaozl" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">In progress</td>
				        </tr>
				        <tr>
				          <td data-title="ID">9</td>
				          <td data-title="Name">Material Design Email Template</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/qEVqzx" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">10</td>
				          <td data-title="Name">Material Design Animation Timing (old one)</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/Jbrho" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				      </tbody>
				    </table>
				  </div>
				</div>	
		  </div>
		  
		  <div id="alunos" class="col s12">
			  <h4>
				Listagem de disciplinas
			  </h1>

			  <div class="row">
			    <form class="col s12">
			      <div class="row">
			        <div class="col s12">
			          Buscar por matricula:
			          <div class="input-field inline">
			            <input id="email" type="email">
			            <label for="email">Ex: Janio</label>
			          </div>
			          Nome:
			          <div class="input-field inline">
			            <input id="email" type="email">
			            <label for="email">Ex: Janio</label>
			          </div>
					  <a class="waves-effect waves-light btn"><i class="material-icons left">search</i>Pesquisar</a>	          
			        </div>
			      </div>
			    </form>
			  </div>
			  
			  <a class="waves-effect waves-light btn"><i class="material-icons left">library_add</i>Novo Curso</a>
			  
			  <div id="demo">
				  <!-- Responsive table starts here -->
				  <!-- For correct display on small screens you must add 'data-title' to each 'td' in your table -->
				  <div class="table-responsive-vertical shadow-z-1">
				  <!-- Table starts here -->
				  <table id="table" class="table table-hover table-mc-light-blue">
				      <thead>
				        <tr>
				          <th>ID</th>
				          <th>Name</th>
				          <th>Link</th>
				          <th>Status</th>
				        </tr>
				      </thead>
				      <tbody>
				        <tr>
				          <td data-title="ID">1</td>
				          <td data-title="Name">Material Design Color Palette</td>
				          <td data-title="Link">
				            <a href="https://github.com/zavoloklom/material-design-color-palette" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">2</td>
				          <td data-title="Name">Material Design Iconic Font</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/uqCsB" target="_blank">Codepen</a>
				            <a href="https://github.com/zavoloklom/material-design-iconic-font" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">3</td>
				          <td data-title="Name">Material Design Hierarchical Display</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/eNaEBM" target="_blank">Codepen</a>
				            <a href="https://github.com/zavoloklom/material-design-hierarchical-display" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">4</td>
				          <td data-title="Name">Material Design Sidebar</td>
				          <td data-title="Link"><a href="http://codepen.io/zavoloklom/pen/dIgco" target="_blank">Codepen</a></td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">5</td>
				          <td data-title="Name">Material Design Tiles</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/wtApI" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">6</td>
				          <td data-title="Name">Material Design Typography</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/IkaFL" target="_blank">Codepen</a>
				            <a href="https://github.com/zavoloklom/material-design-typography" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">7</td>
				          <td data-title="Name">Material Design Buttons</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/Gubja" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">In progress</td>
				        </tr>
				        <tr>
				          <td data-title="ID">8</td>
				          <td data-title="Name">Material Design Form Elements</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/yaozl" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">In progress</td>
				        </tr>
				        <tr>
				          <td data-title="ID">9</td>
				          <td data-title="Name">Material Design Email Template</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/qEVqzx" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">10</td>
				          <td data-title="Name">Material Design Animation Timing (old one)</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/Jbrho" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				      </tbody>
				    </table>
				  </div>
				</div>	

		  </div>	
		  
		  <div id="professores" class="col s12">
			  <h4>
				Listagem de turmas
			  </h1>

			  <div class="row">
			    <form class="col s12">
			      <div class="row">
			        <div class="col s12">
			          Buscar por nome:
			          <div class="input-field inline">
			            <input id="email" type="email">
			            <label for="email">Ex: Janio</label>
			          </div>
			          Disciplina: 
					  <div class="input-field inline">
					    <select>
					      <option value="" disabled selected>Choose your option</option>
					      <option value="1">Option 1</option>
					      <option value="2">Option 2</option>
					      <option value="3">Option 3</option>
					    </select>
					    <label>Materialize Select</label>
					  </div>			          			          
					  <a class="waves-effect waves-light btn"><i class="material-icons left">search</i>Pesquisar</a>	          
			        </div>
			      </div>
			    </form>
			  </div>
			  
			  <a class="waves-effect waves-light btn"><i class="material-icons left">library_add</i>Novo Curso</a>
			  
			  <div id="demo">
				  <!-- Responsive table starts here -->
				  <!-- For correct display on small screens you must add 'data-title' to each 'td' in your table -->
				  <div class="table-responsive-vertical shadow-z-1">
				  <!-- Table starts here -->
				  <table id="table" class="table table-hover table-mc-light-blue">
				      <thead>
				        <tr>
				          <th>ID</th>
				          <th>Name</th>
				          <th>Link</th>
				          <th>Status</th>
				        </tr>
				      </thead>
				      <tbody>
				        <tr>
				          <td data-title="ID">1</td>
				          <td data-title="Name">Material Design Color Palette</td>
				          <td data-title="Link">
				            <a href="https://github.com/zavoloklom/material-design-color-palette" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">2</td>
				          <td data-title="Name">Material Design Iconic Font</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/uqCsB" target="_blank">Codepen</a>
				            <a href="https://github.com/zavoloklom/material-design-iconic-font" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">3</td>
				          <td data-title="Name">Material Design Hierarchical Display</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/eNaEBM" target="_blank">Codepen</a>
				            <a href="https://github.com/zavoloklom/material-design-hierarchical-display" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">4</td>
				          <td data-title="Name">Material Design Sidebar</td>
				          <td data-title="Link"><a href="http://codepen.io/zavoloklom/pen/dIgco" target="_blank">Codepen</a></td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">5</td>
				          <td data-title="Name">Material Design Tiles</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/wtApI" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">6</td>
				          <td data-title="Name">Material Design Typography</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/IkaFL" target="_blank">Codepen</a>
				            <a href="https://github.com/zavoloklom/material-design-typography" target="_blank">GitHub</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">7</td>
				          <td data-title="Name">Material Design Buttons</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/Gubja" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">In progress</td>
				        </tr>
				        <tr>
				          <td data-title="ID">8</td>
				          <td data-title="Name">Material Design Form Elements</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/yaozl" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">In progress</td>
				        </tr>
				        <tr>
				          <td data-title="ID">9</td>
				          <td data-title="Name">Material Design Email Template</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/qEVqzx" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				        <tr>
				          <td data-title="ID">10</td>
				          <td data-title="Name">Material Design Animation Timing (old one)</td>
				          <td data-title="Link">
				            <a href="http://codepen.io/zavoloklom/pen/Jbrho" target="_blank">Codepen</a>
				          </td>
				          <td data-title="Status">Completed</td>
				        </tr>
				      </tbody>
				    </table>
				  </div>
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
		
		<script type="text/javascript">

		  $(document).ready(function() {
		    $('select').material_select();
		  });
		  $('select').material_select('destroy');		
		</script>
		
	</body>
</html>