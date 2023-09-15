import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/src/core/exception/api_exception.dart';
import 'package:weather/src/core/network/api_response.dart';

abstract class BaseRemoteSource {
  BaseRemoteSource(Dio dio) : _dio = dio;

  final Dio _dio;

  @protected
  Future<ApiResponse> get(String path) async {
    try {
      final res = await _dio.get(path);
      return SuccessResponse(res.data);
    } on DioException catch (e) {
      return FailureResponse(ApiException(e.toString()));
    }
  }
}
