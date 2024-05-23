using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace toiec_web.Migrations
{
    public partial class addreport : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AdminCheckReport",
                table: "Reports");

            migrationBuilder.DropIndex(
                name: "IX_Reports_idAdmin",
                table: "Reports");

            migrationBuilder.DropColumn(
                name: "idAdmin",
                table: "Reports");

            migrationBuilder.RenameColumn(
                name: "idPost",
                table: "Reports",
                newName: "idComment");

            migrationBuilder.AddColumn<string>(
                name: "checkNote",
                table: "Reports",
                type: "nvarchar(max)",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "commentCheck",
                table: "Reports",
                type: "bit",
                nullable: false,
                defaultValue: false);

            migrationBuilder.CreateIndex(
                name: "IX_Reports_idComment",
                table: "Reports",
                column: "idComment");

            migrationBuilder.AddForeignKey(
                name: "FK_ReportOfComment",
                table: "Reports",
                column: "idComment",
                principalTable: "Comments",
                principalColumn: "idComment");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_ReportOfComment",
                table: "Reports");

            migrationBuilder.DropIndex(
                name: "IX_Reports_idComment",
                table: "Reports");

            migrationBuilder.DropColumn(
                name: "checkNote",
                table: "Reports");

            migrationBuilder.DropColumn(
                name: "commentCheck",
                table: "Reports");

            migrationBuilder.RenameColumn(
                name: "idComment",
                table: "Reports",
                newName: "idPost");

            migrationBuilder.AddColumn<Guid>(
                name: "idAdmin",
                table: "Reports",
                type: "uniqueidentifier",
                nullable: false,
                defaultValue: new Guid("00000000-0000-0000-0000-000000000000"));

            migrationBuilder.CreateIndex(
                name: "IX_Reports_idAdmin",
                table: "Reports",
                column: "idAdmin");

            migrationBuilder.AddForeignKey(
                name: "FK_AdminCheckReport",
                table: "Reports",
                column: "idAdmin",
                principalTable: "Admins",
                principalColumn: "idAdmin");
        }
    }
}
