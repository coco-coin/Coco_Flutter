import 'package:flutter/material.dart';

class DivideWidget extends StatelessWidget {
  const DivideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF707070),
      width: MediaQuery.of(context).size.width,
      height: 1,
    );
  }
}
