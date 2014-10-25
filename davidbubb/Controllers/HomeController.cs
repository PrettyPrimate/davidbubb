using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;

namespace davidbubb.Controllers
{
    public class HomeController : Controller
    {
        public class LatestTracks
        {
             
        }

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            //ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            //ViewBag.Message = "Your contact page.";

            return View();
        }

        //[HttpPost]
        public ActionResult SendEmail()
        {

            var mailMessage = new MailMessage();
            mailMessage.To.Add("info@davidbubb.co.uk");
            mailMessage.From = new MailAddress("info@davidbubb.co.uk");
            mailMessage.Subject = "testing";
            mailMessage.Body = "Hello Mr. Aderson";
            mailMessage.IsBodyHtml = false;

            return View();
        }

        public ActionResult Music()
        {
      

            return View();
        }

        public ActionResult Websites()
        {
            return View();
        }
    }
}