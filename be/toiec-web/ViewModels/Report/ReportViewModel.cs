namespace toiec_web.ViewModels.Report
{
    public class ReportViewModel
    {
        public Guid idReport { get; set; }
        public Guid idComment { get; set; }
        public string content { get; set; }
        public string accusedUsername { get; set; }
        public string idUser { get; set; }
        public string reporterUsername { get; set; }
        public string reason { get; set; }
        public DateTime reportDate { get; set; }
        public string? checkNote { get; set; }
        public bool commentDeleted { get; set; }
        public bool isCheck { get; set; }
    }
}
