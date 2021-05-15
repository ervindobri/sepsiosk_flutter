import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sepsiosk/globals.dart';

import '../xd_widgets/XDLabelFooter.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        Container(
          height: 150,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Globals.primaryColor, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter
            )
          ),
        ),
        Container(
          height: 50,
          width: Get.width,
          color: Globals.primaryColor,
          child: Center(
              child: Container(
                  width: 200,
                  child: XDLabelFooter())),
        ),
      ],
    );
  }
}
