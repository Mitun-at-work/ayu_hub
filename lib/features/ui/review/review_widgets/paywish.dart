import 'package:flutter/material.dart';

class PayWish extends StatelessWidget {
  const PayWish({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 355,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: const Column(
        children: [
          Card(),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.black,
            height: 20,
            thickness: 0.5,
            indent: 20,
            endIndent: 20,
          ),
          NetBanking(),
          SizedBox(
            height: 8,
          ),
          Divider(
            color: Colors.black,
            height: 20,
            thickness: 0.5,
            indent: 20,
            endIndent: 20,
          ),
          Wallet(),
          SizedBox(
            height: 8,
          ),
          Divider(
            color: Colors.black,
            height: 20,
            thickness: 0.5,
            indent: 20,
            endIndent: 20,
          ),
          Rewards(),
        ],
      ),
    );
  }
}

class Rewards extends StatelessWidget {
  const Rewards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 15),
      child: Row(
        children: [
          Icon(
            Icons.redeem,
            size: 26,
            color: Color.fromARGB(173, 0, 0, 0),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'Pay with Rewards',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(173, 0, 0, 0),
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ],
      ),
    );
  }
}

class Wallet extends StatelessWidget {
  const Wallet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 15, left: 20, right: 15),
      child: Row(
        children: [
          Icon(
            Icons.account_balance_wallet,
            size: 26,
            color: Color.fromARGB(173, 0, 0, 0),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'Wallet',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(173, 0, 0, 0),
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ],
      ),
    );
  }
}

class NetBanking extends StatelessWidget {
  const NetBanking({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 15),
      child: Row(
        children: [
          Icon(
            Icons.account_balance,
            size: 26,
            color: Color.fromARGB(173, 0, 0, 0),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'Net Banking',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(173, 0, 0, 0),
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 18, left: 20, right: 15),
      child: Row(
        children: [
          Icon(
            Icons.credit_card,
            size: 26,
            color: Color.fromARGB(173, 0, 0, 0),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'Credit/Debit/ATM Card',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color.fromARGB(173, 0, 0, 0),
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            size: 18,
          ),
        ],
      ),
    );
  }
}
