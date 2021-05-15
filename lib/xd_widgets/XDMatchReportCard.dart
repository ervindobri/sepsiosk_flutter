import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:get/get.dart';
import 'package:sepsiosk/globals.dart';

class XDMatchReportCard extends StatelessWidget {
  final VoidCallback? openDetailMatchReport;
  final String? image;
  final int matchDay;
  final String result;
  final String description;

  XDMatchReportCard({
    Key? key,
    this.openDetailMatchReport, required this.matchDay,required this.result,required this.description,  this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 270,
      child: GestureDetector(
        onTap: () => openDetailMatchReport?.call(),
        child: Stack(
          children: <Widget>[
              Container(
                // width: 100,
                // color: Colors.black,
                height: 250,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Matchday",
                      style: Get.textTheme.bodyText1,
                    ),
                    AutoSizeText(
                        matchDay.toString(),
                        minFontSize: 110,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          shadows: [BoxShadow(
                            color: Globals.primaryColor.withOpacity(.2),
                            blurRadius: 25,
                            spreadRadius: -2
                          )]
                        ),
                    ),
                  ],
                ),
              ),
              Positioned(
                left: 100,
                child: Container(
                  width: 200,
                  height: 270,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 25
                    )]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          width: Get.width,
                          height: 120,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                image ?? ""
                              ),
                              fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              topRight: Radius.circular(12),
                            )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            width: Get.width,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(12)
                            ),
                            child: Center(
                              child: AutoSizeText(
                                result,
                                style: Get.textTheme.subtitle1,
                              ),
                            ),
                          ),
                        ),
                        AutoSizeText(
                          description,
                          maxLines: 4,
                          maxFontSize: 20,
                          style: Get.textTheme.bodyText2,
                        )
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
