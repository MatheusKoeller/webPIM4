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
    
    public partial class database_connection_stats
    {
        public string database_name { get; set; }
        public System.DateTime start_time { get; set; }
        public System.DateTime end_time { get; set; }
        public int success_count { get; set; }
        public int total_failure_count { get; set; }
        public int connection_failure_count { get; set; }
        public int terminated_connection_count { get; set; }
        public int throttled_connection_count { get; set; }
    }
}