using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using toeic_web.Controllers;
using Microsoft.SqlServer.Management.Common;
using SMO = Microsoft.SqlServer.Management.Smo;
using toeic_web.Models;
using Microsoft.EntityFrameworkCore;

namespace toiec_web.Controllers
{
    public class SQLScriptGenerator : BaseAPIController
    {

        private readonly ToeicDbContext _dbContext;
        private readonly string _schemaName = "dbo";

        public SQLScriptGenerator(ToeicDbContext toeicDbContext)
        {
            _dbContext = toeicDbContext;
        }

        [HttpPost("generate")]
        public IActionResult GenerateScripts()
        {
            try
            {
                var fileName = GenerateScriptsToFile();
                var fileBytes = System.IO.File.ReadAllBytes(fileName);
                return File(fileBytes, "application/octet-stream", Path.GetFileName(fileName));
                //return Ok(new { FileName = fileName });
            }
            catch (Exception ex)
            {
                return StatusCode(500, $"Internal server error: {ex}");
            }
        }
        private string GenerateScriptsToFile()
        {
            var fileName = @".\SQLData\backup.sql";
            var connect = _dbContext.Database.GetDbConnection();
            var server = new SMO.Server(new ServerConnection((SqlConnection)connect));

            if (System.IO.File.Exists(fileName))
            {
                System.IO.File.Delete(fileName);
            }

            try
            {
                var options = new SMO.ScriptingOptions();
                var databases = server.Databases["toeic-web-db"];

                options.FileName = fileName;
                options.EnforceScriptingOptions = true;
                options.WithDependencies = true;
                options.IncludeHeaders = true;
                options.ScriptDrops = false;
                options.AppendToFile = true;
                options.ScriptSchema = true;
                options.ScriptData = true;
                options.Indexes = true;

                // Set the command timeout for the SQL command
                var commandTimeout = 600; // 10 minutes (in seconds)
                ((SqlCommand)connect.CreateCommand()).CommandTimeout = commandTimeout;

                var tableEnum = databases.Tables.Cast<SMO.Table>().Where(i => i.Schema == _schemaName);
                var viewEnum = databases.Views.Cast<SMO.View>().Where(i => i.Schema == _schemaName);
                var procedureEnum = databases.StoredProcedures.Cast<SMO.StoredProcedure>().Where(i => i.Schema == _schemaName);

                foreach (SMO.Table table in tableEnum)
                {
                    databases.Tables[table.Name, _schemaName].EnumScript(options);
                }

                options.ScriptData = false;
                options.WithDependencies = false;

                foreach (SMO.View view in viewEnum)
                {
                    databases.Views[view.Name, _schemaName].Script(options);
                }

                foreach (SMO.StoredProcedure procedure in procedureEnum)
                {
                    databases.StoredProcedures[procedure.Name, _schemaName].Script(options);
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return fileName;
        }
    }

}
