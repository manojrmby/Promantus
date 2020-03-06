using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Promantus.Models;
using PromantusDBEntity;

namespace Promantus.Controllers
{
    public class LoginController : Controller
    {

        Base _Base = new Base();


        // GET: Login
        [AllowAnonymous]
        public ActionResult Login()
        {
            Session.Clear();
            return View();
        }

        // GET: logout
        public ActionResult logout()
        {
            FormsAuthentication.SignOut();
            Session.Clear();
            return RedirectToAction("Login", "Login");
        }


        // GET: Roles
        [AllowAnonymous]
        [HttpPost]
        public JsonResult getrole(string username)
        {
            List<Role> roles = new List<Role>();
            roles = _Base.GetRole(username);
            return Json(roles, JsonRequestBehavior.AllowGet);
        }

        //Login Submit
        [AllowAnonymous]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult login(Login _login, string returnUrl)
        {

            _login = _Base.loginValidate(_login.UserId, _login.Password, _login.RoleID);
            if (_login.Loginid != null)
            {
                FormsAuthentication.SetAuthCookie(_login.UserId, false);
                Session["loginid"] = _login.Loginid.ToString();
                int RoleID = Convert.ToInt32(_login.RoleID);
                if (!string.IsNullOrEmpty(returnUrl))
                {
                    return Redirect(returnUrl);
                }
                if (RoleID == 1)
                {
                    return RedirectToAction("Home", "AdminHome", new { area = "Admin" });
                }
                else if (RoleID == 2)
                {
                    return RedirectToAction("Index", "Home", new { area = "HR" });
                }
            }
            return RedirectToAction("Login", "Login");
        }
    }
}