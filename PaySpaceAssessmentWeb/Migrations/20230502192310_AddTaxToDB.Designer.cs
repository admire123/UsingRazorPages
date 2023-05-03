﻿// <auto-generated />
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using PaySpaceAssessmentWeb.Data;

#nullable disable

namespace PaySpaceAssessmentWeb.Migrations
{
    [DbContext(typeof(ApplicationDbContext))]
    [Migration("20230502192310_AddTaxToDB")]
    partial class AddTaxToDB
    {
        /// <inheritdoc />
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "8.0.0-preview.3.23174.2")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder);

            modelBuilder.Entity("PaySpaceAssessmentWeb.Model.Tax", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("Id"));

                    b.Property<double>("annualIncome")
                        .HasColumnType("float");

                    b.Property<string>("dateTime")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("postalCode")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<double>("tax")
                        .HasColumnType("float");

                    b.HasKey("Id");

                    b.ToTable("Tax");
                });
#pragma warning restore 612, 618
        }
    }
}
