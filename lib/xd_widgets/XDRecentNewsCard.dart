import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sepsiosk/globals.dart';

class XDRecentNewsCard extends StatelessWidget {
  final String title;
  final String subTitle;
  final String date;
  const XDRecentNewsCard({Key? key, required this.title, required this.subTitle, this.date = '31 Dec 21'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 170,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [BoxShadow(
          color: Colors.grey.shade200,
          blurRadius: 25
        )]
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                AutoSizeText(
                  title,
                  maxLines: 2,
                  minFontSize: 15,
                  maxFontSize: 20,
                  style: TextStyle(
                    fontFamily: 'Open Sans',
                    fontWeight: FontWeight.w700
                  ),
                  textAlign: TextAlign.left,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AutoSizeText(
                    subTitle,
                    maxLines: 4,
                    style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 11,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FaIcon(
                    FontAwesomeIcons.clock,
                    color: Globals.primaryColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    date,
                    style: TextStyle(
                      fontSize: 15
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}