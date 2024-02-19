import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
          'Connection timeout with the server. Please check your internet connection and try again.',
        );
      case DioExceptionType.sendTimeout:
        return ServerFailure(
          'Send timeout while communicating with the server. Please try again later.',
        );
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
          'Receive timeout while communicating with the server. Please try again later.',
        );
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(
          'The request to the server was canceled.',
        );
      case DioExceptionType.connectionError:
        return ServerFailure(
            'There was a problem connecting to the server. Please check your internet connection and try again later.,');
      case DioExceptionType.unknown:
        if (dioError.message!.contains(
          'SocketException',
        )) {
          return ServerFailure(
              'No internet connection. Please check your network settings.,');
        }
        return ServerFailure(
            "An unexpected error occurred. Please try again later.,");
      case DioExceptionType.badCertificate:
        return ServerFailure(
          'SSL Certificate Error: There is a problem with the server\'s certificate. Please try again later or contact support for assistance.,',
        );
      default:
        return ServerFailure(
          "An unexpected error occurred. Please try again later.",
        );
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(
        'Your request not found, Please try later',
      );
    } else if (statusCode == 500) {
      return ServerFailure(
        'Internal Server error,Please try later ',
      );
    } else {
      return ServerFailure(
        'Oops! There was an Error, Please try later',
      );
    }
  }
}
