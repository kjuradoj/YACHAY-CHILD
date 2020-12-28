using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace CapaNegocio
{
    public class Inicio
    {

        //CAdena de conexion para acceder a SQL server
        private static string cadena = @"Server=DESKTOP-7PR9IAG\MSSQLSERVER01;database=BDYachayChild;integrated Security=true";
        private static SqlConnection conexion = new SqlConnection(cadena);

        //Inicio 
        public string usuario
        { get; set; }
        public string clave
        { get; set; }

        public DataTable ListarInicio()
        {
            string consulta = "select * from inicio";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }

        public bool AgregarInicio()
        {
            try
            {
                string consulta = "insert into inicio values('" + usuario + "','" + clave + "')";
                SqlCommand comando = new SqlCommand(consulta, conexion);
                conexion.Open();
                //ejecutar la instrucion
                byte i = Convert.ToByte(comando.ExecuteNonQuery());
                conexion.Close();
                if (i == 1) return true;
                else return false;
            }
            catch
            {
                return false;
            }
            finally
            {
                conexion.Close();
            }

        }

        public bool Eliminar()
        {
            try
            {
                string consulta = "delete from tusuario where codusuario='" + usuario + "'";
                SqlCommand comando = new SqlCommand(consulta, conexion);
                conexion.Open();
                //ejecutar la instrucion
                byte i = Convert.ToByte(comando.ExecuteNonQuery());
                conexion.Close();
                if (i == 1) return true;
                else return false;
            }
            catch
            {
                return false;
            }
            finally
            {
                conexion.Close();
            }

        }
    }
}
