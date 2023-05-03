import 'package:flutter_secure_storage/flutter_secure_storage.dart';


class SecureStorageManager {

  final _storage = FlutterSecureStorage();

   Future<String?> getName() async {
    String? name = await _storage.read(key: "name");
    return name??'default';
  }

  Future<void> setValue(String value) async {
    await _storage.write(key: "name", value: value);
  }
}