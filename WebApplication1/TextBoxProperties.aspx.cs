﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WebForm7 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Focus();
            TextBox2.Focus();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("hello "+TextBox1.Text+ "</br>");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Response.Write("Text changed" + "</br>");
        }
    }
}