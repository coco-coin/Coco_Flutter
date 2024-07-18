import 'dart:async';

import 'package:coin/controller/get_stored_coin_controller_provider.dart';
import 'package:coin/widget/main_cost_history_list_widget.dart';
import 'package:coin/widget/main_purpose_cost_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MainScreen extends ConsumerStatefulWidget {
  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  int level = 1;
  int storedCost = 0;
  int purposeCost = 1000;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  StreamSubscription? _subscription;

  void _startTimer() {
    _subscription = Stream.periodic(
      const Duration(seconds: 1),
          (_) {
        ref.read(getStoredCoinControllerProvider.notifier).execute();
      },
    ).listen((event) {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Lv : $level",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                const Text(
                  "나의 저금통",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          const TextSpan(
                            text: "누적 ",
                            style: TextStyle(
                              color: Color(0xFFFFC960),
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: "$storedCost원",
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          storedCost = 0;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFD98F),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Padding(
                          padding:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                          child: Text(
                            "초기화",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const MainPurposeCostWidget(),
                const SizedBox(height: 30),
                const MainCostHistoryListWidget(),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
