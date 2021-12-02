import 'dart:ui';
import '../color_resource.dart';

class PurpleThemeColorResource implements ColorResource {
  @override
  Color? primary = const Color(0xff411E5A);

  @override
  Color? secondary = const Color(0xFFAEEA00);

  @override
  Color? background = const Color(0xFFFFFFFF);

  @override
  Color? container = const Color(0xFFE1BEE7);

  @override
  Color? text = const Color(0xff212121);

  @override
  ColorFilter? colorFilter = const ColorFilter.matrix(<double>[
    0.260,
    0.769,
    0.189,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0.260,
    0.769,
    0.189,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ]);
}
