enum PaymentMethod { cod, mtn, airtel }

  if (method == PaymentMethod.cod) {
  await createOrder(paymentStatus: 'cod');
} else {
  await initiateMobileMoney(method);
}
await FirebaseFirestore.instance.collection('orders').add({
  'buyerId': buyerId,
  'items': cartItems,
  'totalAmount': total,
  'paymentMethod': 'COD',
  'paymentStatus': 'pending',
  'orderStatus': 'processing',
  'createdAt': FieldValue.serverTimestamp(),
});
