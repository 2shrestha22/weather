import 'dart:async';
import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:rxdart/transformers.dart';

/// Provides easy way to save and get objects in storage. Saves objects as
/// JSON String.
class StorageService {
  StorageService(Box<String> box) : _box = box;

  final Box<String> _box;

  /// Safe key value pair. Saves value as JSON String.
  Future<void> put(String key, Object? value) async {
    await _box.put(key, jsonEncode(value));
  }

  /// Add data as JSON String to the box with auto-increment key.
  Future<void> add(Object? value) async {
    await _box.add(jsonEncode(value));
  }

  /// Get data from the box. Returns JSON Object.
  dynamic get(String key) {
    final res = _box.get(key);
    if (res == null || res == 'null') return null;
    return jsonDecode(res);
  }

  /// Get all data from the box. Returns list of JSON Object.
  List<dynamic> getAll() => _box.values.map(jsonDecode).toList();

  /// Check if data exists in the box for a given key.
  bool containsKey(String key) {
    return _box.containsKey(key);
  }

  /// Remove data from the box for a given key.
  Future<void> delete(String key) async {
    await _box.delete(key);
  }

  /// Remove data from the box at given index.
  Future<void> deleteAt(int index) async {
    await _box.deleteAt(index);
  }

  /// Clear the entire box.
  Future<void> clear() async {
    await _box.clear();
  }

  Stream<List<dynamic>> dataStream() {
    final controller = StreamController<List<dynamic>>();
    _box.watch().listen((event) {
      controller.add(getAll());
    });
    return controller.stream.startWith(getAll());
  }
}
