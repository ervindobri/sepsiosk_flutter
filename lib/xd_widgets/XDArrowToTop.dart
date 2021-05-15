import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XDArrowToTop extends StatelessWidget {
  XDArrowToTop({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Pinned.fromPins(
          Pin(start: 0.0, end: 0.0),
          Pin(start: 0.0, end: 0.0),
          child: SvgPicture.string(
            _svg_jnoajz,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
        Pinned.fromPins(
          Pin(size: 16.4, middle: 0.492),
          Pin(size: 10.6, middle: 0.509),
          child:
              // Adobe XD layer: 'Icon awesome-angle-…' (shape)
              SvgPicture.string(
            _svg_48ckhl,
            allowDrawingOutsideViewBox: true,
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}

const String _svg_jnoajz =
    '<svg viewBox="0.0 0.0 38.0 36.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="14"/></filter></defs><path  d="M 18 0 L 20 0 C 29.94112586975098 0 38 8.058874130249023 38 18 C 38 27.94112586975098 29.94112586975098 36 20 36 L 18 36 C 8.058874130249023 36 0 27.94112586975098 0 18 C 0 8.058874130249023 8.058874130249023 0 18 0 Z" fill="#ff587b" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_48ckhl =
    '<svg viewBox="10.6 12.9 16.4 10.6" ><path transform="translate(10.62, 2.2)" d="M 9.073599815368652 11.09488487243652 L 16.0461368560791 18.06742095947266 C 16.52806282043457 18.54934692382813 16.52806282043457 19.32862854003906 16.0461368560791 19.80542945861816 L 14.88746547698975 20.9640998840332 C 14.40553951263428 21.44602584838867 13.62625694274902 21.44602584838867 13.14945793151855 20.9640998840332 L 8.202033042907715 16.02692985534668 L 3.259734153747559 20.9692268371582 C 2.777808904647827 21.45115280151367 1.998525381088257 21.45115280151367 1.521726846694946 20.9692268371582 L 0.3579283952713013 19.81055450439453 C -0.1239969432353973 19.32862854003906 -0.1239969432353973 18.54934692382813 0.3579283952713013 18.07254791259766 L 7.330464839935303 11.10001087188721 C 7.812390327453613 10.61295890808105 8.5916748046875 10.61295890808105 9.073599815368652 11.09488391876221 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
