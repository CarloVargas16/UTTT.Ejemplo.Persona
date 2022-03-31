using System;
using System.Collections.Generic;

namespace UTTT.Ejemplo.Persona.Control.Interface
{
    public interface IOperacion
    {
        bool insertar(Object _o);
        bool eliminar(Object _o);
        bool actualizar(Object _o);
        List<Object> consultarLista(Object _o);
        Object consultarItem(Object _o);
    }
}
