using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca.Clases
{
    public class UsuarioClass
    {
        private String _username;
        private String _pass;
        private String _nombre;

        public string Username
        {
            get
            {
                return _username;
            }

            set
            {
                _username = value;
            }
        }

        public string Pass
        {
            get
            {
                return _pass;
            }

            set
            {
                _pass = value;
            }
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

        public UsuarioClass(string username, string pass, string nombre)
        {
            this._username = username;
            this._pass = pass;
            this._nombre = nombre;
        }

        public UsuarioClass()
        {
            this._username = string.Empty;
            this._pass = string.Empty;
            this._nombre = string.Empty;
        }
    }
}
