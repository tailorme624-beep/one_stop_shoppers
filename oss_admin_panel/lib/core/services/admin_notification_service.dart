import 'package:cloud_firestore/cloud_firestore.dart';

class AdminNotificationService {
  final _db = FirebaseFirestore.instance;

  Future<void> sendNotification({
    required String userId,
    required String receiverRole,
    required String title,
    required String message,
    String type = 'message',
    String? referenceId,
  }) async {
    await _db.collection('notifications').add({
      'senderRole': 'admin',
      'receiverRole': receiverRole,
      'userId': userId,
      'title': title,
      'message': message,
      'type': type,
      'referenceId': referenceId,
      'isRead': false,
      'createdAt': FieldValue.serverTimestamp(),
    });
  }
}
