import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDRecentNewsCard extends StatelessWidget {
  XDRecentNewsCard({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: const Color(0xffffffff),
              boxShadow: [
                BoxShadow(
                  color: const Color(0x0f000000),
                  offset: Offset(0, 0),
                  blurRadius: 39,
                ),
              ],
            ),
          ),
        ),
        Pinned.fromPins(
          Pin(start: 11.0, end: 10.0),
          Pin(size: 27.0, start: 10.0),
          child: Text(
            'Lorem ipsum dolor sit amet.',
            style: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 20,
              color: const Color(0xffd52146),
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 17.2, middle: 0.3915),
          Pin(size: 17.2, end: 6.8),
          child:
              // Adobe XD layer: 'Icon feather-clock' (group)
              Stack(
            children: <Widget>[
              Pinned.fromPins(
                Pin(start: 0.0, end: 0.0),
                Pin(start: 0.0, end: 0.0),
                child: SvgPicture.string(
                  _svg_qlfbak,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
              Pinned.fromPins(
                Pin(size: 3.4, middle: 0.625),
                Pin(size: 6.9, middle: 0.3333),
                child: SvgPicture.string(
                  _svg_qse90v,
                  allowDrawingOutsideViewBox: true,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
        Pinned.fromPins(
          Pin(size: 47.0, middle: 0.5584),
          Pin(size: 18.0, end: 6.0),
          child: Text(
            '14 Apr 21',
            style: TextStyle(
              fontFamily: 'PT Sans',
              fontSize: 14,
              color: const Color(0xffff587b),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Pinned.fromPins(
          Pin(start: 11.0, end: 10.0),
          Pin(size: 61.0, middle: 0.5068),
          child: Text(
            'Nullam finibus in libero nec vehicula. \n',
            style: TextStyle(
              fontFamily: 'Open Sans',
              fontSize: 11,
              color: const Color(0xffd52146),
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}

const String _svg_qlfbak =
    '<svg viewBox="3.0 3.0 17.2 17.2" ><path  d="M 20.199951171875 11.5999755859375 C 20.199951171875 16.34961128234863 16.34961128234863 20.199951171875 11.5999755859375 20.199951171875 C 6.850340366363525 20.199951171875 3 16.34961128234863 3 11.5999755859375 C 3 6.850340366363525 6.850340366363525 3 11.5999755859375 3 C 16.34961128234863 3 20.199951171875 6.850340366363525 20.199951171875 11.5999755859375 Z" fill="none" stroke="#ff587b" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_qse90v =
    '<svg viewBox="11.6 6.4 3.4 6.9" ><path transform="translate(-6.4, -2.56)" d="M 18 9 L 18 14.15998554229736 L 21.43999099731445 15.87998008728027" fill="none" stroke="#ff587b" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
