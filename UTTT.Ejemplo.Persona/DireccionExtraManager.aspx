<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DireccionExtraManager.aspx.cs" Inherits="UTTT.Ejemplo.Persona.DireccionExtraManager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
   <script  src= "https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <title></title>
</head>
    <body>
    <form id="form1" runat="server">

         <div class="navbar bg-dark navbar-dark">
<br />

    
    <div class="container text-white">
            <h1>Direccion de los empleados</h1>
        </div>

        <div class="container text-white">
            <h4>
                <asp:Label ID="lblAccion" runat="server" Text="Accion" Font-Bold="True"></asp:Label>
            </h4>
        </div>
        </div>
        <br />
    <div class="container" style="font-family: Arial; font-size: medium; font-weight: bold">
        Ingresa los datos solicitantes </div>
        <br />
       
        <div class="container">
          <div class="row">

              <div class="col">
            Colonia:<br /><asp:TextBox 
                ID="txtColonia" runat="server" Width="249px" ViewStateMode="Disabled"></asp:TextBox>
                  <br />
           Calle:<br />
                  <asp:TextBox 
                ID="txtCalle" runat="server" Width="249px" ViewStateMode="Disabled"></asp:TextBox>
                  <br />
            Número:<br />
                  <asp:TextBox ID="txtNumero" runat="server" Width="248px" 
                ViewStateMode="Disabled"></asp:TextBox>
             </div>

           </div>
        </div>

   <br />
    <div class="container">
     
        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" 
            onclick="btnAceptar_Click" ViewStateMode="Disabled" class="btn btn-sm btn-success" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
            onclick="btnCancelar_Click" ViewStateMode="Disabled" class="btn btn-sm btn-danger"/>
    
    </div>
    </form>
</body>
</html>
