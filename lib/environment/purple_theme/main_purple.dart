import 'package:flutter/material.dart';
import 'package:setthetheme/environment/app.dart';
import 'package:setthetheme/environment/app_settings.dart';
import 'package:setthetheme/environment/purple_theme/purple_theme_color_resource.dart';
import 'package:setthetheme/environment/purple_theme/purple_theme_string_resource.dart';
import 'package:setthetheme/main.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  var app = App(
    appConfig: AppSettings(
        appName: "Purple Theme", asset: "purple", appType: AppType.PURPLE),
    strings: PurpleThemeStringResource(),
    colors: PurpleThemeColorResource(),
    child: const MyApp(),
  );
  runApp(app);
}
