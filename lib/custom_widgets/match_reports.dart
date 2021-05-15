import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../globals.dart';
import '../xd_widgets/XDMatchReportCard.dart';
import '../xd_widgets/XDMatchReportCard.dart';

class MatchReports extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: Get.width,
        height: 450,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                      "Match reports",
                      style: Get.textTheme.bodyText2
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    child: Text(
                      "See All",
                      style: TextStyle(fontSize: 15, decoration: TextDecoration.underline),),
                  ),
                )
              ],
            ),
            Stack(
              alignment: Alignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(Globals.matchReports.length, (index) =>
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: XDMatchReportCard(
                              matchDay: Globals.matchReports[index][0],
                              image: "images/report"+  (index+1).toString() + ".jpg",
                              result: Globals.matchReports[index][1],
                              description: Globals.matchReports[index][2]),
                        ))
                ),
                Positioned(
                  left: 0,
                  child: Container(
                    width:45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.arrowCircleLeft,
                        color: Globals.secondaryColor,
                        size: 40,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width:45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                    ),
                    child: Center(
                      child: FaIcon(
                        FontAwesomeIcons.arrowCircleRight,
                        color: Globals.secondaryColor,
                        size: 40,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
