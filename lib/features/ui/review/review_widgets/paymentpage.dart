import 'package:ayu_hub/features/ui/review/review_widgets/payment_sucessful.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/paymentad_crasoal.dart';
import 'package:ayu_hub/features/ui/review/review_widgets/paywish.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final ad = [
    const PaymentAdCarosal(),
    const PaymentAdCarosal(),
    const PaymentAdCarosal(),
    const PaymentAdCarosal(),
    const PaymentAdCarosal(),
    const PaymentAdCarosal(),
  ];

  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 238, 238),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 238, 238),
        leadingWidth: 40,
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const Icon(Icons.arrow_back_ios,
                  size: 20, color: Colors.black)),
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            Row(
              children: [
                Text(
                  'Amount payable: ',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
                Icon(
                  Icons.currency_rupee_outlined,
                  color: Colors.black,
                  size: 15,
                ),
                Text(
                  '200',
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15, top: 30),
            child: Text(
              'Details',
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            CarouselSlider(
              items: ad.map(
                (e) {
                  return const PaymentAdCarosal();
                },
              ).toList(),
              options: CarouselOptions(
                height: 120,
                autoPlay: true,
                enlargeCenterPage: false,
                enableInfiniteScroll: true,
                onPageChanged: (index, reason) {
                  setState(
                    () {
                      currentindex = index;
                    },
                  );
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 175),
                  child: AnimatedSmoothIndicator(
                    activeIndex: currentindex,
                    count: ad.length,
                    effect: const WormEffect(
                      dotHeight: 8,
                      dotWidth: 8,
                      spacing: 5,
                      dotColor: Colors.white,
                      activeDotColor: Colors.black87,
                      paintStyle: PaintingStyle.fill,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 70,
                ),
                const Text(
                  'See all',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 360,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image(
                      image: AssetImage('assets/images/discount.png'),
                      height: 25,
                      width: 25,
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Text(
                      'Apply Voucher',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.black87),
                    ),
                    Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 25),
              child: Row(
                children: [
                  Text(
                    'UPI',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              width: 355,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 14, top: 9),
                    child: Row(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(
                            left: 18,
                          ),
                          child: SizedBox(
                            height: 40,
                            width: 40,
                            child: Image(
                                image:
                                    AssetImage('assets/images/gpay logo.png')),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          'Gpay',
                          style: TextStyle(
                              fontSize: 15,
                              // color: Colors.black87,
                              fontWeight: FontWeight.w600),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(top: 3, right: 8),
                          child: Container(
                            height: 20,
                            width: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(blurRadius: 1, spreadRadius: 1)
                                ],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 130, top: 20),
              child: Text(
                'How would you want to pay?',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const PayWish(),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const PaymentSucessful()));
              },
              child: Container(
                height: 50,
                width: 130,
                decoration: BoxDecoration(
                    color: Colors.purple.shade900,
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Center(
                  child: Text(
                    'Proceed to Pay',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
