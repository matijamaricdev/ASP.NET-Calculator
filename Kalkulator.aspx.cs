using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Kalkulatorr
{
    public partial class Kalkulator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonIzracunaj_Click(object sender, EventArgs e)
        {
            string currentTime = DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss");
            double prviBroj, drugiBroj, treciBroj, rezultat = 0, rezultatTrig = 0;
            double.TryParse(this.TextBoxPrviBroj.Text, out prviBroj);
            double.TryParse(this.TextBoxDrugiBroj.Text, out drugiBroj);
            switch (this.DropDownListOperacija.SelectedValue)
            {
                case "+":
                    rezultat = prviBroj + drugiBroj;
                    break;
                case "-":
                    rezultat = prviBroj - drugiBroj;
                    break;
                case "*":
                    rezultat = prviBroj * drugiBroj;
                    break;
                case "/":
                    rezultat = prviBroj / drugiBroj;
                    break;
            }

            this.LabelRezultat.Text = rezultat.ToString();
            this.LabelVrijemeObrade.Text = currentTime;

            double.TryParse(this.TextBoxTreciBroj.Text, out treciBroj);

            switch (this.DropDownListTan.SelectedValue)
            {
                case "tg":
                    rezultatTrig = Math.Tan(treciBroj);
                    break;
                case "ctg":
                    rezultatTrig = 1 / Math.Tan(treciBroj);
                    break;
                case "sin":
                    rezultatTrig = Math.Sin(treciBroj);
                    break;
                case "cos":
                    rezultatTrig = Math.Cos(treciBroj);
                    break;
            }

            
            this.LabelRezultatTrig.Text = rezultatTrig.ToString();
        }

        protected void ButtonOsobniPodatci_Click(object sender, EventArgs e)
        {
            Response.Redirect("MyData.aspx");
        }

        protected void btn_GenerateTable(object sender, EventArgs e)
        {
            int i, j;
            double result;
            StringBuilder sb = new StringBuilder();

            for (i = 1; i <= 10 ; i++)
            {
                for (j = 1; j <= 10; j++)
                {
                    result = Convert.ToDouble(i * j);
                    string tableFormat = "{0} * {1} = {2}";
                    sb.Append(String.Format(tableFormat, i, j, result));
                    sb.Append("        ");
                    sb.Append("|");
                    sb.Append("        ");
                }
                sb.Append(Environment.NewLine).Append("<br />");
            }
            lblPokaziRezultat.Text = sb.ToString();
        }
    }
}