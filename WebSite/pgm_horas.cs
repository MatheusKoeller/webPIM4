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
    
    public partial class pgm_horas
    {
        public int ID { get; set; }
        public System.DateTime Data_registro { get; set; }
        public System.DateTime Hora_entrada { get; set; }
        public System.DateTime Hora_saida { get; set; }
        public System.DateTime Hora_inicio_intervalo { get; set; }
        public System.DateTime Hora_fim_intervalo { get; set; }
        public System.DateTime Horas_trabalhadas { get; set; }
        public string Tipo_reg { get; set; }
    }
}
