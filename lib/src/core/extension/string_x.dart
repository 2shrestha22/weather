extension StringX on String? {
  bool isEmptyOrNull() {
    return this?.isEmpty ?? true;
  }
}
