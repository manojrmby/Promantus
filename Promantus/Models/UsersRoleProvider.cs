using PromantusDBEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace Promantus.Models
{
    public class UsersRoleProvider : RoleProvider
    {
        public override string ApplicationName { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        public override void AddUsersToRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
        }

        public override void CreateRole(string roleName)
        {
            throw new NotImplementedException();
        }

        public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
        {
            throw new NotImplementedException();
        }

        public override string[] FindUsersInRole(string roleName, string usernameToMatch)
        {
            throw new NotImplementedException();
        }

        public override string[] GetAllRoles()
        {
            PromantusDBEntities _Context = new PromantusDBEntities();
            using (_Context)
            {
                return _Context.Roles.Select(r => r.RoleName).ToArray();
            }
            //throw new NotImplementedException();
        }

        public override string[] GetRolesForUser(string username)
        {
            try
            {
                PromantusDBEntities _Context_ = new PromantusDBEntities();
                using (_Context_)
                {
                    var userRoles = (
                        from user in _Context_.Users
                        join UserRoleMapping in _Context_.UserRoleMappings
                        on user.Id equals UserRoleMapping.UserID
                        join Role in _Context_.Roles
                        on UserRoleMapping.RoleID equals Role.Id
                        where user.Username == username
                        select Role.RoleName).ToArray();
                    return userRoles;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }

            throw new NotImplementedException();
        }

        public override string[] GetUsersInRole(string roleName)
        {
            throw new NotImplementedException();
        }

        public override bool IsUserInRole(string username, string roleName)
        {
            throw new NotImplementedException();
        }

        public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
        }

        public override bool RoleExists(string roleName)
        {
            throw new NotImplementedException();
        }
    }
}