import 'package:weather/src/feature/remainder/domain/model/remainder.dart';

abstract class RemainderRepo {
  List<Remainder> getRemainders();
  Future<void> createRemainder(Remainder remainder);
  Remainder deleteRemainder(String id);
}
