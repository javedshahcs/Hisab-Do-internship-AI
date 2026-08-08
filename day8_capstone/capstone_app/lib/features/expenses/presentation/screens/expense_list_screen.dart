import 'package:flutter/material.dart';
import '../../../../core/widgets/coming_soon_placeholder.dart';

/// Expenses tab — will list and manage daily business/personal expenses
/// (builds on the CRUD + SQLite + Provider work from earlier internship days).
class ExpensesScreen extends StatelessWidget {
  const ExpensesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expenses')),
      body: const ComingSoonPlaceholder(
        icon: Icons.receipt_long_outlined,
        title: 'Expenses',
        description: 'Add, edit, and track daily expenses\nwith categories and dates.',
      ),
    );
  }
}
