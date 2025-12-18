import 'package:flutter/material.dart';
import '../../core/services/admin_notification_service.dart';

class SendMessageDialog extends StatelessWidget {
  final String sellerId;

  const SendMessageDialog({super.key, required this.sellerId});

  @override
  Widget build(BuildContext context) {
    final msgCtrl = TextEditingController();
    final service = AdminNotificationService();

    return AlertDialog(
      title: const Text('Send Message to Seller'),
      content: TextField(
        controller: msgCtrl,
        maxLines: 4,
        decoration: const InputDecoration(
          hintText: 'Type your message...',
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: () async {
            await service.sendNotification(
              userId: sellerId,
              receiverRole: 'seller',
              title: 'Message from Admin',
              message: msgCtrl.text,
            );
            Navigator.pop(context);
          },
          child: const Text('Send'),
        ),
      ],
    );
  }
}
