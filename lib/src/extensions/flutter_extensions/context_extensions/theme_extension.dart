import 'package:flutter/material.dart';

import 'context.dart';

extension ThemeExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  Brightness get brightness => theme.brightness;

  Brightness get sysBrightness => mq.platformBrightness;

  bool get isDark => brightness == Brightness.dark;
}

extension ThemeModeEx on ThemeMode {
  Brightness getBrightness(BuildContext context) {
    switch (this) {
      case ThemeMode.light:
        return Brightness.light;
      case ThemeMode.dark:
        return Brightness.dark;
      case ThemeMode.system:
        return context.sysBrightness;
    }
  }
}
