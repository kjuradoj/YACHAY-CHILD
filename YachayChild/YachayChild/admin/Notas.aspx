<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="Notas.aspx.cs" Inherits="YachayChild.admin.Notas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form runat="server">
	<div class="all-title-box">
        <div class="container text-center">
            <h1>Notas<span class="m_1">Y A C H A Y   C H I L D.</span></h1>
        </div>
    </div>
	        <div id="overviews" class="section lb">
            <div class="container">
                <div class="section-title row text-center">
                    <div class="col-md-8 offset-md-2">
                        <h3>Mantenimientos de Notas</h3>
                        <p class="lead">Ofreciendo una alternativa de Educacion a un solo Click!</p>
                    </div>
                </div><!-- end title -->

                <div class="row align-items-center">
                        <div class="message-box">
                            <h4>Somos Yachay Child </h4>
                            <h2>Bienvenidos a una nueva opción de aprendizaje</h2>
                        <ul class="nav nav-tabs">
					<li><a data-toggle="tab">
                        <asp:LoginStatus runat="server" />
                    </a></li>

				        </ul>
                        <div class="container" >
                            <!--Controles del formulario-->

                            <div class="row">
                                <div class="col">
                                <label for="exampleInputEmail1">Codigo Nota:
                                    
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtCodNota" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="B">*</asp:RequiredFieldValidator>
                                                                   
                                </label>
                                <asp:TextBox runat="server" Id="txtCodNota" class="form-control"  placeholder="Codigo Nota" style="width:400px"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <label for="exampleInputEmail1">Codigo Alumno: 
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtCodAlum" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>

                                </label>

                                <asp:TextBox runat="server" Id="txtCodAlum" class="form-control" placeholder="Codigo Alumno" style="width:400px"/>
                                </div>
                                <div class="col">
                                <label for="exampleInputEmail1">Cod Curso: 
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtCodCurso" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>

                                </label>
                                    <asp:TextBox runat="server" Id="txtCodCurso" class="form-control" placeholder="Codigo Curso" style="width:400px"/>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                <label for="exampleInputEmail1">Nota Parcial: 
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtNotaPar" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>

                                </label>

                                <asp:TextBox runat="server" Id="txtNotaPar" class="form-control" placeholder="Nota Parcial" style="width:400px"/>
                                </div>
                                <div class="col">
                                <label for="exampleInputEmail1">Nota Final: 
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtNotaFinal" ErrorMessage="RequiredFieldValidator" ForeColor="#FF3300" ValidationGroup="A">*</asp:RequiredFieldValidator>

                                </label>
                                    <asp:TextBox runat="server" Id="txtNotaFinal" class="form-control" placeholder="Nota Final" style="width:400px"/>
                                </div>
                            </div>
                            
                            <br/>
                            
                            <p>
                                <asp:Button Text="Agregar" runat="server" Id="btnAgregar" class="btn btn-primary" ValidationGroup="A" OnClick="btnAgregar_Click" />
                                <asp:Button Text="Eliminar" runat="server" Id="btnEliminar"  class="btn btn-primary" ValidationGroup="B" OnClick="btnEliminar_Click"/>
                                <asp:Button Text="Actualizar" runat="server" Id="btnActualizar" class="btn btn-primary" ValidationGroup="A" OnClick="btnActualizar_Click" />
                
                            </p>
                            
                                Buscar: <asp:TextBox runat="server" ID="txtBuscar" />
                                           
                                 
                                <asp:DropDownList runat="server" ID="ddlCriterio">
                                    <asp:ListItem Text="Codigo" />
                                    <asp:ListItem Text="Nombre" />
                                </asp:DropDownList>
                                <asp:Button Text="Buscar" runat="server" id="btnBuscar"  class="btn btn-primary" OnClick="btnBuscar_Click" />
                            <br/><br/>
                            <div class="table-responsive"> 
                                <asp:GridView runat="server" ID="gvNotas" CssClass="table table-hover"></asp:GridView>
                                </div>
   
                        </div>
                        </div><!-- end messagebox -->

                </div>
                
            </div><!-- end container -->
        </div><!-- end section -->
    </form>
</asp:Content>


