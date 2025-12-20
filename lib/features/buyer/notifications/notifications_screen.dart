import 'package:flutter/material.dart';
import 'notification_service.dart';
import 'notification_model.dart';
import 'notification_detail_screen.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final service = NotificationService();

    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),
      body: StreamBuilder<List<AppNotification>>(
        stream: service.getBuyerNotifications(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final notifications = snapshot.data!;

          if (notifications.isEmpty) {
            return const Center(child: Text('No notifications yet'));
          }

          return ListView.builder(
            itemCount: notifications.length,
            itemBuilder: (_, index) {
              final n = notifications[index];
              return ListTile(
                leading: Icon(
                  n.type == 'order'
                      ? Icons.local_shipping
                      : Icons.campaign,
                  color: n.isRead ? Colors.grey : Colors.green,
                ),
                title: Text(n.title),
                subtitle: Text(
                  n.message,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                trailing: n.isRead
                    ? null
                    : const Icon(Icons.circle, size: 10),
                onTap: () async {
                  await service.markAsRead(n.id);

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) =>
                          NotificationDetailScreen(notification: n),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
