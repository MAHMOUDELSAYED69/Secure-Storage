import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageManager {
  const SecureStorageManager._();
  // Create a static storage instance
  static const FlutterSecureStorage _storage = FlutterSecureStorage();

  // Save data to secure storage
  static Future<void> writeData(String key, String value) async =>
      await _storage.write(key: key, value: value);

  // Read data from secure storage
  static Future<String?> readData(String key) async {
    final data = await _storage.read(key: key);

    return data;
  }

  // Delete data from secure storage
  static Future<void> deleteData(String key) async =>
      await _storage.delete(key: key);

  // Check if a key exists in secure storage
  static Future<bool> containsKey(String key) async {
    final exists = await _storage.containsKey(key: key);
    return exists;
  }

  // Clear all data from secure storage
  static Future<void> clearAllData() async => await _storage.deleteAll();
}
