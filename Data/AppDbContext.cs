using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using CrudMaster.Models;
using Microsoft.EntityFrameworkCore;

namespace CrudMaster.Data
{
    public class AppDbContext : DbContext 
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
        {

        }

        public DbSet<Usuario> Usuario { get; set; }
    }
}
    