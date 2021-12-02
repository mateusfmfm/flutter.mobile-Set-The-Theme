import 'package:flutter/cupertino.dart';
import 'package:setthetheme/environment/app_settings.dart';

class AssetResource {
  final AppSettings? appConfig;
  AssetResource({@required this.appConfig});

  String get svg => "assets/${appConfig!.asset}.svg";
  
}
