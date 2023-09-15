class ApiException implements Exception {
  ApiException(this.error);

  final String error;
}
