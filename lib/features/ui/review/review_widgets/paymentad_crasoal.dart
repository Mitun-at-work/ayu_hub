import 'package:flutter/material.dart';

class PaymentAdCarosal extends StatefulWidget {
  const PaymentAdCarosal({
    super.key,
  });

  @override
  State<PaymentAdCarosal> createState() => _PaymentAdCarosalState();
}

class _PaymentAdCarosalState extends State<PaymentAdCarosal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: 300,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: const Row(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20),
            child: Column(
              children: [
                Icon(
                  Icons.paid_outlined,
                  size: 30,
                ),
                Text(
                  'Pay',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 30,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: SizedBox(
              width: 210,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Get flat Rs.20 cashback on flat ever transaction with CRED pay UPI',
                    style: TextStyle(fontSize: 13, color: Colors.black54),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                    'T&C apply',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 70, 21, 143)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
