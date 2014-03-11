﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CI.SIC.BE;
using CI.SIC.BL; 

public partial class GestionCitas_BuscarAgendaMedica : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Cargar();
        }
    }
    protected void grvAgendaMedica_SelectedIndexChanged(object sender, EventArgs e)
    {
        string codigo = grvAgendaMedica.SelectedRow.Cells[1].Text;
      

        //ClientScript.RegisterStartupScript(GetType(), "alert","<script language=JavaScript>alert(" + codigo  +  ");</script>");



        ClientScript.RegisterStartupScript(this.GetType(), "myScript", "<script>javascript:select(" + codigo + ");</script>");
    }

    private void Cargar()
    {
        grvAgendaMedica.DataSource = new BAgendaMedica().Listar(true);
        grvAgendaMedica.DataBind();

    }


}