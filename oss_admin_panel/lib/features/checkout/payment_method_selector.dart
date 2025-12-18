enum PaymentMethod { cod, mtn, airtel }

  if (method == PaymentMethod.cod) {
  await createOrder(paymentStatus: 'cod');
} else {
  await initiateMobileMoney(method);
}
