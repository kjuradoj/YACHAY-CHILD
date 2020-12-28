using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CapaNegocio;

namespace YachayChild.Intranet
{
    public partial class Privado : System.Web.UI.Page
    {
        private Escuela escuela = new Escuela();
        private Usuario usuario = new Usuario();

        private void Listar()
        {
            //gvEscuela.DataSource = escuela.Listar();
            //gvEscuela.DataBind();
        }

        private void ListarUsuario()
        {
            //gvUsuario.DataSource = usuario.Listar();
            //gvUsuario.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
                Listar();
            ListarUsuario();
        }

        protected void btnOpcion1_Click(object sender, EventArgs e)
        {
            //ACTIVAR VISTA 1
            mvEjemplo.ActiveViewIndex = 0;
        }

        protected void btnOpcion2_Click(object sender, EventArgs e)
        {
            //ACTIVAR VISTA 2
            mvEjemplo.ActiveViewIndex = 1;
        }

        protected void btnOpcion3_Click(object sender, EventArgs e)
        {
            //ACTIVAR VISTA 3
            mvEjemplo.ActiveViewIndex = 2;
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            //CAMBIAR A COD USUARIO EN L TABLA USUARIO
            /*string codusuario = txtCodEscuela.Text.Trim();
            string nombre = txtNombre.Text.Trim();
            Escuela escuela = new Escuela();
            escuela.CodEscuela = codEscuela;
            escuela.Nombre = nombre;
            if (escuela.Agregar() == true)
                Listar();
            else
                Response.Write("Error no se agregado correctamente");*/
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            //CAMBIAR A COD USUARIO EN L TABLA USUARIO
           /* Escuela escuela = new Escuela();
            escuela.CodEscuela = txtCodEscuela.Text.Trim();
            if (escuela.Eliminar())
                Listar();
            else Response.Write("Error al eliminar Escuela");*/
        }

        protected void btnAgregarUsuario_Click(object sender, EventArgs e)
        {
            /*usuario.CodUsuario = txtCodUsurio.Text.Trim();
            usuario.Contrasena = txtContrasena.Text.Trim();
            if (usuario.Agregar() == true)
                ListarUsuario();
            else
                Response.Write("<script>alert('error: no se agregooo';</script>)");*/
        }


    }
}