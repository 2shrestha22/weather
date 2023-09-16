import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:weather/src/core/helper/storage_helper.dart';

/// Always provides the same instance of CacheManager.
class CacheManager {
  factory CacheManager() => _instance;
  CacheManager._();
  static final _instance = CacheManager._();

  late Box<String> _cacheBox;

  Future<void> init() async {
    _cacheBox = await Hive.openBox<String>(StorageHelper.cacheBoxName);
  }

  /// Set cache box.
  // ignore: avoid_setters_without_getters
  set cacheBox(Box<String> cacheBox) => _cacheBox = cacheBox;

  /// Add data to the cache
  Future<void> addToCache(String key, Object? value) async {
    await _cacheBox.put(key, jsonEncode(value));
  }

  /// Get data from the cache. Returns json object.
  dynamic getFromCache(String key) {
    final res = _cacheBox.get(key);
    if (res == null || res == 'null') return null;
    return jsonDecode(res);
  }

  /// Check if data exists in the cache for a given key
  bool containsKey(String key) {
    return _cacheBox.containsKey(key);
  }

  /// Remove data from the cache for a given key
  Future<void> removeFromCache(String key) async {
    await _cacheBox.delete(key);
  }

  /// Clear the entire cache
  Future<void> clearCache() async {
    await _cacheBox.clear();
  }
}
