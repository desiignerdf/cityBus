import 'package:flutter/material.dart';

class FABCards extends StatelessWidget {
  final double balance;
  final int cardNUmber;
  final int expiryMonth;
  final int expiryYear;

  const FABCards(
      {super.key,
      required this.balance,
      required this.cardNUmber,
      required this.expiryMonth,
      required this.expiryYear});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Container(
        width: 300,
        height: 100,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: Colors.white,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              "Balance",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "\₮" + balance.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 28,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  cardNUmber.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
                Text(
                  expiryMonth.toString() + '/' + expiryYear.toString(),
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
