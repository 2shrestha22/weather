class AppException implements Exception {
  AppException(this.message);

  final String message;

  @override
  String toString() {
    return message;
  }
}

class SomethingWentWrongException extends AppException {
  SomethingWentWrongException() : super('Something went wrong.');
}
