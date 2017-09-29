using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca.Clases
{
    public class ComentarioClass
    {
        private string _nombre;
        private string _email;
        private string _mensaje;

        public ComentarioClass(string nombre, string email, string mensaje)
        {
            this._nombre = nombre;
            this._email = email;
            this._mensaje = mensaje;
        }

        public ComentarioClass()
        {
            this._nombre = string.Empty;
            this._email = string.Empty;
            this._mensaje = string.Empty;
        }

        public string Nombre
        {
            get
            {
                return _nombre;
            }

            set
            {
                _nombre = value;
            }
        }

        public string Email
        {
            get
            {
                return _email;
            }

            set
            {
                _email = value;
            }
        }

        public string Mensaje
        {
            get
            {
                return _mensaje;
            }

            set
            {
                _mensaje = value;
            }
        }
    }
}
