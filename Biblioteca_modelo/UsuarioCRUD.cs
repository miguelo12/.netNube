using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Biblioteca.Clases;
using System.Data.Entity;
using System.Data.Entity.Validation;

namespace Biblioteca_modelo
{
    public class UsuarioCRUD
    {
        private PruebaNubeEntities DB;
        private User usuario;
        public UsuarioClass usuarioclass;

        public UsuarioCRUD(UsuarioClass usuarioclass)
        {
            DB = new PruebaNubeEntities();
            usuario = new User();
            this.usuarioclass = usuarioclass;
        }

        public UsuarioCRUD()
        {
            DB = new PruebaNubeEntities();
            usuario = new User();
        }

        public void AddUser()
        {
            //user
            usuario.Username = usuarioclass.Username;
            usuario.Pass = usuarioclass.Pass;
            usuario.Nombre = usuarioclass.Nombre;

            //DB
            DB.User.Add(usuario);
            DB.SaveChanges();
        }

        public void DeleteUser()
        {

        }

        public void UpdateUser()
        {

        }

        public Boolean selectUserPass() {
            //user
            usuario.Username = usuarioclass.Username;
            usuario.Pass = usuarioclass.Pass;

            //Query
            var qUser = (from q in DB.User where q.Username==usuario.Username && q.Pass==usuario.Pass select q).Count() ;

            return qUser>0;
        }

        public Boolean selectUserName(String UserNameEntregado)
        {
            var encontrado = (from q in DB.User
                              where q.Username == UserNameEntregado
                              select q).Count();

            return encontrado > 0;
        }

        public String retornarContraseña()
        {
            //Considerenado que la contraseña ya esta encriptada
            usuario.Username = usuarioclass.Username;

            var qPass = (from q in DB.User
                         where q.Username == usuario.Username
                         select q.Pass);
            String pass_encontrada = qPass.First().ToString();
            return pass_encontrada;
        }


    }
}
