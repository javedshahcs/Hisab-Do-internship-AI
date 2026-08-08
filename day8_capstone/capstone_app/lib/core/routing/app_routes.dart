/// Centralized route path strings, so no screen ever hardcodes a route
/// string inline — every navigation call references a constant here.
class AppRoutes {
  AppRoutes._();

  static const String splash = '/';
  static const String dashboard = '/dashboard';
  static const String customers = '/customers';
  static const String expenses = '/expenses';
  static const String reports = '/reports';
  static const String settings = '/settings';
}
