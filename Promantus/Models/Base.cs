using PromantusDBEntity;
using PromantusDBEntity.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Promantus.Models
{
    public class Base
    {
        public Login loginValidate(string Username, string Password, int RoleID)
        {
            Login loginModel = new Login();
            DataTable dt = new DataTable();
            if (Username != null && Username != "" && Password != null && Password != "")
            {
                DBHelper dB = new DBHelper("Sp_Login", CommandType.StoredProcedure);
                dB.addIn("@Type", "LoginValidate");
                dB.addIn("@username", Username);
                dB.addIn("@password", Password);
                dB.addIn("@RoleID", RoleID);


                dt = dB.ExecuteDataTable();
                if (dt.Rows.Count == 1)
                {
                    loginModel.Loginid = Guid.Parse(dt.Rows[0]["id"].ToString());
                    loginModel.UserId = Convert.ToString(dt.Rows[0]["UserName"]);
                    loginModel.RoleID = Convert.ToInt32(dt.Rows[0]["RoleID"]);


                }
            }
            return loginModel;
        }
        public List<Role> GetRole(string UserName)
        {

            DataTable dt = new DataTable();
            List<Role> L_roles = new List<Role>();
            if (UserName != null && UserName != "")
            {
                DBHelper dB = new DBHelper("Sp_Login", CommandType.StoredProcedure);
                dB.addIn("@Type", "RoleByUser");
                dB.addIn("@username", UserName);


                dt = dB.ExecuteDataTable();
                foreach (DataRow row in dt.Rows)
                {
                    Role RoleModels = new Role();


                    RoleModels.Id = Convert.ToInt32(row.ItemArray[0]);
                    RoleModels.RoleName = Convert.ToString(row.ItemArray[1]);

                    L_roles.Add(RoleModels);
                }

                //if (dt.Rows.Count > 0)
                //{
                //    RoleModel.Id = Convert.ToInt32(dt.Rows[0]["Id"]);
                //    RoleModel.RoleName = Convert.ToString(dt.Rows[0]["RoleName"]);

                //}
            }
            return L_roles;
        }



        public static string EmptyGuid = "00000000 - 0000 - 0000 - 0000 - 000000000000";

    }
}