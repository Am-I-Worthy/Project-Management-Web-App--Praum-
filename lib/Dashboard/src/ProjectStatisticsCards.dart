import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProjectStatisticsCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ProjectStatisticsCard(
          count: '125',
          name: 'All finished projects',
          descriptions: '2 projects out of time',
          progress: 0.75,
          progressString: '75%',
          color: Color(0xffFAAA1E),
        ),
        ProjectStatisticsCard(
          color: Color(0xff6C6CE5),
          count: '1105',
          name: 'Customer interest',
          descriptions: '+ 576 new clients',
          progress: 0.68,
          progressString: '68%',
        ),
      ],
    );
  }
}

class ProjectStatisticsCard extends StatelessWidget {
  final String count;
  final String name;
  final String descriptions;
  final double progress;
  final String progressString;
  final Color color;

  ProjectStatisticsCard({
    this.count,
    this.descriptions,
    this.name,
    this.progress,
    this.progressString,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 40.0, right: 20.0),
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        height: 85.0,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    count,
                    style: GoogleFonts.quicksand(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    name,
                    style: GoogleFonts.quicksand(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    descriptions,
                    style: GoogleFonts.quicksand(
                      fontSize: 10.0,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            CircularPercentIndicator(
              radius: 55.0,
              lineWidth: 4.5,
              percent: progress,
              circularStrokeCap: CircularStrokeCap.round,
              center: Text(
                progressString,
                style: GoogleFonts.quicksand(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              progressColor: Colors.white,
              startAngle: 270,
              backgroundColor: Colors.white54,
            ),
          ],
        ),
      ),
    );
  }
}
