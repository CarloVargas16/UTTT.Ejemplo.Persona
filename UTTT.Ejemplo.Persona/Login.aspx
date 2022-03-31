<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="UTTT.Ejemplo.Persona.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                Email:
          <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <br />
                Contraseña:
            <asp:TextBox ID="txtContraseña" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesion" OnClick="btnLogin_Click" />
            <br />
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Olvidaste tu contraseña</asp:LinkButton>
            <br />
            <asp:Label ID="lblErrores" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
