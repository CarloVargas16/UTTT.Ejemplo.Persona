<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LibrosManager.aspx.cs" Inherits="UTTT.Ejemplo.Persona.Libreria.LibrosManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:ScriptManager ID="ScriptManager1" 
                               runat="server" />
        <br />
    <div style="font-family: Arial; font-size: medium; font-weight: bold">
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Label ID="lblPersona" runat="server" Text="Usuario" Font-Bold="True"></asp:Label>
    </div>
      
          <div class="row justify-content-md-center">
             <div>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
         <asp:Label ID="lblAccion" runat="server" Text="Accion" Font-Bold="True"></asp:Label>
        </div>
              </div>
              
 <br />
         <div class="container well">
                 
                 <div class="row form-group">
                     
                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                     </asp:UpdatePanel>
                 </div>

             <asp:Label ID="Label3" runat="server" Text="Persona:" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
                    
                     <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                         <ContentTemplate>
                             <asp:DropDownList ID="ddlPersona" runat="server"
                                 Height="40px" Width="253px"
                                 CssClass="form-control col-auto">
                             </asp:DropDownList>
                         </ContentTemplate>
                     </asp:UpdatePanel>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlPersona" EnableClientScript="False" ErrorMessage="Elija una ubicacion" InitialValue="-1"></asp:RequiredFieldValidator>


                 <br />


             <asp:Label ID="Label1" runat="server" Text="Ubicacion:" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
                    
                     <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                         <ContentTemplate>
                             <asp:DropDownList ID="ddlPertenencia" runat="server"
                                 Height="40px" Width="253px"
                                 CssClass="form-control col-auto">
                             </asp:DropDownList>
                         </ContentTemplate>
                     </asp:UpdatePanel>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlPertenencia" EnableClientScript="False" ErrorMessage="Elija una ubicacion" InitialValue="-1"></asp:RequiredFieldValidator>
                 </div>

                <asp:Label ID="Label2" runat="server" Text="Categoria:" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
                    
                     <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                         <ContentTemplate>
                             <asp:DropDownList ID="ddlCategoria" runat="server"
                                 Height="40px" Width="253px"
                                 CssClass="form-control col-auto">
                             </asp:DropDownList>
                         </ContentTemplate>
                     </asp:UpdatePanel>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlCategoria" EnableClientScript="False" ErrorMessage="Elija una ubicacion" InitialValue="-1"></asp:RequiredFieldValidator>
                 </div>
 
                 <div class="row form-group">
                         <asp:Label ID="Label5" runat="server" Text="Nombre del libro:" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
                     <asp:TextBox
                         ID="txtNombre" runat="server" Width="249px" ViewStateMode="Disabled" MaxLength="15" Class="form-control col-auto"></asp:TextBox>

                 </div>
                 <div class="row form-group">
                     
                         <asp:Label ID="Label6" runat="server" Text=" Paginas:" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
                    
                      <asp:TextBox runat="server" ID="txtPaginas" Width="249px" ViewStateMode="Disabled"  Class="form-control col-auto" MaxLength="20"></asp:TextBox>
                     </div>

                 <div class="row form-group">
                     
                         <asp:Label ID="Label7" runat="server" Text="Publicacion" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
                    
                     <asp:TextBox runat="server" ID="txtPublicacion" Width="249px" ViewStateMode="Disabled" Class="form-control col-auto" MaxLength="20"></asp:TextBox>
                 </div>
               
             </div>    
                 <div class="form-group">
                 <asp:Label ID="lblMensaje" runat="server" class="col-sm-2 col-form-label"></asp:Label>
                     <br />
                     <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" 
            onclick="btnAceptar_Click" ViewStateMode="Disabled" OnClientClick="return valid();" class="btn btn-primary"/>
        &nbsp;&nbsp;&nbsp;
                     <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" 
            onclick="btnCancelar_Click" ViewStateMode="Disabled" class="btn btn-warning"/>
                     <br />
                     <br />
                     <asp:Label ID="lblUser" runat="server"></asp:Label>
                     <div class="container body-content">
                     </div>

                 </div>
        </div>
    </form>
</body>
</html>
