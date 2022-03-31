using System;
using System.Net;
using System.Net.Mail;

namespace UTTT.Ejemplo.Persona.Control.Ctrl
{
    public class CtrlContraseña
    {
        public bool recoveryPasswordEmail(String email, String name, String token)
        {
            try
            {

                MailMessage mailMessage = new MailMessage();
                SmtpClient smtpClient = new SmtpClient();
                mailMessage.From = new MailAddress("tareaspruebascarlo@gmail.com");
                mailMessage.To.Add(new MailAddress(email));
                mailMessage.Subject = "Recuperar contraseña";
                mailMessage.IsBodyHtml = true;
                mailMessage.Body = this.enviarCorreo(name, token);
                smtpClient.Port = 587;
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = false;
                smtpClient.Credentials = new NetworkCredential("tareaspruebascarlo@gmail.com", "159753zxcv!");
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpClient.Send(mailMessage);
                return true;
            }
            catch (Exception _e)
            {

                return false;
            }
        }
        private String enviarCorreo(String name, String token)
        {
            String prodUrl = "http://localhost:36683/RegistrarUsuarios/ContraseñaManager.aspx?token=" + token;
            String body = "<h2>Hola " + name + "</h2><br>" +
                "<p>¿Quieres restablecer tu contraseña? Accede a este Link" +
                " </p>" +
                "<a href='" + prodUrl + "'>Restablecer contraseña</a>";
            return body;

        }
    }
}
