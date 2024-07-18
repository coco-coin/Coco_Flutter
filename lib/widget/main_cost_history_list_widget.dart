import 'package:coin/widget/divide_widget.dart';
import 'package:flutter/material.dart';

class MainCostHistoryListWidget extends StatefulWidget {
  const MainCostHistoryListWidget({super.key});

  @override
  State<MainCostHistoryListWidget> createState() =>
      _MainCostHistoryListWidgetState();
}

class _MainCostHistoryListWidgetState extends State<MainCostHistoryListWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DivideWidget(),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "07월 17일",
                    style: TextStyle(
                      color: Color(0xFF8E8E8E),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "100원",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            if (index == 10 - 1) const DivideWidget(),
          ],
        );
      },
    );
  }
}
