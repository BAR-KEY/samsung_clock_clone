import 'package:flutter/material.dart';
import 'package:samsung_clock_clone/config/palette.dart';
import 'package:samsung_clock_clone/pages/addalarm.dart';
import 'package:get/get.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'Samsung Clock',
      home: const MyApp(),
      theme: ThemeData(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isDarkMode = false;
  bool isAlarm = true;
  bool isWorldTime = false;
  bool isStopWatch = false;
  bool isTimer = false;
  bool isScroll = false;

  test() {
    if (isAlarm == true) {
      return const Alarm();
    }
    if (isWorldTime == true) {
      return const Text('isWorldTime');
    }
    if (isStopWatch == true) {
      return const Text('isStopWatch');
    }
    if (isTimer == true) {
      return const Text('isTimer');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Palette.mainColor,
        body: test(),
        bottomNavigationBar:
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          BottonButton(
              isSelected: isAlarm,
              name: '알람',
              onPressed: () {
                setState(() {
                  isAlarm = true;
                  isWorldTime = false;
                  isStopWatch = false;
                  isTimer = false;
                });
              }),
          BottonButton(
              name: '세계시간',
              isSelected: isWorldTime,
              onPressed: () {
                setState(() {
                  isAlarm = false;
                  isWorldTime = true;
                  isStopWatch = false;
                  isTimer = false;
                });
              }),
          BottonButton(
              name: '스톱워치',
              isSelected: isStopWatch,
              onPressed: () {
                setState(() {
                  isAlarm = false;
                  isWorldTime = false;
                  isStopWatch = true;
                  isTimer = false;
                });
              }),
          BottonButton(
              name: '타이머',
              isSelected: isTimer,
              onPressed: () {
                setState(() {
                  isAlarm = false;
                  isWorldTime = false;
                  isStopWatch = false;
                  isTimer = true;
                });
              }),
        ]),
      ),
    );
  }
}

// ignore: must_be_immutable
class BottonButton extends StatelessWidget {
  BottonButton(
      {Key? key, required this.name, required this.isSelected, this.onPressed})
      : super(key: key);

  String name;
  bool isSelected;
  // ignore: prefer_typing_uninitialized_variables
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Container(
            margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: Text(
              name,
              style: isSelected
                  ? const TextStyle(
                      shadows: [
                        Shadow(color: Palette.basicColor, offset: Offset(0, -1))
                      ],
                      // fontFamily: 'NanumBarunGothic',
                      fontWeight: FontWeight.w800,
                      color: Colors.transparent,
                      decorationColor: Palette.basicColor,
                      decoration: TextDecoration.underline,
                      decorationThickness: 3,
                    )
                  : const TextStyle(shadows: [
                      Shadow(color: Palette.basicColor2, offset: Offset(0, -1))
                    ], color: Colors.transparent),
            )),
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
        ));
  }
}

class Alarm extends StatelessWidget {
  const Alarm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.mainColor,
      appBar: AppBar(
        backgroundColor: Palette.mainColor,
        elevation: 0,
        title: const Text(
          '알람',
          style:
              TextStyle(color: Palette.basicColor, fontWeight: FontWeight.w800),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.to(() => const AddAlarm());
            },
            icon: const Icon(Icons.add),
            color: Palette.basicColor,
          ),
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              color: Palette.basicColor)
        ],
      ),
    );
  }
}
