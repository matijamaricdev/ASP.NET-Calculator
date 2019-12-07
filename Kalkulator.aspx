<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Kalkulator.aspx.cs" Inherits="Kalkulatorr.Kalkulator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Prvi broj:
            <asp:TextBox ID="TextBoxPrviBroj" runat="server"></asp:TextBox>
            <br />
            <br />
            Drugi broj:
            <asp:TextBox ID="TextBoxDrugiBroj" runat="server"></asp:TextBox>
            <br />
            <br />
            Matematička operacija:
            <asp:DropDownList ID="DropDownListOperacija" runat="server">
                <asp:ListItem Value="+">Zbrajanje</asp:ListItem>
                <asp:ListItem Value="-">Oduzimanje</asp:ListItem>
                <asp:ListItem Value="* ">Množenje</asp:ListItem>
                <asp:ListItem Value="/">Dijeljenje</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="ButtonIzracunaj" runat="server" OnClick="ButtonIzracunaj_Click" Text="Izracunaj" />
            <br />
            <br />
            Rezultat: <asp:Label ID="LabelRezultat" runat="server"></asp:Label>
            <br />
            <br />
            Vrijeme obrade:
            <asp:Label ID="LabelVrijemeObrade" runat="server"></asp:Label>
            <br />
            <br />
            VVG stranica:
            <a href="http://www.vvg.hr">Veleučilište Velika Gorica</a>
            <br />
            <br />
            Osobni podatci: 
            
            <asp:Button ID="ButtonOsobniPodatci" runat="server" OnClick="ButtonOsobniPodatci_Click" Text="Klikni za osobne podatke" />
            <br />
            <br />
            Računajmo trigonometrijske funkcije:
            <br />
            <br />
            Prvi broj:
            <asp:TextBox ID="TextBoxTreciBroj" runat="server"></asp:TextBox>
            <br />
            <br />
            Matematička operacija:
            <asp:DropDownList ID="DropDownListTan" runat="server">
                <asp:ListItem Value="tg">Tangens</asp:ListItem>
                <asp:ListItem Value="ctg">Kotangens</asp:ListItem>
                <asp:ListItem Value="sin">Sinus</asp:ListItem>
                <asp:ListItem Value="cos">Kosinus</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" OnClick="ButtonIzracunaj_Click" Text="Izracunaj" />
            <br />
            <br />
            Rezultat: <asp:Label ID="LabelRezultatTrig" runat="server"></asp:Label>

            <br />
            <br />

            <table>
          <tr><td>&nbsp;</td></tr>
          <tr><td>
            <asp:Button ID="btnGenerateTable" runat="server" OnClick="btn_GenerateTable" Text="Kalkuliraj tablicu mnozenja" />
              <br />
              <asp:label id="lblPokaziRezultat" runat="server" xmlns:asp="#unknown"></asp:label></td></tr>
            </table>

        </div>
    </form>
</body>
</html>
