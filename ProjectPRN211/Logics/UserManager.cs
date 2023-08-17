using Microsoft.EntityFrameworkCore;
using ProjectPRN211.Models;

namespace ProjectPRN211.Logics
{
    public class UserManager
    {
        private readonly PRN211_1Context _context;

        public UserManager()
        {
            _context = new PRN211_1Context();
        }

        public User checkLogin(String username, String password)
        {
            return _context.Users.FirstOrDefault(x => x.UserName == username && x.Password == password);
        }


        public Boolean checkDuplicateUser(User user)
        {
            return _context.Users.Any(x => x.UserName == user.UserName);
        }

        public Boolean register(User user)
        {
                _context.Users.Add(user);
                _context.SaveChanges();
                return true;
        }

        public void addUser_Role(User user, int role_id)
        {
            UserRole role;
            role = new UserRole() { RoleId = role_id, UserId = user.UserId };
            _context.UserRoles.Add(role);
            _context.SaveChanges();
        }

        public string getPassWord(User user)
        {
            var passWord = _context.Users.FirstOrDefault(x => x.Password == user.Password);

            if (passWord != null)
            {
                return passWord.Password;
            }
            else
            {
                return null;
            }
        }

        public Boolean updatePassWork(User user, string passs)
        {
            User users = _context.Users.FirstOrDefault(x => x.Password == user.Password);
            if (users == null)
            {
                return false;
            }
            else
            {
                users.Password = passs;
                _context.SaveChanges();
                return true;
            }
        }

        public List<User> getListUsersById(int user_id)
        {
            List<User> user = _context.Users.Where(x => x.UserId == user_id).ToList();
            return user;
        }


        public Boolean Update_Profile(User user, int id)
        {
            User user_d = _context.Users.FirstOrDefault(x => x.UserId == id);
            if (user_d != null)
            {
                user_d.FullName = user.FullName;
                user_d.Company = user.Company;
                user_d.Title = user.Title;
                _context.SaveChanges();
                return true;
            }
            else
            {
                return false;
            }
        }

        public int roleUser(User user)
        {
            int role_id = 0;
            UserRole role = _context.UserRoles.Include(x => x.Role).FirstOrDefault(x => x.RoleId == user.UserId);

            if (role != null)
            {
                return role_id = role.Role.RoleId;
            }
            else
            {
                return role_id;
            }
        }

        public User? checkEmail(string email)
        {
            var check = _context.Users.FirstOrDefault(x => x.Email == email);
            if(check != null)
            {
                return check;
            }else
            {
                return check;
            }
        }

        public string GenerateRandomCode()
        {
            const int codeLength = 5;
            const string chars = "0123456789";
            var random = new Random();

            string randomCode = new string(Enumerable.Repeat(chars, codeLength)
                .Select(s => s[random.Next(s.Length)]).ToArray());

            return randomCode;
        }

        public Boolean updateAfterReset(string email, string passs)
        {
            email = email.Trim('"');
            User users = _context.Users.FirstOrDefault(x => x.Email == email);
            if (users == null)
            {
                return false;
            }
            else
            {
                users.Password = passs;
                _context.SaveChanges();
                return true;
            }
        }
    }
}
