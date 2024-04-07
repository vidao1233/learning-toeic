namespace toeic_web.ViewModels.Payment
{
    public class VNPayCreatePaymentResponseModel
    {
        public string OrderInfo { get; set; }
        public string TransactionId { get; set; }
        public string OrderId { get; set; }
        public string PaymentMethod { get; set; }
        public string PaymentId { get; set; }
        public bool Success { get; set; }
        public string Token { get; set; }
        public string VnPayResponseCode { get; set; }
        public double Amount { get; set; }
    }
}