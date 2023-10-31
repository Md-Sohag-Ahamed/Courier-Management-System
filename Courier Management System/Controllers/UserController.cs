using Courier_Management_System.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Courier_Management_System.Controllers
{
    public class UserController : Controller
    {
        public ActionResult IndexView()
        {
            Courier_Management_SystemEntities db = new Courier_Management_SystemEntities();
            //usersite ob_usersite = db.usersites.SingleOrDefault(x => x.id==1);
            //usersiteViewModel vm = new usersiteViewModel();
            //vm.username = ob_usersite.username;
            //vm.id = ob_usersite.id;
            //vm.password = ob_usersite.password;
            return View();
        }


      

        public ActionResult Registration()
        {
            return View();
        }
        [HttpPost]
        public ActionResult RegisterUser(RegistrationViewModel model)
        {
            Courier_Management_SystemEntities db = new Courier_Management_SystemEntities();
            siteuser usersite = new siteuser();
            usersite.username = model.username;
            usersite.password = model.password;
            usersite.address = model.address;
            usersite.emailid = model.emailid;
            usersite.usertype = 1;
            db.siteusers.Add(usersite);
            db.SaveChanges();


            return View();
        }
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public JsonResult LoginUser(RegistrationViewModel model)
        {
            Courier_Management_SystemEntities db = new Courier_Management_SystemEntities();
            siteuser user = db.siteusers.SingleOrDefault(x => x.emailid == model.emailid && x.password == model.password);
            string result = "Fail";
            if (user != null)
            {
                Session["UserId"] = user.id;
                Session["UserName"] = user.username;
                if (user.usertype == 1)
                {
                    result = "User";
                }
                else
                {
                    result = "Admin";
                }
            }

            return Json(result, JsonRequestBehavior.AllowGet);
        }
        public ActionResult Logout()
        {
            Session.Clear();
            Session.Abandon();
            return RedirectToAction("IndexView");
        }

    }
}