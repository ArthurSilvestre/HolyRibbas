<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@page import="javax.persistence.EntityManager"%>
<%@ page import="com.holyribbas.dao.*" %>
<%@ page import="com.holyribbas.model.*" %>
<%@ page import="com.holyribbas.util.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<% EntityManagerUtil entityManagerUtil = new EntityManagerUtil(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no">
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
		<title>
			Main Page - Controle Academico
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
		  	
		  <% CursoDao cursoDao = new CursoDao(entityManagerUtil.getEntityManager()); %>	
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
			  
			  <a class="waves-effect waves-light btn"><i class="material-icons left">library_add</i>Novo</a>
			  
			  <div id="demo">
				  <!-- Responsive table starts here -->
				  <!-- For correct display on small screens you must add 'data-title' to each 'td' in your table -->
				  <div class="table-responsive-vertical shadow-z-1">
				  <!-- Table starts here -->
				  <table id="table" class="table table-hover table-mc-light-blue">
				      <thead>
				        <tr>
				          <th>ID</th>
				          <th>Nome</th>
				          <th>Tipo</th>
				        </tr>
				      </thead>
				      <tbody>
				        
				        <%  for (IAbstractEntity curso_abstract : cursoDao.findAll()) {  %>
					        <% Curso curso = (Curso) curso_abstract; %>
					        <tr>
					          <td> <%= curso.getId() %> </td>
					          <td> <%= curso.getNome() %> </td>
					          <td> <%= curso.getTipo() %> </td>
					          
					          <!--  <td data-title="Link">
					            <a href="https://github.com/zavoloklom/material-design-color-palette" target="_blank">GitHub</a>
					          </td> -->
					        </tr>				        
				        <%} %>
				      </tbody>
				    </table>
				  </div>
				</div>			  			
		  </div>

		  <% DisciplinaDao disciplinaDao = new DisciplinaDao(entityManagerUtil.getEntityManager()); %>
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
			  
			  <a class="waves-effect waves-light btn"><i class="material-icons left">library_add</i>Novo</a>
			  
			  <div id="demo">
				  <!-- Responsive table starts here -->
				  <!-- For correct display on small screens you must add 'data-title' to each 'td' in your table -->
				  <div class="table-responsive-vertical shadow-z-1">
				  <!-- Table starts here -->
				  <table id="table" class="table table-hover table-mc-light-blue">
				      <thead>
				        <tr>
				          <th>Codigo</th>
				          <th>Nome</th>
				          <th>Curso</th>
				        </tr>
				      </thead>
				      <tbody>
				        
				        <%  for (IAbstractEntity disciplina_abstract : disciplinaDao.findAll()) {  %>
					        <% Disciplina disciplina = (Disciplina) disciplina_abstract; %>
					        <tr>
					          <td> <%= disciplina.getId() %> </td>
					          <td> <%= disciplina.getNome() %> </td>
					          <td> <%= disciplina.getCurso().getNome() %> </td>
					          
					          <!--  <td data-title="Link">
					            <a href="https://github.com/zavoloklom/material-design-color-palette" target="_blank">GitHub</a>
					          </td> -->
					        </tr>				        
				        <%} %>
				      </tbody>
				    </table>
				  </div>
				</div>	
		  </div>

		  <% TurmaDao turmaDao = new TurmaDao(entityManagerUtil.getEntityManager()); %>
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
			  
			  <a class="waves-effect waves-light btn"><i class="material-icons left">library_add</i>Novo</a>
			  
			  <div id="demo">
				  <!-- Responsive table starts here -->
				  <!-- For correct display on small screens you must add 'data-title' to each 'td' in your table -->
				  <div class="table-responsive-vertical shadow-z-1">
				  <!-- Table starts here -->
				  <table id="table" class="table table-hover table-mc-light-blue">
				      <thead>
				        <tr>
				          <th>Codigo</th>
				          <th>Semestre</th>
				          <th>Disciplina</th>
				          <th>Curso</th>
				          <th>Professor</th>
				        </tr>
				      </thead>
				      <tbody>
				        
				        <%  for (IAbstractEntity turma_abstract : turmaDao.findAll()) {  %>
					        <% Turma turma = (Turma) turma_abstract; %>
					        <tr>
					          <td> <%= turma.getId() %> </td>
					          <td> <%= turma.getSemestre() %> </td>
					          <td> <%= turma.getDisciplina().getNome() %> </td>
					          <td> <%= turma.getDisciplina().getCurso().getNome() %> </td>
					          <td> <%= turma.getProfessor().getNome() %> </td>
					          
					          <!--  <td data-title="Link">
					            <a href="https://github.com/zavoloklom/material-design-color-palette" target="_blank">GitHub</a>
					          </td> -->
					        </tr>				        
				        <%} %>
				      </tbody>
				    </table>
				  </div>
				</div>	
		  </div>
		  
		  <% AlunoDao alunoDao = new AlunoDao(entityManagerUtil.getEntityManager()); %>
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
			  
			  <a class="waves-effect waves-light btn"><i class="material-icons left">library_add</i>Novo</a>
			  
			  <div id="demo">
				  <!-- Responsive table starts here -->
				  <!-- For correct display on small screens you must add 'data-title' to each 'td' in your table -->
				  <div class="table-responsive-vertical shadow-z-1">
				  <!-- Table starts here -->
				  <table id="table" class="table table-hover table-mc-light-blue">
				      <thead>
				        <tr>
				          <th>Matricula</th>
				          <th>Nome</th>
				          <th>Curso</th>
				        </tr>
				      </thead>
				      <tbody>
				        
				        <%  for (IAbstractEntity aluno_abstract : alunoDao.findAll()) {  %>
					        <% Aluno aluno = (Aluno) aluno_abstract; %>
					        <tr>
					          <td> <%= aluno.getMatricula() %> </td>
					          <td> <%= aluno.getNome() %> </td>
					          <td> <%= aluno.getCurso().getNome() %> </td>
					          
					          <!--  <td data-title="Link">
					            <a href="https://github.com/zavoloklom/material-design-color-palette" target="_blank">GitHub</a>
					          </td> -->
					        </tr>				        
				        <%} %>
				      </tbody>
				    </table>
				  </div>
				</div>	

		  </div>	
		  
		  <% ProfessorDao professorDao = new ProfessorDao(entityManagerUtil.getEntityManager()); %>
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
			  
			  <a class="waves-effect waves-light btn"><i class="material-icons left">library_add</i>Novo</a>
			  
			  <div id="demo">
				  <!-- Responsive table starts here -->
				  <!-- For correct display on small screens you must add 'data-title' to each 'td' in your table -->
				  <div class="table-responsive-vertical shadow-z-1">
				  <!-- Table starts here -->
				  <table id="table" class="table table-hover table-mc-light-blue">
				      <thead>
				        <tr>
				          <th>Codigo</th>
				          <th>Professor</th>
				        </tr>
				      </thead>
				      <tbody>
				        
				        <%  for (IAbstractEntity professor_abstract : professorDao.findAll()) {  %>
					        <% Professor professor = (Professor) professor_abstract; %>
					        <tr>
					          <td> <%= professor.getId() %> </td>
					          <td> <%= professor.getNome() %> </td>
					          
					          <!--  <td data-title="Link">
					            <a href="https://github.com/zavoloklom/material-design-color-palette" target="_blank">GitHub</a>
					          </td> -->
					        </tr>				        
				        <%} %>
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