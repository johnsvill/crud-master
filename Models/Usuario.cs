using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace CrudMaster.Models
{
    public class Usuario
    {
        [Key]
        public int ID { get; set; }
        [Required(ErrorMessage = "Este campo es requerido")]
        [StringLength(30, MinimumLength = 3)]
        [Display(Name = "Nombre")]
        public string Nombre { get; set; }
        [Required(ErrorMessage = "Este campo es requerido")]
        [Display(Name = "Teléfono")]
        [StringLength(8)]
        [DataType(DataType.PhoneNumber)]
        public string Telefono { get; set; }
        [Required(ErrorMessage = "Este campo es requerido")]
        [Display(Name = "E-mail")]
        [DataType(DataType.EmailAddress)]
        public string Email { get; set; }
    }
}
