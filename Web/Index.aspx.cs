using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca_modelo;
using Biblioteca.Clases;
using System.Web.Security;

namespace Web
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!(emails.Text.Trim().Equals("")) && !(mensaje.Text.Trim().Equals("")) && !(nombre.Text.Trim().Equals(""))) {
                ComentarioCRUD comentarioCRUD = new ComentarioCRUD();
                comentarioCRUD.comentarioclass = new ComentarioClass();
                comentarioCRUD.comentarioclass.Email = emails.Text;
                comentarioCRUD.comentarioclass.Nombre = nombre.Text;
                comentarioCRUD.comentarioclass.Mensaje = mensaje.Text;
                comentarioCRUD.AddComentario();
                Server.Transfer("Index.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (!(username.Text.Trim().Equals("")) && !(password.Text.Trim().Equals("")))
            {
                UsuarioCRUD usuarioCRUD = new UsuarioCRUD();
                usuarioCRUD.usuarioclass = new UsuarioClass();
                usuarioCRUD.usuarioclass.Username = username.Text;
                usuarioCRUD.usuarioclass.Pass = password.Text;
                if (usuarioCRUD.selectUserPass())
                {
                    FormsAuthentication.SetAuthCookie(username.Text, false);
                    Server.Transfer("CrudUsuario.aspx");
                }
            } 
        }

    }
}