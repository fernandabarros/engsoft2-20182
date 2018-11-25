<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="pt-BR">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimal-ui" />
	
	<title>Sistema de Matrículas</title>
	
	<link rel="icon" type="image/png" sizes="32x32" href="assets/img/icon.png">
	<link rel="stylesheet" href="assets/css/bootstrap.css" type="text/css">
	<link rel="stylesheet" href="assets/css/font-awesome/css/font-awesome.css" type="text/css">
	<link rel="stylesheet" href="assets/css/app.css" type="text/css">
	<link rel="stylesheet" href="assets/css/stylesheet.css" type="text/css">
</head>
<body>
	<div class="app" id="app">

        <!-- aside -->
        <div id="aside" class="app-aside modal nav-dropdown">
            <div class="left navside white dk" layout="column">
                <div class="navbar navbar-md no-radius mba-blue">
                    <!-- brand -->
                    <a class="navbar-brand">
                        <span class="hidden-folded inline">MATRÍCULAS</span>
                        <img src="assets/img/icon.png" alt=".">
                    </a>
                    <!-- / brand -->
                </div>
                <div class="no-radius mba-dark-blue mba-logged-user">
					<img src="assets/img/ellipse.png" alt="." height="40" width="40">
					<span>
						<p>Fulano da Silva</p>
						<p>Salvador - BA</p>
					</span>
                </div>
                <div class="hide-scroll" flex>
                    <nav class="scroll nav-light">
                        <ul class="nav">
                            <li class="nav-header hidden-folded">
                                <small class="text-muted">Principal</small>
                            </li>

                            <li>
                                <a href="#">
                                    <span class="nav-icon">
                                        <i class="fa fa-calendar-o"></i>
                                    </span>
                                    <span class="nav-text">Atividades</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="nav-icon">
                                        <i class="fa fa-history"></i>
                                    </span>
                                    <span class="nav-text">Histórico</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="nav-icon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <span class="nav-text">Comprovante de Matrícula</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="nav-icon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <span class="nav-text">Pré-Matrícula</span>
                                </a>
                            </li>
                            <li class="active">
                                <a href="#">
                                    <span class="nav-icon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <span class="nav-text">Transferência</span>
                                </a>
                            </li>

                            <li class="nav-header hidden-folded">
                                <small class="text-muted">Admin</small>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="nav-icon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <span class="nav-text">Alunos</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="nav-icon">
                                        <i class="fa fa-home"></i>
                                    </span>
                                    <span class="nav-text">Escolas</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="nav-icon">
                                        <i class="fa fa-comments"></i>
                                    </span>
                                    <span class="nav-text">Necessidades</span>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="nav-icon">
                                        <i class="fa fa-user"></i>
                                    </span>
                                    <span class="nav-text">Professores</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>

                <div class="no-radius mba-blue mba-logout">
					<a href="login.jsp">
						<span>Sair</span>
					</a>
                </div>
            </div>
        </div>
        <!-- / aside -->

        <!-- content -->
        <div id="content" class="app-content box-shadow-z0" role="main">
            <div class="app-header white box-shadow">
                <div class="navbar navbar-toggleable-sm flex-row align-items-center">
                    <!-- Naviation on mobile -->
                    <a data-toggle="modal" data-target="#aside" class="hidden-lg-up mr-3">
                        <i class="fa fa-bars"></i>
                    </a>
                    <!-- / Naviation on mobile -->

                    <!-- Page title -->
                    <div class="mb-0 h5 no-wrap" id="pageTitle">Painel</div>
                    <!-- / Page title -->
                </div>
            </div>
            <div class="app-footer">
                <div class="p-2 text-xs">
                    <div class="pull-right text-muted py-1">
                        &copy; Copyright <strong>MATRÍCULAS-BA</strong>
                    </div>
                    <div class="nav">
                        <a class="nav-link" href="#">Sobre</a>
                    </div>
                </div>
            </div>
            <div class="app-body" id="view">
                <div class="padding">
                	<div class="row">
						<div class="col-sm-4">
							<div class="box mba-fast-btn">
								<div class="box-body mba-blue">
									<span>Página Principal</span>
									<span class="float-right"><i class="fa fa-home"></i></span>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="box mba-fast-btn">
								<div class="box-body mba-blue">
									<span>Nova Atividade</span>
									<span class="float-right"><i class="fa fa-tasks"></i></span>
								</div>
							</div>
						</div>
						<div class="col-sm-4">
							<div class="box mba-fast-btn">
								<div class="box-body mba-blue">
									<span>Configurações</span>
									<span class="float-right"><i class="fa fa-gear"></i></span>
								</div>
							</div>
						</div>
                	</div>
                    <div class="row">
						<div class="col-sm-12">
							<div class="box">
								<!-- specific section -->
								<div class="box-header dker">
							    	<h3>Transferência</h3>
							    	<small>Efetuar transferência por listagem de escola</small>
							  	</div>
								<div class="box-body">
									<div class="row">
						    			<div class="col-md-8 offset-md-2">
						    				<form action="#" method="POST">
									            <div class="form-group row">
									                <label for="city" class="col-sm-2 form-control-label">Cidade</label>
									                <div class="col-sm-10">
									                    <select id="city" name="city" class="form-control c-select">
									                        <option value="" selected>Salvador</option>
									                        <option value="">Feira de Santana</option>
									                        <option value="">Camaçari</option>
									                    </select>
									                </div>
									            </div>
									            <div class="form-group row">
									                <label for="neighborhood" class="col-sm-2 form-control-label">Bairro</label>
									                <div class="col-sm-10">
									                    <select id="neighborhood" name="neighborhood" class="form-control c-select">
									                        <option value="" selected>Barbalho</option>
									                        <option value="">Ondina</option>
									                        <option value="">Barra</option>
									                        <option value="">Brotas</option>
									                    </select>
									                </div>
									            </div>
									            <div class="form-group row">
									                <label for="school" class="col-sm-2 form-control-label">Escola</label>
									                <div class="col-sm-10">
									                    <select id="school" name="school" class="form-control c-select">
									                        <option value="" selected>Escola Estadual Suzana Imbassahy</option>
									                        <option value="">Colégio Central da Bahia</option>
									                        <option value="">Colégio Estadual Odorico Tavares</option>
									                    </select>
									                </div>
									            </div>
									            <div class="form-group row">
									                <label for="reason" class="col-sm-2 form-control-label">Motivo</label>
									                <div class="col-sm-10">
									                	<textarea id="reason" name="reason" class="form-control" rows="5"></textarea>
									                </div>
									            </div>
									            <div class="form-group row m-t-md">
									                <div class="col-sm-10 offset-sm-2">
									                    <button type="submit" class="btn btn-fw primary">Comfirmar</button>
									                </div>
									            </div>
						    				</form>
						    			</div>
						    		</div>
								</div>
								<!-- specific section -->
							</div>
						</div>
					</div>
                </div>
            </div>
        </div>
        <!-- / content -->
    </div>

	<script src="assets/js/jquery-3.3.1.min.js"></script>
	<script src="assets/js/tether.min.js"></script>
	<script src="assets/js/bootstrap.js"></script>
	<script src="assets/js/jquery.mask.min.js"></script>
	<script src="assets/js/scripts.js"></script>
</body>
</html>