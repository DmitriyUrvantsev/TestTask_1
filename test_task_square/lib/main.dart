import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isPosible = true;
  AlignmentGeometry? alignment;
  bool? positionLeft;

  void changePosition(bool move) {
    setState(() {
      positionLeft = move;
      isPosible = false;
    });
  }

  void isEndAnimation() {
    setState(() {
      isPosible = true;
    });
  }

  ButtonStyle buttonStyle =
      ButtonStyle(foregroundColor: MaterialStateProperty.resolveWith(
    (states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.grey;
      } else {
        return Colors.white;
      }
    },
  ));

  @override
  Widget build(BuildContext context) {
    if (positionLeft == null) {
      alignment = Alignment.center;
    } else {
      positionLeft!
          ? alignment = Alignment.centerLeft
          : alignment = Alignment.centerRight;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Тестовое задание'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            AnimatedAlign(
              alignment: alignment ?? Alignment.center,
              onEnd: () => isEndAnimation(),
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed:
                      isPosible == true && alignment != Alignment.centerLeft
                          ? () => changePosition(true)
                          : null,
                  style: buttonStyle,
                  child: const Text('left'),
                ),
                const SizedBox(width: 100),
                ElevatedButton(
                  onPressed:
                      isPosible == true && alignment != Alignment.centerRight
                          ? () => changePosition(false)
                          : null,
                  style: buttonStyle,
                  child: const Text('rith'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
