//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PromantusDBEntity
{
    using System;
    using System.Collections.Generic;
    
    public partial class Skill
    {
        public int Id { get; set; }
        public string SkillName { get; set; }
        public int TechnologyID { get; set; }
        public System.DateTime CreatedOn { get; set; }
        public System.Guid CreatedBy { get; set; }
        public System.DateTime ModifiedOn { get; set; }
        public System.Guid ModifiedBy { get; set; }
        public bool IsDeleted { get; set; }
        public System.DateTime DeletedOn { get; set; }
        public System.Guid DeletedBy { get; set; }
    
        public virtual Technology Technology { get; set; }
    }
}
