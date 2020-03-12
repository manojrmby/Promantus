using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using PromantusDBEntity;

namespace Promantus.Areas.Admin.Controllers
{
    public class SkillsController : Controller
    {
        private PromantusDBEntities db = new PromantusDBEntities();

        // GET: Admin/Skills
        public ActionResult Index()
        {
            var skills = db.Skills.Include(s => s.Technology);
            return View(skills.ToList());
        }

        // GET: Admin/Skills/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Skill skill = db.Skills.Find(id);
            if (skill == null)
            {
                return HttpNotFound();
            }
            return View(skill);
        }

        // GET: Admin/Skills/Create
        public ActionResult Create()
        {
            ViewBag.TechnologyID = new SelectList(db.Technologies, "Id", "TechnologyName");
            return View();
        }

        // POST: Admin/Skills/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,SkillName,TechnologyID,CreatedOn,CreatedBy,ModifiedOn,ModifiedBy,IsDeleted,DeletedOn,DeletedBy")] Skill skill)
        {
            if (ModelState.IsValid)
            {
                db.Skills.Add(skill);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.TechnologyID = new SelectList(db.Technologies, "Id", "TechnologyName", skill.TechnologyID);
            return View(skill);
        }

        // GET: Admin/Skills/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Skill skill = db.Skills.Find(id);
            if (skill == null)
            {
                return HttpNotFound();
            }
            ViewBag.TechnologyID = new SelectList(db.Technologies, "Id", "TechnologyName", skill.TechnologyID);
            return View(skill);
        }

        // POST: Admin/Skills/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,SkillName,TechnologyID,CreatedOn,CreatedBy,ModifiedOn,ModifiedBy,IsDeleted,DeletedOn,DeletedBy")] Skill skill)
        {
            if (ModelState.IsValid)
            {
                db.Entry(skill).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.TechnologyID = new SelectList(db.Technologies, "Id", "TechnologyName", skill.TechnologyID);
            return View(skill);
        }

        // GET: Admin/Skills/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Skill skill = db.Skills.Find(id);
            if (skill == null)
            {
                return HttpNotFound();
            }
            return View(skill);
        }

        // POST: Admin/Skills/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Skill skill = db.Skills.Find(id);
            db.Skills.Remove(skill);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
