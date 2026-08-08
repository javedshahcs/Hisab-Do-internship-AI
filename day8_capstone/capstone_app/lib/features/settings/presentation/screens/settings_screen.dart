import 'package:flutter/material.dart';
import '../../../../core/widgets/coming_soon_placeholder.dart';

/// Settings tab — language, currency, security (PIN/biometric), backup &
/// restore, and help/support will be configured from here.
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: const ComingSoonPlaceholder(
        icon: Icons.settings_outlined,
        title: 'Settings',
        description: 'Language, currency, security,\nand backup options will live here.',
      ),
    );
  }
}
