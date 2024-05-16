using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace toiec_web.Migrations
{
    public partial class uppdate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<bool>(
                name: "isVip",
                table: "Tests",
                type: "bit",
                nullable: true);

            migrationBuilder.AddColumn<bool>(
                name: "isCheck",
                table: "Comments",
                type: "bit",
                nullable: false,
                defaultValue: false);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "isVip",
                table: "Tests");

            migrationBuilder.DropColumn(
                name: "isCheck",
                table: "Comments");
        }
    }
}
