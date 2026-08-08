import 'package:flutter/material.dart';
import '../../../../core/widgets/coming_soon_placeholder.dart';

/// Reports tab — will present income/expense/balance summaries and
/// (per the enhancement suggestions) trend charts over time.
class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Reports')),
      body: const ComingSoonPlaceholder(
        icon: Icons.bar_chart_rounded,
        title: 'Reports & Insights',
        description: 'Income, expense, and balance summaries\nwith trend charts will live here.',
      ),
    );
  }
}
