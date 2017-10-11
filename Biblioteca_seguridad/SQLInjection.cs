using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Biblioteca_seguridad
{
    public class SQLInjection
    {
        public bool caracteresInvalidos(string datoLeido)
        {
            bool estaNoOk = false;

            string[] caratecteresIncorrectos = new string[26];

            caratecteresIncorrectos[0] = "select";
            caratecteresIncorrectos[1] = "drop";
            caratecteresIncorrectos[2] = ";";
            caratecteresIncorrectos[3] = "--";
            caratecteresIncorrectos[4] = "insert";
            caratecteresIncorrectos[5] = "delete";
            caratecteresIncorrectos[6] = "update";
            caratecteresIncorrectos[7] = "xp_";
            caratecteresIncorrectos[8] = "#";
            caratecteresIncorrectos[9] = "%";
            caratecteresIncorrectos[10] = "&";
            caratecteresIncorrectos[11] = "union";
            caratecteresIncorrectos[12] = "'";
            caratecteresIncorrectos[13] = "(";
            caratecteresIncorrectos[14] = ")";
            caratecteresIncorrectos[15] = "/";
            caratecteresIncorrectos[16] = "\\";
            caratecteresIncorrectos[17] = ":";
            caratecteresIncorrectos[18] = ">";
            caratecteresIncorrectos[19] = "<";
            caratecteresIncorrectos[20] = "=";
            caratecteresIncorrectos[21] = "[";
            caratecteresIncorrectos[22] = "]";
            caratecteresIncorrectos[23] = "?";
            caratecteresIncorrectos[24] = "`";
            caratecteresIncorrectos[25] = "|";

            for (int i = 0; i < caratecteresIncorrectos.Length; i++)
            {
                int pos = -1;
                String datoAcomparar = datoLeido.ToLower();
                pos = datoAcomparar.IndexOf(caratecteresIncorrectos[i], 0);

                if (pos >= 0)
                {
                    estaNoOk = true;
                }
            }
            return estaNoOk;

        }
    }
}
