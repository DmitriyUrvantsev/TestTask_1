// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'Flutter Demo',
//       home: MyHomePage(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({
//     super.key,
//   });

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   AlignmentGeometry? alignment;
//   bool? positionLeft;

//   void changePosition(bool move) {
//     setState(() {
//       positionLeft = move;
//       isPosible = false;
//     });
//   }

//   void isEndAnimation() {
//     setState(() {
//       isPosible = true;
//     });
//   }

//   bool? isPosible;
//   MaterialColor colorsRithButton = Colors.green;
//   MaterialColor colorsLeftButton = Colors.green;

//   @override
//   Widget build(BuildContext context) {
//     Function() tapRith = () => changePosition(false);
//     Function() tapLeft = () => changePosition(true);
//     if (positionLeft == null) {
//       alignment = Alignment.center;
//     } else {
//       positionLeft!
//           ? alignment = Alignment.centerLeft
//           : alignment = Alignment.centerRight;
//     }
//     if (alignment == Alignment.centerLeft) {
//       tapRith = () => changePosition(false);
//       colorsRithButton = isPosible ?? true ? Colors.green : Colors.grey;
//       tapLeft = () => null;
//       colorsLeftButton = Colors.grey;
//     }
//     if (alignment == Alignment.centerRight) {
//       tapLeft = () => changePosition(true);
//       colorsLeftButton = isPosible ?? true ? Colors.green : Colors.grey;
//       tapRith = () => null;
//       colorsRithButton = Colors.grey;
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Перемещение квадрата'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             AnimatedAlign(
//               alignment: alignment ?? Alignment.center,
//               onEnd: () => isEndAnimation(),
//               duration: const Duration(seconds: 1),
//               curve: Curves.fastOutSlowIn,
//               child: Container(
//                 width: 100,
//                 height: 100,
//                 color: Colors.red,
//               ),
//             ),
//             const SizedBox(
//               height: 50,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: tapLeft,
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStatePropertyAll(colorsLeftButton),
                   
//                   ),
//                   child: const Text('left'),
//                 ),
//                 const SizedBox(width: 100),
//                 ElevatedButton(
//                   onPressed: tapRith,
//                   style: ButtonStyle(
//                     backgroundColor: MaterialStatePropertyAll(colorsRithButton),
//                   ),
//                   child: const Text('rith'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
