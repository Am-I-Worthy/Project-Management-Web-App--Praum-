import 'package:flutter/material.dart';
import 'package:praum_project_web_app/CalendarSpace/src/CalendarSection.dart';
import 'package:praum_project_web_app/CalendarSpace/src/MeetingsSection.dart';
import 'package:praum_project_web_app/CalendarSpace/src/TopContainer.dart';

class CalendarSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        color: Color(0xffF7F7FF),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width * 0.28,
        child: Column(
          children: [
            SizedBox(
              height: 30.0,
            ),
            TopContainer(),
            CalendarSection(),
            MeetingsSection(),
            ClipRRect(
              child: Image.asset('assets/image.png',height: 300.0,width: 400.0,),
            ),
          ],
        ),
      ),
    );
  }
}




