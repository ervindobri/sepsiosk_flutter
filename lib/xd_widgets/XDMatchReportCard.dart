import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XDMatchReportCard extends StatelessWidget {
  final VoidCallback? openDetailMatchReport;
  XDMatchReportCard({
    Key? key,
    this.openDetailMatchReport,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => openDetailMatchReport?.call(),
      child: Stack(
        children: <Widget>[
          Container(),
          Pinned.fromPins(
            Pin(start: 86.0, end: 0.0),
            Pin(start: 0.0, end: 0.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xffffffff),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x26000000),
                    offset: Offset(0, 3),
                    blurRadius: 20,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 137.5, end: 5.5),
            Pin(size: 97.5, start: 4.0),
            child:
                // Adobe XD layer: 'NoPath' (shape)
                Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.0),
                  topRight: Radius.circular(12.0),
                ),
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 138.0, end: 5.0),
            Pin(size: 49.0, end: 11.0),
            child: SingleChildScrollView(
                child: Text(
              'Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. \nNullam finibus in libero nec vehicula. \nMaecenas velit tortor,\n auctor ac mi sit amet, laoreet pretium leo.',
              style: TextStyle(
                fontFamily: 'PT Sans',
                fontSize: 10,
                color: const Color(0xffd52146),
                height: 0.5,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            )),
          ),
          Pinned.fromPins(
            Pin(size: 138.0, end: 5.0),
            Pin(size: 31.0, middle: 0.6185),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                color: const Color(0xff929292),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 38.0, middle: 0.7194),
            Pin(size: 32.0, middle: 0.6221),
            child: Text(
              '1 - 1',
              style: TextStyle(
                fontFamily: 'PT Sans',
                fontSize: 25,
                color: const Color(0xffffffff),
                height: 0.52,
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
