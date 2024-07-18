import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class MainPurposeCostWidget extends StatefulWidget {
  const MainPurposeCostWidget({super.key});

  @override
  State<MainPurposeCostWidget> createState() => _MainPurposeCostWidgetState();
}

class _MainPurposeCostWidgetState extends State<MainPurposeCostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: const Color(0xFFFFC960),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "목표 금액 : 1000원",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            LinearPercentIndicator(
              alignment: MainAxisAlignment.center,
              animation: true,
              animationDuration: 1200,
              lineHeight: 20,
              //percent: sum > number ? 1 : 1 / (number / sum),
              barRadius: const Radius.circular(20),
              progressColor: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}
