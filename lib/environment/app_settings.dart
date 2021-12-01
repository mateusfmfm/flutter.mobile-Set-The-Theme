import 'package:flutter/cupertino.dart';

enum AppType { GREEN, PURPLE, RED }

class AppSettings {
  final String? appName;
  final String? asset;
  final AppType? appType;

  AppSettings(
      {@required this.appName, @required this.asset, @required this.appType});
}
