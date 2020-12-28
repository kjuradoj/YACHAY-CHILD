<%@ Page Title="" Language="C#" MasterPageFile="~/principal.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="YachayChild.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
		<div class="modal-content">
			<div class="modal-header tit-up">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Ingresar</h4>
			</div>
			<div class="modal-body customer-box">
				<!-- Nav tabs -->
				<ul class="nav nav-tabs">
					<li><a class="active" href="#Login" data-toggle="tab">Login</a></li>
					<li><a href="#Registration" data-toggle="tab">Registrarte</a></li>
				</ul>
				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane active" id="Login">
				<!-- 	<form role="form" class="form-horizontal"> 
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="email1" placeholder="Usuario" type="text">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="exampleInputPassword1" placeholder="Contraseña" type="text">
								</div>
							</div>
							<div class="row">
								<div class="col-sm-10">
									<button type="submit" class="btn btn-light btn-radius btn-brd grd1">
										Ingresar
									</button>
									<a class="for-pwd" href="javascript:;">olvidaste tu contraseña?</a>
								</div>
							</div>
						</form> -->
                        <form role="form" class="form-horizontal" runat="server">
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="txtCorreo" placeholder="Usuario" type="text">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<input class="form-control" id="txtContrasenia" placeholder="Contraseña" type="password">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<select data-val="true" class="form-control" id="txtRol" >
										<option>Select one</option>
										<option value="1">Alumno</option>
										<option value="2">Docente</option>
									</select>
								</div>
							</div>
							<div class="row">
								<div class="col-sm-10">
                                    <asp:Button Text="Ingresar" class="btn btn-light btn-radius btn-brd grd1" runat="server" OnClick="btnIngresar_Click" />
									<a class="for-pwd" href="javascript:;">olvidaste tu contraseña?</a>
								</div>
							</div>
                        </form>
                        

					</div>
					<div class="tab-pane" id="Registration">
						<form role="form" class="form-horizontal">
							<div class="form-group">
								<div class="col-sm-12">
									<input id="txtusuario" class="form-control" placeholder="Usuario" type="text" onclick="btnGuardar_Click">
								</div>
							</div>
							
							
							<div class="form-group" >
								<div class="col-sm-12">
									<input  class="form-control" id="btnclave" placeholder="Contraseña" type="password" >
                                    
								</div>
							</div>
							<div class="row">							
								<div class="col-sm-10">
									<button ID="btnGuardar" type="button" class="btn btn-light btn-radius btn-brd grd1">
										Guardar &amp; Continuar</button>
									<button ID="btnCancelar" type="button" class="btn btn-light btn-radius btn-brd grd1">
										Cancelar</button>
								</div>
							</div>
						</form>
					</div>


				</div>
			</div>
		</div>
	  </div>
	</div>
</asp:Content>

