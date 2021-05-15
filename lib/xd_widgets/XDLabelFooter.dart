import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDLabelFooter extends StatelessWidget {
  XDLabelFooter({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(size: 19.0, middle: 0.2581),
          Pin(size: 44.0, end: 1.0),
          child: Text(
            'O',
            style: TextStyle(
              fontFamily: 'PT Sans',
              fontSize: 34,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 15.0, middle: 0.5157),
          Pin(size: 44.0, end: 0.0),
          child: Text(
            'S',
            style: TextStyle(
              fontFamily: 'PT Sans',
              fontSize: 34,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 17.0, middle: 0.7707),
          Pin(size: 44.0, end: 1.0),
          child: Text(
            'K',
            style: TextStyle(
              fontFamily: 'PT Sans',
              fontSize: 34,
              color: const Color(0xffffffff),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 16.0, middle: 0.0),
          Pin(size: 16.0, middle: 0.4736),
          child:
              // Adobe XD layer: 'Icon open-star' (shape)
              SvgPicture.string(
            _svg_d38d5w,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 16.0, middle: 1.0),
          Pin(size: 16.0, middle: 0.4736),
          child:
              // Adobe XD layer: 'Icon open-star' (shape)
              SvgPicture.string(
            _svg_ukcfh0,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

const String _svg_d38d5w =
    '<svg viewBox="0.0 13.7 16.0 16.0" ><path transform="translate(0.0, 13.73)" d="M 8 0 L 6 6 L 0 6 L 5 10 L 3 16 L 8 12 L 13 16 L 11 10 L 16 6 L 10 6 L 8 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ukcfh0 =
    '<svg viewBox="158.0 13.7 16.0 16.0" ><path transform="translate(158.0, 13.73)" d="M 8 0 L 6 6 L 0 6 L 5 10 L 3 16 L 8 12 L 13 16 L 11 10 L 16 6 L 10 6 L 8 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
