using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace toiec_web.Migrations
{
    public partial class addroadmap : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "idRoadMap",
                table: "VocList",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "idRoadMap",
                table: "Tests",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "idRoadMap",
                table: "Courses",
                type: "nvarchar(450)",
                nullable: true);

            migrationBuilder.CreateTable(
                name: "RoadMaps",
                columns: table => new
                {
                    Id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Description = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_RoadMaps", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "UserRoutes",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    IdRoadMap = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    IdUser = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Status = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Progress = table.Column<double>(type: "float", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserRoutes", x => x.Id);
                    table.ForeignKey(
                        name: "FK_UserRouteOfRoadMap",
                        column: x => x.IdRoadMap,
                        principalTable: "RoadMaps",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_UserRouteOfUser",
                        column: x => x.IdUser,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_VocList_idRoadMap",
                table: "VocList",
                column: "idRoadMap");

            migrationBuilder.CreateIndex(
                name: "IX_Tests_idRoadMap",
                table: "Tests",
                column: "idRoadMap");

            migrationBuilder.CreateIndex(
                name: "IX_Courses_idRoadMap",
                table: "Courses",
                column: "idRoadMap");

            migrationBuilder.CreateIndex(
                name: "IX_UserRoutes_IdRoadMap",
                table: "UserRoutes",
                column: "IdRoadMap");

            migrationBuilder.CreateIndex(
                name: "IX_UserRoutes_IdUser",
                table: "UserRoutes",
                column: "IdUser");

            migrationBuilder.AddForeignKey(
                name: "FK_CourseOfRoadMap",
                table: "Courses",
                column: "idRoadMap",
                principalTable: "RoadMaps",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "TestOfRoadMap",
                table: "Tests",
                column: "idRoadMap",
                principalTable: "RoadMaps",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_TopicOfRoadMap",
                table: "VocList",
                column: "idRoadMap",
                principalTable: "RoadMaps",
                principalColumn: "Id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_CourseOfRoadMap",
                table: "Courses");

            migrationBuilder.DropForeignKey(
                name: "TestOfRoadMap",
                table: "Tests");

            migrationBuilder.DropForeignKey(
                name: "FK_TopicOfRoadMap",
                table: "VocList");

            migrationBuilder.DropTable(
                name: "UserRoutes");

            migrationBuilder.DropTable(
                name: "RoadMaps");

            migrationBuilder.DropIndex(
                name: "IX_VocList_idRoadMap",
                table: "VocList");

            migrationBuilder.DropIndex(
                name: "IX_Tests_idRoadMap",
                table: "Tests");

            migrationBuilder.DropIndex(
                name: "IX_Courses_idRoadMap",
                table: "Courses");

            migrationBuilder.DropColumn(
                name: "idRoadMap",
                table: "VocList");

            migrationBuilder.DropColumn(
                name: "idRoadMap",
                table: "Tests");

            migrationBuilder.DropColumn(
                name: "idRoadMap",
                table: "Courses");
        }
    }
}
