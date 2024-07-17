using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace toiec_web.Migrations
{
    public partial class updatedbs1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AccessHistories_AspNetUsers_UserId",
                table: "AccessHistories");

            migrationBuilder.AddForeignKey(
                name: "FK_AccessHistories_AspNetUsers_UserId",
                table: "AccessHistories",
                column: "UserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_AccessHistories_AspNetUsers_UserId",
                table: "AccessHistories");

            migrationBuilder.AddForeignKey(
                name: "FK_AccessHistories_AspNetUsers_UserId",
                table: "AccessHistories",
                column: "UserId",
                principalTable: "AspNetUsers",
                principalColumn: "Id");
        }
    }
}
