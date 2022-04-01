<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DireccionManager.aspx.cs" Inherits="UTTT.Ejemplo.Persona.DireccionManager" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <meta charset="utf-8">
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
        <div class="container">
            <asp:Label ID="lblPersona" runat="server" Text="Persona:"></asp:Label>
&nbsp;&nbsp;
            <asp:Label ID="txtPersona" runat="server" Text="Persona"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAgregar" runat="server" Text="Agregar" 
            onclick="btnAgregar_Click" ViewStateMode="Disabled" class="btn btn-primary btn-sm" />

            &nbsp;&nbsp;&nbsp; <asp:Button ID="btnRegresar" runat="server" OnClick="btnRegresar_Click" Text="Regresar" class="btn btn-danger btn-sm" />

        </div>
        <div>

            &nbsp;&nbsp;&nbsp;&nbsp;</div>
        <div class="table-bordered table-sm table-responsive-xxl container">
            <table class="table">
            <asp:GridView ID="dgvDireccion" runat="server" AutoGenerateColumns="False" 
                DataSourceID="LinqDataSourceDireccion" Width="1062px" BackColor="White" 
                BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                GridLines="Horizontal" onrowcommand="dgvDireccion_RowCommand">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" 
                        SortExpression="id" Visible="False" />
                    <asp:BoundField DataField="strColonia" HeaderText="Colonia" ReadOnly="True" 
                        SortExpression="strColonia" />
                    <asp:BoundField DataField="strCalle" HeaderText="Calle" ReadOnly="True" 
                        SortExpression="strCalle" />
                    <asp:BoundField DataField="strNumero" HeaderText="Número" ReadOnly="True" 
                        SortExpression="strNumero" />
                        <asp:TemplateField HeaderText="Editar">
                        <ItemTemplate>
                                    <asp:ImageButton runat="server" ID="imgEditar" CommandName="Editar" CommandArgument='<%#Bind("id") %>' ImageUrl="~/Images/editrecord_16x16.png" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                    
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Eliminar" Visible="True">
                            <ItemTemplate>
                                <asp:ImageButton runat="server" ID="imgEliminar" CommandName="Eliminar" CommandArgument='<%#Bind("id") %>' ImageUrl="~/Images/delrecord_16x16.png" OnClientClick="javascript:return confirm('¿Está seguro de querer eliminar el registro seleccionado?', 'Mensaje de sistema')"/>
                            </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
                </table>
        </div>
        <div>

            <asp:LinqDataSource ID="LinqDataSourceDireccion" runat="server" 
                ContextTypeName="UTTT.Ejemplo.Linq.Data.Entity.DcGeneralDataContext" 
                EntityTypeName="" Select="new (id, strCalle, strNumero, strColonia)" 
                TableName="Direccion" onselecting="LinqDataSourceDireccion_Selecting">
            </asp:LinqDataSource>

        </div>
    </form>
</body>
</html>
