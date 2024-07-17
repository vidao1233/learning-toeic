using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace toiec_web.Migrations
{
    public partial class updatedbs : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_TopicOfRoadMap",
                table: "VocList");

            migrationBuilder.DropForeignKey(
                name: "FK_TopicOfUser",
                table: "VocList");

            migrationBuilder.AddForeignKey(
                name: "FK_TopicOfRoadMap",
                table: "VocList",
                column: "idRoadMap",
                principalTable: "RoadMaps",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_TopicOfUser",
                table: "VocList",
                column: "idUser",
                principalTable: "AspNetUsers",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_TopicOfRoadMap",
                table: "VocList");

            migrationBuilder.DropForeignKey(
                name: "FK_TopicOfUser",
                table: "VocList");

            migrationBuilder.AddForeignKey(
                name: "FK_TopicOfRoadMap",
                table: "VocList",
                column: "idRoadMap",
                principalTable: "RoadMaps",
                principalColumn: "Id");

            migrationBuilder.AddForeignKey(
                name: "FK_TopicOfUser",
                table: "VocList",
                column: "idUser",
                principalTable: "AspNetUsers",
                principalColumn: "Id");
        }
    }
}
