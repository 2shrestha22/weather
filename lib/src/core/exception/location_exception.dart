import 'package:weather/src/core/exception/app_exception.dart';

abstract class LocationException extends AppException {
  LocationException(super.message);
}

class LocationNotEnabledException extends LocationException {
  LocationNotEnabledException() : super('Location service is not enabled.');
}

class LocationPermissionDeniedException extends LocationException {
  LocationPermissionDeniedException() : super('Location permission denied.');
}
