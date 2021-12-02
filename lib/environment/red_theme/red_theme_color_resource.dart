import 'dart:ui';
import '../color_resource.dart';

class RedThemeColorResource implements ColorResource {
  @override
  Color? primary = const Color(0xFFB71C1C);

  @override
  Color? secondary = const Color(0xFFAEEA00);

  @override
  Color? background = const Color(0xFF616161);

  @override
  Color? text = const Color(0xff411E5A);

  @override
  ColorFilter? colorFilter = const ColorFilter.matrix(<double>[
    0.393,
    0.769,
    0.189,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    0,
    1,
    0,
  ]);
}
