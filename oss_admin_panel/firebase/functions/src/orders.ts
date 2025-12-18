export const notifyBuyerOnOrderUpdate = functions.firestore
  .document("orders/{orderId}")
  .onUpdate(async (change) => {
    const before = change.before.data();
    const after = change.after.data();

    if (before.orderStatus === after.orderStatus) return;

    await db.collection("notifications").add({
      userId: after.buyerId,
      senderRole: "system",
      receiverRole: "buyer",
      title: "Order Status Updated",
      message: `Your order is now ${after.orderStatus.toUpperCase()}`,
      type: "order",
      isRead: false,
      createdAt: admin.firestore.FieldValue.serverTimestamp(),
    });
  });

