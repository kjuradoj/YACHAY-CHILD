using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using CapaNegocio;


namespace YachayChild
{
    public partial class principal : System.Web.UI.MasterPage
    {
        private Escuela escuela = new Escuela();
        private Usuario usuario = new Usuario();
        private Inicio inicio = new Inicio();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                gvUsuario.DataSource = usuario.Listar();
                gvUsuario.DataBind();
            }
        }
        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Registro Complessssto!');</script>");

            usuario.CodUsuario = txtCorreoI.Text.Trim();
            usuario.Contrasena = txtContraI.Text.Trim();

            if (usuario.Login() == true)
                FormsAuthentication.RedirectFromLoginPage(usuario.CodUsuario, false);
            else
                Response.Write("<script>alert('error: no se agregooo';</script>)");
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Registro Completo!');</script>");

            /*string usuario = txtusuario;
            string clave = lInicio.txtclave;
            usuario.CodUsuario = txtusuario.Text.Trim();
            usuario.Contrasena = txtclave.Text.Trim();
            if (usuario.Agregarinicio() == true)
                ListarUsuario();
            else
                Response.Write("<script>alert('error: no se agregooo';</script>)");*/
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string usuario = Request.Form["usuario"];
            string clave = Request.Form["clave"];
            //usuario.CodUsuario = txtusuario.Text.Trim();
            //usuario.Contrasena = txtclave.Text.Trim();
            if (inicio.AgregarInicio() == true)
                Response.Write("<script>alert('ok';</script>)");
            else
                Response.Write("<script>alert('error: no se agregooo';</script>)");
        }
        protected void btnCancelar_Click(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string Usuario = Login1.UserName;
            string Contrasena = Login1.Password;
            //string password = FormsAuthentication.HashPasswordForStoringInConfigFile(Login1.Password, "SHA1");
            //cResponsable oResponsable = new cResponsable();
            Usuario oUsuario = new Usuario();
            oUsuario.Usuario = Usuario;
            oUsuario.Contrasena = Contrasena;
            if (oUsuario.Autenticar())
            {
                string cargo = oUsuario.cargo;
                Session["Cargo"] = cargo;
                Session["Usuario"] = Usuario;
                Login1.FailureText = "Bienvenido " + cargo;
                FormsAuthentication.RedirectFromLoginPage(Usuario, false);
                Usuario odo = new Usuario();
                odo.Usuario = Usuario;
                odo.Contrasena = Contrasena;
                Session["Id"] = odo.Recuperar();
                Usuario oRespo = new Usuario();
                oRespo.Usuario = Usuario;
                oRespo.Contrasena = Login1.Password;
                Session["Id"] = oRespo.Recuperar();
            }
            else
                Login1.FailureText = "Usuario y/o contraseñas Incorrectas";
        }
    }
}