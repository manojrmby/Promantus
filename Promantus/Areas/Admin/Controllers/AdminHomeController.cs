
using Promantus.Models.Employee;
using PromantusDBEntity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Promantus.Areas.Admin.Controllers
{
    public class AdminHomeController : Controller
    {
        PromantusDBEntities DB = new PromantusDBEntities();
        // GET: Admin/AdminHome
        [Authorize(Roles = "Admin")]
        public ActionResult Home()
        {
            return View();
        }
        #region Master

        #region Role
        public ActionResult RoleCreate()
        {
            //List<RoleModel> RoleList = DB.Roles.ToList();

            return View();
        }

        //Load Role List
        public JsonResult GetRoleList()
        {
            List<RoleModel> RoleList = DB.Roles.Where(X => X.Id != 0)
                .Select(x => new RoleModel
                {
                    Id = x.Id,
                    RoleName = x.RoleName,
                    CreatedOn = x.CreatedOn,
                    CreatedBy = x.CreatedBy,
                    ModifiedOn = x.ModifiedOn,
                    ModifiedBy = x.ModifiedBy,
                    IsDeleted = x.IsDeleted,
                    DeletedOn = x.DeletedOn,
                    DeletedBy = x.DeletedBy

                }).ToList();
            return Json(RoleList, JsonRequestBehavior.AllowGet);
        }


        //Save Role
        public JsonResult SaveDataRole(RoleModel model)
        {
            var Result = false;
            try
            {
                if (model.RoleName != null)
                {
                    using (var con = new PromantusDBEntities())
                    {


                        if (model.Id == 0)
                        {

                            int max = DB.Roles.Where(p => p != null)
                                        .Select(p => p.Id)
                                        .DefaultIfEmpty()
                                        .Max();
                            var role = new Role()
                            {
                                Id = max,
                                RoleName = model.RoleName,
                                CreatedOn = DateTime.UtcNow,
                                CreatedBy = Guid.Parse(Session["loginid"].ToString())
                            };
                            con.Roles.Add(role);
                            con.SaveChanges();
                            Result = true;

                        }
                        else if (model.Id != 0)
                        {
                            Role role = con.Roles.SingleOrDefault(x => x.Id == model.Id);
                            role.RoleName = model.RoleName;
                            con.SaveChanges();
                            Result = true;


                        }

                    }
                }
                else
                {

                }
            }
            catch (Exception ex)
            {

                Result = false;
                throw ex;
            }
            return Json(Result, JsonRequestBehavior.AllowGet);
        }

        #endregion Role

        #region Position
        public ActionResult Position()
        {
            return View();
        }
        //List position
        public ActionResult GetPositionList()
        {
            List<Position> positions = DB.Positions.Where(x => x.IsDeleted == false).ToList();
            return Json(positions, JsonRequestBehavior.AllowGet);
        }

        //Save position
        public JsonResult SavePosition(Position model)
        {
            var Result = false;
            try
            {
                if (model.positionName != null)
                {
                    using (var con = new PromantusDBEntities())
                    {


                        if (model.Id == 0)
                        {

                            int max = DB.Positions.Where(p => p != null)
                                        .Select(p => p.Id)
                                        .DefaultIfEmpty()
                                        .Max();
                            var position = new Position()
                            {
                                Id = max,
                                positionName = model.positionName,
                                CreatedOn = DateTime.UtcNow,
                                CreatedBy = Guid.Parse(Session["loginid"].ToString())
                            };
                            con.Positions.Add(position);
                            con.SaveChanges();
                            Result = true;

                        }
                        else if (model.Id != 0)
                        {
                            Position positions = con.Positions.Where(x => x.IsDeleted == false).SingleOrDefault(x => x.Id == model.Id);
                            positions.positionName = model.positionName;
                            positions.ModifiedOn = DateTime.UtcNow;
                            positions.ModifiedBy = Guid.Parse(Session["loginid"].ToString());
                            con.SaveChanges();
                            Result = true;


                        }

                    }
                }
                else
                {

                }
            }
            catch (Exception ex)
            {

                Result = false;
                throw ex;
            }
            return Json(Result, JsonRequestBehavior.AllowGet);
        }

        //Edit position
        public JsonResult GetPositionByID(int positionID)
        {
            Position model = DB.Positions.Where(x => x.IsDeleted == false && x.Id == positionID).SingleOrDefault();
            return Json(model, JsonRequestBehavior.AllowGet);
        }
        //Delete position
        public JsonResult DeletePositionByID(int ID)
        {
            var Result = false;
            using (var con = new PromantusDBEntities())
            {
                Position positions = con.Positions.SingleOrDefault(x => x.Id == ID);
                positions.IsDeleted = true;

                positions.DeletedOn = DateTime.UtcNow;
                positions.DeletedBy = Guid.Parse(Session["loginid"].ToString());
                con.SaveChanges();
                Result = true;
            }
            return Json(Result, JsonRequestBehavior.AllowGet);
        }
        #endregion Position

        #region Department
        public ActionResult Department()
        {
            return View();
        }
        //List Department
        public ActionResult GetDepartmentList()
        {
            List<Department> Dep = DB.Departments.Where(x => x.IsDeleted == false).ToList();
            return Json(Dep, JsonRequestBehavior.AllowGet);
        }

        //Save Department
        public JsonResult SaveDepartment(Department model)
        {
            var Result = false;
            try
            {
                if (model.DepartmentName != null)
                {
                    using (var con = new PromantusDBEntities())
                    {


                        if (model.Id == 0)
                        {

                            int max = DB.Departments.Where(p => p != null)
                                        .Select(p => p.Id)
                                        .DefaultIfEmpty()
                                        .Max();
                            var m = new Department()
                            {
                                Id = max,
                                DepartmentName = model.DepartmentName,
                                CreatedOn = DateTime.UtcNow,
                                CreatedBy = Guid.Parse(Session["loginid"].ToString())
                            };
                            con.Departments.Add(m);
                            con.SaveChanges();
                            Result = true;

                        }
                        else if (model.Id != 0)
                        {
                            Department Dep = con.Departments.Where(x => x.IsDeleted == false).SingleOrDefault(x => x.Id == model.Id);
                            Dep.DepartmentName = model.DepartmentName;
                            Dep.ModifiedOn = DateTime.UtcNow;
                            Dep.ModifiedBy = Guid.Parse(Session["loginid"].ToString());
                            con.SaveChanges();
                            Result = true;


                        }

                    }
                }
                else
                {

                }
            }
            catch (Exception ex)
            {

                Result = false;
                throw ex;
            }
            return Json(Result, JsonRequestBehavior.AllowGet);
        }

        //Edit Department
        public JsonResult GetDepartmentByID(int ID)
        {
            Department model = DB.Departments.Where(x => x.IsDeleted == false && x.Id == ID).SingleOrDefault();
            return Json(model, JsonRequestBehavior.AllowGet);
        }
        //Delete Department
        public JsonResult DeleteDepartmentByID(int ID)
        {
            var Result = false;
            using (var con = new PromantusDBEntities())
            {
                Department positions = con.Departments.SingleOrDefault(x => x.Id == ID);
                positions.IsDeleted = true;

                positions.DeletedOn = DateTime.UtcNow;
                positions.DeletedBy = Guid.Parse(Session["loginid"].ToString());
                con.SaveChanges();
                Result = true;
            }
            return Json(Result, JsonRequestBehavior.AllowGet);
        }

        #endregion Department


        #region Technology
        public ActionResult Technology()
        {
            return View();
        }
        //List Technology
        public ActionResult GetTechnologyList()
        {
            List<Technology> Tech = DB.Technologies.Where(x => x.IsDeleted == false).ToList();
            return Json(Tech, JsonRequestBehavior.AllowGet);
        }

        //Save Technology
        public JsonResult SaveTechnology(Technology model)
        {
            var Result = false;
            try
            {
                if (model.TechnologyName != null)
                {
                    using (var con = new PromantusDBEntities())
                    {


                        if (model.Id == 0)
                        {

                            int max = DB.Technologies.Where(p => p != null)
                                        .Select(p => p.Id)
                                        .DefaultIfEmpty()
                                        .Max();
                            var m = new Technology()
                            {
                                Id = max,
                                TechnologyName = model.TechnologyName,
                                CreatedOn = DateTime.UtcNow,
                                CreatedBy = Guid.Parse(Session["loginid"].ToString())
                            };
                            con.Technologies.Add(m);
                            con.SaveChanges();
                            Result = true;

                        }
                        else if (model.Id != 0)
                        {
                            Technology Tech = con.Technologies.Where(x => x.IsDeleted == false).SingleOrDefault(x => x.Id == model.Id);
                            Tech.TechnologyName = model.TechnologyName;
                            Tech.ModifiedOn = DateTime.UtcNow;
                            Tech.ModifiedBy = Guid.Parse(Session["loginid"].ToString());
                            con.SaveChanges();
                            Result = true;


                        }

                    }
                }
                else
                {

                }
            }
            catch (Exception ex)
            {

                Result = false;
                throw ex;
            }
            return Json(Result, JsonRequestBehavior.AllowGet);
        }

        //Edit Technology
        public JsonResult GetTechnologyByID(int ID)
        {
            Technology model = DB.Technologies.Where(x => x.IsDeleted == false && x.Id == ID).SingleOrDefault();
            return Json(model, JsonRequestBehavior.AllowGet);
        }
        //Delete Technology
        public JsonResult DeleteTechnologyByID(int ID)
        {
            var Result = false;
            using (var con = new PromantusDBEntities())
            {
                Technology model = con.Technologies.SingleOrDefault(x => x.Id == ID);
                model.IsDeleted = true;

                model.DeletedOn = DateTime.UtcNow;
                model.DeletedBy = Guid.Parse(Session["loginid"].ToString());
                con.SaveChanges();
                Result = true;
            }
            return Json(Result, JsonRequestBehavior.AllowGet);
        }
        #endregion Technology

        #region Skill's
        public ActionResult Skill()
        {
            ViewBag.Technology = new SelectList(DB.Technologies.Where(x => x.IsDeleted == false), "Id", "TechnologyName");
            return View();
        }
        //List Skill
        public ActionResult GetSkillList()
        {
            List<Skill> Model_List = DB.Skills.Where(x => x.IsDeleted == false).ToList();
            //ViewBag.Technology = new SelectList(DB.Technologies.Where(x => x.IsDeleted == false), "Id", "TechnologyName");
            return Json(Model_List, JsonRequestBehavior.AllowGet);
        }

        //Save Skill
        public JsonResult SaveSkill(Skill model)
        {
            var Result = false;
            try
            {
                if (model.SkillName != null)
                {
                    using (var con = new PromantusDBEntities())
                    {


                        if (model.Id == 0)
                        {

                            int max = DB.Skills.Where(p => p != null)
                                        .Select(p => p.Id)
                                        .DefaultIfEmpty()
                                        .Max();
                            var m = new Skill()
                            {
                                Id = max,
                                SkillName = model.SkillName,
                                TechnologyID = model.Technology.Id,
                                CreatedOn = DateTime.UtcNow,
                                CreatedBy = Guid.Parse(Session["loginid"].ToString())
                            };
                            con.Skills.Add(m);
                            con.SaveChanges();
                            Result = true;

                        }
                        else if (model.Id != 0)
                        {
                            Skill SK = con.Skills.Where(x => x.IsDeleted == false).SingleOrDefault(x => x.Id == model.Id);
                            SK.SkillName = model.SkillName;
                            SK.ModifiedOn = DateTime.UtcNow;
                            SK.ModifiedBy = Guid.Parse(Session["loginid"].ToString());
                            con.SaveChanges();
                            Result = true;


                        }

                    }
                }
                else
                {

                }
            }
            catch (Exception ex)
            {

                Result = false;
                throw ex;
            }
            ViewBag.Technology = new SelectList(DB.Technologies.Where(x => x.IsDeleted == false), "Id", "TechnologyName");
            return Json(Result, JsonRequestBehavior.AllowGet);
        }

        //Edit Skill
        public JsonResult GetSkillByID(int ID)
        {
            ViewBag.Technology = new SelectList(DB.Technologies.Where(x => x.IsDeleted == false), "Id", "TechnologyName");
            Skill model = DB.Skills.Where(x => x.IsDeleted == false && x.Id == ID).SingleOrDefault();
            return Json(model, JsonRequestBehavior.AllowGet);
        }
        //Delete Skill
        public JsonResult DeleteSkillByID(int ID)
        {
            var Result = false;
            using (var con = new PromantusDBEntities())
            {
                Skill model = con.Skills.SingleOrDefault(x => x.Id == ID);
                model.IsDeleted = true;

                model.DeletedOn = DateTime.UtcNow;
                model.DeletedBy = Guid.Parse(Session["loginid"].ToString());
                con.SaveChanges();
                Result = true;
            }
            return Json(Result, JsonRequestBehavior.AllowGet);
        }
        #endregion Skill's


        #region Countary
        public ActionResult Countary()
        {
            return View();
        }
        //List Countary
        public ActionResult GetCountaryList()
        {
            List<Country> countries = DB.Countries.Where(x => x.IsDeleted == false).ToList();
            return Json(countries, JsonRequestBehavior.AllowGet);
        }

        //Save Countary
        public JsonResult SaveCountary(Country model)
        {
            var Result = false;
            try
            {
                if (model.CountryName != null)
                {
                    using (var con = new PromantusDBEntities())
                    {


                        if (model.Id == 0)
                        {

                            int max = DB.Countries.Where(p => p != null)
                                        .Select(p => p.Id)
                                        .DefaultIfEmpty()
                                        .Max();
                            var m = new Country()
                            {
                                Id = max,
                                CountryName = model.CountryName,
                                CreatedOn = DateTime.UtcNow,
                                CreatedBy = Guid.Parse(Session["loginid"].ToString())
                            };
                            con.Countries.Add(m);
                            con.SaveChanges();
                            Result = true;

                        }
                        else if (model.Id != 0)
                        {
                            Country countrys = con.Countries.Where(x => x.IsDeleted == false).SingleOrDefault(x => x.Id == model.Id);
                            countrys.CountryName = model.CountryName;
                            countrys.ModifiedOn = DateTime.UtcNow;
                            countrys.ModifiedBy = Guid.Parse(Session["loginid"].ToString());
                            con.SaveChanges();
                            Result = true;


                        }

                    }
                }
                else
                {

                }
            }
            catch (Exception ex)
            {

                Result = false;
                throw ex;
            }
            return Json(Result, JsonRequestBehavior.AllowGet);
        }

        //Edit Countary
        public JsonResult GetCountaryByID(int ID)
        {
            Country model = DB.Countries.Where(x => x.IsDeleted == false && x.Id == ID).SingleOrDefault();
            return Json(model, JsonRequestBehavior.AllowGet);
        }
        //Delete Countary
        public JsonResult DeleteCountaryByID(int ID)
        {
            var Result = false;
            using (var con = new PromantusDBEntities())
            {
                Country model = con.Countries.SingleOrDefault(x => x.Id == ID);
                model.IsDeleted = true;

                model.DeletedOn = DateTime.UtcNow;
                model.DeletedBy = Guid.Parse(Session["loginid"].ToString());
                con.SaveChanges();
                Result = true;
            }
            return Json(Result, JsonRequestBehavior.AllowGet);
        }
        #endregion Country

        #region EmployeeType
        public ActionResult EmployeeType()
        {
            return View();
        }
        //List EmployeeType
        public ActionResult GetEmployeeTypeList()
        {
            List<EmployeeType> EmpType = DB.EmployeeTypes.Where(x => x.IsDeleted == false).ToList();
            return Json(EmpType, JsonRequestBehavior.AllowGet);
        }

        //Save EmployeeType
        public JsonResult SaveEmployeeType(EmployeeType model)
        {
            var Result = false;
            try
            {
                if (model.EmployeeTypes != null)
                {
                    using (var con = new PromantusDBEntities())
                    {


                        if (model.Id == 0)
                        {

                            int max = DB.EmployeeTypes.Where(p => p != null)
                                        .Select(p => p.Id)
                                        .DefaultIfEmpty()
                                        .Max();
                            var m = new EmployeeType()
                            {
                                Id = max,
                                EmployeeTypes = model.EmployeeTypes,
                                CreatedOn = DateTime.UtcNow,
                                CreatedBy = Guid.Parse(Session["loginid"].ToString())
                            };
                            con.EmployeeTypes.Add(m);
                            con.SaveChanges();
                            Result = true;

                        }
                        else if (model.Id != 0)
                        {
                            EmployeeType Emptype = con.EmployeeTypes.Where(x => x.IsDeleted == false).SingleOrDefault(x => x.Id == model.Id);
                            Emptype.EmployeeTypes = model.EmployeeTypes;
                            Emptype.ModifiedOn = DateTime.UtcNow;
                            Emptype.ModifiedBy = Guid.Parse(Session["loginid"].ToString());
                            con.SaveChanges();
                            Result = true;


                        }

                    }
                }
                else
                {

                }
            }
            catch (Exception ex)
            {

                Result = false;
                throw ex;
            }
            return Json(Result, JsonRequestBehavior.AllowGet);
        }

        //Edit EmployeeType
        public JsonResult GetEmployeeTypeByID(int ID)
        {
            EmployeeType model = DB.EmployeeTypes.Where(x => x.IsDeleted == false && x.Id == ID).SingleOrDefault();
            return Json(model, JsonRequestBehavior.AllowGet);
        }
        //Delete Countary
        public JsonResult DeleteEmployeeTypeByID(int ID)
        {
            var Result = false;
            using (var con = new PromantusDBEntities())
            {
                EmployeeType model = con.EmployeeTypes.SingleOrDefault(x => x.Id == ID);
                model.IsDeleted = true;

                model.DeletedOn = DateTime.UtcNow;
                model.DeletedBy = Guid.Parse(Session["loginid"].ToString());
                con.SaveChanges();
                Result = true;
            }
            return Json(Result, JsonRequestBehavior.AllowGet);
        }
        #endregion EmployeeType

        #endregion Master
    }
}