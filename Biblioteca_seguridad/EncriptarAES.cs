using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security.Cryptography;
using System.IO;

namespace Biblioteca_seguridad { 
/// <summary>
/// Summary description for EncriptarAES
/// </summary>
public class EncriptarAES
{

    private static byte[] clave = { 1, 22, 19, 111, 24, 26,
           85, 45, 114, 184, 27, 111, 37, 112, 100, 200, 241,
           24, 175, 144, 173, 53, 196, 29, 24, 26, 17, 218,
           131, 236, 53, 209 };

    private static byte[] vector = { 146, 64, 191, 104, 123,
       3, 2, 1, 231, 121, 221, 112, 79, 32, 114, 1 };

    private ICryptoTransform enc, dec;
    private UTF8Encoding utf8;

    public EncriptarAES()
    {
        RijndaelManaged rm = new RijndaelManaged();
        enc = rm.CreateEncryptor(clave, vector);
        dec = rm.CreateDecryptor(clave, vector);
        utf8 = new UTF8Encoding();
    }

    public string Encriptar(string valor)
    {
        byte[] buffer = Transformar(utf8.GetBytes(valor), enc);
        return Convert.ToBase64String(buffer);
    }

    public string Desencriptar(string valor)
    {
        byte[] buffer = Convert.FromBase64String(valor);
        buffer = Transformar(buffer, dec);
        return utf8.GetString(buffer);
    }

    private byte[] Transformar(byte[] buffer, ICryptoTransform ict)
    {
        MemoryStream stream = new MemoryStream();
        using (var cs = new CryptoStream(stream, ict, CryptoStreamMode.Write))
        {
            cs.Write(buffer, 0, buffer.Length);
        }
        return stream.ToArray();
    }
}
}




