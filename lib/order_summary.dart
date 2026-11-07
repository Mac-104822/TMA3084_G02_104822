import 'package:flutter/material.dart';

import 'order.dart';

class OrderSummaryScreen extends StatelessWidget {
  final String itemName;
  final double unitPrice;
  final int quantity;

  const OrderSummaryScreen({
    super.key,
    this.itemName = 'Vegetable Pizza',
    this.unitPrice = 12.50,
    this.quantity = 2,
  });

  @override
  Widget build(BuildContext context) {
    final total = orderTotal(unitPrice: unitPrice, quantity: quantity);

    return Scaffold(
      appBar: AppBar(title: const Text('Order Summary')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Item: $itemName'),
            Text('Quantity: $quantity'),
            Text('Total: RM ${total.toStringAsFixed(2)}'),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}
