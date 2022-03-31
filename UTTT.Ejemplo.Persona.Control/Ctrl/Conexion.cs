using System;
using System.Data.SqlClient;

namespace UTTT.Ejemplo.Persona.Control.Ctrl
{
    public class Conexion
    {
        #region Variables

        #endregion

        #region Constructores
        public Conexion()
        {
        }
        #endregion


        public SqlConnection sqlConnection()
        {
#pragma warning disable CS0168 // La variable '_e' se ha declarado pero nunca se usa
            try
            {
                SqlConnection conexion = new SqlConnection("Data Source=CX-CORP04\\MSSQLSERVER12;Initial Catalog=Persona;User ID=sa;Password=sqlexpress");
                return conexion;
            }
            catch (Exception _e)
            {

            }
#pragma warning restore CS0168 // La variable '_e' se ha declarado pero nunca se usa
            return null;
        }
    }
}
