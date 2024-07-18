import 'package:coin/view/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "NotoSansKR",
      ),
      home: const MainScreen(),
    );
  }
}

// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   int number = 0;
//   int sum = 10;
//   int level = 0;
//
//   final _amountController = TextEditingController();
//
//   @override
//   initState() {
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _amountController.dispose();
//     super.dispose();
//   }
//
//   void onResetPressed() {
//     setState(() {
//       sum = 0;
//     });
//   }
//
//   void levelup() {
//     level += 1;
//   }
//
//   void fetchData() async {
//     try {
//       http.Response response = await http.get(
//         Uri.parse(
//           'http://192.168.0.80:5000/sensor-data',
//         ),
//       );
//       String jsonData = response.body;
//       var ten = jsonDecode(jsonData)['sensor1'] as int;
//       var fif = jsonDecode(jsonData)['sensor2'] as int;
//       var hun = jsonDecode(jsonData)['sensor3'] as int;
//       var oba = jsonDecode(jsonData)['sensor4'] as int;
//     } catch (e) {
//       print('url 정보 불러오기 실패');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                   horizontal: 20,
//                   vertical: 45,
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Text(
//                           'Lv : ' + '$level',
//                           style: TextStyle(
//                             fontSize: 30,
//                             fontFamily: "NotoSansKR",
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Text(
//                       '나의 저금통',
//                       style: TextStyle(
//                         fontSize: 30,
//                         fontFamily: "NotoSansKR",
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     Row(
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Row(
//                           children: [
//                             Text(
//                               '누적 ',
//                               style: TextStyle(
//                                 fontSize: 35,
//                                 color: Color(0xFFFFC960),
//                                 fontFamily: "NotoSansKR",
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                             Text(
//                               '$sum' + '원',
//                               style: TextStyle(
//                                 fontSize: 35,
//                                 fontFamily: "NotoSansKR",
//                                 fontWeight: FontWeight.w900,
//                               ),
//                             ),
//                           ],
//                         ),
//                         ElevatedButton(
//                           onPressed: onResetPressed,
//                           child: Text("초기화"),
//                           style: OutlinedButton.styleFrom(
//                             backgroundColor: Color(0xFFFFD98F),
//                             foregroundColor: Colors.black,
//                             textStyle: TextStyle(
//                               fontSize: 16,
//                               fontFamily: "NotoSansKR",
//                               fontWeight: FontWeight.w900,
//                             ),
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.0),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Container(
//                       height: 107,
//                       width: 370,
//                       decoration: BoxDecoration(
//                         color: Color(0xFFFFC960),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Padding(
//                         padding: EdgeInsets.symmetric(
//                           horizontal: 20,
//                           vertical: 15,
//                         ),
//                         child: Column(
//                           children: [
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Row(
//                                   children: [
//                                     Text(
//                                       '목표 금액 : ',
//                                       style: TextStyle(
//                                         fontSize: 20,
//                                         fontFamily: "NotoSansKR",
//                                         fontWeight: FontWeight.w900,
//                                       ),
//                                     ),
//                                     Text(
//                                       '$number 원',
//                                       style: TextStyle(
//                                         fontSize: 20,
//                                         fontFamily: "NotoSansKR",
//                                         fontWeight: FontWeight.w900,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 Container(
//                                   child: Flexible(
//                                     child: TextField(
//                                       onSubmitted: (value) {
//                                         setState(() {
//                                           number = int.parse(value);
//                                           _amountController.clear();
//                                         });
//                                       },
//                                       onTapOutside: (event) => FocusManager
//                                           .instance.primaryFocus
//                                           ?.unfocus(),
//                                       keyboardType: TextInputType.number,
//                                       controller: _amountController,
//                                       textAlign: TextAlign.center,
//                                       decoration: InputDecoration(
//                                           filled: true,
//                                           fillColor: Color(0xFFFFD98F),
//                                           hintText: '설정',
//                                           hintStyle: TextStyle(
//                                             fontSize: 15,
//                                             fontFamily: "NotoSansKR",
//                                             fontWeight: FontWeight.w900,
//                                           ),
//                                           border: OutlineInputBorder(),
//                                           contentPadding: EdgeInsets.all(3)),
//                                     ),
//                                   ),
//                                   width: 70,
//                                   height: 37, //TextField 크기
//                                 ),
//                               ],
//                             ),
//                             SizedBox(
//                               height: 10,
//                             ),
//                             LinearPercentIndicator(
//                               alignment: MainAxisAlignment.center,
//                               width: 330.0,
//                               animation: true,
//                               animationDuration: 1200,
//                               lineHeight: 25.0,
//                               percent: sum > number ? 1 : 1 / (number / sum),
//                               barRadius: Radius.circular(16.0),
//                               progressColor: Colors.yellow,
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 width: 500,
//                 child: Divider(
//                   color: Color(0xFF707070),
//                   thickness: 2.0,
//                 ),
//               ),
//               ListView.builder(
//                 shrinkWrap: true,
//                 itemCount: 3,
//                 itemBuilder: (context, index) {
//
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
