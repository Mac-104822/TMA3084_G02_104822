import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lab_04/order_summary.dart';

void main() {
  testWidgets('summary shows the total', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: OrderSummaryScreen()));

    expect(find.text('Item: Vegetable Pizza'), findsOneWidget);
    expect(find.text('Quantity: 2'), findsOneWidget);
    expect(find.text('Total: RM 25.00'), findsOneWidget);
  });
}
