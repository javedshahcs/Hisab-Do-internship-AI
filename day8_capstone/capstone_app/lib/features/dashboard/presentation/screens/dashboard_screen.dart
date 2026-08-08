import 'package:flutter/material.dart';
import '../../../../core/widgets/coming_soon_placeholder.dart';

/// Home tab — will show the business overview (total receivable, payable,
/// expenses, balances) per the Day 8 analysis. Structure only for now.
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard')),
      body: const ComingSoonPlaceholder(
        icon: Icons.dashboard_outlined,
        title: 'Dashboard',
        description: 'Business overview — receivables, payables,\nexpenses & balances will live here.',
      ),
    );
  }
}
