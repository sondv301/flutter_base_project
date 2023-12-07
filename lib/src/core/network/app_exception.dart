/// Author: sondv
/// Created 07/12/2023 at 13:42

class AppException implements Exception {
  late String messageError;
  AppException.fromStatusCode(int statusCode) {
    switch (statusCode) {
      case 401:
        messageError = "Lỗi xác thực";
        break;
      case 404:
        messageError = "Không có dữ liệu";
        break;
      case 408:
        messageError = "Kết nối quá hạn";
        break;
      case 500:
        messageError = "Sự cố khi kết nối tới máy chủ";
        break;
      case 502:
        messageError = "Sự cố phía máy chủ";
        break;
      case 503:
        messageError = "Yêu cầu không có sẵn";
        break;
      default:
        messageError = "Có lỗi xảy ra, vui lòng thử lại!";
        break;
    }
  }
  AppException.fromMessage(String message) {
    messageError = message;
  }
  AppException({int? statusCode, String? message}) {
    messageError = 'Có lỗi không mong muốn xảy ra!';
    if (message != null) {
      if (message.contains('is not a subtype of type')) {
        messageError = "Lỗi định dạng dữ liệu";
      }
    } else if (statusCode != null) {
      messageError = AppException.fromStatusCode(statusCode).toString();
    }
  }
  @override
  String toString() {
    return messageError;
  }
}
