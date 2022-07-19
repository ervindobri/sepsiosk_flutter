import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:sepsiosk/globals.dart';
import 'package:sepsiosk/xd_widgets/XDMatchReportCard.dart';

class MatchReports extends StatefulWidget {
  @override
  _MatchReportsState createState() => _MatchReportsState();
}

class _MatchReportsState extends State<MatchReports> {
  var carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Container(
        width: Get.width,
        height: 450,
        child: Column(
          children: [
            SectionHeader(title: 'Match Reports', seeAllEnabled: true),
            Stack(
              alignment: Alignment.center,
              children: [
                CarouselSlider.builder(
                    itemCount: 3,
                    carouselController: carouselController,
                    itemBuilder: (context, index, child) {
                      return ReportRow();
                    },
                    options: CarouselOptions(
                        disableCenter: true,
                        viewportFraction: 1.0,
                        height: 400)),
                Positioned(
                  left: 0,
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Center(
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.arrowCircleLeft),
                        color: Globals.primaryColor,
                        onPressed: () {
                          //left carousel
                          carouselController.previousPage(
                              curve: Curves.easeInOut);
                        },
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Center(
                      child: IconButton(
                        icon: FaIcon(FontAwesomeIcons.arrowCircleRight),
                        color: Globals.primaryColor,
                        onPressed: () {
                          //left carousel
                          carouselController.nextPage(curve: Curves.easeInOut);
                        },
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

class SectionHeader extends StatelessWidget {
  final String title;
  final bool seeAllEnabled;
  final VoidCallback? onSeeAllTapped;
  const SectionHeader(
      {Key? key,
      required this.title,
      this.seeAllEnabled = false,
      this.onSeeAllTapped})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(title, style: Get.textTheme.bodyText2),
        ),
        seeAllEnabled
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: InkWell(
                  onTap: () {
                    //open screen
                    onSeeAllTapped?.call();
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(
                        fontSize: 15, decoration: TextDecoration.underline),
                  ),
                ),
              )
            : Container()
      ],
    );
  }
}

class ReportRow extends StatelessWidget {
  const ReportRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
            Globals.matchReports.length,
            (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: XDMatchReportCard(
                      matchDay: Globals.matchReports[index][0],
                      image: "images/report" + (index + 1).toString() + ".jpg",
                      result: Globals.matchReports[index][1],
                      description: Globals.matchReports[index][2]),
                )));
  }
}
