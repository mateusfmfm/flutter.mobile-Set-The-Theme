import 'package:flutter/material.dart';
import 'package:setthetheme/environment/app.dart';
import 'package:setthetheme/environment/app_settings.dart';
import 'package:setthetheme/environment/red_theme/red_theme_color_resource.dart';
import 'package:setthetheme/environment/red_theme/red_theme_string_resource.dart';
import 'package:setthetheme/main.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var app = App(
    appConfig: AppSettings(
        appName: "Red Theme", asset: "red", appType: AppType.RED),
    strings: RedThemeStringResource(),
    colors: RedThemeColorResource(),
    child: const MyApp(),
  );
  runApp(app);
}
