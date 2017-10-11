using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;

/// <summary>
/// Summary description for Encriptar
/// </summary>
/// 
namespace Biblioteca_seguridad
{ 
public class EncriptarMD5
{
    public EncriptarMD5()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public String encriptarContrasenaMD5(String contrasena)
    {
        UnicodeEncoding codificar = new UnicodeEncoding();
        byte[] byteTexto = codificar.GetBytes(contrasena);

        MD5CryptoServiceProvider algoritmoMD5 = new MD5CryptoServiceProvider();

        byte[] byteHash = algoritmoMD5.ComputeHash(byteTexto);

        return Convert.ToBase64String(byteHash);

        //codificar = null;
        //byteTexto = null;
    }


    }
}