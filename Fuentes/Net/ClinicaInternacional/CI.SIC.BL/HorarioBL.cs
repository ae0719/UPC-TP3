﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CI.SIC.BE;
using CI.SIC.DA;

namespace CI.SIC.BL
{
    public class HorarioBL : BaseBL<HorarioBL>
    {
        public List<HorarioBE> Listado(string pTipo, int pId_consultorio)
        {
            List<HorarioBE> result = null;
            result = HorarioDA.Instancia.Listado(pTipo, pId_consultorio);
            return result;
        }

        public HorarioBE Registro(int pId_horario)
        {
            HorarioBE result = null;
            result = HorarioDA.Instancia.Registro(pId_horario);
            return result;
        }
    }
}
