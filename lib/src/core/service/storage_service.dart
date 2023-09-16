import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:weather/src/core/helper/storage_helper.dart';

/// Always provides the same instance of StorageService.
class StorageService {
  factory StorageService() => _instance;
  StorageService._();
  static final _instance = StorageService._();

  late Box<String> _box;

  Future<void> init() async {
    _box = await Hive.openBox<String>(StorageHelper.cacheBoxName);
  }

  /// Add data to the box.
  Future<void> put(String key, Object? value) async {
    await _box.put(key, jsonEncode(value));
  }

  /// Get data from the box. Returns json object.
  dynamic get(String key) {
    final res = _box.get(key);
    if (res == null || res == 'null') return null;
    return jsonDecode(res);
  }

  /// Check if data exists in the box for a given key.
  bool containsKey(String key) {
    return _box.containsKey(key);
  }

  /// Remove data from the box for a given key.
  Future<void> delete(String key) async {
    await _box.delete(key);
  }

  /// Clear the entire box.
  Future<void> clear() async {
    await _box.clear();
  }
}
