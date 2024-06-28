import 'dart:ffi';

import "package:flutter/material.dart";
import 'package:shared_preferences/shared_preferences.dart';

class AppSettings extends ChangeNotifier {
  late SharedPreferences _preferences;
  Map<String, String> locale = {
    'locale': 'pt_BR',
    'name': 'R\$',
  };

  AppSettings() {
    _starSettings();
  }

  _starSettings() async {
    await _starPreferences();
    await _readLocale();
  }

  Future<void> _starPreferences() async {
    _preferences = await SharedPreferences.getInstance();
  }

  _readLocale() {
    final local = _preferences.getString('local') ?? 'pt_BR';
    final name = _preferences.getString('name') ?? 'R\$';
    var locale = {
      'locale': 'local',
      'name': 'name',
    };
    notifyListeners();
  }

  setLocale(String local, String name) async {
    await _preferences.setString('local', local);
    await _preferences.setString('name', name);
    await _readLocale();
  }
}
