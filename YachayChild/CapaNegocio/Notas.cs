using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace CapaNegocio
{
    public class Notas
    {
        private static string cadena = @"Server=DESKTOP-7PR9IAG\MSSQLSERVER01;database=BDYachayChild;integrated Security=true";
        private static SqlConnection conexion = new SqlConnection(cadena);
        public string CodNota
        { get; set; }
        public string CodAlumno
        { get; set; }
        public string CodCurso
        { get; set; }
        public string NotaParcial
        { get; set; }
        public string NotaFinal
        { get; set; }

        public DataTable Listar()
        {
            /*
            string consulta = "select * from TUsuario";
            SqlDataAdapter adapter = new SqlDataAdapter(consulta, conexion);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
            */

            SqlCommand comando = new SqlCommand("spListarNotas", conexion);
            comando.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter adapter = new SqlDataAdapter(comando);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }

        public bool Agregar()
        {
            SqlCommand comando = new SqlCommand("spAgregarNotas", conexion);
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@CodEstudiante", CodAlumno);
            comando.Parameters.AddWithValue("@Curso", CodCurso);
            comando.Parameters.AddWithValue("@notaParcial", NotaParcial);
            comando.Parameters.AddWithValue("@notaFinal", NotaFinal);
            conexion.Open();
            byte i = Convert.ToByte(comando.ExecuteNonQuery());
            conexion.Close();
            if (i == 2) return true;
            else return false;
        }

        public bool Actualizar()
        {
            SqlCommand comando = new SqlCommand("spActualizarNotas", conexion);
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@codnota", CodNota);
            comando.Parameters.AddWithValue("@CodEstudiante", CodAlumno);
            comando.Parameters.AddWithValue("@Curso", CodCurso);
            comando.Parameters.AddWithValue("@notaParcial", NotaParcial);
            comando.Parameters.AddWithValue("@notaFinal", NotaFinal);
            conexion.Open();
            byte i = Convert.ToByte(comando.ExecuteNonQuery());
            conexion.Close();
            if (i == 2) return true;
            else return false;
        }

        public bool Eliminar()
        {
            SqlCommand comando = new SqlCommand("spEliminarNotas", conexion);
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@codnota", CodNota);
            conexion.Open();
            byte i = Convert.ToByte(comando.ExecuteNonQuery());
            conexion.Close();
            if (i == 2) return true;
            else return false;
        }
        public DataTable Buscar(string texto, string criterio)
        {
            SqlCommand comando = new SqlCommand("spBuscarNotas", conexion);
            comando.CommandType = CommandType.StoredProcedure;
            comando.Parameters.AddWithValue("@Texto", texto);
            comando.Parameters.AddWithValue("@Criterio", criterio);
            SqlDataAdapter adapter = new SqlDataAdapter(comando);
            DataTable tabla = new DataTable();
            adapter.Fill(tabla);
            return tabla;
        }


    }
}
