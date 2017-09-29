using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Biblioteca.Clases;

namespace Biblioteca_modelo
{
    public class ComentarioCRUD
    {
        private Comentario comentario;
        private PruebaNubeEntities DB;
        public ComentarioClass comentarioclass;

        public ComentarioCRUD(ComentarioClass comentarioclass)
        {
            DB = new PruebaNubeEntities();
            comentario = new Comentario();
            this.comentarioclass = comentarioclass;
        }

        public ComentarioCRUD()
        {
            DB = new PruebaNubeEntities();
            comentario = new Comentario();
        }

        public void AddComentario()
        {
            //user
            comentario.Nombre = comentarioclass.Nombre;
            comentario.Email = comentarioclass.Email;
            comentario.Texto = comentarioclass.Mensaje;

            //DB
            DB.Comentario.Add(comentario);
            DB.SaveChanges();
        }

        public void DeleteComentario()
        {

        }

        public void UpdateComentario()
        {

        }

    }
}
