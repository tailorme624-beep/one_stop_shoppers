final callable = FirebaseFunctions.instance
    .httpsCallable('initiateMobileMoney');

final response = await callable.call({
  'amount': total,
  'phone': phone,
  'network': 'MTN',
  'buyerId': user.uid,
});
