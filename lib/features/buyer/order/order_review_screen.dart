import '../order/order_service.dart';

final orderService = OrderService();

ElevatedButton(
  onPressed: () async {
    await orderService.placeOrder('Mobile Money');

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Order placed successfully')),
    );

    Navigator.popUntil(context, ModalRoute.withName('/home'));
  },
  child: const Text('Place Order'),
)
