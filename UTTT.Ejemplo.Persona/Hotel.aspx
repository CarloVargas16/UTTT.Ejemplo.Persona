<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Hotel.aspx.cs" Inherits="UTTT.Ejemplo.Persona.Hotel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>

     <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <div class="navbar-header">
     <a class="navbar-brand" href="#"><h5>BIENVENIDO</h5></a>
            </div>
     <div class="collapse navbar-collapse" id="navbarNav" >
       <ul class="navbar-nav">
         <li class="nav-item">
           <a class="nav-link" href="PersonaPrincipal.aspx"><h4>Persona Principal   <i class="bi bi-person"></i></h4><span class="sr-only"></span></a>
         </li>
         <li class="nav-item">
           <a class="nav-link" href="RegistrarUsuarios/RegistroPrincipal.aspx"><h4>Usuarios   <i class="bi bi-people"></i></h4><span class="sr-only"></span></a>
         </li>
           <li class="nav-item">
           <a class="nav-link" href="Login.aspx"><h4>Salir    <i class="bi bi-door-open"></i></h4> <span class="sr-only"></span></a>
         </li>
       </ul>
     </div>
   </nav>


    <form id="form1" runat="server">
        <div>

              <div class="container">
       <div class="row mt-1">
           
       </div>
        <div class="row justify-content-md-center  mt-3">
            <div class="col-md-5">
                <div class="efecto">
                <div class="card">
                    <img src="../Images/useer.png" class="card-img-top" alt="persona" height="250" />
                    <div class="sep">
                        <div class="wrapper">
                         <p class="slogan" style="text-align: justify;"><span> Bienvenido selecciona el campo a visitar en la parte superior de la pagina</span>.</p>
                        </div>
                   </div>
                </div>
            </div>
            </div>
        </div>
        <div class="row mt-3">
            <div class="mt-5">
           
            </div>
        </div>
    </div>



        </div>
    </form>
</body>
</html>
