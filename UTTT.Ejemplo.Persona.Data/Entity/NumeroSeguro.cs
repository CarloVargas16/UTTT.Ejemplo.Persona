using System;

namespace UTTT.Ejemplo.Persona.Data.Entity
{
    public class NumeroSeguro
    {
        private int id;
        private int idPersona;
        private String strNumeroSeguro;
        private String strNumAsegurados;
        private String strTipoSangre;
        public String StrNumeroSeguro
        {
            get { return strNumeroSeguro; }
            set { strNumeroSeguro = value; }
        }
        public String StrNumAsegurados
        {
            get { return strNumAsegurados; }
            set { strNumAsegurados = value; }
        }
        public String StrTipoSangre
        {
            get { return strTipoSangre; }
            set { strTipoSangre = value; }
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

