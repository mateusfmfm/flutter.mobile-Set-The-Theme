import 'package:flutter/widgets.dart';
import 'app_settings.dart';
import 'color_resource.dart';
import 'asset_resource.dart';
import 'string_resource.dart';

class App extends InheritedWidget {
  final StringResource? strings;
  final ColorResource? colors;
  final AppSettings? appConfig;

  App({
    @required this.appConfig,
    @required this.strings,
    @required this.colors,
    @required Widget? child,
  }) : super(child: child!) {
    strings!.appConfig = appConfig!;
  }

  AssetResource get assets => AssetResource(appConfig: appConfig);

  static App of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<App>()!;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
