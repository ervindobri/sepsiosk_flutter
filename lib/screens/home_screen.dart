import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sepsiosk/custom_widgets/footer.dart';
import 'package:sepsiosk/custom_widgets/match_reports.dart';
import 'package:sepsiosk/custom_widgets/next_matches.dart';
import 'package:sepsiosk/custom_widgets/prev_match.dart';
import 'package:sepsiosk/custom_widgets/recent_news.dart';
import 'package:sepsiosk/custom_widgets/sponsors.dart';
import 'package:sepsiosk/globals.dart';

import '../xd_widgets/XDLabelFooter.dart';
import '../xd_widgets/XDRecentNewsCard.dart';
import '../xd_widgets/XDStickyHeader.dart';
import '../xd_widgets/XDStickyHeader.dart';

class HomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    height: 100,
                  ),
                  Row(
                    children: [
                      Container(
                        width: Get.width*.75,
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              RecentNews(),
                              MatchReports(),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          PreviousMatchCard(),
                          NextMatches()
                        ],
                      ),
                    ],
                  ),
                  Container(
                    width: Get.width,
                    height: Get.height/2,
                    // color: Colors.white,
                    child: Center(
                      child: Text(
                        "Placeholder",
                      ),
                    ),
                  ),
                  Sponsors(),
                  Footer(),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            child: XDStickyHeader(),
          )
        ],
      ),
    );
  }
}
