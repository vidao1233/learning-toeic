using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace toiec_web.Migrations
{
    public partial class createindexidListVoc : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_Vocabularies_idList",
                table: "Vocabularies");

            migrationBuilder.CreateIndex(
                name: "IX_Vocabularies_idList",
                table: "Vocabularies",
                column: "idList",
                unique: true);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_Vocabularies_idList",
                table: "Vocabularies");

            migrationBuilder.CreateIndex(
                name: "IX_Vocabularies_idList",
                table: "Vocabularies",
                column: "idList");
        }
    }
}
