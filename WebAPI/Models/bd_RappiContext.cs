using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;

namespace WebAPI.Models
{
    public partial class bd_RappiContext : DbContext
    {
        public bd_RappiContext()
        {
        }

        public bd_RappiContext(DbContextOptions<bd_RappiContext> options)
            : base(options)
        {
        }

        public virtual DbSet<AsociarCuenta> AsociarCuenta { get; set; }
        public virtual DbSet<Banco> Banco { get; set; }
        public virtual DbSet<Categoria> Categoria { get; set; }
        public virtual DbSet<Cuenta> Cuenta { get; set; }
        public virtual DbSet<Paises> Paises { get; set; }
        public virtual DbSet<Producto> Producto { get; set; }
        public virtual DbSet<Tienda> Tienda { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Data source=(local);Database=bd_Rappi;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AsociarCuenta>(entity =>
            {
                entity.HasKey(e => e.IdAsociarCuenta)
                    .HasName("PK__AsociarC__EC2C2A5714C017BD");

                entity.Property(e => e.IdAsociarCuenta).HasColumnName("idAsociarCuenta");

                entity.Property(e => e.DomicilioFiscal)
                    .HasColumnName("domicilioFiscal")
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.IdCuenta).HasColumnName("idCuenta");

                entity.Property(e => e.Idbanco).HasColumnName("idbanco");

                entity.Property(e => e.NumeroCuenta)
                    .HasColumnName("numeroCuenta")
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.NumeroInterbancario)
                    .HasColumnName("numeroInterbancario")
                    .HasMaxLength(30)
                    .IsUnicode(false);

                entity.Property(e => e.Telefono)
                    .HasColumnName("telefono")
                    .HasMaxLength(11)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.HasOne(d => d.IdCuentaNavigation)
                    .WithMany(p => p.AsociarCuenta)
                    .HasForeignKey(d => d.IdCuenta)
                    .HasConstraintName("FK__AsociarCu__idCue__1ED998B2");

                entity.HasOne(d => d.IdbancoNavigation)
                    .WithMany(p => p.AsociarCuenta)
                    .HasForeignKey(d => d.Idbanco)
                    .HasConstraintName("FK__AsociarCu__idban__1FCDBCEB");
            });

            modelBuilder.Entity<Banco>(entity =>
            {
                entity.HasKey(e => e.Idbanco)
                    .HasName("PK__Banco__A087EB2940E8DAF0");

                entity.Property(e => e.Idbanco).HasColumnName("idbanco");

                entity.Property(e => e.NomBanco)
                    .HasColumnName("nomBanco")
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Categoria>(entity =>
            {
                entity.HasKey(e => e.IdCat)
                    .HasName("PK__Categori__398E4045429C32E2");

                entity.Property(e => e.IdCat).HasColumnName("idCat");

                entity.Property(e => e.IdTienda).HasColumnName("idTienda");

                entity.Property(e => e.Imagen)
                    .HasColumnName("imagen")
                    .HasMaxLength(120)
                    .IsUnicode(false);

                entity.Property(e => e.NomCat)
                    .HasColumnName("nomCat")
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.HasOne(d => d.IdTiendaNavigation)
                    .WithMany(p => p.Categoria)
                    .HasForeignKey(d => d.IdTienda)
                    .HasConstraintName("FK__Categoria__idTie__1273C1CD");
            });

            modelBuilder.Entity<Cuenta>(entity =>
            {
                entity.HasKey(e => e.IdCuenta)
                    .HasName("PK__Cuenta__BBC6DF329E83A9A5");

                entity.Property(e => e.IdCuenta).HasColumnName("idCuenta");

                entity.Property(e => e.Apellidos)
                    .HasColumnName("apellidos")
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.Contrasennia)
                    .HasColumnName("contrasennia")
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.Correo)
                    .HasColumnName("correo")
                    .HasMaxLength(50)
                    .IsUnicode(false);

                entity.Property(e => e.IdPais).HasColumnName("idPais");

                entity.Property(e => e.Nombres)
                    .HasColumnName("nombres")
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.NumCelular)
                    .HasColumnName("numCelular")
                    .HasMaxLength(9)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.HasOne(d => d.IdPaisNavigation)
                    .WithMany(p => p.Cuenta)
                    .HasForeignKey(d => d.IdPais)
                    .HasConstraintName("FK__Cuenta__idPais__1BFD2C07");
            });

            modelBuilder.Entity<Paises>(entity =>
            {
                entity.HasKey(e => e.IdPais)
                    .HasName("PK__Paises__BD2285E37EBEBA66");

                entity.Property(e => e.IdPais)
                    .HasColumnName("idPais")
                    .ValueGeneratedNever();

                entity.Property(e => e.Iso)
                    .HasColumnName("iso")
                    .HasMaxLength(2)
                    .IsUnicode(false)
                    .IsFixedLength();

                entity.Property(e => e.NomPais)
                    .HasColumnName("nomPais")
                    .HasMaxLength(50)
                    .IsUnicode(false);
            });

            modelBuilder.Entity<Producto>(entity =>
            {
                entity.HasKey(e => e.IdProd)
                    .HasName("PK__Producto__B41BB0CA54FE8AFF");

                entity.Property(e => e.IdProd).HasColumnName("idProd");

                entity.Property(e => e.IdCat).HasColumnName("idCat");

                entity.Property(e => e.Imagen)
                    .HasColumnName("imagen")
                    .HasMaxLength(100)
                    .IsUnicode(false);

                entity.Property(e => e.NomProd)
                    .HasColumnName("nomProd")
                    .HasMaxLength(60)
                    .IsUnicode(false);

                entity.Property(e => e.Precio)
                    .HasColumnName("precio")
                    .HasColumnType("decimal(8, 2)");

                entity.HasOne(d => d.IdCatNavigation)
                    .WithMany(p => p.Producto)
                    .HasForeignKey(d => d.IdCat)
                    .HasConstraintName("FK__Producto__idCat__15502E78");
            });

            modelBuilder.Entity<Tienda>(entity =>
            {
                entity.HasKey(e => e.IdTienda)
                    .HasName("PK__Tienda__CF09B22CA2FABEEF");

                entity.Property(e => e.IdTienda).HasColumnName("idTienda");

                entity.Property(e => e.Direccion)
                    .HasColumnName("direccion")
                    .HasMaxLength(120)
                    .IsUnicode(false);

                entity.Property(e => e.NomTienda)
                    .HasColumnName("nomTienda")
                    .HasMaxLength(60)
                    .IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);
        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
    }
}
