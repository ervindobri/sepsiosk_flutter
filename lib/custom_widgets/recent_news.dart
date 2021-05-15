import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../globals.dart';
import '../xd_widgets/XDRecentNewsCard.dart';
import '../xd_widgets/XDRecentNewsCard.dart';
import '../xd_widgets/XDRecentNewsCard.dart';

class RecentNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: Get.width,
        height: 250,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    "Recent news",
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
            Row(
              children: Globals.recentNews.map((e)
              => Padding(
                padding: const EdgeInsets.all(12.0),
                child: XDRecentNewsCard(title: e[0], subTitle: e[1], date: e[2],),
              )).toList()
            ),
          ],
        ),
      ),
    );
  }
}
