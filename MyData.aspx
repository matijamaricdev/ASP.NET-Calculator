<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MyData.aspx.cs" Inherits="Kalkulatorr.MyData" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Ime: Matija<br />
            Prezime: Marić<br />
            Studij: Informacijski sustavi<br />
            Kolegij: ASP Web-programiranje<br />
            <asp:Button ID="ButtonVratiMe" runat="server" OnClick="ButtonVratiMe_Click" Text="Vrati me na kalkulator" />
        </div>
    </form>
</body>
</html>
