using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace CapaNegocio
{
    /**/
    
  

    /**/
   
    public class Usuario
    {
        
        private Usuario oDatos = new Usuario();
        //private cDatos oDatos = new cDatosSQL();
        // Cadena de conexion para acceder a SQL Server
        private static string cadena = @"Server=DESKTOP-7PR9IAG\MSSQLSERVER01;database=BDYachayChild;integrated Security=true";
        private static SqlConnection conexion = new SqlConnection(cadena);
        //private cDatos oDatos = new cDatosSQL();
        public string Usuario
        { get; set; }
        public string Contrasena
        { get; set; }

        public bool Login()
        {
            //try
            //{
            string consulta = "select count(*) from inicio where usuario='" + Usuario + "' and clave = '" + Contrasena + "'";
            SqlCommand comando = new SqlCommand(consulta, conexion);
            conexion.Open();
            int i = Convert.ToInt32(comando.ExecuteScalar());
            conexion.Close();
            if (i == 1) return true;
            else return false;
        }
        
        public DataTable Listar()
        {
            string consulta = "select * from TUsuario";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }
        private string mensaje;
        public string Mensaje
        {
            get { return mensaje; }
        }

        public string Recuperar()
        {
            try
            {
                DataRow oFila = oDatos.("usp_RecuperaCodigoUsuario", Usuario, Contrasena);
                string Cod = oFila["Usuario"].ToString();
                return Cod;
            }
            catch (Exception ex)
            { mensaje = ex.Message; return null; }
        }


        public string cargo;
        public string tipo;
        public bool Autenticar()//verificar()
        {
            try
            {
                SqlCommand SQLcmd1 = new SqlCommand("uspAutenticarUsuario", conexion);
                SQLcmd1.CommandType = CommandType.StoredProcedure;
                SQLcmd1.Parameters.Add(new SqlParameter(Usuario, Contrasena)); 
                SqlDataReader rdr = null; 
                rdr=SQLcmd1.ExecuteReader();
                
                var table = new DataTable();
                table.Load(rdr);
                DataRow oFila=table.Ro-- ///extraertoda la fila de consulta del SQL
                
                   
                int CodError = Convert.ToInt16(oFila["CodError"]); tipo = oFila["Mensaje"].ToString();
                if (CodError == 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            { mensaje = ex.Message; return false; 
            }
                
        }




    }
}
