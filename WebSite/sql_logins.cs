//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WebSite
{
    using System;
    using System.Collections.Generic;
    
    public partial class sql_logins
    {
        public string name { get; set; }
        public int principal_id { get; set; }
        public byte[] sid { get; set; }
        public string type { get; set; }
        public string type_desc { get; set; }
        public Nullable<bool> is_disabled { get; set; }
        public System.DateTime create_date { get; set; }
        public System.DateTime modify_date { get; set; }
        public string default_database_name { get; set; }
        public string default_language_name { get; set; }
        public Nullable<int> credential_id { get; set; }
        public Nullable<bool> is_policy_checked { get; set; }
        public Nullable<bool> is_expiration_checked { get; set; }
        public byte[] password_hash { get; set; }
    }
}