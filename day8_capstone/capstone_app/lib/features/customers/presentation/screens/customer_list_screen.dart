import 'package:flutter/material.dart';
import '../../../../core/widgets/coming_soon_placeholder.dart';

/// Customers tab — will list all customer ledgers (udhar/khata), each
/// with a running balance and access to full transaction history.
class CustomersScreen extends StatelessWidget {
  const CustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Customers')),
      body: const ComingSoonPlaceholder(
        icon: Icons.people_alt_outlined,
        title: 'Customer Ledger',
        description: 'Customer list, udhar tracking, and\ntransaction history will live here.',
      ),
    );
  }
}
