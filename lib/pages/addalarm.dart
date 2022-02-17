import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:samsung_clock_clone/config/palette.dart';

class AddAlarm extends StatefulWidget {
  const AddAlarm({Key? key}) : super(key: key);

  @override
  State<AddAlarm> createState() => _AddAlarmState();
}

class _AddAlarmState extends State<AddAlarm> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Palette.mainColor,
        body: Center(
          child: Column(children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.37,
              child: const Text('시간 표시 될거임'),
            ),
            Container(
              width: MediaQuery.of(context).size.width - 20,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              height: MediaQuery.of(context).size.height * 0.52,
              child: SingleChildScrollView(
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [Text('날짜'), Icon(Icons.calendar_month)],
                  ),
                  Row(
                    children: const [
                      Text('일'),
                      Text('월'),
                      Text('화'),
                      Text('수'),
                      Text('목'),
                      Text('금'),
                      Text('토'),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SwitchListTile(
                          value: _isChecked,
                          onChanged: (value) {
                            setState(() {
                              _isChecked = value;
                            });
                          },
                          title: const Text('공휴일엔 알람 끄기'),
                          subtitle: const Text('대체 공휴일이나 임시 공휴일 포함 안 함',
                              style: TextStyle(color: Palette.mainColor2)),
                          activeColor: Colors.white,
                          activeTrackColor: Palette.mainColor2,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Palette.mainColor,
                        ),
                      )
                    ],
                  ),
                  GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                      },
                      child: TextFormField(
                        cursorColor: Palette.mainColor2,
                      )),
                  Row(
                    children: [
                      Expanded(
                        child: SwitchListTile(
                          value: _isChecked,
                          onChanged: (value) {
                            setState(() {
                              _isChecked = value;
                            });
                          },
                          title: const Text('알람음'),
                          subtitle: const Text('Google Duo',
                              style: TextStyle(color: Palette.mainColor2)),
                          activeColor: Colors.white,
                          activeTrackColor: Palette.mainColor2,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Palette.mainColor,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SwitchListTile(
                          value: _isChecked,
                          onChanged: (value) {
                            setState(() {
                              _isChecked = value;
                            });
                          },
                          title: const Text('진동'),
                          subtitle: const Text('Basic call',
                              style: TextStyle(color: Palette.mainColor2)),
                          activeColor: Colors.white,
                          activeTrackColor: Palette.mainColor2,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Palette.mainColor,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: SwitchListTile(
                          value: _isChecked,
                          onChanged: (value) {
                            setState(() {
                              _isChecked = value;
                            });
                          },
                          title: const Text('다시 울림'),
                          subtitle: const Text('5분 3회',
                              style: TextStyle(color: Palette.mainColor2)),
                          activeColor: Colors.white,
                          activeTrackColor: Palette.mainColor2,
                          inactiveThumbColor: Colors.white,
                          inactiveTrackColor: Palette.mainColor,
                        ),
                      )
                    ],
                  ),
                ]),
              ),
            )
          ]),
        ),
        bottomNavigationBar:
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextButton(
              onPressed: () {
                Get.back();
              },
              child: const Text(
                '취소',
                style: TextStyle(
                    color: Palette.basicColor, fontWeight: FontWeight.w800),
              )),
          TextButton(
              onPressed: () {},
              child: const Text(
                '저장',
                style: TextStyle(
                    color: Palette.basicColor, fontWeight: FontWeight.w800),
              ))
        ]),
      ),
    );
  }
}
