using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Biblioteca_modelo;
using Biblioteca.Clases;
using System.Web.Security;
using Biblioteca_seguridad;
using System.Web.Services;
using System.Net;

namespace Web
{
    public partial class Index : System.Web.UI.Page
    {
        protected static string ReCaptcha_Key = "6LczdDUUAAAAAM5nwb215nQGfgvL5OvjN3dC1qBr";
        protected static string ReCaptcha_Secret = "6LczdDUUAAAAAB-qDloMpkSBHwHVAWTYnzpjBOCI";

        [WebMethod]
        public static string VerifyCaptcha(string response)
        {
            string url = "https://www.google.com/recaptcha/api/siteverify=" + ReCaptcha_Secret + "&response=" + response;
            return (new WebClient()).DownloadString(url);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                bool val1 = (System.Web.HttpContext.Current.User != null) && System.Web.HttpContext.Current.User.Identity.IsAuthenticated;

                if (val1)
                {
                    Server.Transfer("CrudUsuario.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!(emails.Text.Trim().Equals("")) && !(mensaje.Text.Trim().Equals("")) && !(nombre.Text.Trim().Equals(""))) {
                SQLInjection auxSQL = new SQLInjection();

                if (!auxSQL.caracteresInvalidos(emails.Text) && !auxSQL.caracteresInvalidos(mensaje.Text) && !auxSQL.caracteresInvalidos(nombre.Text))
                {
                    ComentarioCRUD comentarioCRUD = new ComentarioCRUD();
                    comentarioCRUD.comentarioclass = new ComentarioClass();
                    comentarioCRUD.comentarioclass.Email = emails.Text;
                    comentarioCRUD.comentarioclass.Nombre = nombre.Text;
                    comentarioCRUD.comentarioclass.Mensaje = mensaje.Text;
                    comentarioCRUD.AddComentario();
                    Server.Transfer("Index.aspx");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SQLInjection auxSQL = new SQLInjection();

            if (!auxSQL.caracteresInvalidos(username.Text) && !auxSQL.caracteresInvalidos(password.Text))
            {
                EncriptarSHA512 encriptarSHA = new EncriptarSHA512();
                String auxClaveDigitada = encriptarSHA.encriptarSHA512(this.password.Text);
                UsuarioCRUD auxCrud = new UsuarioCRUD();

                if (auxCrud.selectUserName(username.Text))
                {
                    //Existe Usuario Ahora comparar sus contraseñas
                    UsuarioCRUD usuarioCRUD = new UsuarioCRUD();
                    usuarioCRUD.usuarioclass = new UsuarioClass();
                    usuarioCRUD.usuarioclass.Username = username.Text;

                    if (usuarioCRUD.retornarContraseña().Equals(auxClaveDigitada))
                    {
                        //Ambas Contraseñas iguales entonces entra
                        FormsAuthentication.RedirectFromLoginPage(username.Text, false);
                    }
                    else
                    {
                        Msg.Text = "ContraseñaIncorrecta. Porfavor intentelo denuevo.";
                    }
                }
                else
                {
                    //No existe Usuario
                    Msg.Text = "No existe Usuario. Porfavor intentelo denuevo.";
                }
            }
            else
            {
                //intento de sqlInjection
                Msg.Text = "Credenciales Incorrectas. Porfavor intentelo denuevo.";
            }

        }

    }
}