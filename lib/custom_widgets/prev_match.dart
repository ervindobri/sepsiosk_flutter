import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sepsiosk/globals.dart';

class PreviousMatchCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        width: Get.width*.21,
        height: 170,
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
                  "Previous match",
                  style: Get.textTheme.bodyText2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //image,
                  Container(
                    width: 50,
                    child: Image.asset(
                      "images/cfrlogo.png"
                    ),
                  ),
                  Container(
                    width: 170,
                    child: Column(
                      children: [
                        Text("0  -  1", style: Get.textTheme.headline5,),
                        Text("5 days ago"),
                      ],
                    ),
                  ),
                  //image
                  Container(
                      width: 50,
                      child: Image.asset("images/sepsilogo.png"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
