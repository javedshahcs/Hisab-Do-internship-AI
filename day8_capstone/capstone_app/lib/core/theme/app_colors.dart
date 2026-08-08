import 'package:flutter/material.dart';

/// Centralized color palette for the whole app. Keeping raw color values
/// out of individual screens/widgets makes future re-theming (e.g. a
/// rebrand, or adding a dark palette) a one-file change.
class AppColors {
  AppColors._(); // no instances — this is a static-only holder

  static const Color primary = Color(0xFF5B3FE0);
  static const Color primaryDark = Color(0xFF4529B8);
  static const Color secondary = Color(0xFF00B894);

  static const Color success = Color(0xFF1E9E5A);
  static const Color danger = Color(0xFFE5484D);
  static const Color warning = Color(0xFFF5A623);

  static const Color background = Color(0xFFF7F5FA);
  static const Color surface = Colors.white;
  static const Color border = Color(0xFFE5E2ED);

  static const Color textPrimary = Color(0xFF1C1B22);
  static const Color textSecondary = Color(0xFF6B6A75);
  static const Color textMuted = Color(0xFF9B9AA3);

  // Dark theme variants
  static const Color backgroundDark = Color(0xFF121016);
  static const Color surfaceDark = Color(0xFF1E1C24);
  static const Color borderDark = Color(0xFF2E2C36);
}
