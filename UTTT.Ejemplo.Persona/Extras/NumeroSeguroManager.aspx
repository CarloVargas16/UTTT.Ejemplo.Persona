<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NumeroSeguroManager.aspx.cs" Inherits="UTTT.Ejemplo.Persona.Extras.NumeroSeguroManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
            <h1>Numero de seguridad social y enfermedades</h1>
        </div>

        <div class="container text-white">
            <h4>
                  <asp:Label ID="lblAccion" runat="server" Text="Accion" Font-Bold="True"></asp:Label>
            </h4>
        </div>
        </div>
        <br />
        <div class="container">

       <div style="font-family: Arial; font-size: medium; font-weight: bold">
       Ingresa los datos requeridos</div>
            <br />

        <div class="col">
            NSS:<br />
            <asp:TextBox 
                ID="txtnss" runat="server" Width="249px" ViewStateMode="Disabled"></asp:TextBox>
        </div>

        <div class="col"> 
         Numero de Asegurados:<br />
            <asp:TextBox 
                ID="txtAsegurados" runat="server" Width="249px" ViewStateMode="Disabled"></asp:TextBox>
        </div>

        <div class="col">        
            Descripcion de los asegurados:
            <br />
            <asp:TextBox ID="txtDescripcion" runat="server" Width="248px" 
                ViewStateMode="Disabled"></asp:TextBox>
        
        </div>

        <div class="col">
            Uso de lentes:
            <br />
            <asp:TextBox ID="txtLentes" runat="server" Width="248px" 
                ViewStateMode="Disabled"></asp:TextBox>
        
        </div>
         <div class="col">
            Tipo de sangre:
             <br />
            <asp:TextBox ID="txtSangre" runat="server" Width="248px" 
                ViewStateMode="Disabled"></asp:TextBox>
        
        </div>

         <div class="col">    
            Peso : 
             <br />
            <asp:TextBox ID="txtPeso" runat="server" Width="248px" 
                ViewStateMode="Disabled"></asp:TextBox>
        
        </div>

         <div class="col">        
           Sufrio COVID19
             <br />
            <asp:TextBox ID="txtCovid" runat="server" Width="248px" 
                ViewStateMode="Disabled"></asp:TextBox>
        
        </div>
    <div> 
    
        <br />
    
    </div>
    <div>
        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" 
            onclick="btnAceptar_Click" ViewStateMode="Disabled" class="btn btn-small btn-primary" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
            onclick="btnCancelar_Click" ViewStateMode="Disabled" class="btn btn-small btn-danger" />
      
        </div>
            <br />
    </div>
    </form>
</body>
</html>
