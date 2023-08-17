using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using ProjectPRN211.Logics;
using ProjectPRN211.Pages;
using System.Net.Http.Json;
using System.Text.Json;
using System.Text.Json.Serialization;
using System.Transactions;
using System.Net.Mail;
using System.Net;


namespace ProjectPRN211.Controllers
{
    public class HomeController : Controller
    {
        UserManager userr = new UserManager();

        public IActionResult HomePage()
        {
            ViewBag.User = HttpContext.Session.GetString("user");
            ViewBag.Role = HttpContext.Session.GetInt32("UserRole");
            return View();
        }

        [HttpGet]
        public IActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Login_submit(string userName, string password)
        {
            User userCheck = userr.checkLogin(userName, password);

            if (string.IsNullOrWhiteSpace(userName) || string.IsNullOrWhiteSpace(password))
            {
                ViewBag.Mess = "Pls input not empty!";
                return View("Login");
            }
            else if (userCheck != null)
            {
                HttpContext.Session.SetString("user", JsonSerializer.Serialize(userCheck));
                ViewBag.User = HttpContext.Session.GetString("user");
                string userJson = HttpContext.Session.GetString("user"); // Lấy giá trị Session dạng chuỗi
                User user = JsonSerializer.Deserialize<User>(userJson);
                int roleUser = userr.roleUser(user);

                // Chuyển đổi roleUser thành chuỗi
                HttpContext.Session.SetInt32("UserRole", roleUser);
                // Lưu giá trị roleUserString vào session
                ViewBag.Role = HttpContext.Session.GetInt32("UserRole");
                return View("HomePage");
            }
            else
            {
                ViewBag.Mess = "Incorrect username or password";
                return View("Login");
            }


        }
        [HttpGet]
        public IActionResult Register()
        {
            return View();
        }

    
        public IActionResult RemoveSession()
        {
            HttpContext.Session.Remove("messSucces");
            return Ok();
        }

            

       


        public IActionResult LogOut()
        {
            HttpContext.Session.Remove("user");
            HttpContext.Session.Remove("UserRole");
            return View("HomePage");
        }

    }
}
