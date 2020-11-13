import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class ProjectProgressCard extends StatefulWidget {
  final Color color;
  final Color progressIndicatorColor;
  final String projectName;
  final String percentComplete;
  final IconData icon;
  ProjectProgressCard({
    this.color,
    this.progressIndicatorColor,
    this.percentComplete,
    this.projectName,
    this.icon,
  });
  @override
  _ProjectProgressCardState createState() => _ProjectProgressCardState();
}

class _ProjectProgressCardState extends State<ProjectProgressCard> {
  bool hovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (value) {
        setState(() {
          hovered = true;
        });
      },
      onExit: (value) {
        setState(() {
          hovered = false;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 275),
        height: hovered ? 160.0 : 155.0,
        width: hovered ? 200.0 : 195.0,
        decoration: BoxDecoration(
            color: hovered ? widget.color : Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 20.0,
                spreadRadius: 5.0,
              ),
            ]),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18.0,
                  ),
                  Container(
                    height: 30.0,
                    width: 30.0,
                    child: Icon(
                      widget.icon,
                      color: !hovered ? Colors.white : Colors.black,
                      size: 16.0,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      color: hovered ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 13.0,
                  ),
                  Container(
                    child: Text(
                      widget.projectName,
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.0,
                        color: hovered ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18.0,
                  ),
                  Container(
                    height: 13.0,
                    width: 13.0,
                    child: Icon(
                      Feather.user,
                      size: 13.0,
                      color: hovered ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    child: Text(
                      '5 members',
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w500,
                        fontSize: 10.0,
                        color: hovered ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 18.0,
                  ),
                  Container(
                    height: 13.0,
                    width: 13.0,
                    child: Icon(
                      Feather.clock,
                      size: 13.0,
                      color: hovered ? Colors.white : Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Container(
                    child: Text(
                      '15 Nov 2019',
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w500,
                        fontSize: 10.0,
                        color: hovered ? Colors.white : Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 8.0, left: 135.0),
                child: Text(
                  widget.percentComplete,
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w500,
                    fontSize: 12.5,
                    color: hovered ? Colors.white : Colors.black,
                  ),
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 275),
                margin: EdgeInsets.only(top: 5.0),
                height: 6.0,
                width: 160.0,
                decoration: BoxDecoration(
                  color: hovered
                      ? widget.progressIndicatorColor
                      : Color(0xffF5F6FA),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 275),
                    height: 6.0,
                    width:
                        (double.parse(widget.percentComplete.substring(0, 1)) /
                                10) *
                            160.0,
                    decoration: BoxDecoration(
                      color: hovered ? Colors.white : widget.color,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
