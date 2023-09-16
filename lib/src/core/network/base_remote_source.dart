import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/src/core/exception/api_exception.dart';

abstract class BaseRemoteSource {
  BaseRemoteSource([Dio? dio]) : _dio = dio ?? Dio();

  final Dio _dio;

  @protected

  /// Returns data on success or throws [ApiException] on error.
  Future<dynamic> get(String path) async {
    try {
      final res = await _dio.get<Map<String, dynamic>>(path);
      return res.data;
    } on DioException catch (e) {
      throw ApiException(e.message ?? 'Connection failed.');
    }
  }
}
