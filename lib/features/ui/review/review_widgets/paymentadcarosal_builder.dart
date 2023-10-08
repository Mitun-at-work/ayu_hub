import 'package:ayu_hub/features/ui/review/review_widgets/paymentad_crasoal.dart';
import 'package:flutter/material.dart';

class PaymentAdCarosalBuilder extends StatelessWidget {
  const PaymentAdCarosalBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        itemBuilder: (context, index) {
          return const PaymentAdCarosal();
        },
      ),
    );
  }
}
