import 'package:flutter/material.dart';
import 'package:setthetheme/environment/app.dart';

class StylizedFlutterLogo extends StatelessWidget {
  final ColorFilter colorFilter;
  final double? size;

  const StylizedFlutterLogo({required this.colorFilter, this.size});

  @override
  Widget build(BuildContext context) {
    App app = App.of(context);
    return ColorFiltered(
      colorFilter: colorFilter,
      child: FlutterLogo(size: size),
    );
  }
}


