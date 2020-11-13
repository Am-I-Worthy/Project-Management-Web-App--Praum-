import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:praum_project_web_app/Dashboard/src/SubHeader.dart';

class MeetingsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SubHeader(
            title: 'Meetings',
          ),
          Container(
            height: 100.0,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 30.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              children: [
                Container(
                  width: 10.0,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.8),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.27 - 60.0,
                  padding: EdgeInsets.only(left: 15.0, top: 10.0, right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Projects Overview',
                            style: GoogleFonts.quicksand(
                              fontSize: 13.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.more_horiz,
                            size: 20.0,
                            color: Colors.black26,
                          ),
                        ],
                      ),
                      SizedBox(width: 5.0),
                      Text(
                        '09 AM - 10 AM',
                        style: GoogleFonts.quicksand(
                          fontSize: 9.0,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 13.0),
                        height: 50.0,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0.0,
                              child: Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20.0,
                              child: Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 40.0,
                              child: Container(
                                height: 30.0,
                                width: 30.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey[800],
                                  borderRadius: BorderRadius.circular(20.0),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 15.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
