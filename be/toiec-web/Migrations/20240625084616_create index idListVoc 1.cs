using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace toiec_web.Migrations
{
    public partial class createindexidListVoc1 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropIndex(
                name: "IX_Vocabularies_idList",
                table: "Vocabularies");

            migrationBuilder.CreateIndex(
                name: "IX_Vocabularies_idList",
                table: "Vocabularies",
                column: "idList");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
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
    }
}
