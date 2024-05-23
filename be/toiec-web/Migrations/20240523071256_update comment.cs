using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace toiec_web.Migrations
{
    public partial class updatecomment : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "commentCheck",
                table: "Reports",
                newName: "commentDeleted");

            migrationBuilder.RenameColumn(
                name: "isCheck",
                table: "Comments",
                newName: "isDeleted");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "commentDeleted",
                table: "Reports",
                newName: "commentCheck");

            migrationBuilder.RenameColumn(
                name: "isDeleted",
                table: "Comments",
                newName: "isCheck");
        }
    }
}
