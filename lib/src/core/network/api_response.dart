import 'package:weather/src/core/exception/api_exception.dart';

sealed class ApiResponse {}

class SuccessResponse extends ApiResponse {
  SuccessResponse(this.data);

  final dynamic data;
}

class FailureResponse extends ApiResponse {
  FailureResponse(this.exception);

  final ApiException exception;
}
