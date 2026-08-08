/// App-wide constant values — spacing scale, durations, and misc strings
/// that would otherwise get hardcoded (and drift out of sync) across files.
class AppConstants {
  AppConstants._();

  static const String appName = 'HisabDo Capstone';

  // Spacing scale (use instead of magic numbers like `16.0` everywhere)
  static const double spaceXs = 4;
  static const double spaceSm = 8;
  static const double spaceMd = 16;
  static const double spaceLg = 24;
  static const double spaceXl = 32;

  static const double radiusSm = 8;
  static const double radiusMd = 12;
  static const double radiusLg = 20;

  static const Duration splashDelay = Duration(milliseconds: 1200);
  static const Duration animationFast = Duration(milliseconds: 150);
  static const Duration animationMedium = Duration(milliseconds: 300);
}
