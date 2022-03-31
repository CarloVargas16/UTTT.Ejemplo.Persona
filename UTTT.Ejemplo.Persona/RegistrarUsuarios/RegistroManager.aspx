<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroManager.aspx.cs" Inherits="UTTT.Ejemplo.Persona.RegistrarUsuarios.RegistroManager" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
                     
                         <asp:Label ID="Label3" runat="server" Text="Persona:" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
                    
                     <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                         <ContentTemplate>
                             <asp:DropDownList ID="ddlPersona" runat="server"
                                 Height="40px" Width="253px"
                                 CssClass="form-control col-auto">
                             </asp:DropDownList>
                         </ContentTemplate>
                     </asp:UpdatePanel>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlPersona" EnableClientScript="False" ErrorMessage="Elija una persona" InitialValue="-1"></asp:RequiredFieldValidator>
                 </div>
 
                 <div class="row form-group">
                         <asp:Label ID="Label5" runat="server" Text="Nombre Usuario:" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
                     <asp:TextBox
                         ID="txtNombre" runat="server" Width="249px" ViewStateMode="Disabled" MaxLength="15" Class="form-control col-auto"></asp:TextBox>

                 </div>
                 <div class="row form-group">
                     
                         <asp:Label ID="Label6" runat="server" Text=" Contraseña:" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
                    
                      <asp:TextBox runat="server" ID="txtPassword" Width="249px" ViewStateMode="Disabled"  Class="form-control col-auto" MaxLength="20"></asp:TextBox>
                     </div>

                 <div class="row form-group">
                     
                         <asp:Label ID="Label7" runat="server" Text="Repetir Contraseña:" Font-Bold="True" class="col-sm-2 col-form-label"></asp:Label>
                    
                     <asp:TextBox runat="server" ID="txtPassword2" Width="249px" ViewStateMode="Disabled" Class="form-control col-auto" MaxLength="20"></asp:TextBox>
                 </div>
               
                 <div class="row form-group">
                     <asp:Label ID="lblEstadoEditar" runat="server" Visible="false" Font-Bold="True" class="col-sm-2 col-form-label">Estado Usuario</asp:Label>
                     <asp:DropDownList ID="ddlEstadoUsuario" runat="server"  Height="40px" Width="253px" CssClass="form-control col-auto">
                     </asp:DropDownList>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlEstadoUsuario" EnableClientScript="False" ErrorMessage="Elija Un Estado De Usuario" InitialValue="-1"></asp:RequiredFieldValidator>
                    </div>

                 <div class="row form-group">
                 <asp:Label ID="lblCalendar2" runat="server" Text="Fecha de Registro:" class="col-sm-2 col-form-label" Font-Bold="True"></asp:Label>
                 &nbsp;
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                         <ContentTemplate> 
                             <br />
                             <asp:Label ID="lblFormato" runat="server" Text="Formato yyyy/MM/dd" class="col-sm-2 col-form-label"></asp:Label>
                            <asp:TextBox ID="txtFechaNac2" placeholder="15/04/2021" runat="server"  MaxLength="10" class="form-control" Height="35px" Width="248px" pattern="(((19|20)([2468][048]|[13579][26]|0[48])|2000)[/-]02[/-]29|((19|20)[0-9]{2}[/-](0[4678]|1[02])[/-](0[1-9]|[12][0-9]|30)|(19|20)[0-9]{2}[/-](0[1359]|11)[/-](0[1-9]|[12][0-9]|3[01])|(19|20)[0-9]{2}[/-]02[/-](0[1-9]|1[0-9]|2[0-8])))"></asp:TextBox>
                             <asp:ImageButton ID="imbtnCalendar" runat="server" Height="25px" ImageUrl="~/Images/delrecord_16x16.png" Width="25px" />
                             <ajaxToolkit:CalendarExtender ID="CalendarExtender1" runat="server" Format="yyyy/MM/dd" PopupButtonID="imbtnCalendar" PopupPosition="BottomRight" TargetControlID="txtFechaNac2"></ajaxToolkit:CalendarExtender>
                             <asp:Label ID="lblCalendario" runat="server" ForeColor="Red" Text="." Visible="False"></asp:Label>
                             <asp:RequiredFieldValidator ID="rfvFechaNac" runat="server" ControlToValidate="txtFechaNac2" ErrorMessage="Seleccione la fecha"></asp:RequiredFieldValidator>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtFechaNac2" ErrorMessage="Fecha invalida" ValidationExpression="(((19|20)([2468][048]|[13579][26]|0[48])|2000)[/-]02[/-]29|((19|20)[0-9]{2}[/-](0[4678]|1[02])[/-](0[1-9]|[12][0-9]|30)|(19|20)[0-9]{2}[/-](0[1359]|11)[/-](0[1-9]|[12][0-9]|3[01])|(19|20)[0-9]{2}[/-]02[/-](0[1-9]|1[0-9]|2[0-8])))" ForeColor="#000099"></asp:RegularExpressionValidator>

                         </ContentTemplate>
                     </asp:UpdatePanel>

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
