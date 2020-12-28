<%@ Page Title="" Language="C#" MasterPageFile="~/Intranet/Intranet.Master" AutoEventWireup="true" CodeBehind="Privado.aspx.cs" Inherits="YachayChild.Intranet.Privado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="carouselExampleControls" class="carousel slide bs-slider box-slider" data-ride="carousel" data-pause="hover" data-interval="false" >
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleControls" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleControls" data-slide-to="1"></li>
			<li data-target="#carouselExampleControls" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="carousel-item active">
				<div id="home" class="first-section" style="background-image:url('images/slider-01.jpg');">
					<div class="dtab">
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12 text-right">
									<div class="big-tagline">
										<h2><strong>YachayCHILD </strong> Educacion Online</h2>
										
									</div>
								</div>
							</div><!-- end row -->            
						</div><!-- end container -->
					</div>
				</div><!-- end section -->
			</div>
			<div class="carousel-item">
				<div id="home" class="first-section" style="background-image:url('Intranet/images/slider-02.jpg');">
					<div class="dtab">
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12 text-left">
									<div class="big-tagline">
										<h2 data-animation="animated zoomInRight">YachayCHILD <strong>Educacion Online</strong></h2>
										
									</div>
								</div>
							</div><!-- end row -->            
						</div><!-- end container -->
					</div>
				</div><!-- end section -->
			</div>
			<div class="carousel-item">
				<div id="home" class="first-section" style="background-image:url('Intranet/images/slider-03.jpg');">
					<div class="dtab">
						<div class="container">
							<div class="row">
								<div class="col-md-12 col-sm-12 text-center">
									<div class="big-tagline">
										<h2 data-animation="animated zoomInRight"><strong>YachayCHILD</strong> Educacion Online</h2>
										
									</div>
								</div>
							</div><!-- end row -->            
						</div><!-- end container -->
					</div>
				</div><!-- end section -->
			</div>
			<!-- Left Control -->
			<a class="new-effect carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
				<span class="fa fa-angle-left" aria-hidden="true"></span>
				<span class="sr-only">Previous</span>
			</a>

			<!-- Right Control -->
			<a class="new-effect carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
				<span class="fa fa-angle-right" aria-hidden="true"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>

<div>
             Este es un sitio Privado, donde solo ingresa Personal Autorizado
            <br />
            <br />
            Bienvenido:
            <asp:LoginName ID="LoginName1" runat="server" />
            <br />
            <br />
 
            <asp:LoginStatus ID="LoginStatus1" runat="server" />
            <p>
                <asp:Button Text="Actualizar" runat="server" ID="btnOpcion1" OnClick="btnOpcion1_Click" />
                <asp:Button Text="Opcion 2" runat="server" ID="btnOpcion2" OnClick="btnOpcion2_Click" />
                <asp:Button Text="Opcion 3" runat="server" ID="btnOpcion3" OnClick="btnOpcion3_Click" />
            </p>
            <p>
                <asp:MultiView ActiveViewIndex="0" runat="server" ID="mvEjemplo">
                    <asp:View runat="server">
                        <h1>Actualizacion de tus datos</h1>
                        <form>

    <div class="form-group"> <!-- Full Name -->
        <label for="full_name_id" class="control-label">Nombre de Usuario</label>
        <input type="text" class="form-control" id="usuario_id" name="full_name" placeholder="John1">
    </div>    

    <div class="form-group"> <!-- Street 1 -->
        <label for="street1_id" class="control-label">Nombres Completos</label>
        <input type="text" class="form-control" id="nombre_id" name="street1" placeholder="MAria">
    </div>                    
                            
    <div class="form-group"> <!-- Street 2 -->
        <label for="street2_id" class="control-label">Apellidos Completos</label>
        <input type="text" class="form-control" id="apellido_id" name="street2" placeholder="Pacheco Sanchez">
    </div>    
    <div class="form-group"> <!-- Zip Code-->
        <label for="zip_id" class="control-label">Correo</label>
        <input type="text" class="form-control" id="correo_id" name="zip" placeholder="ejemplo@mail.com">
    </div>                                    
                            
    <div class="form-group"> <!-- State Button -->
        <label for="state_id" class="control-label">Grado</label>
        <select class="form-control" id="grado_id">
            <option value="1">Primero</option>
            <option value="2">Segundo</option>
            <option value="3">Tercero</option>
            <option value="4">Cuarto</option>
            <option value="5">Quinto</option>
            <option value="6">Sexto</option>
        </select>                    
    </div>
    
     
    
    <div class="form-group"> <!-- Submit Button -->
        <button type="submit" class="btn btn-primary">Guardar Cambios</button>
    </div>     
    
</form>
                    </asp:View>
                    <asp:View runat="server">
                        opcion 2
                    </asp:View>
                    <asp:View runat="server">
                        Opcion 3
                    </asp:View>
                </asp:MultiView>
            </p>
        
        </div>
</asp:Content>
