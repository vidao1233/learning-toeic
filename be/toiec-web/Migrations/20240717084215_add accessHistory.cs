﻿using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace toiec_web.Migrations
{
    public partial class addaccessHistory : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "AspNetRoles",
                columns: table => new
                {
                    Id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    NormalizedName = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    ConcurrencyStamp = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetRoles", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUsers",
                columns: table => new
                {
                    Id = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Discriminator = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Fullname = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DateOfBirth = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Gender = table.Column<bool>(type: "bit", nullable: true),
                    ImageURL = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UserName = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    NormalizedUserName = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    Email = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    NormalizedEmail = table.Column<string>(type: "nvarchar(256)", maxLength: 256, nullable: true),
                    EmailConfirmed = table.Column<bool>(type: "bit", nullable: false),
                    PasswordHash = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    SecurityStamp = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ConcurrencyStamp = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PhoneNumber = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    PhoneNumberConfirmed = table.Column<bool>(type: "bit", nullable: false),
                    TwoFactorEnabled = table.Column<bool>(type: "bit", nullable: false),
                    LockoutEnd = table.Column<DateTimeOffset>(type: "datetimeoffset", nullable: true),
                    LockoutEnabled = table.Column<bool>(type: "bit", nullable: false),
                    AccessFailedCount = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUsers", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "PaymentMethods",
                columns: table => new
                {
                    idMethod = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_PaymentMethods", x => x.idMethod);
                });

            migrationBuilder.CreateTable(
                name: "ResetPasswords",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UserId = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    OTP = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    InsertDateTimeUTC = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ResetPasswords", x => x.Id);
                });

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
                name: "ScoreParams",
                columns: table => new
                {
                    correctAnswers = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    listenningScore = table.Column<int>(type: "int", nullable: false),
                    readingScore = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_ScoreParams", x => x.correctAnswers);
                });

            migrationBuilder.CreateTable(
                name: "TestParts",
                columns: table => new
                {
                    partId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    partName = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestParts", x => x.partId);
                });

            migrationBuilder.CreateTable(
                name: "TestTypes",
                columns: table => new
                {
                    idTestType = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    typeName = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestTypes", x => x.idTestType);
                });

            migrationBuilder.CreateTable(
                name: "UserChatBots",
                columns: table => new
                {
                    idUser = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    availableChat = table.Column<int>(type: "int", nullable: false),
                    lastReset = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserChatBots", x => x.idUser);
                });

            migrationBuilder.CreateTable(
                name: "AspNetRoleClaims",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    RoleId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    ClaimType = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ClaimValue = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetRoleClaims", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AspNetRoleClaims_AspNetRoles_RoleId",
                        column: x => x.RoleId,
                        principalTable: "AspNetRoles",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AccessHistories",
                columns: table => new
                {
                    Id = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    AccessTime = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AccessHistories", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AccessHistories_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "Admins",
                columns: table => new
                {
                    idAdmin = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idUser = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Admins", x => x.idAdmin);
                    table.ForeignKey(
                        name: "FK_AdminOfUser",
                        column: x => x.idUser,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserClaims",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    ClaimType = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    ClaimValue = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserClaims", x => x.Id);
                    table.ForeignKey(
                        name: "FK_AspNetUserClaims_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserLogins",
                columns: table => new
                {
                    LoginProvider = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    ProviderKey = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    ProviderDisplayName = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserLogins", x => new { x.LoginProvider, x.ProviderKey });
                    table.ForeignKey(
                        name: "FK_AspNetUserLogins_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserRoles",
                columns: table => new
                {
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    RoleId = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserRoles", x => new { x.UserId, x.RoleId });
                    table.ForeignKey(
                        name: "FK_AspNetUserRoles_AspNetRoles_RoleId",
                        column: x => x.RoleId,
                        principalTable: "AspNetRoles",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_AspNetUserRoles_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AspNetUserTokens",
                columns: table => new
                {
                    UserId = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    LoginProvider = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Name = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    Value = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AspNetUserTokens", x => new { x.UserId, x.LoginProvider, x.Name });
                    table.ForeignKey(
                        name: "FK_AspNetUserTokens_AspNetUsers_UserId",
                        column: x => x.UserId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Professors",
                columns: table => new
                {
                    idProfessor = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idUser = table.Column<string>(type: "nvarchar(450)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Professors", x => x.idProfessor);
                    table.ForeignKey(
                        name: "FK_ProfessorOfUser",
                        column: x => x.idUser,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Students",
                columns: table => new
                {
                    idStudent = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idUser = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    freeTest = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Students", x => x.idStudent);
                    table.ForeignKey(
                        name: "FK_StudentOfUser",
                        column: x => x.idUser,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
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

            migrationBuilder.CreateTable(
                name: "VocList",
                columns: table => new
                {
                    idVocList = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idUser = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    idRoadMap = table.Column<string>(type: "nvarchar(450)", nullable: true),
                    title = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    description = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    author = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    quantity = table.Column<double>(type: "float", nullable: false),
                    createDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    status = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    isPublic = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_VocList", x => x.idVocList);
                    table.ForeignKey(
                        name: "FK_TopicOfRoadMap",
                        column: x => x.idRoadMap,
                        principalTable: "RoadMaps",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_TopicOfUser",
                        column: x => x.idUser,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "VipPackages",
                columns: table => new
                {
                    idPackage = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idAdmin = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    description = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    price = table.Column<double>(type: "float", nullable: false),
                    duration = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_VipPackages", x => x.idPackage);
                    table.ForeignKey(
                        name: "FK_ManageVipPackage",
                        column: x => x.idAdmin,
                        principalTable: "Admins",
                        principalColumn: "idAdmin");
                });

            migrationBuilder.CreateTable(
                name: "Courses",
                columns: table => new
                {
                    idCourse = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idProfessor = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idRoadMap = table.Column<string>(type: "nvarchar(450)", nullable: true),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    description = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    isVip = table.Column<bool>(type: "bit", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Courses", x => x.idCourse);
                    table.ForeignKey(
                        name: "FK_CourseOfProfessor",
                        column: x => x.idProfessor,
                        principalTable: "Professors",
                        principalColumn: "idProfessor");
                    table.ForeignKey(
                        name: "FK_CourseOfRoadMap",
                        column: x => x.idRoadMap,
                        principalTable: "RoadMaps",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "Tests",
                columns: table => new
                {
                    idTest = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idType = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idProfessor = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idRoadMap = table.Column<string>(type: "nvarchar(450)", nullable: true),
                    name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    createDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    useDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    isVip = table.Column<bool>(type: "bit", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Tests", x => x.idTest);
                    table.ForeignKey(
                        name: "TestOfProfessor",
                        column: x => x.idProfessor,
                        principalTable: "Professors",
                        principalColumn: "idProfessor");
                    table.ForeignKey(
                        name: "TestOfRoadMap",
                        column: x => x.idRoadMap,
                        principalTable: "RoadMaps",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "TypeTest",
                        column: x => x.idType,
                        principalTable: "TestTypes",
                        principalColumn: "idTestType");
                });

            migrationBuilder.CreateTable(
                name: "VipStudents",
                columns: table => new
                {
                    idVipStudent = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idStudent = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    vipExpire = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_VipStudents", x => x.idVipStudent);
                    table.ForeignKey(
                        name: "FK_VipStudentOfStudent",
                        column: x => x.idStudent,
                        principalTable: "Students",
                        principalColumn: "idStudent",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Vocabularies",
                columns: table => new
                {
                    idVoc = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idList = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    topic = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    engWord = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    pronunciation = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    wordType = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    meaning = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    image = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    example = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    status = table.Column<bool>(type: "bit", nullable: false),
                    UsersId = table.Column<string>(type: "nvarchar(450)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Vocabularies", x => x.idVoc);
                    table.ForeignKey(
                        name: "FK_Vocabularies_AspNetUsers_UsersId",
                        column: x => x.UsersId,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id");
                    table.ForeignKey(
                        name: "FK_VocOfTopic",
                        column: x => x.idList,
                        principalTable: "VocList",
                        principalColumn: "idVocList",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Payments",
                columns: table => new
                {
                    idPayment = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idMethod = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idStudent = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idPackage = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    message = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    paymentDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    paymentAmount = table.Column<double>(type: "float", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Payments", x => x.idPayment);
                    table.ForeignKey(
                        name: "PaymentOfMethod",
                        column: x => x.idMethod,
                        principalTable: "PaymentMethods",
                        principalColumn: "idMethod",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "PaymentOfStudent",
                        column: x => x.idStudent,
                        principalTable: "Students",
                        principalColumn: "idStudent",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "PaymentOfVipPackage",
                        column: x => x.idPackage,
                        principalTable: "VipPackages",
                        principalColumn: "idPackage",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Lessons",
                columns: table => new
                {
                    idLesson = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idCourse = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    title = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    content = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    isVip = table.Column<bool>(type: "bit", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Lessons", x => x.idLesson);
                    table.ForeignKey(
                        name: "FK_LessonOfCourse",
                        column: x => x.idCourse,
                        principalTable: "Courses",
                        principalColumn: "idCourse",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "TestQuestionUnits",
                columns: table => new
                {
                    idQuestionUnit = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idTest = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idTestPart = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    paragraph = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    audio = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    image = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    script = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    translation = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestQuestionUnits", x => x.idQuestionUnit);
                    table.ForeignKey(
                        name: "FK_UnitOfTestPart",
                        column: x => x.idTestPart,
                        principalTable: "TestParts",
                        principalColumn: "partId");
                    table.ForeignKey(
                        name: "FK_UnitsOfTest",
                        column: x => x.idTest,
                        principalTable: "Tests",
                        principalColumn: "idTest",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "TestRecords",
                columns: table => new
                {
                    idRecord = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idTest = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idStudent = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    createDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    listenCorrect = table.Column<int>(type: "int", nullable: false),
                    listenScore = table.Column<int>(type: "int", nullable: false),
                    readingCorrect = table.Column<int>(type: "int", nullable: false),
                    readScore = table.Column<int>(type: "int", nullable: false),
                    correctAns = table.Column<int>(type: "int", nullable: false),
                    wrongAns = table.Column<int>(type: "int", nullable: false),
                    totalScore = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_TestRecords", x => x.idRecord);
                    table.ForeignKey(
                        name: "RecordOfStudent",
                        column: x => x.idStudent,
                        principalTable: "Students",
                        principalColumn: "idStudent",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "RecordOfTest",
                        column: x => x.idTest,
                        principalTable: "Tests",
                        principalColumn: "idTest");
                });

            migrationBuilder.CreateTable(
                name: "Comments",
                columns: table => new
                {
                    idComment = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idLesson = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idCommentReply = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    idUser = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    content = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    createdDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    isDeleted = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Comments", x => x.idComment);
                    table.ForeignKey(
                        name: "FK_CommentsOfLesson",
                        column: x => x.idLesson,
                        principalTable: "Lessons",
                        principalColumn: "idLesson",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_CommentsOfUser",
                        column: x => x.idUser,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Quizs",
                columns: table => new
                {
                    idQuiz = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idLesson = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    title = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Quizs", x => x.idQuiz);
                    table.ForeignKey(
                        name: "FK_QuizzesOfLesson",
                        column: x => x.idLesson,
                        principalTable: "Lessons",
                        principalColumn: "idLesson",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Reports",
                columns: table => new
                {
                    idReport = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idComment = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idUser = table.Column<string>(type: "nvarchar(450)", nullable: false),
                    reason = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    reportDate = table.Column<DateTime>(type: "datetime2", nullable: false),
                    checkNote = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    commentDeleted = table.Column<bool>(type: "bit", nullable: false),
                    isCheck = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Reports", x => x.idReport);
                    table.ForeignKey(
                        name: "FK_ReportOfComment",
                        column: x => x.idComment,
                        principalTable: "Comments",
                        principalColumn: "idComment");
                    table.ForeignKey(
                        name: "FK_ReportsOfUser",
                        column: x => x.idUser,
                        principalTable: "AspNetUsers",
                        principalColumn: "Id");
                });

            migrationBuilder.CreateTable(
                name: "Questions",
                columns: table => new
                {
                    idQuestion = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idQuiz = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    idUnit = table.Column<Guid>(type: "uniqueidentifier", nullable: true),
                    idProfessor = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    content = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    answer = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    explaination = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    choice_1 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    choice_2 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    choice_3 = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    choice_4 = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Questions", x => x.idQuestion);
                    table.ForeignKey(
                        name: "FK_QuestionsOfProfessor",
                        column: x => x.idProfessor,
                        principalTable: "Professors",
                        principalColumn: "idProfessor");
                    table.ForeignKey(
                        name: "FK_QuestionsOfQuiz",
                        column: x => x.idQuiz,
                        principalTable: "Quizs",
                        principalColumn: "idQuiz",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_QuestionsOfUnit",
                        column: x => x.idUnit,
                        principalTable: "TestQuestionUnits",
                        principalColumn: "idQuestionUnit",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "AnswerQuestions",
                columns: table => new
                {
                    idAnswer = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idQuestion = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    content = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    QuestionidQuestion = table.Column<Guid>(type: "uniqueidentifier", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_AnswerQuestions", x => x.idAnswer);
                    table.ForeignKey(
                        name: "FK_AnswerQuestions_Questions_QuestionidQuestion",
                        column: x => x.QuestionidQuestion,
                        principalTable: "Questions",
                        principalColumn: "idQuestion",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "UserAnswers",
                columns: table => new
                {
                    idUAnswer = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idQuestion = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idRecord = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    idStudent = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    userChoice = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    state = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_UserAnswers", x => x.idUAnswer);
                    table.ForeignKey(
                        name: "FK_AnswerOfQuestion",
                        column: x => x.idQuestion,
                        principalTable: "Questions",
                        principalColumn: "idQuestion",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_AnswerOfStudent",
                        column: x => x.idStudent,
                        principalTable: "Students",
                        principalColumn: "idStudent",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_RecordAnswer",
                        column: x => x.idRecord,
                        principalTable: "TestRecords",
                        principalColumn: "idRecord",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_AccessHistories_UserId",
                table: "AccessHistories",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_Admins_idUser",
                table: "Admins",
                column: "idUser",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_AnswerQuestions_QuestionidQuestion",
                table: "AnswerQuestions",
                column: "QuestionidQuestion");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetRoleClaims_RoleId",
                table: "AspNetRoleClaims",
                column: "RoleId");

            migrationBuilder.CreateIndex(
                name: "RoleNameIndex",
                table: "AspNetRoles",
                column: "NormalizedName",
                unique: true,
                filter: "[NormalizedName] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUserClaims_UserId",
                table: "AspNetUserClaims",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUserLogins_UserId",
                table: "AspNetUserLogins",
                column: "UserId");

            migrationBuilder.CreateIndex(
                name: "IX_AspNetUserRoles_RoleId",
                table: "AspNetUserRoles",
                column: "RoleId");

            migrationBuilder.CreateIndex(
                name: "EmailIndex",
                table: "AspNetUsers",
                column: "NormalizedEmail");

            migrationBuilder.CreateIndex(
                name: "UserNameIndex",
                table: "AspNetUsers",
                column: "NormalizedUserName",
                unique: true,
                filter: "[NormalizedUserName] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_Comments_idLesson",
                table: "Comments",
                column: "idLesson");

            migrationBuilder.CreateIndex(
                name: "IX_Comments_idUser",
                table: "Comments",
                column: "idUser");

            migrationBuilder.CreateIndex(
                name: "IX_Courses_idProfessor",
                table: "Courses",
                column: "idProfessor");

            migrationBuilder.CreateIndex(
                name: "IX_Courses_idRoadMap",
                table: "Courses",
                column: "idRoadMap");

            migrationBuilder.CreateIndex(
                name: "IX_Lessons_idCourse",
                table: "Lessons",
                column: "idCourse");

            migrationBuilder.CreateIndex(
                name: "IX_Payments_idMethod",
                table: "Payments",
                column: "idMethod");

            migrationBuilder.CreateIndex(
                name: "IX_Payments_idPackage",
                table: "Payments",
                column: "idPackage");

            migrationBuilder.CreateIndex(
                name: "IX_Payments_idStudent",
                table: "Payments",
                column: "idStudent");

            migrationBuilder.CreateIndex(
                name: "IX_Professors_idUser",
                table: "Professors",
                column: "idUser",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Questions_idProfessor",
                table: "Questions",
                column: "idProfessor");

            migrationBuilder.CreateIndex(
                name: "IX_Questions_idQuiz",
                table: "Questions",
                column: "idQuiz");

            migrationBuilder.CreateIndex(
                name: "IX_Questions_idUnit",
                table: "Questions",
                column: "idUnit");

            migrationBuilder.CreateIndex(
                name: "IX_Quizs_idLesson",
                table: "Quizs",
                column: "idLesson");

            migrationBuilder.CreateIndex(
                name: "IX_Reports_idComment",
                table: "Reports",
                column: "idComment");

            migrationBuilder.CreateIndex(
                name: "IX_Reports_idUser",
                table: "Reports",
                column: "idUser");

            migrationBuilder.CreateIndex(
                name: "IX_Students_idUser",
                table: "Students",
                column: "idUser",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_TestQuestionUnits_idTest",
                table: "TestQuestionUnits",
                column: "idTest");

            migrationBuilder.CreateIndex(
                name: "IX_TestQuestionUnits_idTestPart",
                table: "TestQuestionUnits",
                column: "idTestPart");

            migrationBuilder.CreateIndex(
                name: "IX_TestRecords_idStudent",
                table: "TestRecords",
                column: "idStudent");

            migrationBuilder.CreateIndex(
                name: "IX_TestRecords_idTest",
                table: "TestRecords",
                column: "idTest");

            migrationBuilder.CreateIndex(
                name: "IX_Tests_idProfessor",
                table: "Tests",
                column: "idProfessor");

            migrationBuilder.CreateIndex(
                name: "IX_Tests_idRoadMap",
                table: "Tests",
                column: "idRoadMap");

            migrationBuilder.CreateIndex(
                name: "IX_Tests_idType",
                table: "Tests",
                column: "idType");

            migrationBuilder.CreateIndex(
                name: "IX_UserAnswers_idQuestion",
                table: "UserAnswers",
                column: "idQuestion");

            migrationBuilder.CreateIndex(
                name: "IX_UserAnswers_idRecord",
                table: "UserAnswers",
                column: "idRecord");

            migrationBuilder.CreateIndex(
                name: "IX_UserAnswers_idStudent",
                table: "UserAnswers",
                column: "idStudent");

            migrationBuilder.CreateIndex(
                name: "IX_UserRoutes_IdRoadMap",
                table: "UserRoutes",
                column: "IdRoadMap");

            migrationBuilder.CreateIndex(
                name: "IX_UserRoutes_IdUser",
                table: "UserRoutes",
                column: "IdUser");

            migrationBuilder.CreateIndex(
                name: "IX_VipPackages_idAdmin",
                table: "VipPackages",
                column: "idAdmin");

            migrationBuilder.CreateIndex(
                name: "IX_VipStudents_idStudent",
                table: "VipStudents",
                column: "idStudent",
                unique: true);

            migrationBuilder.CreateIndex(
                name: "IX_Vocabularies_idList",
                table: "Vocabularies",
                column: "idList");

            migrationBuilder.CreateIndex(
                name: "IX_Vocabularies_idVoc",
                table: "Vocabularies",
                column: "idVoc");

            migrationBuilder.CreateIndex(
                name: "IX_Vocabularies_UsersId",
                table: "Vocabularies",
                column: "UsersId");

            migrationBuilder.CreateIndex(
                name: "IX_VocList_idRoadMap",
                table: "VocList",
                column: "idRoadMap");

            migrationBuilder.CreateIndex(
                name: "IX_VocList_idUser",
                table: "VocList",
                column: "idUser");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "AccessHistories");

            migrationBuilder.DropTable(
                name: "AnswerQuestions");

            migrationBuilder.DropTable(
                name: "AspNetRoleClaims");

            migrationBuilder.DropTable(
                name: "AspNetUserClaims");

            migrationBuilder.DropTable(
                name: "AspNetUserLogins");

            migrationBuilder.DropTable(
                name: "AspNetUserRoles");

            migrationBuilder.DropTable(
                name: "AspNetUserTokens");

            migrationBuilder.DropTable(
                name: "Payments");

            migrationBuilder.DropTable(
                name: "Reports");

            migrationBuilder.DropTable(
                name: "ResetPasswords");

            migrationBuilder.DropTable(
                name: "ScoreParams");

            migrationBuilder.DropTable(
                name: "UserAnswers");

            migrationBuilder.DropTable(
                name: "UserChatBots");

            migrationBuilder.DropTable(
                name: "UserRoutes");

            migrationBuilder.DropTable(
                name: "VipStudents");

            migrationBuilder.DropTable(
                name: "Vocabularies");

            migrationBuilder.DropTable(
                name: "AspNetRoles");

            migrationBuilder.DropTable(
                name: "PaymentMethods");

            migrationBuilder.DropTable(
                name: "VipPackages");

            migrationBuilder.DropTable(
                name: "Comments");

            migrationBuilder.DropTable(
                name: "Questions");

            migrationBuilder.DropTable(
                name: "TestRecords");

            migrationBuilder.DropTable(
                name: "VocList");

            migrationBuilder.DropTable(
                name: "Admins");

            migrationBuilder.DropTable(
                name: "Quizs");

            migrationBuilder.DropTable(
                name: "TestQuestionUnits");

            migrationBuilder.DropTable(
                name: "Students");

            migrationBuilder.DropTable(
                name: "Lessons");

            migrationBuilder.DropTable(
                name: "TestParts");

            migrationBuilder.DropTable(
                name: "Tests");

            migrationBuilder.DropTable(
                name: "Courses");

            migrationBuilder.DropTable(
                name: "TestTypes");

            migrationBuilder.DropTable(
                name: "Professors");

            migrationBuilder.DropTable(
                name: "RoadMaps");

            migrationBuilder.DropTable(
                name: "AspNetUsers");
        }
    }
}
