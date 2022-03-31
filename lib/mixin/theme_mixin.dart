import 'package:bestow/theme/typography/app_fonts.dart';

import '../theme/app_theme.dart';
import '../theme/base_colors.dart';
import '../theme/base_theme.dart';

mixin ThemeMixin {
  BaseColors get colors => AppTheme.instance.colors;

  AppFonts get fonts => AppTheme.instance.font;

  BaseTheme get theme => AppTheme.instance.baseTheme;
}
