import 'package:flutter/material.dart';
import 'dashboard_service.dart';
import '../../core/widgets/kpi_card.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final service = DashboardService();

    return Scaffold(
      appBar: AppBar(
        title: const Text('OSS Admin Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: FutureBuilder(
          future: Future.wait([
            service.pendingSellers(),
            service.pendingProducts(),
            service.totalOrders(),
            service.totalRevenue(),
          ]),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }

            final data = snapshot.data as List;

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // KPI GRID
                GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  children: [
                    KpiCard(
                      title: 'Pending Sellers',
                      value: data[0].toString(),
                      icon: Icons.store,
                    ),
                    KpiCard(
                      title: 'Pending Products',
                      value: data[1].toString(),
                      icon: Icons.inventory,
                    ),
                    KpiCard(
                      title: 'Total Orders',
                      value: data[2].toString(),
                      icon: Icons.receipt_long,
                    ),
                    KpiCard(
                      title: 'Revenue (UGX)',
                      value: data[3].toStringAsFixed(0),
                      icon: Icons.payments,
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                // QUICK ACTIONS
                const Text(
                  'Quick Actions',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                Wrap(
                  spacing: 12,
                  children: [
                    ElevatedButton.icon(
                      icon: const Icon(Icons.store),
                      label: const Text('Approve Sellers'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/sellers');
                      },
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.inventory),
                      label: const Text('Approve Products'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/products');
                      },
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.receipt),
                      label: const Text('View Orders'),
                      onPressed: () {
                        Navigator.pushNamed(context, '/orders');
                      },
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

