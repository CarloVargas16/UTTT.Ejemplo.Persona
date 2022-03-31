using System;
using System.Net.Mail;

namespace UTTT.Ejemplo.Persona
{
    public partial class ErrorPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            enviar(PersonaPrincipal.error);
        }

        public void enviar(String error)
        {
            MailMessage correo = new MailMessage();
            correo.From = new MailAddress("tareaspruebascarlo@gmail.com", "CorreoPrueba", System.Text.Encoding.UTF8);//Correo de salida
            correo.To.Add("19300599@uttt.edu.mx"); //Correo destino?
            correo.Subject = "Correo de prueba"; //Asunto
            correo.Body = error; //Mensaje del correo
            correo.IsBodyHtml = true;
            correo.Priority = MailPriority.Normal;
            SmtpClient smtp = new SmtpClient();
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.gmail.com"; //Host del servidor de correo
            smtp.Port = 587; //Puerto de salida
            smtp.Credentials = new System.Net.NetworkCredential("tareaspruebascarlo@gmail.com", "159753zxcv!");//Cuenta de correo
            smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtp.EnableSsl = true;//True si el servidor de correo permite ssl
            smtp.Send(correo);
        }

    }
}