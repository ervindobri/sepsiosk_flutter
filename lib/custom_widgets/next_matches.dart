import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sepsiosk/globals.dart';
import 'package:sepsiosk/models/venue.dart';
import 'package:timeline_tile/timeline_tile.dart';

class NextMatches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: Get.width * .21,
      decoration: BoxDecoration(
          color: CupertinoColors.white,
          boxShadow: [
            BoxShadow(
                color: Globals.primaryColor.withOpacity(.2),
                blurRadius: 45,
                spreadRadius: -2)
          ],
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: Text(
                "Next matches",
                style: Get.textTheme.bodyText2,
              ),
            ),
            //timeline
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TimelineTile(
                    isFirst: true,
                    beforeLineStyle: LineStyle(color: Globals.primaryColor),
                    afterLineStyle: LineStyle(color: Globals.primaryColor),
                    indicatorStyle: IndicatorStyle(
                      width: 30,
                      height: 30,
                      color: Globals.primaryColor,
                      indicator: MatchIndicator(
                          venue: Venue.HOME,
                          color: Colors.white,
                          bgColor: Globals.primaryColor),
                    ),
                    alignment: TimelineAlign.start,
                    endChild: Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Container(
                        child: Row(
                          children: [
                            //steaua logo
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "images/steaualogo.png",
                                width: 50,
                              ),
                            ),
                            // time
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Container(
                                width: 130,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Sunday",
                                      style: Get.textTheme.bodyText1,
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Globals.primaryColor,
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "1:10:51:22",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  TimelineTile(
                    beforeLineStyle: LineStyle(color: Globals.primaryColor),
                    afterLineStyle: LineStyle(color: Globals.primaryColor),
                    indicatorStyle: IndicatorStyle(
                        width: 30,
                        height: 30,
                        color: Globals.secondaryColor.withOpacity(.2),
                        indicator: MatchIndicator(
                            venue: Venue.AWAY,
                            color: Globals.primaryColor,
                            bgColor: Colors.white)),
                    alignment: TimelineAlign.start,
                    endChild: Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Row(
                          children: [
                            //steaua logo
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "images/acalogo.png",
                                width: 50,
                              ),
                            ),
                            // time
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Container(
                                width: 130,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "19 May 21",
                                      style: Get.textTheme.bodyText1,
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Globals.secondaryColor,
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "17:30",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  TimelineTile(
                    isLast: true,
                    beforeLineStyle: LineStyle(color: Globals.primaryColor),
                    afterLineStyle: LineStyle(color: Globals.primaryColor),
                    indicatorStyle: IndicatorStyle(
                      width: 30,
                      height: 30,
                      color: Globals.primaryColor,
                      indicator: MatchIndicator(
                          venue: Venue.HOME,
                          color: Globals.primaryColor,
                          bgColor: Colors.white),
                    ),
                    alignment: TimelineAlign.start,
                    endChild: Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        child: Row(
                          children: [
                            //steaua logo
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                "images/botologo.png",
                                width: 50,
                              ),
                            ),
                            // time
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Container(
                                width: 130,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "27 May 21",
                                      style: Get.textTheme.bodyText1,
                                    ),
                                    Container(
                                        decoration: BoxDecoration(
                                            color: Globals.secondaryColor,
                                            borderRadius:
                                                BorderRadius.circular(24)),
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            "00:00",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MatchIndicator extends StatelessWidget {
  final Venue venue;
  final Color color;
  final Color bgColor;
  const MatchIndicator({
    Key? key,
    required this.venue,
    required this.color,
    required this.bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          border: Border.all(
            color: color,
            width: 2,
          ),
          color: bgColor,
          shape: BoxShape.circle),
      child: Center(
        child: FaIcon(
            venue == Venue.HOME ? FontAwesomeIcons.home : FontAwesomeIcons.bus,
            size: 18,
            color: color),
      ),
    );
  }
}
