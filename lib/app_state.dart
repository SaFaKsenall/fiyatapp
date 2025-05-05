import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _isLoggedIn = await secureStorage.getBool('ff_isLoggedIn') ?? _isLoggedIn;
    });
    await _safeInitAsync(() async {
      _displayName =
          await secureStorage.getString('ff_displayName') ?? _displayName;
    });
    await _safeInitAsync(() async {
      _userrole = await secureStorage.getString('ff_userrole') ?? _userrole;
    });
    await _safeInitAsync(() async {
      _status = await secureStorage.getString('ff_status') ?? _status;
    });
    await _safeInitAsync(() async {
      _businessName =
          await secureStorage.getString('ff_businessName') ?? _businessName;
    });
    await _safeInitAsync(() async {
      _uid = await secureStorage.getString('ff_uid') ?? _uid;
    });
    await _safeInitAsync(() async {
      _createdAt = await secureStorage.getString('ff_createdAt') ?? _createdAt;
    });
    await _safeInitAsync(() async {
      _authToken = await secureStorage.getString('ff_authToken') ?? _authToken;
    });
    await _safeInitAsync(() async {
      _email = await secureStorage.getString('ff_email') ?? _email;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  bool _isLoggedIn = false;
  bool get isLoggedIn => _isLoggedIn;
  set isLoggedIn(bool value) {
    _isLoggedIn = value;
    secureStorage.setBool('ff_isLoggedIn', value);
  }

  void deleteIsLoggedIn() {
    secureStorage.delete(key: 'ff_isLoggedIn');
  }

  String _displayName = '';
  String get displayName => _displayName;
  set displayName(String value) {
    _displayName = value;
    secureStorage.setString('ff_displayName', value);
  }

  void deleteDisplayName() {
    secureStorage.delete(key: 'ff_displayName');
  }

  String _userrole = '';
  String get userrole => _userrole;
  set userrole(String value) {
    _userrole = value;
    secureStorage.setString('ff_userrole', value);
  }

  void deleteUserrole() {
    secureStorage.delete(key: 'ff_userrole');
  }

  String _status = '';
  String get status => _status;
  set status(String value) {
    _status = value;
    secureStorage.setString('ff_status', value);
  }

  void deleteStatus() {
    secureStorage.delete(key: 'ff_status');
  }

  String _businessName = '';
  String get businessName => _businessName;
  set businessName(String value) {
    _businessName = value;
    secureStorage.setString('ff_businessName', value);
  }

  void deleteBusinessName() {
    secureStorage.delete(key: 'ff_businessName');
  }

  String _uid = '';
  String get uid => _uid;
  set uid(String value) {
    _uid = value;
    secureStorage.setString('ff_uid', value);
  }

  void deleteUid() {
    secureStorage.delete(key: 'ff_uid');
  }

  String _createdAt = '';
  String get createdAt => _createdAt;
  set createdAt(String value) {
    _createdAt = value;
    secureStorage.setString('ff_createdAt', value);
  }

  void deleteCreatedAt() {
    secureStorage.delete(key: 'ff_createdAt');
  }

  String _authToken = '';
  String get authToken => _authToken;
  set authToken(String value) {
    _authToken = value;
    secureStorage.setString('ff_authToken', value);
  }

  void deleteAuthToken() {
    secureStorage.delete(key: 'ff_authToken');
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
    secureStorage.setString('ff_email', value);
  }

  void deleteEmail() {
    secureStorage.delete(key: 'ff_email');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
