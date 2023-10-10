
import 'dart:ui';

import 'package:shared_preferences/shared_preferences.dart';

class Setting{

  static final Setting _instance = Setting._internal();

  factory Setting() {
    return _instance;
  }

  Setting._internal();

  // default
  Locale _locale = Locale('en');

  Locale get locale => _locale;

  set locale(Locale value) {
    _locale = value;
  }

  loadSetting(){

  }

}