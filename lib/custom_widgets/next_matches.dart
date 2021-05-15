import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:sepsiosk/globals.dart';

class NextMatches extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: Get.width*.21,
      decoration: BoxDecoration(
          color: CupertinoColors.white,
          boxShadow: [BoxShadow(
              color: Globals.primaryColor.withOpacity(.2),
              blurRadius: 45,
              spreadRadius: -2
          )],
          borderRadius: BorderRadius.circular(12)
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 35.0),
              child: Text(
                "Next matches",
                style: Get.textTheme.bodyText2,
              ),
            ),
            //timeline
          ],
        ),
      ),
    );
  }
}
