using System;

namespace UTTT.Ejemplo.Persona.Data.Entity
{
    public class Directorio
    {
        private int id;
        private int idPersona;
        private String strTelefono;
        public String StrTelefono
        {
            get { return strTelefono; }
            set { strTelefono = value; }
        }

        public int IdPersona
        {
            get { return idPersona; }
            set { idPersona = value; }
        }

        public int Id
        {
            get { return id; }
            set { id = value; }
        }



    }
}
